; ModuleID = 'tree-tailcall.bc'
source_filename = "tree-tailcall.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, i8*, i8 ()*, i32 ()*, %struct.opt_pass*, %struct.opt_pass*, i32, i32, i32, i32, i32, i32, i32 }
%struct.function = type { %struct.eh_status*, %struct.control_flow_graph*, %struct.gimple_seq_d*, %struct.gimple_df*, %struct.loops*, %struct.htab*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.machine_function*, %struct.language_function*, %struct.htab*, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.eh_status = type { %struct.eh_region_d*, %struct.VEC_eh_region_gc*, %struct.VEC_eh_landing_pad_gc*, %struct.htab*, %struct.VEC_tree_gc*, %union.eh_status_u }
%struct.eh_region_d = type { %struct.eh_region_d*, %struct.eh_region_d*, %struct.eh_region_d*, i32, i32, %union.eh_region_u, %struct.eh_landing_pad_d*, %struct.rtx_def*, %struct.rtx_def*, i8 }
%union.eh_region_u = type { %struct.eh_region_u_allowed }
%struct.eh_region_u_allowed = type { %union.tree_node*, %union.tree_node*, i32 }
%struct.eh_landing_pad_d = type { %struct.eh_landing_pad_d*, %struct.eh_region_d*, %union.tree_node*, %struct.rtx_def*, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], %struct.object_block*, i64 }
%union.rtunion_def = type { i8* }
%struct.object_block = type { %union.section*, i32, i64, %struct.VEC_rtx_gc*, %struct.VEC_rtx_gc* }
%union.section = type opaque
%struct.VEC_rtx_gc = type { %struct.VEC_rtx_base }
%struct.VEC_rtx_base = type { i32, i32, [1 x %struct.rtx_def*] }
%struct.VEC_eh_region_gc = type { %struct.VEC_eh_region_base }
%struct.VEC_eh_region_base = type { i32, i32, [1 x %struct.eh_region_d*] }
%struct.VEC_eh_landing_pad_gc = type { %struct.VEC_eh_landing_pad_base }
%struct.VEC_eh_landing_pad_base = type { i32, i32, [1 x %struct.eh_landing_pad_d*] }
%struct.VEC_tree_gc = type { %struct.VEC_tree_base }
%struct.VEC_tree_base = type { i32, i32, [1 x %union.tree_node*] }
%union.eh_status_u = type { %struct.VEC_tree_gc* }
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
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.tailcall = type { %struct.gimple_stmt_iterator, i8, %union.tree_node*, %union.tree_node*, %struct.tailcall* }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.referenced_var_iterator = type { %struct.htab_iterator }
%struct.htab_iterator = type { %struct.htab*, i8**, i8** }
%struct.var_ann_d = type { i8, i32, %union.tree_node* }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [6 x i8] c"tailr\00", align 1
@pass_tail_recursion = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_tail_calls, i32 ()* @execute_tail_recursion, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 5 } }, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [6 x i8] c"tailc\00", align 1
@pass_tail_calls = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8 ()* @gate_tail_calls, i32 ()* @execute_tail_calls, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 5 } }, align 8, !dbg !2058
@flag_optimize_sibling_calls = external dso_local local_unnamed_addr global i32, align 4
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@m_acc = internal unnamed_addr global %union.tree_node* null, align 8, !dbg !2086
@a_acc = internal unnamed_addr global %union.tree_node* null, align 8, !dbg !2088
@current_function_decl = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"add_acc\00", align 1
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@.str.3 = private unnamed_addr constant [9 x i8] c"mult_acc\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@flag_associative_math = external dso_local local_unnamed_addr global i32, align 4
@gimple_rhs_class_table = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"tree-tailcall.c\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"Found tail call \00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c" in bb %i\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"Eliminated tail recursion in bb %d : \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"acc_tmp\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"mul_tmp\00", align 1

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
define internal zeroext i8 @gate_tail_calls() #5 !dbg !2540 {
entry:
  %0 = load i32, i32* @flag_optimize_sibling_calls, align 4, !dbg !2541
  %cmp = icmp eq i32 %0, 0, !dbg !2542
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !2543

land.rhs:                                         ; preds = %entry
  %call = tail call zeroext i8 @dbg_cnt(i32 37) #6, !dbg !2544
  %tobool = icmp ne i8 %call, 0, !dbg !2543
  %phitmp = zext i1 %tobool to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %1 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %1, !dbg !2545
}

; Function Attrs: nounwind uwtable
define internal i32 @execute_tail_recursion() #5 !dbg !2546 {
entry:
  %call = tail call fastcc i32 @tree_optimize_tail_calls_1(i8 zeroext 0) #7, !dbg !2547
  ret i32 %call, !dbg !2548
}

; Function Attrs: nounwind uwtable
define internal i32 @execute_tail_calls() #5 !dbg !2549 {
entry:
  %call = tail call fastcc i32 @tree_optimize_tail_calls_1(i8 zeroext 1) #7, !dbg !2550
  ret i32 %call, !dbg !2551
}

declare dso_local zeroext i8 @dbg_cnt(i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @tree_optimize_tail_calls_1(i8 zeroext %opt_tailcalls) unnamed_addr #5 !dbg !2552 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %tailcalls = alloca %struct.tailcall*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp91 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata i8 %opt_tailcalls, metadata !2556, metadata !DIExpression()), !dbg !2585
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !2586
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2586
  call void @llvm.dbg.value(metadata i8 0, metadata !2558, metadata !DIExpression()), !dbg !2585
  %1 = bitcast %struct.tailcall** %tailcalls to i8*, !dbg !2587
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2587
  call void @llvm.dbg.value(metadata %struct.tailcall* null, metadata !2559, metadata !DIExpression()), !dbg !2585
  store %struct.tailcall* null, %struct.tailcall** %tailcalls, align 8, !dbg !2588
  call void @llvm.dbg.value(metadata i8 0, metadata !2562, metadata !DIExpression()), !dbg !2585
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2589
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !2589
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2589
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 0, !dbg !2589
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2589
  %call = tail call fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %4) #7, !dbg !2590
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !2563, metadata !DIExpression()), !dbg !2585
  %5 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2591
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #8, !dbg !2591
  %call1 = tail call fastcc zeroext i8 @suitable_for_tail_opt_p() #7, !dbg !2592
  %tobool = icmp eq i8 %call1, 0, !dbg !2592
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2594

if.end:                                           ; preds = %entry
  %tobool2 = icmp eq i8 %opt_tailcalls, 0, !dbg !2595
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !2597

if.then3:                                         ; preds = %if.end
  %call4 = tail call fastcc zeroext i8 @suitable_for_tail_call_opt_p() #7, !dbg !2598
  call void @llvm.dbg.value(metadata i8 %call4, metadata !2556, metadata !DIExpression()), !dbg !2585
  br label %if.end5, !dbg !2599

if.end5:                                          ; preds = %if.end, %if.then3
  %opt_tailcalls.addr.0 = phi i8 [ %call4, %if.then3 ], [ 0, %if.end ]
  call void @llvm.dbg.value(metadata i8 %opt_tailcalls.addr.0, metadata !2556, metadata !DIExpression()), !dbg !2585
  %6 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2600
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #8, !dbg !2600
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2600
  %cfg7 = getelementptr inbounds %struct.function, %struct.function* %7, i64 0, i32 1, !dbg !2600
  %8 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg7, align 8, !dbg !2600
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %8, i64 0, i32 1, !dbg !2600
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2600
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i64 0, i32 0, !dbg !2600
  %call8 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !2600
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2600
  %11 = extractvalue { i32, %struct.VEC_edge_gc** } %call8, 0, !dbg !2600
  store i32 %11, i32* %10, align 8, !dbg !2600
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2600
  %13 = extractvalue { i32, %struct.VEC_edge_gc** } %call8, 1, !dbg !2600
  store %struct.VEC_edge_gc** %13, %struct.VEC_edge_gc*** %12, align 8, !dbg !2600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* nonnull align 8 %6, i64 16, i1 false), !dbg !2600
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #8, !dbg !2600
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2602
  %15 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2602
  br label %for.cond, !dbg !2600

for.cond:                                         ; preds = %for.inc, %if.end5
  %16 = load i32, i32* %14, align 8, !dbg !2604
  %17 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %15, align 8, !dbg !2604
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2557, metadata !DIExpression(DW_OP_deref)), !dbg !2585
  %call9 = call fastcc zeroext i8 @ei_cond(i32 %16, %struct.VEC_edge_gc** %17, %struct.edge_def** nonnull %e) #7, !dbg !2604
  %tobool10 = icmp eq i8 %call9, 0, !dbg !2600
  br i1 %tobool10, label %for.end, label %for.body, !dbg !2600

for.body:                                         ; preds = %for.cond
  %18 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2605
  call void @llvm.dbg.value(metadata %struct.edge_def* %18, metadata !2557, metadata !DIExpression()), !dbg !2585
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %18, i64 0, i32 0, !dbg !2607
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2607
  %call11 = call %union.gimple_statement_d* @last_stmt(%struct.basic_block_def* %19) #6, !dbg !2608
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call11, metadata !2565, metadata !DIExpression()), !dbg !2585
  %tobool12 = icmp eq %union.gimple_statement_d* %call11, null, !dbg !2609
  br i1 %tobool12, label %for.inc, label %land.lhs.true, !dbg !2611

land.lhs.true:                                    ; preds = %for.body
  %call13 = call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %call11) #7, !dbg !2612
  %cmp = icmp eq i32 %call13, 9, !dbg !2613
  br i1 %cmp, label %if.then14, label %for.inc, !dbg !2614

if.then14:                                        ; preds = %land.lhs.true
  %20 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2615
  call void @llvm.dbg.value(metadata %struct.edge_def* %20, metadata !2557, metadata !DIExpression()), !dbg !2585
  %src15 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %20, i64 0, i32 0, !dbg !2616
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %src15, align 8, !dbg !2616
  call void @llvm.dbg.value(metadata %struct.tailcall** %tailcalls, metadata !2559, metadata !DIExpression(DW_OP_deref)), !dbg !2585
  call fastcc void @find_tail_calls(%struct.basic_block_def* %21, %struct.tailcall** nonnull %tailcalls) #7, !dbg !2617
  br label %for.inc, !dbg !2617

for.inc:                                          ; preds = %for.body, %land.lhs.true, %if.then14
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2566, metadata !DIExpression(DW_OP_deref)), !dbg !2585
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2604
  br label %for.cond, !dbg !2604, !llvm.loop !2618

for.end:                                          ; preds = %for.cond
  store %union.tree_node* null, %union.tree_node** @m_acc, align 8, !dbg !2620
  store %union.tree_node* null, %union.tree_node** @a_acc, align 8, !dbg !2621
  br label %for.cond17, !dbg !2622

for.cond17:                                       ; preds = %for.inc75, %for.end
  %first.0 = phi %struct.basic_block_def* [ %call, %for.end ], [ %first.3, %for.inc75 ], !dbg !2623
  %act.0.in = phi %struct.tailcall** [ %tailcalls, %for.end ], [ %next76, %for.inc75 ]
  %phis_constructed.0 = phi i8 [ 0, %for.end ], [ %phis_constructed.2, %for.inc75 ], !dbg !2624
  %act.0 = load %struct.tailcall*, %struct.tailcall** %act.0.in, align 8, !dbg !2625
  call void @llvm.dbg.value(metadata i8 %phis_constructed.0, metadata !2558, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata %struct.tailcall* %act.0, metadata !2560, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %first.0, metadata !2563, metadata !DIExpression()), !dbg !2585
  %tobool18 = icmp eq %struct.tailcall* %act.0, null, !dbg !2626
  br i1 %tobool18, label %for.cond78.preheader, label %for.body19, !dbg !2626

for.cond78.preheader:                             ; preds = %for.cond17
  %phis_constructed.0.lcssa = phi i8 [ %phis_constructed.0, %for.cond17 ], !dbg !2624
  call void @llvm.dbg.value(metadata i8 %phis_constructed.0.lcssa, metadata !2558, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 %phis_constructed.0.lcssa, metadata !2558, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 %phis_constructed.0.lcssa, metadata !2558, metadata !DIExpression()), !dbg !2585
  %22 = bitcast %struct.tailcall** %tailcalls to i8**, !dbg !2627
  %23 = bitcast %struct.tailcall** %tailcalls to i64*, !dbg !2631
  %.pre = load %struct.tailcall*, %struct.tailcall** %tailcalls, align 8, !dbg !2632
  br label %for.cond78, !dbg !2633

for.body19:                                       ; preds = %for.cond17
  %tail_recursion = getelementptr inbounds %struct.tailcall, %struct.tailcall* %act.0, i64 0, i32 1, !dbg !2634
  %24 = load i8, i8* %tail_recursion, align 8, !dbg !2634
  %tobool20 = icmp eq i8 %24, 0, !dbg !2636
  br i1 %tobool20, label %for.inc75, label %if.end22, !dbg !2637

if.end22:                                         ; preds = %for.body19
  %tobool23 = icmp eq i8 %phis_constructed.0, 0, !dbg !2638
  br i1 %tobool23, label %if.then24, label %if.end62, !dbg !2639

if.then24:                                        ; preds = %if.end22
  %call25 = call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %first.0) #7, !dbg !2640
  %tobool26 = icmp eq i8 %call25, 0, !dbg !2640
  br i1 %tobool26, label %if.then30, label %lor.lhs.false, !dbg !2642

lor.lhs.false:                                    ; preds = %if.then24
  %call27 = call fastcc %struct.gimple_seq_d* @phi_nodes(%struct.basic_block_def* %first.0) #7, !dbg !2643
  %call28 = call fastcc zeroext i8 @gimple_seq_empty_p(%struct.gimple_seq_d* %call27) #7, !dbg !2644
  %tobool29 = icmp eq i8 %call28, 0, !dbg !2644
  br i1 %tobool29, label %if.then30, label %if.end36, !dbg !2645

if.then30:                                        ; preds = %lor.lhs.false, %if.then24
  %25 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2646
  %cfg32 = getelementptr inbounds %struct.function, %struct.function* %25, i64 0, i32 1, !dbg !2646
  %26 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg32, align 8, !dbg !2646
  %x_entry_block_ptr33 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %26, i64 0, i32 0, !dbg !2646
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr33, align 8, !dbg !2646
  %call34 = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %27) #7, !dbg !2647
  %call35 = call %struct.basic_block_def* @split_edge(%struct.edge_def* %call34) #6, !dbg !2648
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call35, metadata !2563, metadata !DIExpression()), !dbg !2585
  br label %if.end36, !dbg !2649

if.end36:                                         ; preds = %lor.lhs.false, %if.then30
  %first.1 = phi %struct.basic_block_def* [ %first.0, %lor.lhs.false ], [ %call35, %if.then30 ], !dbg !2585
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %first.1, metadata !2563, metadata !DIExpression()), !dbg !2585
  %28 = load %struct.tree_decl_non_common*, %struct.tree_decl_non_common** bitcast (%union.tree_node** @current_function_decl to %struct.tree_decl_non_common**), align 8, !dbg !2650
  %arguments = getelementptr inbounds %struct.tree_decl_non_common, %struct.tree_decl_non_common* %28, i64 0, i32 2, !dbg !2650
  br label %for.cond37, !dbg !2651

for.cond37:                                       ; preds = %for.inc60, %if.end36
  %param.0.in = phi %union.tree_node** [ %arguments, %if.end36 ], [ %chain, %for.inc60 ]
  %param.0 = load %union.tree_node*, %union.tree_node** %param.0.in, align 8, !dbg !2652
  call void @llvm.dbg.value(metadata %union.tree_node* %param.0, metadata !2564, metadata !DIExpression()), !dbg !2585
  %tobool38 = icmp eq %union.tree_node* %param.0, null, !dbg !2653
  br i1 %tobool38, label %if.end62.loopexit, label %for.body39, !dbg !2653

for.body39:                                       ; preds = %for.cond37
  %call40 = call fastcc zeroext i8 @arg_needs_copy_p(%union.tree_node* nonnull %param.0) #7, !dbg !2654
  %tobool41 = icmp eq i8 %call40, 0, !dbg !2654
  br i1 %tobool41, label %for.inc60, label %if.then42, !dbg !2655

if.then42:                                        ; preds = %for.body39
  %29 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2656
  %call44 = call %union.tree_node* @gimple_default_def(%struct.function* %29, %union.tree_node* nonnull %param.0) #6, !dbg !2657
  call void @llvm.dbg.value(metadata %union.tree_node* %call44, metadata !2573, metadata !DIExpression()), !dbg !2658
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call44, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2659
  %30 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !2659
  %31 = load %union.gimple_statement_d*, %union.gimple_statement_d** %30, align 8, !dbg !2659
  %call45 = call fastcc %union.tree_node* @make_ssa_name(%union.tree_node* nonnull %param.0, %union.gimple_statement_d* %31) #7, !dbg !2660
  call void @llvm.dbg.value(metadata %union.tree_node* %call45, metadata !2583, metadata !DIExpression()), !dbg !2658
  call void @set_default_def(%union.tree_node* nonnull %param.0, %union.tree_node* %call45) #6, !dbg !2661
  %call46 = call %union.gimple_statement_d* @create_phi_node(%union.tree_node* %call44, %struct.basic_block_def* %first.1) #6, !dbg !2662
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call46, metadata !2584, metadata !DIExpression()), !dbg !2658
  store %union.gimple_statement_d* %call46, %union.gimple_statement_d** %30, align 8, !dbg !2663
  %call49 = call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %first.1) #7, !dbg !2664
  %32 = getelementptr inbounds %union.tree_node, %union.tree_node* %param.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2665
  %bf.load = load i64, i64* %32, align 8, !dbg !2665
  %bf.cast = and i64 %bf.load, 65535, !dbg !2665
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !2665
  %33 = load i32, i32* %arrayidx, align 4, !dbg !2665
  %cmp50 = icmp ugt i32 %33, 3, !dbg !2665
  br i1 %cmp50, label %land.lhs.true51, label %cond.end, !dbg !2665

land.lhs.true51:                                  ; preds = %if.then42
  %cmp58 = icmp ult i32 %33, 11, !dbg !2665
  br i1 %cmp58, label %cond.true, label %cond.end, !dbg !2665

cond.true:                                        ; preds = %land.lhs.true51
  %34 = getelementptr inbounds %union.tree_node, %union.tree_node* %param.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2665
  %35 = load i32, i32* %34, align 8, !dbg !2665
  br label %cond.end, !dbg !2665

cond.end:                                         ; preds = %if.then42, %land.lhs.true51, %cond.true
  %cond = phi i32 [ %35, %cond.true ], [ 0, %land.lhs.true51 ], [ 0, %if.then42 ], !dbg !2665
  call void @add_phi_arg(%union.gimple_statement_d* %call46, %union.tree_node* %call45, %struct.edge_def* %call49, i32 %cond) #6, !dbg !2666
  br label %for.inc60, !dbg !2667

for.inc60:                                        ; preds = %for.body39, %cond.end
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %param.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2668
  br label %for.cond37, !dbg !2669, !llvm.loop !2670

if.end62.loopexit:                                ; preds = %for.cond37
  br label %if.end62, !dbg !2672

if.end62:                                         ; preds = %if.end62.loopexit, %if.end22
  %first.2 = phi %struct.basic_block_def* [ %first.0, %if.end22 ], [ %first.1, %if.end62.loopexit ], !dbg !2623
  %phis_constructed.1 = phi i8 [ %phis_constructed.0, %if.end22 ], [ 1, %if.end62.loopexit ], !dbg !2585
  call void @llvm.dbg.value(metadata i8 %phis_constructed.1, metadata !2558, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %first.2, metadata !2563, metadata !DIExpression()), !dbg !2585
  %add = getelementptr inbounds %struct.tailcall, %struct.tailcall* %act.0, i64 0, i32 3, !dbg !2672
  %36 = load %union.tree_node*, %union.tree_node** %add, align 8, !dbg !2672
  %tobool63 = icmp eq %union.tree_node* %36, null, !dbg !2674
  %37 = load %union.tree_node*, %union.tree_node** @a_acc, align 8, !dbg !2675
  %tobool65 = icmp ne %union.tree_node* %37, null, !dbg !2675
  %or.cond = or i1 %tobool63, %tobool65, !dbg !2676
  br i1 %or.cond, label %if.end68, label %if.then66, !dbg !2676

if.then66:                                        ; preds = %if.end62
  %38 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 13), align 8, !dbg !2677
  %call67 = call fastcc %union.tree_node* @create_tailcall_accumulator(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.basic_block_def* %first.2, %union.tree_node* %38) #7, !dbg !2678
  store %union.tree_node* %call67, %union.tree_node** @a_acc, align 8, !dbg !2679
  br label %if.end68, !dbg !2680

if.end68:                                         ; preds = %if.end62, %if.then66
  %mult = getelementptr inbounds %struct.tailcall, %struct.tailcall* %act.0, i64 0, i32 2, !dbg !2681
  %39 = load %union.tree_node*, %union.tree_node** %mult, align 8, !dbg !2681
  %tobool69 = icmp eq %union.tree_node* %39, null, !dbg !2683
  %40 = load %union.tree_node*, %union.tree_node** @m_acc, align 8, !dbg !2684
  %tobool71 = icmp ne %union.tree_node* %40, null, !dbg !2684
  %or.cond1 = or i1 %tobool69, %tobool71, !dbg !2685
  br i1 %or.cond1, label %for.inc75, label %if.then72, !dbg !2685

if.then72:                                        ; preds = %if.end68
  %41 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 14), align 16, !dbg !2686
  %call73 = call fastcc %union.tree_node* @create_tailcall_accumulator(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %struct.basic_block_def* %first.2, %union.tree_node* %41) #7, !dbg !2687
  store %union.tree_node* %call73, %union.tree_node** @m_acc, align 8, !dbg !2688
  br label %for.inc75, !dbg !2689

for.inc75:                                        ; preds = %for.body19, %if.then72, %if.end68
  %first.3 = phi %struct.basic_block_def* [ %first.0, %for.body19 ], [ %first.2, %if.end68 ], [ %first.2, %if.then72 ], !dbg !2623
  %phis_constructed.2 = phi i8 [ %phis_constructed.0, %for.body19 ], [ %phis_constructed.1, %if.end68 ], [ %phis_constructed.1, %if.then72 ], !dbg !2624
  call void @llvm.dbg.value(metadata i8 %phis_constructed.2, metadata !2558, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %first.3, metadata !2563, metadata !DIExpression()), !dbg !2585
  %next76 = getelementptr inbounds %struct.tailcall, %struct.tailcall* %act.0, i64 0, i32 4, !dbg !2690
  br label %for.cond17, !dbg !2691, !llvm.loop !2692

for.cond78:                                       ; preds = %for.cond78.preheader, %for.body80
  %42 = phi %struct.tailcall* [ %47, %for.body80 ], [ %.pre, %for.cond78.preheader ]
  %43 = phi %struct.tailcall* [ %47, %for.body80 ], [ %.pre, %for.cond78.preheader ], !dbg !2632
  %changed.0 = phi i8 [ %or3, %for.body80 ], [ 0, %for.cond78.preheader ], !dbg !2585
  call void @llvm.dbg.value(metadata i8 %changed.0, metadata !2562, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata %struct.tailcall* %43, metadata !2559, metadata !DIExpression()), !dbg !2585
  %tobool79 = icmp eq %struct.tailcall* %43, null, !dbg !2633
  br i1 %tobool79, label %for.end86, label %for.body80, !dbg !2633

for.body80:                                       ; preds = %for.cond78
  call void @llvm.dbg.value(metadata %struct.tailcall* %42, metadata !2559, metadata !DIExpression()), !dbg !2585
  %next81 = getelementptr inbounds %struct.tailcall, %struct.tailcall* %42, i64 0, i32 4, !dbg !2694
  %44 = bitcast %struct.tailcall** %next81 to i64*, !dbg !2694
  %45 = load i64, i64* %44, align 8, !dbg !2694
  call void @llvm.dbg.value(metadata %struct.tailcall* %42, metadata !2559, metadata !DIExpression()), !dbg !2585
  %call82 = call fastcc zeroext i8 @optimize_tail_call(%struct.tailcall* %42, i8 zeroext %opt_tailcalls.addr.0) #7, !dbg !2695
  %or3 = or i8 %changed.0, %call82, !dbg !2696
  call void @llvm.dbg.value(metadata i8 %or3, metadata !2562, metadata !DIExpression()), !dbg !2585
  %46 = load i8*, i8** %22, align 8, !dbg !2697
  call void @free(i8* %46) #6, !dbg !2698
  store i64 %45, i64* %23, align 8, !dbg !2699
  %47 = inttoptr i64 %45 to %struct.tailcall*, !dbg !2700
  br label %for.cond78, !dbg !2700, !llvm.loop !2701

for.end86:                                        ; preds = %for.cond78
  %changed.0.lcssa = phi i8 [ %changed.0, %for.cond78 ], !dbg !2585
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !2562, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !2562, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 %changed.0.lcssa, metadata !2562, metadata !DIExpression()), !dbg !2585
  %48 = load %union.tree_node*, %union.tree_node** @a_acc, align 8, !dbg !2703
  %tobool87 = icmp ne %union.tree_node* %48, null, !dbg !2703
  %49 = load %union.tree_node*, %union.tree_node** @m_acc, align 8, !dbg !2705
  %tobool89 = icmp ne %union.tree_node* %49, null, !dbg !2705
  %or.cond2 = or i1 %tobool87, %tobool89, !dbg !2706
  br i1 %or.cond2, label %if.then90, label %if.end113, !dbg !2706

if.then90:                                        ; preds = %for.end86
  %50 = bitcast %struct.edge_iterator* %tmp91 to i8*, !dbg !2707
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %50) #8, !dbg !2707
  %51 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2707
  %cfg93 = getelementptr inbounds %struct.function, %struct.function* %51, i64 0, i32 1, !dbg !2707
  %52 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg93, align 8, !dbg !2707
  %x_exit_block_ptr94 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %52, i64 0, i32 1, !dbg !2707
  %53 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr94, align 8, !dbg !2707
  %preds95 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %53, i64 0, i32 0, !dbg !2707
  %call96 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds95) #7, !dbg !2707
  %54 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp91, i64 0, i32 0, !dbg !2707
  %55 = extractvalue { i32, %struct.VEC_edge_gc** } %call96, 0, !dbg !2707
  store i32 %55, i32* %54, align 8, !dbg !2707
  %56 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp91, i64 0, i32 1, !dbg !2707
  %57 = extractvalue { i32, %struct.VEC_edge_gc** } %call96, 1, !dbg !2707
  store %struct.VEC_edge_gc** %57, %struct.VEC_edge_gc*** %56, align 8, !dbg !2707
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* nonnull align 8 %50, i64 16, i1 false), !dbg !2707
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %50) #8, !dbg !2707
  br label %for.cond97, !dbg !2707

for.cond97:                                       ; preds = %for.inc111, %if.then90
  %58 = load i32, i32* %14, align 8, !dbg !2710
  %59 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %15, align 8, !dbg !2710
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2557, metadata !DIExpression(DW_OP_deref)), !dbg !2585
  %call98 = call fastcc zeroext i8 @ei_cond(i32 %58, %struct.VEC_edge_gc** %59, %struct.edge_def** nonnull %e) #7, !dbg !2710
  %tobool99 = icmp eq i8 %call98, 0, !dbg !2707
  br i1 %tobool99, label %if.end113.loopexit, label %for.body100, !dbg !2707

for.body100:                                      ; preds = %for.cond97
  %60 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2712
  call void @llvm.dbg.value(metadata %struct.edge_def* %60, metadata !2557, metadata !DIExpression()), !dbg !2585
  %src101 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %60, i64 0, i32 0, !dbg !2714
  %61 = load %struct.basic_block_def*, %struct.basic_block_def** %src101, align 8, !dbg !2714
  %call102 = call %union.gimple_statement_d* @last_stmt(%struct.basic_block_def* %61) #6, !dbg !2715
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call102, metadata !2565, metadata !DIExpression()), !dbg !2585
  %tobool103 = icmp eq %union.gimple_statement_d* %call102, null, !dbg !2716
  br i1 %tobool103, label %for.inc111, label %land.lhs.true104, !dbg !2718

land.lhs.true104:                                 ; preds = %for.body100
  %call105 = call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %call102) #7, !dbg !2719
  %cmp106 = icmp eq i32 %call105, 9, !dbg !2720
  br i1 %cmp106, label %if.then108, label %for.inc111, !dbg !2721

if.then108:                                       ; preds = %land.lhs.true104
  %62 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2722
  call void @llvm.dbg.value(metadata %struct.edge_def* %62, metadata !2557, metadata !DIExpression()), !dbg !2585
  %src109 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %62, i64 0, i32 0, !dbg !2723
  %63 = load %struct.basic_block_def*, %struct.basic_block_def** %src109, align 8, !dbg !2723
  %64 = load %union.tree_node*, %union.tree_node** @m_acc, align 8, !dbg !2724
  %65 = load %union.tree_node*, %union.tree_node** @a_acc, align 8, !dbg !2725
  call fastcc void @adjust_return_value(%struct.basic_block_def* %63, %union.tree_node* %64, %union.tree_node* %65) #7, !dbg !2726
  br label %for.inc111, !dbg !2726

for.inc111:                                       ; preds = %for.body100, %land.lhs.true104, %if.then108
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2566, metadata !DIExpression(DW_OP_deref)), !dbg !2585
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2710
  br label %for.cond97, !dbg !2710, !llvm.loop !2727

if.end113.loopexit:                               ; preds = %for.cond97
  br label %if.end113, !dbg !2729

if.end113:                                        ; preds = %if.end113.loopexit, %for.end86
  %tobool114 = icmp eq i8 %changed.0.lcssa, 0, !dbg !2729
  br i1 %tobool114, label %if.end116, label %if.then115, !dbg !2731

if.then115:                                       ; preds = %if.end113
  call void @free_dominance_info(i32 1) #6, !dbg !2732
  br label %if.end116, !dbg !2732

if.end116:                                        ; preds = %if.end113, %if.then115
  %tobool117 = icmp eq i8 %phis_constructed.0.lcssa, 0, !dbg !2733
  br i1 %tobool117, label %if.end119, label %if.then118, !dbg !2735

if.then118:                                       ; preds = %if.end116
  call fastcc void @add_virtual_phis() #7, !dbg !2736
  br label %if.end119, !dbg !2736

if.end119:                                        ; preds = %if.end116, %if.then118
  %. = select i1 %tobool114, i32 0, i32 16416, !dbg !2585
  br label %cleanup, !dbg !2585

cleanup:                                          ; preds = %entry, %if.end119
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.end119 ], !dbg !2585
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #8, !dbg !2737
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2737
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2737
  ret i32 %retval.0, !dbg !2737
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2738 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2745, metadata !DIExpression()), !dbg !2746
  %call = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) #7, !dbg !2747
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 1, !dbg !2748
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2748
  ret %struct.basic_block_def* %0, !dbg !2749
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @suitable_for_tail_opt_p() unnamed_addr #5 !dbg !2750 {
entry:
  %rvi = alloca %struct.referenced_var_iterator, align 8
  %0 = bitcast %struct.referenced_var_iterator* %rvi to i8*, !dbg !2764
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2764
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2765
  %stdarg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 20, !dbg !2767
  %bf.load = load i32, i32* %stdarg, align 8, !dbg !2767
  %bf.clear = and i32 %bf.load, 4194304, !dbg !2767
  %tobool = icmp eq i32 %bf.clear, 0, !dbg !2765
  br i1 %tobool, label %if.end, label %cleanup, !dbg !2768

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %rvi, metadata !2752, metadata !DIExpression(DW_OP_deref)), !dbg !2769
  %call = call fastcc %union.tree_node* @first_referenced_var(%struct.referenced_var_iterator* nonnull %rvi) #7, !dbg !2770
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2763, metadata !DIExpression()), !dbg !2769
  br label %for.cond, !dbg !2770

for.cond:                                         ; preds = %for.inc, %if.end
  %var.0 = phi %union.tree_node* [ %call, %if.end ], [ %call9, %for.inc ], !dbg !2772
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0, metadata !2763, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %rvi, metadata !2752, metadata !DIExpression(DW_OP_deref)), !dbg !2769
  %call1 = call fastcc zeroext i8 @end_referenced_vars_p(%struct.referenced_var_iterator* nonnull %rvi) #7, !dbg !2773
  %tobool2 = icmp eq i8 %call1, 0, !dbg !2773
  br i1 %tobool2, label %for.body, label %cleanup.loopexit, !dbg !2770

for.body:                                         ; preds = %for.cond
  %call3 = call fastcc zeroext i8 @is_global_var(%union.tree_node* %var.0) #7, !dbg !2775
  %tobool4 = icmp eq i8 %call3, 0, !dbg !2775
  br i1 %tobool4, label %land.lhs.true, label %for.inc, !dbg !2778

land.lhs.true:                                    ; preds = %for.body
  %call5 = call fastcc zeroext i8 @is_call_used(%union.tree_node* %var.0) #7, !dbg !2779
  %tobool6 = icmp eq i8 %call5, 0, !dbg !2779
  br i1 %tobool6, label %for.inc, label %cleanup.loopexit, !dbg !2780

for.inc:                                          ; preds = %land.lhs.true, %for.body
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %rvi, metadata !2752, metadata !DIExpression(DW_OP_deref)), !dbg !2769
  %call9 = call fastcc %union.tree_node* @next_referenced_var(%struct.referenced_var_iterator* nonnull %rvi) #7, !dbg !2773
  call void @llvm.dbg.value(metadata %union.tree_node* %call9, metadata !2763, metadata !DIExpression()), !dbg !2769
  br label %for.cond, !dbg !2773, !llvm.loop !2781

cleanup.loopexit:                                 ; preds = %for.cond, %land.lhs.true
  %retval.0.ph = phi i8 [ 1, %for.cond ], [ 0, %land.lhs.true ]
  br label %cleanup, !dbg !2783

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  %retval.0 = phi i8 [ 0, %entry ], [ %retval.0.ph, %cleanup.loopexit ], !dbg !2769
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2783
  ret i8 %retval.0, !dbg !2783
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @suitable_for_tail_call_opt_p() unnamed_addr #5 !dbg !2784 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2787
  %calls_alloca = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 20, !dbg !2789
  %bf.load = load i32, i32* %calls_alloca, align 8, !dbg !2789
  %bf.clear = and i32 %bf.load, 524288, !dbg !2789
  %tobool = icmp eq i32 %bf.clear, 0, !dbg !2787
  br i1 %tobool, label %if.end, label %cleanup, !dbg !2790

if.end:                                           ; preds = %entry
  %bf.clear4 = and i32 %bf.load, 262144, !dbg !2791
  %tobool5 = icmp eq i32 %bf.clear4, 0, !dbg !2793
  br i1 %tobool5, label %if.end7, label %cleanup, !dbg !2794

if.end7:                                          ; preds = %if.end
  %1 = load %struct.tree_decl_non_common*, %struct.tree_decl_non_common** bitcast (%union.tree_node** @current_function_decl to %struct.tree_decl_non_common**), align 8, !dbg !2795
  %arguments = getelementptr inbounds %struct.tree_decl_non_common, %struct.tree_decl_non_common* %1, i64 0, i32 2, !dbg !2795
  br label %for.cond, !dbg !2797

for.cond:                                         ; preds = %for.inc, %if.end7
  %param.0.in = phi %union.tree_node** [ %arguments, %if.end7 ], [ %chain, %for.inc ]
  %param.0 = load %union.tree_node*, %union.tree_node** %param.0.in, align 8, !dbg !2798
  call void @llvm.dbg.value(metadata %union.tree_node* %param.0, metadata !2786, metadata !DIExpression()), !dbg !2799
  %tobool8 = icmp eq %union.tree_node* %param.0, null, !dbg !2800
  br i1 %tobool8, label %cleanup.loopexit, label %for.body, !dbg !2800

for.body:                                         ; preds = %for.cond
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %param.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2801
  %bf.load9 = load i64, i64* %2, align 8, !dbg !2801
  %bf.cast1 = and i64 %bf.load9, 262144, !dbg !2801
  %tobool12 = icmp eq i64 %bf.cast1, 0, !dbg !2801
  br i1 %tobool12, label %for.inc, label %cleanup.loopexit, !dbg !2804

for.inc:                                          ; preds = %for.body
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %param.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2805
  br label %for.cond, !dbg !2806, !llvm.loop !2807

cleanup.loopexit:                                 ; preds = %for.cond, %for.body
  %retval.0.ph = phi i8 [ 1, %for.cond ], [ 0, %for.body ]
  br label %cleanup, !dbg !2809

cleanup:                                          ; preds = %cleanup.loopexit, %if.end, %entry
  %retval.0 = phi i8 [ 0, %entry ], [ 0, %if.end ], [ %retval.0.ph, %cleanup.loopexit ], !dbg !2799
  ret i8 %retval.0, !dbg !2809
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !2810 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !2814, metadata !DIExpression()), !dbg !2816
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !2817
  store i32 0, i32* %index, align 8, !dbg !2818
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !2819
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !2820
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !2821
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !2821
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !2821
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !2822 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !2828, metadata !DIExpression()), !dbg !2829
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !2830
  %tobool = icmp eq i8 %call, 0, !dbg !2830
  br i1 %tobool, label %if.then, label %if.else, !dbg !2832

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !2833
  br label %return, !dbg !2835

if.else:                                          ; preds = %entry
  br label %return, !dbg !2836

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !2838
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !2838
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !2838
  ret i8 %retval.0, !dbg !2839
}

declare dso_local %union.gimple_statement_d* @last_stmt(%struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2840 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2845, metadata !DIExpression()), !dbg !2846
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !2847
  %bf.load = load i32, i32* %0, align 8, !dbg !2847
  %bf.clear = and i32 %bf.load, 255, !dbg !2847
  ret i32 %bf.clear, !dbg !2848
}

; Function Attrs: nounwind uwtable
define internal fastcc void @find_tail_calls(%struct.basic_block_def* %bb, %struct.tailcall** %ret) unnamed_addr #5 !dbg !2849 {
entry:
  %ass_var = alloca %union.tree_node*, align 8
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %agsi = alloca %struct.gimple_stmt_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp27 = alloca %struct.edge_iterator, align 8
  %tmp_a = alloca %union.tree_node*, align 8
  %tmp_m = alloca %union.tree_node*, align 8
  %tmp92 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2854, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata %struct.tailcall** %ret, metadata !2855, metadata !DIExpression()), !dbg !2880
  %0 = bitcast %union.tree_node** %ass_var to i8*, !dbg !2881
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2881
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !2856, metadata !DIExpression()), !dbg !2880
  store %union.tree_node* null, %union.tree_node** %ass_var, align 8, !dbg !2882
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* null, metadata !2861, metadata !DIExpression()), !dbg !2880
  %1 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2883
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !2883
  %2 = bitcast %struct.gimple_stmt_iterator* %agsi to i8*, !dbg !2883
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #8, !dbg !2883
  %3 = bitcast %struct.edge_def** %e to i8*, !dbg !2884
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8, !dbg !2884
  %call1 = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) #7, !dbg !2885
  %tobool = icmp eq i8 %call1, 0, !dbg !2885
  br i1 %tobool, label %cleanup160, label %if.end, !dbg !2887

if.end:                                           ; preds = %entry
  %4 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2888
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #8, !dbg !2888
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb) #7, !dbg !2888
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %4, i64 24, i1 false), !dbg !2888
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #8, !dbg !2888
  br label %for.cond, !dbg !2890

for.cond:                                         ; preds = %for.inc, %if.end
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2862, metadata !DIExpression(DW_OP_deref)), !dbg !2880
  %call2 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2891
  %tobool3 = icmp eq i8 %call2, 0, !dbg !2893
  br i1 %tobool3, label %for.body, label %for.end.loopexit, !dbg !2894

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2862, metadata !DIExpression(DW_OP_deref)), !dbg !2880
  %call4 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2895
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call4, metadata !2860, metadata !DIExpression()), !dbg !2880
  %call5 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call4) #7, !dbg !2897
  %cmp = icmp eq i32 %call5, 4, !dbg !2899
  br i1 %cmp, label %for.inc, label %lor.lhs.false, !dbg !2900

lor.lhs.false:                                    ; preds = %for.body
  %call6 = call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %call4) #7, !dbg !2901
  %tobool7 = icmp eq i8 %call6, 0, !dbg !2901
  br i1 %tobool7, label %if.end9, label %for.inc, !dbg !2902

if.end9:                                          ; preds = %lor.lhs.false
  %call10 = call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %call4) #7, !dbg !2903
  %tobool11 = icmp eq i8 %call10, 0, !dbg !2903
  br i1 %tobool11, label %if.end14, label %if.then12, !dbg !2905

if.then12:                                        ; preds = %if.end9
  %call4.lcssa = phi %union.gimple_statement_d* [ %call4, %if.end9 ], !dbg !2895
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call4.lcssa, metadata !2861, metadata !DIExpression()), !dbg !2880
  %call13 = call fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %call4.lcssa) #7, !dbg !2906
  call void @llvm.dbg.value(metadata %union.tree_node* %call13, metadata !2856, metadata !DIExpression()), !dbg !2880
  store %union.tree_node* %call13, %union.tree_node** %ass_var, align 8, !dbg !2908
  br label %for.end, !dbg !2909

if.end14:                                         ; preds = %if.end9
  %call15 = call fastcc zeroext i8 @gimple_references_memory_p(%union.gimple_statement_d* %call4) #7, !dbg !2910
  %tobool17 = icmp eq i8 %call15, 0, !dbg !2910
  br i1 %tobool17, label %lor.lhs.false18, label %cleanup160.loopexit3, !dbg !2912

lor.lhs.false18:                                  ; preds = %if.end14
  %call19 = call fastcc zeroext i8 @gimple_has_volatile_ops(%union.gimple_statement_d* %call4) #7, !dbg !2913
  %tobool21 = icmp eq i8 %call19, 0, !dbg !2913
  br i1 %tobool21, label %for.inc, label %cleanup160.loopexit3, !dbg !2914

for.inc:                                          ; preds = %lor.lhs.false18, %lor.lhs.false, %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2862, metadata !DIExpression(DW_OP_deref)), !dbg !2880
  call fastcc void @gsi_prev(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !2915
  br label %for.cond, !dbg !2916, !llvm.loop !2917

for.end.loopexit:                                 ; preds = %for.cond
  br label %for.end, !dbg !2919

for.end:                                          ; preds = %for.end.loopexit, %if.then12
  %call.0 = phi %union.gimple_statement_d* [ %call4.lcssa, %if.then12 ], [ null, %for.end.loopexit ], !dbg !2880
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call.0, metadata !2861, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2862, metadata !DIExpression(DW_OP_deref)), !dbg !2880
  %call24 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2919
  %tobool25 = icmp eq i8 %call24, 0, !dbg !2919
  br i1 %tobool25, label %if.end35, label %if.then26, !dbg !2920

if.then26:                                        ; preds = %for.end
  %5 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2921
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #8, !dbg !2921
  %6 = bitcast %struct.edge_iterator* %tmp27 to i8*, !dbg !2922
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #8, !dbg !2922
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !2922
  %call28 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !2922
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp27, i64 0, i32 0, !dbg !2922
  %8 = extractvalue { i32, %struct.VEC_edge_gc** } %call28, 0, !dbg !2922
  store i32 %8, i32* %7, align 8, !dbg !2922
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp27, i64 0, i32 1, !dbg !2922
  %10 = extractvalue { i32, %struct.VEC_edge_gc** } %call28, 1, !dbg !2922
  store %struct.VEC_edge_gc** %10, %struct.VEC_edge_gc*** %9, align 8, !dbg !2922
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* nonnull align 8 %6, i64 16, i1 false), !dbg !2922
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #8, !dbg !2922
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2924
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2924
  br label %for.cond29, !dbg !2922

for.cond29:                                       ; preds = %for.body32, %if.then26
  %13 = load i32, i32* %11, align 8, !dbg !2926
  %14 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %12, align 8, !dbg !2926
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2866, metadata !DIExpression(DW_OP_deref)), !dbg !2880
  %call30 = call fastcc zeroext i8 @ei_cond(i32 %13, %struct.VEC_edge_gc** %14, %struct.edge_def** nonnull %e) #7, !dbg !2926
  %tobool31 = icmp eq i8 %call30, 0, !dbg !2922
  br i1 %tobool31, label %for.end34, label %for.body32, !dbg !2922

for.body32:                                       ; preds = %for.cond29
  %15 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2927
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !2866, metadata !DIExpression()), !dbg !2880
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %15, i64 0, i32 0, !dbg !2928
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2928
  call fastcc void @find_tail_calls(%struct.basic_block_def* %16, %struct.tailcall** %ret) #7, !dbg !2929
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2871, metadata !DIExpression(DW_OP_deref)), !dbg !2930
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2926
  br label %for.cond29, !dbg !2926, !llvm.loop !2931

for.end34:                                        ; preds = %for.cond29
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #8, !dbg !2933
  br label %cleanup160

if.end35:                                         ; preds = %for.end
  %17 = load %union.tree_node*, %union.tree_node** %ass_var, align 8, !dbg !2934
  call void @llvm.dbg.value(metadata %union.tree_node* %17, metadata !2856, metadata !DIExpression()), !dbg !2880
  %tobool36 = icmp eq %union.tree_node* %17, null, !dbg !2934
  br i1 %tobool36, label %if.end40, label %land.lhs.true, !dbg !2936

land.lhs.true:                                    ; preds = %if.end35
  call void @llvm.dbg.value(metadata %union.tree_node* %17, metadata !2856, metadata !DIExpression()), !dbg !2880
  %call37 = call zeroext i8 @is_gimple_reg(%union.tree_node* nonnull %17) #6, !dbg !2937
  %tobool38 = icmp eq i8 %call37, 0, !dbg !2937
  br i1 %tobool38, label %cleanup160, label %if.end40, !dbg !2938

if.end40:                                         ; preds = %land.lhs.true, %if.end35
  call void @llvm.dbg.value(metadata i8 0, metadata !2864, metadata !DIExpression()), !dbg !2880
  %call41 = call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %call.0) #7, !dbg !2939
  call void @llvm.dbg.value(metadata %union.tree_node* %call41, metadata !2858, metadata !DIExpression()), !dbg !2880
  %18 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !2940
  %cmp42 = icmp eq %union.tree_node* %call41, %18, !dbg !2941
  br i1 %cmp42, label %if.then44, label %if.end84, !dbg !2942

if.then44:                                        ; preds = %if.end40
  %arguments = getelementptr inbounds %union.tree_node, %union.tree_node* %call41, i64 0, i32 0, i32 0, i32 2, !dbg !2943
  call void @llvm.dbg.value(metadata i64 0, metadata !2870, metadata !DIExpression()), !dbg !2880
  br label %for.cond45, !dbg !2945

for.cond45:                                       ; preds = %for.inc73, %if.then44
  %param.0.in = phi %union.tree_node** [ %arguments, %if.then44 ], [ %chain, %for.inc73 ]
  %idx.0 = phi i64 [ 0, %if.then44 ], [ %inc, %for.inc73 ], !dbg !2946
  %param.0 = load %union.tree_node*, %union.tree_node** %param.0.in, align 8, !dbg !2946
  call void @llvm.dbg.value(metadata i64 %idx.0, metadata !2870, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata %union.tree_node* %param.0, metadata !2859, metadata !DIExpression()), !dbg !2880
  %tobool46 = icmp eq %union.tree_node* %param.0, null, !dbg !2947
  br i1 %tobool46, label %for.end75, label %land.rhs, !dbg !2949

land.rhs:                                         ; preds = %for.cond45
  %call47 = call fastcc i32 @gimple_call_num_args(%union.gimple_statement_d* %call.0) #7, !dbg !2950
  %conv48 = zext i32 %call47 to i64, !dbg !2950
  %cmp49 = icmp ult i64 %idx.0, %conv48, !dbg !2951
  br i1 %cmp49, label %for.body51, label %for.end75, !dbg !2952

for.body51:                                       ; preds = %land.rhs
  %conv52 = trunc i64 %idx.0 to i32, !dbg !2953
  %call53 = call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call.0, i32 %conv52) #7, !dbg !2955
  call void @llvm.dbg.value(metadata %union.tree_node* %call53, metadata !2874, metadata !DIExpression()), !dbg !2956
  %cmp54 = icmp eq %union.tree_node* %param.0, %call53, !dbg !2957
  br i1 %cmp54, label %for.inc73, label %if.then56, !dbg !2959

if.then56:                                        ; preds = %for.body51
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %param.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2960
  %19 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2960
  %call57 = call zeroext i8 @is_gimple_reg_type(%union.tree_node* %19) #6, !dbg !2963
  %tobool58 = icmp eq i8 %call57, 0, !dbg !2963
  br i1 %tobool58, label %for.end75, label %lor.lhs.false59, !dbg !2964

lor.lhs.false59:                                  ; preds = %if.then56
  %20 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2965
  %type63 = getelementptr inbounds %union.tree_node, %union.tree_node* %call53, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2966
  %21 = load %union.tree_node*, %union.tree_node** %type63, align 8, !dbg !2966
  %call64 = call zeroext i8 @useless_type_conversion_p(%union.tree_node* %20, %union.tree_node* %21) #6, !dbg !2967
  %tobool65 = icmp eq i8 %call64, 0, !dbg !2967
  br i1 %tobool65, label %for.end75, label %if.end67, !dbg !2968

if.end67:                                         ; preds = %lor.lhs.false59
  %call68 = call zeroext i8 @is_gimple_reg(%union.tree_node* nonnull %param.0) #6, !dbg !2969
  %tobool69 = icmp eq i8 %call68, 0, !dbg !2969
  br i1 %tobool69, label %for.end75, label %for.inc73, !dbg !2971

for.inc73:                                        ; preds = %if.end67, %for.body51
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %param.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2972
  %inc = add nuw nsw i64 %idx.0, 1, !dbg !2973
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2870, metadata !DIExpression()), !dbg !2880
  br label %for.cond45, !dbg !2974, !llvm.loop !2975

for.end75:                                        ; preds = %if.end67, %lor.lhs.false59, %if.then56, %for.cond45, %land.rhs
  %idx.0.lcssa = phi i64 [ %idx.0, %if.end67 ], [ %idx.0, %lor.lhs.false59 ], [ %idx.0, %if.then56 ], [ %idx.0, %for.cond45 ], [ %idx.0, %land.rhs ], !dbg !2946
  %tobool46.lcssa = phi i1 [ %tobool46, %if.end67 ], [ %tobool46, %lor.lhs.false59 ], [ %tobool46, %if.then56 ], [ %tobool46, %for.cond45 ], [ %tobool46, %land.rhs ], !dbg !2947
  call void @llvm.dbg.value(metadata i64 %idx.0.lcssa, metadata !2870, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %idx.0.lcssa, metadata !2870, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %idx.0.lcssa, metadata !2870, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %idx.0.lcssa, metadata !2870, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %idx.0.lcssa, metadata !2870, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %idx.0.lcssa, metadata !2870, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %idx.0.lcssa, metadata !2870, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %idx.0.lcssa, metadata !2870, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %idx.0.lcssa, metadata !2870, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %idx.0.lcssa, metadata !2870, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %idx.0.lcssa, metadata !2870, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %idx.0.lcssa, metadata !2870, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %idx.0.lcssa, metadata !2870, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %idx.0.lcssa, metadata !2870, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i64 %idx.0.lcssa, metadata !2870, metadata !DIExpression()), !dbg !2880
  %call76 = call fastcc i32 @gimple_call_num_args(%union.gimple_statement_d* %call.0) #7, !dbg !2977
  %conv77 = zext i32 %call76 to i64, !dbg !2977
  %cmp78 = icmp eq i64 %idx.0.lcssa, %conv77, !dbg !2979
  %not.or.cond = and i1 %tobool46.lcssa, %cmp78, !dbg !2980
  %tail_recursion.0 = zext i1 %not.or.cond to i8, !dbg !2980
  br label %if.end84, !dbg !2980

if.end84:                                         ; preds = %for.end75, %if.end40
  %tail_recursion.1 = phi i8 [ 0, %if.end40 ], [ %tail_recursion.0, %for.end75 ], !dbg !2981
  call void @llvm.dbg.value(metadata i8 %tail_recursion.1, metadata !2864, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !2867, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !2868, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2869, metadata !DIExpression()), !dbg !2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !2982
  %22 = bitcast %union.tree_node** %tmp_a to i8*, !dbg !2983
  %23 = bitcast %union.tree_node** %tmp_m to i8*, !dbg !2983
  %24 = bitcast %struct.gimple_stmt_iterator* %tmp92 to i8*, !dbg !2984
  %25 = bitcast %union.tree_node** %tmp_m to %struct.tree_common**, !dbg !2986
  br label %while.cond, !dbg !2990

while.cond:                                       ; preds = %while.cond.backedge, %if.end84
  %m.0 = phi %union.tree_node* [ null, %if.end84 ], [ %m.3, %while.cond.backedge ], !dbg !2991
  %a.0 = phi %union.tree_node* [ null, %if.end84 ], [ %a.5, %while.cond.backedge ], !dbg !2992
  %abb.0 = phi %struct.basic_block_def* [ %bb, %if.end84 ], [ %abb.1.lcssa, %while.cond.backedge ], !dbg !2993
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %abb.0, metadata !2869, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata %union.tree_node* %a.0, metadata !2868, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata %union.tree_node* %m.0, metadata !2867, metadata !DIExpression()), !dbg !2880
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #8, !dbg !2994
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !2877, metadata !DIExpression()), !dbg !2983
  store %union.tree_node* null, %union.tree_node** %tmp_a, align 8, !dbg !2995
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #8, !dbg !2996
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !2879, metadata !DIExpression()), !dbg !2983
  store %union.tree_node* null, %union.tree_node** %tmp_m, align 8, !dbg !2997
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %agsi, metadata !2863, metadata !DIExpression(DW_OP_deref)), !dbg !2880
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %agsi) #7, !dbg !2998
  br label %while.cond85, !dbg !2999

while.cond85:                                     ; preds = %while.body88, %while.cond
  %abb.1 = phi %struct.basic_block_def* [ %abb.0, %while.cond ], [ %call91, %while.body88 ], !dbg !2880
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %abb.1, metadata !2869, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %agsi, metadata !2863, metadata !DIExpression(DW_OP_deref)), !dbg !2880
  %call86 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %agsi) #7, !dbg !3000
  %tobool87 = icmp eq i8 %call86, 0, !dbg !2999
  br i1 %tobool87, label %while.end, label %while.body88, !dbg !2999

while.body88:                                     ; preds = %while.cond85
  %26 = load %union.tree_node*, %union.tree_node** %ass_var, align 8, !dbg !3001
  call void @llvm.dbg.value(metadata %union.tree_node* %26, metadata !2856, metadata !DIExpression()), !dbg !2880
  %call89 = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %abb.1) #7, !dbg !3002
  %call90 = call fastcc %union.tree_node* @propagate_through_phis(%union.tree_node* %26, %struct.edge_def* %call89) #7, !dbg !3003
  call void @llvm.dbg.value(metadata %union.tree_node* %call90, metadata !2856, metadata !DIExpression()), !dbg !2880
  store %union.tree_node* %call90, %union.tree_node** %ass_var, align 8, !dbg !3004
  %call91 = call fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %abb.1) #7, !dbg !3005
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call91, metadata !2869, metadata !DIExpression()), !dbg !2880
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %24) #8, !dbg !3006
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp92, %struct.basic_block_def* %call91) #7, !dbg !3006
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %24, i64 24, i1 false), !dbg !3006
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %24) #8, !dbg !3006
  br label %while.cond85, !dbg !2999, !llvm.loop !3007

while.end:                                        ; preds = %while.cond85
  %abb.1.lcssa = phi %struct.basic_block_def* [ %abb.1, %while.cond85 ], !dbg !2880
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %abb.1.lcssa, metadata !2869, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %abb.1.lcssa, metadata !2869, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %abb.1.lcssa, metadata !2869, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %agsi, metadata !2863, metadata !DIExpression(DW_OP_deref)), !dbg !2880
  %call93 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %agsi) #7, !dbg !3009
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call93, metadata !2860, metadata !DIExpression()), !dbg !2880
  %call94 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call93) #7, !dbg !3010
  %cmp95 = icmp eq i32 %call94, 4, !dbg !3012
  br i1 %cmp95, label %cleanup, label %if.end98, !dbg !3013, !llvm.loop !3014

if.end98:                                         ; preds = %while.end
  %call99 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call93) #7, !dbg !3016
  %cmp100 = icmp eq i32 %call99, 9, !dbg !3018
  br i1 %cmp100, label %cleanup, label %if.end103, !dbg !3019

if.end103:                                        ; preds = %if.end98
  %call104 = call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %call93) #7, !dbg !3020
  %tobool105 = icmp eq i8 %call104, 0, !dbg !3020
  br i1 %tobool105, label %if.end107, label %cleanup, !dbg !3022, !llvm.loop !3014

if.end107:                                        ; preds = %if.end103
  %call108 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call93) #7, !dbg !3023
  %cmp109 = icmp eq i32 %call108, 6, !dbg !3025
  br i1 %cmp109, label %if.end112, label %cleanup, !dbg !3026

if.end112:                                        ; preds = %if.end107
  call void @llvm.dbg.value(metadata %union.tree_node** %ass_var, metadata !2856, metadata !DIExpression(DW_OP_deref)), !dbg !2880
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2862, metadata !DIExpression(DW_OP_deref)), !dbg !2880
  call void @llvm.dbg.value(metadata %union.tree_node** %tmp_a, metadata !2877, metadata !DIExpression(DW_OP_deref)), !dbg !2983
  call void @llvm.dbg.value(metadata %union.tree_node** %tmp_m, metadata !2879, metadata !DIExpression(DW_OP_deref)), !dbg !2983
  %call113 = call fastcc zeroext i8 @process_assignment(%union.gimple_statement_d* %call93, %struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi, %union.tree_node** nonnull %tmp_m, %union.tree_node** nonnull %tmp_a, %union.tree_node** nonnull %ass_var) #7, !dbg !3027
  %tobool114 = icmp eq i8 %call113, 0, !dbg !3027
  br i1 %tobool114, label %cleanup, label %if.end116, !dbg !3029

if.end116:                                        ; preds = %if.end112
  %27 = load %union.tree_node*, %union.tree_node** %tmp_a, align 8, !dbg !3030
  call void @llvm.dbg.value(metadata %union.tree_node* %27, metadata !2877, metadata !DIExpression()), !dbg !2983
  %tobool117 = icmp eq %union.tree_node* %27, null, !dbg !3030
  br i1 %tobool117, label %if.end125, label %if.then118, !dbg !3032

if.then118:                                       ; preds = %if.end116
  %tobool119 = icmp eq %union.tree_node* %a.0, null, !dbg !3033
  call void @llvm.dbg.value(metadata %union.tree_node* %27, metadata !2877, metadata !DIExpression()), !dbg !2983
  br i1 %tobool119, label %if.end125, label %if.then120, !dbg !3036

if.then120:                                       ; preds = %if.then118
  %type122 = getelementptr inbounds %union.tree_node, %union.tree_node* %27, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3037
  %28 = load %union.tree_node*, %union.tree_node** %type122, align 8, !dbg !3037
  call void @llvm.dbg.value(metadata %union.tree_node* %27, metadata !2877, metadata !DIExpression()), !dbg !2983
  %call123 = call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 63, %union.tree_node* %28, %union.tree_node* nonnull %a.0, %union.tree_node* nonnull %27) #6, !dbg !3037
  call void @llvm.dbg.value(metadata %union.tree_node* %call123, metadata !2868, metadata !DIExpression()), !dbg !2880
  br label %if.end125, !dbg !3038

if.end125:                                        ; preds = %if.then118, %if.end116, %if.then120
  %a.2 = phi %union.tree_node* [ %a.0, %if.end116 ], [ %call123, %if.then120 ], [ %27, %if.then118 ], !dbg !2880
  call void @llvm.dbg.value(metadata %union.tree_node* %a.2, metadata !2868, metadata !DIExpression()), !dbg !2880
  %29 = load %union.tree_node*, %union.tree_node** %tmp_m, align 8, !dbg !3039
  call void @llvm.dbg.value(metadata %union.tree_node* %29, metadata !2879, metadata !DIExpression()), !dbg !2983
  %tobool126 = icmp eq %union.tree_node* %29, null, !dbg !3039
  br i1 %tobool126, label %cleanup, label %if.then127, !dbg !3040

if.then127:                                       ; preds = %if.end125
  %tobool128 = icmp eq %union.tree_node* %m.0, null, !dbg !3041
  call void @llvm.dbg.value(metadata %union.tree_node* %29, metadata !2879, metadata !DIExpression()), !dbg !2983
  br i1 %tobool128, label %if.end134, label %if.then129, !dbg !3043

if.then129:                                       ; preds = %if.then127
  %type131 = getelementptr inbounds %union.tree_node, %union.tree_node* %29, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3044
  %30 = load %union.tree_node*, %union.tree_node** %type131, align 8, !dbg !3044
  call void @llvm.dbg.value(metadata %union.tree_node* %29, metadata !2879, metadata !DIExpression()), !dbg !2983
  %call132 = call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 65, %union.tree_node* %30, %union.tree_node* nonnull %m.0, %union.tree_node* nonnull %29) #6, !dbg !3044
  call void @llvm.dbg.value(metadata %union.tree_node* %call132, metadata !2867, metadata !DIExpression()), !dbg !2880
  br label %if.end134, !dbg !3045

if.end134:                                        ; preds = %if.then127, %if.then129
  %m.1 = phi %union.tree_node* [ %call132, %if.then129 ], [ %29, %if.then127 ], !dbg !3046
  call void @llvm.dbg.value(metadata %union.tree_node* %m.1, metadata !2867, metadata !DIExpression()), !dbg !2880
  %tobool135 = icmp eq %union.tree_node* %a.2, null, !dbg !3047
  br i1 %tobool135, label %cleanup, label %if.then136, !dbg !3048

if.then136:                                       ; preds = %if.end134
  %31 = load %struct.tree_common*, %struct.tree_common** %25, align 8, !dbg !3049
  %type138 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %31, i64 0, i32 2, !dbg !3049
  %32 = load %union.tree_node*, %union.tree_node** %type138, align 8, !dbg !3049
  %.cast = bitcast %struct.tree_common* %31 to %union.tree_node*, !dbg !3049
  call void @llvm.dbg.value(metadata %union.tree_node* %.cast, metadata !2879, metadata !DIExpression()), !dbg !2983
  %call139 = call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 65, %union.tree_node* %32, %union.tree_node* nonnull %a.2, %union.tree_node* %.cast) #6, !dbg !3049
  call void @llvm.dbg.value(metadata %union.tree_node* %call139, metadata !2868, metadata !DIExpression()), !dbg !2880
  br label %cleanup, !dbg !3050

cleanup:                                          ; preds = %if.end134, %if.end125, %if.end112, %if.end107, %if.end103, %if.then136, %if.end98, %while.end
  %m.3 = phi %union.tree_node* [ %m.0, %while.end ], [ %m.0, %if.end98 ], [ %m.0, %if.end103 ], [ %m.0, %if.end107 ], [ %m.0, %if.end112 ], [ %m.0, %if.end125 ], [ %m.1, %if.then136 ], [ %m.1, %if.end134 ], !dbg !2880
  %a.5 = phi %union.tree_node* [ %a.0, %while.end ], [ %a.0, %if.end98 ], [ %a.0, %if.end103 ], [ %a.0, %if.end107 ], [ %a.0, %if.end112 ], [ %a.2, %if.end125 ], [ %call139, %if.then136 ], [ null, %if.end134 ], !dbg !2880
  %cleanup.dest.slot.0 = phi i32 [ 11, %while.end ], [ 12, %if.end98 ], [ 11, %if.end103 ], [ 1, %if.end107 ], [ 1, %if.end112 ], [ 0, %if.end125 ], [ 0, %if.then136 ], [ 0, %if.end134 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %a.5, metadata !2868, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata %union.tree_node* %m.3, metadata !2867, metadata !DIExpression()), !dbg !2880
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #8, !dbg !3015
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #8, !dbg !3015
  switch i32 %cleanup.dest.slot.0, label %cleanup160.loopexit [
    i32 0, label %while.cond.backedge
    i32 11, label %while.cond.backedge
    i32 12, label %while.end143
  ]

while.cond.backedge:                              ; preds = %cleanup, %cleanup
  br label %while.cond, !dbg !2880, !llvm.loop !3014

while.end143:                                     ; preds = %cleanup
  %m.3.lcssa16 = phi %union.tree_node* [ %m.3, %cleanup ], !dbg !2880
  %a.5.lcssa15 = phi %union.tree_node* [ %a.5, %cleanup ], !dbg !2880
  %call93.lcssa14 = phi %union.gimple_statement_d* [ %call93, %cleanup ], !dbg !3009
  call void @llvm.dbg.value(metadata %union.tree_node* %m.3.lcssa16, metadata !2867, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata %union.tree_node* %a.5.lcssa15, metadata !2868, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata %union.tree_node* %m.3.lcssa16, metadata !2867, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata %union.tree_node* %a.5.lcssa15, metadata !2868, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata %union.tree_node* %m.3.lcssa16, metadata !2867, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata %union.tree_node* %a.5.lcssa15, metadata !2868, metadata !DIExpression()), !dbg !2880
  %call144 = call fastcc %union.tree_node* @gimple_return_retval(%union.gimple_statement_d* %call93.lcssa14) #7, !dbg !3051
  call void @llvm.dbg.value(metadata %union.tree_node* %call144, metadata !2857, metadata !DIExpression()), !dbg !2880
  %tobool145 = icmp ne %union.tree_node* %call144, null, !dbg !3052
  %33 = load %union.tree_node*, %union.tree_node** %ass_var, align 8, !dbg !3054
  call void @llvm.dbg.value(metadata %union.tree_node* %33, metadata !2856, metadata !DIExpression()), !dbg !2880
  %cmp147 = icmp ne %union.tree_node* %call144, %33, !dbg !3055
  %or.cond1 = and i1 %tobool145, %cmp147, !dbg !3056
  br i1 %or.cond1, label %cleanup160, label %if.end150, !dbg !3056

if.end150:                                        ; preds = %while.end143
  %tobool151 = icmp eq i8 %tail_recursion.1, 0, !dbg !3057
  br i1 %tobool151, label %land.lhs.true152, label %if.end157, !dbg !3059

land.lhs.true152:                                 ; preds = %if.end150
  %tobool153 = icmp ne %union.tree_node* %m.3.lcssa16, null, !dbg !3060
  %tobool155 = icmp ne %union.tree_node* %a.5.lcssa15, null, !dbg !3061
  %or.cond2 = or i1 %tobool153, %tobool155, !dbg !3062
  br i1 %or.cond2, label %cleanup160, label %if.end157, !dbg !3062

if.end157:                                        ; preds = %if.end150, %land.lhs.true152
  %call158 = call i8* @xmalloc(i64 56) #6, !dbg !3063
  call void @llvm.dbg.value(metadata i8* %call158, metadata !2865, metadata !DIExpression()), !dbg !2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %call158, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !3064
  %34 = getelementptr inbounds i8, i8* %call158, i64 24, !dbg !3065
  store i8 %tail_recursion.1, i8* %34, align 8, !dbg !3066
  %mult = getelementptr inbounds i8, i8* %call158, i64 32, !dbg !3067
  %35 = bitcast i8* %mult to %union.tree_node**, !dbg !3067
  store %union.tree_node* %m.3.lcssa16, %union.tree_node** %35, align 8, !dbg !3068
  %add = getelementptr inbounds i8, i8* %call158, i64 40, !dbg !3069
  %36 = bitcast i8* %add to %union.tree_node**, !dbg !3069
  store %union.tree_node* %a.5.lcssa15, %union.tree_node** %36, align 8, !dbg !3070
  %37 = bitcast %struct.tailcall** %ret to i64*, !dbg !3071
  %38 = load i64, i64* %37, align 8, !dbg !3071
  %next = getelementptr inbounds i8, i8* %call158, i64 48, !dbg !3072
  %39 = bitcast i8* %next to i64*, !dbg !3073
  store i64 %38, i64* %39, align 8, !dbg !3073
  %40 = bitcast %struct.tailcall** %ret to i8**, !dbg !3074
  store i8* %call158, i8** %40, align 8, !dbg !3074
  br label %cleanup160, !dbg !3075

cleanup160.loopexit:                              ; preds = %cleanup
  br label %cleanup160, !dbg !3075

cleanup160.loopexit3:                             ; preds = %if.end14, %lor.lhs.false18
  br label %cleanup160, !dbg !3075

cleanup160:                                       ; preds = %cleanup160.loopexit3, %cleanup160.loopexit, %land.lhs.true, %entry, %land.lhs.true152, %while.end143, %if.end157, %for.end34
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8, !dbg !3075
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #8, !dbg !3075
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !3075
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3075
  ret void, !dbg !3075
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !3076 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !3081, metadata !DIExpression()), !dbg !3082
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !3083
  %0 = load i32, i32* %index, align 8, !dbg !3083
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !3083
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3083
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #7, !dbg !3083
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3083
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3083

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !3083
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3083
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #7, !dbg !3083
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3083
  br label %cond.end, !dbg !3083

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3083
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3083
  %cmp = icmp ult i32 %0, %call2, !dbg !3083
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !3083

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3083
  br label %cond.end5, !dbg !3083

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !3084
  %inc = add i32 %5, 1, !dbg !3084
  store i32 %inc, i32* %index, align 8, !dbg !3084
  ret void, !dbg !3085
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3086 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3090, metadata !DIExpression()), !dbg !3091
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3092
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3092
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3092
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3092

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3092
  br label %cond.end, !dbg !3092

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3092
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3092
  %cmp = icmp eq i32 %call, 1, !dbg !3093
  %conv2 = zext i1 %cmp to i8, !dbg !3092
  ret i8 %conv2, !dbg !3094
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3095 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3102, metadata !DIExpression()), !dbg !3103
  %cmp = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3104
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !3105

lor.rhs:                                          ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !3106
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !3106
  %cmp1 = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !3107
  %phitmp = zext i1 %cmp1 to i8, !dbg !3105
  br label %lor.end, !dbg !3105

lor.end:                                          ; preds = %lor.rhs, %entry
  %1 = phi i8 [ 1, %entry ], [ %phitmp, %lor.rhs ]
  ret i8 %1, !dbg !3108
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @phi_nodes(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3109 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3114, metadata !DIExpression()), !dbg !3115
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !3116
  %0 = load i32, i32* %flags, align 8, !dbg !3116
  %and = and i32 %0, 512, !dbg !3116
  %tobool = icmp eq i32 %and, 0, !dbg !3116
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3116

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 510, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3116
  br label %cond.end, !dbg !3116

cond.end:                                         ; preds = %entry, %cond.true
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !3117
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !3117
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !3119
  br i1 %tobool1, label %return, label %if.end, !dbg !3120

if.end:                                           ; preds = %cond.end
  %phi_nodes = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 1, !dbg !3121
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %phi_nodes, align 8, !dbg !3121
  br label %return, !dbg !3122

return:                                           ; preds = %cond.end, %if.end
  %retval.0 = phi %struct.gimple_seq_d* [ %2, %if.end ], [ null, %cond.end ], !dbg !3115
  ret %struct.gimple_seq_d* %retval.0, !dbg !3123
}

declare dso_local %struct.basic_block_def* @split_edge(%struct.edge_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3124 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3128, metadata !DIExpression()), !dbg !3129
  %call = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) #7, !dbg !3130
  %tobool = icmp eq i8 %call, 0, !dbg !3130
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3130

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 645, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3130
  br label %cond.end, !dbg !3130

cond.end:                                         ; preds = %entry, %cond.true
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3131
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3131
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3131
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !3131

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3131
  br label %cond.end5, !dbg !3131

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !3131
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #7, !dbg !3131
  ret %struct.edge_def* %call7, !dbg !3132
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @arg_needs_copy_p(%union.tree_node* %param) unnamed_addr #5 !dbg !3133 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %param, metadata !3137, metadata !DIExpression()), !dbg !3139
  %call = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %param) #6, !dbg !3140
  %tobool = icmp eq i8 %call, 0, !dbg !3140
  br i1 %tobool, label %cleanup, label %lor.lhs.false, !dbg !3142

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call fastcc %struct.var_ann_d* @var_ann(%union.tree_node* %param) #7, !dbg !3143
  %tobool2 = icmp eq %struct.var_ann_d* %call1, null, !dbg !3143
  br i1 %tobool2, label %cleanup, label %if.end, !dbg !3144

if.end:                                           ; preds = %lor.lhs.false
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3145
  %call3 = tail call %union.tree_node* @gimple_default_def(%struct.function* %0, %union.tree_node* %param) #6, !dbg !3146
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !3138, metadata !DIExpression()), !dbg !3139
  %tobool4 = icmp ne %union.tree_node* %call3, null, !dbg !3147
  %. = zext i1 %tobool4 to i8, !dbg !3139
  br label %cleanup, !dbg !3139

cleanup:                                          ; preds = %lor.lhs.false, %entry, %if.end
  %retval.0 = phi i8 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %., %if.end ], !dbg !3139
  ret i8 %retval.0, !dbg !3149
}

declare dso_local %union.tree_node* @gimple_default_def(%struct.function*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %var, %union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3150 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3154, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3155, metadata !DIExpression()), !dbg !3156
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3157
  %call = tail call %union.tree_node* @make_ssa_name_fn(%struct.function* %0, %union.tree_node* %var, %union.gimple_statement_d* %stmt) #6, !dbg !3158
  ret %union.tree_node* %call, !dbg !3159
}

declare dso_local void @set_default_def(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @create_phi_node(%union.tree_node*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @add_phi_arg(%union.gimple_statement_d*, %union.tree_node*, %struct.edge_def*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3160 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3162, metadata !DIExpression()), !dbg !3163
  %call = tail call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) #7, !dbg !3164
  %tobool = icmp eq i8 %call, 0, !dbg !3164
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3164

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 655, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3164
  br label %cond.end, !dbg !3164

cond.end:                                         ; preds = %entry, %cond.true
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3165
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3165
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3165
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !3165

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3165
  br label %cond.end5, !dbg !3165

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !3165
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #7, !dbg !3165
  ret %struct.edge_def* %call7, !dbg !3166
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @create_tailcall_accumulator(i8* %label, %struct.basic_block_def* %bb, %union.tree_node* %init) unnamed_addr #5 !dbg !3167 {
entry:
  call void @llvm.dbg.value(metadata i8* %label, metadata !3171, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3172, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.value(metadata %union.tree_node* %init, metadata !3173, metadata !DIExpression()), !dbg !3177
  %0 = load %struct.tree_decl_non_common*, %struct.tree_decl_non_common** bitcast (%union.tree_node** @current_function_decl to %struct.tree_decl_non_common**), align 8, !dbg !3178
  %result = getelementptr inbounds %struct.tree_decl_non_common, %struct.tree_decl_non_common* %0, i64 0, i32 3, !dbg !3178
  %1 = bitcast %union.tree_node** %result to %struct.tree_common**, !dbg !3178
  %2 = load %struct.tree_common*, %struct.tree_common** %1, align 8, !dbg !3178
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %2, i64 0, i32 2, !dbg !3178
  %3 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !3178
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !3174, metadata !DIExpression()), !dbg !3177
  %call = tail call %union.tree_node* @create_tmp_var(%union.tree_node* %3, i8* %label) #6, !dbg !3179
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3175, metadata !DIExpression()), !dbg !3177
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3180
  %bf.load = load i64, i64* %4, align 8, !dbg !3180
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3182
  %cmp = icmp eq i64 %bf.cast1, 13, !dbg !3182
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3183

lor.lhs.false:                                    ; preds = %entry
  %cmp5 = icmp eq i64 %bf.cast1, 14, !dbg !3184
  br i1 %cmp5, label %if.then, label %if.end, !dbg !3185

if.then:                                          ; preds = %lor.lhs.false, %entry
  %gimple_reg_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3186
  %5 = bitcast i40* %gimple_reg_flag to i64*, !dbg !3186
  %bf.load6 = load i64, i64* %5, align 8, !dbg !3187
  %bf.set = or i64 %bf.load6, 134217728, !dbg !3187
  store i64 %bf.set, i64* %5, align 8, !dbg !3187
  br label %if.end, !dbg !3186

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %call8 = tail call zeroext i8 @add_referenced_var(%union.tree_node* %call) #6, !dbg !3188
  %call9 = tail call %union.gimple_statement_d* @create_phi_node(%union.tree_node* %call, %struct.basic_block_def* %bb) #6, !dbg !3189
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call9, metadata !3176, metadata !DIExpression()), !dbg !3177
  %call10 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %3, %union.tree_node* %init) #6, !dbg !3190
  %call11 = tail call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb) #7, !dbg !3191
  tail call void @add_phi_arg(%union.gimple_statement_d* %call9, %union.tree_node* %call10, %struct.edge_def* %call11, i32 0) #6, !dbg !3192
  %call12 = tail call fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %call9) #7, !dbg !3193
  %call13 = tail call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %call12) #7, !dbg !3193
  ret %union.tree_node* %call13, !dbg !3194
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @optimize_tail_call(%struct.tailcall* %t, i8 zeroext %opt_tailcalls) unnamed_addr #5 !dbg !3195 {
entry:
  call void @llvm.dbg.value(metadata %struct.tailcall* %t, metadata !3199, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i8 %opt_tailcalls, metadata !3200, metadata !DIExpression()), !dbg !3204
  %tail_recursion = getelementptr inbounds %struct.tailcall, %struct.tailcall* %t, i64 0, i32 1, !dbg !3205
  %0 = load i8, i8* %tail_recursion, align 8, !dbg !3205
  %tobool = icmp eq i8 %0, 0, !dbg !3207
  br i1 %tobool, label %if.end, label %if.then, !dbg !3208

if.then:                                          ; preds = %entry
  tail call fastcc void @eliminate_tail_call(%struct.tailcall* %t) #7, !dbg !3209
  br label %return, !dbg !3211

if.end:                                           ; preds = %entry
  %tobool1 = icmp eq i8 %opt_tailcalls, 0, !dbg !3212
  br i1 %tobool1, label %return, label %if.then2, !dbg !3213

if.then2:                                         ; preds = %if.end
  %call_gsi = getelementptr inbounds %struct.tailcall, %struct.tailcall* %t, i64 0, i32 0, !dbg !3214
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %call_gsi) #7, !dbg !3215
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !3201, metadata !DIExpression()), !dbg !3216
  tail call fastcc void @gimple_call_set_tail(%union.gimple_statement_d* %call, i8 zeroext 1) #7, !dbg !3217
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3218
  %tobool3 = icmp eq %struct._IO_FILE* %1, null, !dbg !3218
  br i1 %tobool3, label %return, label %land.lhs.true, !dbg !3220

land.lhs.true:                                    ; preds = %if.then2
  %2 = load i32, i32* @dump_flags, align 4, !dbg !3221
  %and = and i32 %2, 8, !dbg !3222
  %tobool4 = icmp eq i32 %and, 0, !dbg !3222
  br i1 %tobool4, label %return, label %if.then5, !dbg !3223

if.then5:                                         ; preds = %land.lhs.true
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !3224
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3226
  %4 = load i32, i32* @dump_flags, align 4, !dbg !3227
  tail call void @print_gimple_stmt(%struct._IO_FILE* %3, %union.gimple_statement_d* %call, i32 0, i32 %4) #6, !dbg !3228
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3229
  %call8 = tail call fastcc %struct.basic_block_def* @gsi_bb(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %call_gsi) #7, !dbg !3230
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call8, i64 0, i32 9, !dbg !3231
  %6 = load i32, i32* %index, align 8, !dbg !3231
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %6) #6, !dbg !3232
  br label %return, !dbg !3233

return:                                           ; preds = %land.lhs.true, %if.then2, %if.end, %if.then5, %if.then
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.then2 ], [ 0, %land.lhs.true ], [ 0, %if.then5 ], [ 0, %if.end ], !dbg !3204
  ret i8 %retval.0, !dbg !3234
}

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @adjust_return_value(%struct.basic_block_def* %bb, %union.tree_node* %m, %union.tree_node* %a) unnamed_addr #5 !dbg !3235 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3239, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata %union.tree_node* %m, metadata !3240, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata %union.tree_node* %a, metadata !3241, metadata !DIExpression()), !dbg !3245
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !3246
  %call1 = tail call fastcc %union.gimple_statement_d* @gimple_seq_last_stmt(%struct.gimple_seq_d* %call) #7, !dbg !3247
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call1, metadata !3243, metadata !DIExpression()), !dbg !3245
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3248
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3248
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3244, metadata !DIExpression(DW_OP_deref)), !dbg !3245
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %gsi, %struct.basic_block_def* %bb) #7, !dbg !3249
  %call2 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call1) #7, !dbg !3250
  %cmp = icmp eq i32 %call2, 9, !dbg !3250
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3250

cond.true:                                        ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 689, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3250
  br label %cond.end, !dbg !3250

cond.end:                                         ; preds = %entry, %cond.true
  %call3 = call fastcc %union.tree_node* @gimple_return_retval(%union.gimple_statement_d* %call1) #7, !dbg !3251
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !3242, metadata !DIExpression()), !dbg !3245
  %tobool = icmp eq %union.tree_node* %call3, null, !dbg !3252
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !3254
  %cmp4 = icmp eq %union.tree_node* %call3, %1, !dbg !3255
  %or.cond = or i1 %tobool, %cmp4, !dbg !3256
  br i1 %or.cond, label %cleanup, label %if.end, !dbg !3256

if.end:                                           ; preds = %cond.end
  %tobool5 = icmp eq %union.tree_node* %m, null, !dbg !3257
  br i1 %tobool5, label %if.end8, label %if.then6, !dbg !3259

if.then6:                                         ; preds = %if.end
  %2 = load %union.tree_node*, %union.tree_node** @m_acc, align 8, !dbg !3260
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3244, metadata !DIExpression(DW_OP_deref)), !dbg !3245
  %call7 = call fastcc %union.tree_node* @adjust_return_value_with_ops(i32 65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), %union.tree_node* %2, %union.tree_node* %call3, %struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3261
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !3242, metadata !DIExpression()), !dbg !3245
  br label %if.end8, !dbg !3262

if.end8:                                          ; preds = %if.end, %if.then6
  %retval.0 = phi %union.tree_node* [ %call7, %if.then6 ], [ %call3, %if.end ], !dbg !3245
  call void @llvm.dbg.value(metadata %union.tree_node* %retval.0, metadata !3242, metadata !DIExpression()), !dbg !3245
  %tobool9 = icmp eq %union.tree_node* %a, null, !dbg !3263
  br i1 %tobool9, label %if.end12, label %if.then10, !dbg !3265

if.then10:                                        ; preds = %if.end8
  %3 = load %union.tree_node*, %union.tree_node** @a_acc, align 8, !dbg !3266
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3244, metadata !DIExpression(DW_OP_deref)), !dbg !3245
  %call11 = call fastcc %union.tree_node* @adjust_return_value_with_ops(i32 63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), %union.tree_node* %3, %union.tree_node* %retval.0, %struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3267
  call void @llvm.dbg.value(metadata %union.tree_node* %call11, metadata !3242, metadata !DIExpression()), !dbg !3245
  br label %if.end12, !dbg !3268

if.end12:                                         ; preds = %if.end8, %if.then10
  %retval.1 = phi %union.tree_node* [ %call11, %if.then10 ], [ %retval.0, %if.end8 ], !dbg !3245
  call void @llvm.dbg.value(metadata %union.tree_node* %retval.1, metadata !3242, metadata !DIExpression()), !dbg !3245
  call fastcc void @gimple_return_set_retval(%union.gimple_statement_d* %call1, %union.tree_node* %retval.1) #7, !dbg !3269
  call fastcc void @update_stmt(%union.gimple_statement_d* %call1) #7, !dbg !3270
  br label %cleanup, !dbg !3271

cleanup:                                          ; preds = %cond.end, %if.end12
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3271
  ret void, !dbg !3271
}

declare dso_local void @free_dominance_info(i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @add_virtual_phis() unnamed_addr #5 !dbg !3272 {
entry:
  %rvi = alloca %struct.referenced_var_iterator, align 8
  %0 = bitcast %struct.referenced_var_iterator* %rvi to i8*, !dbg !3278
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3278
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %rvi, metadata !3276, metadata !DIExpression(DW_OP_deref)), !dbg !3279
  %call = call fastcc %union.tree_node* @first_referenced_var(%struct.referenced_var_iterator* nonnull %rvi) #7, !dbg !3280
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3277, metadata !DIExpression()), !dbg !3279
  br label %for.cond, !dbg !3280

for.cond:                                         ; preds = %for.inc, %entry
  %var.0 = phi %union.tree_node* [ %call, %entry ], [ %call5, %for.inc ], !dbg !3282
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0, metadata !3277, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %rvi, metadata !3276, metadata !DIExpression(DW_OP_deref)), !dbg !3279
  %call1 = call fastcc zeroext i8 @end_referenced_vars_p(%struct.referenced_var_iterator* nonnull %rvi) #7, !dbg !3283
  %tobool = icmp eq i8 %call1, 0, !dbg !3283
  br i1 %tobool, label %for.body, label %for.end, !dbg !3280

for.body:                                         ; preds = %for.cond
  %call2 = call zeroext i8 @is_gimple_reg(%union.tree_node* %var.0) #6, !dbg !3285
  %tobool3 = icmp eq i8 %call2, 0, !dbg !3285
  br i1 %tobool3, label %land.lhs.true, label %for.inc, !dbg !3288

land.lhs.true:                                    ; preds = %for.body
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3289
  %call4 = call %union.tree_node* @gimple_default_def(%struct.function* %1, %union.tree_node* %var.0) #6, !dbg !3290
  %cmp = icmp eq %union.tree_node* %call4, null, !dbg !3291
  br i1 %cmp, label %for.inc, label %if.then, !dbg !3292

if.then:                                          ; preds = %land.lhs.true
  call void @mark_sym_for_renaming(%union.tree_node* %var.0) #6, !dbg !3293
  br label %for.inc, !dbg !3293

for.inc:                                          ; preds = %land.lhs.true, %for.body, %if.then
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %rvi, metadata !3276, metadata !DIExpression(DW_OP_deref)), !dbg !3279
  %call5 = call fastcc %union.tree_node* @next_referenced_var(%struct.referenced_var_iterator* nonnull %rvi) #7, !dbg !3283
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !3277, metadata !DIExpression()), !dbg !3279
  br label %for.cond, !dbg !3283, !llvm.loop !3294

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3296
  ret void, !dbg !3296
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @first_referenced_var(%struct.referenced_var_iterator* %iter) unnamed_addr #0 !dbg !3297 {
entry:
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %iter, metadata !3302, metadata !DIExpression()), !dbg !3303
  %hti = getelementptr inbounds %struct.referenced_var_iterator, %struct.referenced_var_iterator* %iter, i64 0, i32 0, !dbg !3304
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3305
  %call = tail call fastcc %struct.htab* @gimple_referenced_vars(%struct.function* %0) #7, !dbg !3306
  %call1 = tail call fastcc i8* @first_htab_element(%struct.htab_iterator* %hti, %struct.htab* %call) #7, !dbg !3307
  %1 = bitcast i8* %call1 to %union.tree_node*, !dbg !3308
  ret %union.tree_node* %1, !dbg !3309
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_referenced_vars_p(%struct.referenced_var_iterator* %iter) unnamed_addr #0 !dbg !3310 {
entry:
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %iter, metadata !3316, metadata !DIExpression()), !dbg !3317
  %hti = getelementptr inbounds %struct.referenced_var_iterator, %struct.referenced_var_iterator* %iter, i64 0, i32 0, !dbg !3318
  %call = tail call fastcc zeroext i8 @end_htab_p(%struct.htab_iterator* %hti) #7, !dbg !3319
  ret i8 %call, !dbg !3320
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_global_var(%union.tree_node* %t) unnamed_addr #0 !dbg !3321 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !3328, metadata !DIExpression()), !dbg !3329
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3330
  %bf.load = load i64, i64* %0, align 8, !dbg !3330
  %bf.cast1 = and i64 %bf.load, 67108864, !dbg !3330
  %tobool = icmp eq i64 %bf.cast1, 0, !dbg !3330
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !3331

lor.rhs:                                          ; preds = %entry
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3332
  %1 = bitcast i40* %decl_flag_1 to i64*, !dbg !3332
  %bf.load1 = load i64, i64* %1, align 8, !dbg !3332
  %bf.cast42 = lshr i64 %bf.load1, 25, !dbg !3331
  %2 = trunc i64 %bf.cast42 to i8, !dbg !3331
  %3 = and i8 %2, 1, !dbg !3331
  br label %lor.end, !dbg !3331

lor.end:                                          ; preds = %entry, %lor.rhs
  %4 = phi i8 [ 1, %entry ], [ %3, %lor.rhs ]
  ret i8 %4, !dbg !3333
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_call_used(%union.tree_node* %var) unnamed_addr #0 !dbg !3334 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3336, metadata !DIExpression()), !dbg !3337
  %call = tail call fastcc zeroext i8 @is_call_clobbered(%union.tree_node* %var) #7, !dbg !3338
  %tobool = icmp eq i8 %call, 0, !dbg !3338
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !3339

lor.rhs:                                          ; preds = %entry
  %call1 = tail call fastcc zeroext i8 @may_be_aliased(%union.tree_node* %var) #7, !dbg !3340
  %tobool3 = icmp eq i8 %call1, 0, !dbg !3340
  br i1 %tobool3, label %lor.end, label %land.rhs, !dbg !3341

land.rhs:                                         ; preds = %lor.rhs
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3342
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 3, !dbg !3343
  %1 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !3343
  %callused = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %1, i64 0, i32 5, !dbg !3344
  %call4 = tail call zeroext i8 @pt_solution_includes(%struct.pt_solution* nonnull %callused, %union.tree_node* %var) #6, !dbg !3345
  %tobool6 = icmp ne i8 %call4, 0, !dbg !3341
  %phitmp = zext i1 %tobool6 to i8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry, %land.rhs
  %2 = phi i8 [ 1, %entry ], [ 0, %lor.rhs ], [ %phitmp, %land.rhs ]
  ret i8 %2, !dbg !3346
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @next_referenced_var(%struct.referenced_var_iterator* %iter) unnamed_addr #0 !dbg !3347 {
entry:
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %iter, metadata !3349, metadata !DIExpression()), !dbg !3350
  %hti = getelementptr inbounds %struct.referenced_var_iterator, %struct.referenced_var_iterator* %iter, i64 0, i32 0, !dbg !3351
  %call = tail call fastcc i8* @next_htab_element(%struct.htab_iterator* %hti) #7, !dbg !3352
  %0 = bitcast i8* %call to %union.tree_node*, !dbg !3353
  ret %union.tree_node* %0, !dbg !3354
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i8* @first_htab_element(%struct.htab_iterator* %hti, %struct.htab* %table) unnamed_addr #0 !dbg !3355 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab_iterator* %hti, metadata !3360, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata %struct.htab* %table, metadata !3361, metadata !DIExpression()), !dbg !3364
  %htab = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 0, !dbg !3365
  store %struct.htab* %table, %struct.htab** %htab, align 8, !dbg !3366
  %entries = getelementptr inbounds %struct.htab, %struct.htab* %table, i64 0, i32 3, !dbg !3367
  %0 = bitcast i8*** %entries to i64*, !dbg !3367
  %1 = load i64, i64* %0, align 8, !dbg !3367
  %slot = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 1, !dbg !3368
  %2 = bitcast i8*** %slot to i64*, !dbg !3369
  store i64 %1, i64* %2, align 8, !dbg !3369
  %.cast = inttoptr i64 %1 to i8**, !dbg !3370
  %call = tail call i64 @htab_size(%struct.htab* %table) #6, !dbg !3371
  %add.ptr = getelementptr inbounds i8*, i8** %.cast, i64 %call, !dbg !3372
  %limit = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 2, !dbg !3373
  store i8** %add.ptr, i8*** %limit, align 8, !dbg !3374
  %.pre3 = load i8**, i8*** %slot, align 8, !dbg !3375
  br label %do.body, !dbg !3376

do.body:                                          ; preds = %do.cond, %entry
  %3 = phi i8** [ %incdec.ptr, %do.cond ], [ %.pre3, %entry ]
  %indvars2 = bitcast i8** %3 to i64*, !dbg !3375
  %4 = load i64, i64* %indvars2, align 8, !dbg !3377
  %switch1 = icmp ult i64 %4, 2, !dbg !3378
  br i1 %switch1, label %do.cond, label %do.end

do.cond:                                          ; preds = %do.body
  %incdec.ptr = getelementptr inbounds i8*, i8** %3, i64 1, !dbg !3380
  store i8** %incdec.ptr, i8*** %slot, align 8, !dbg !3380
  %cmp6 = icmp ult i8** %incdec.ptr, %add.ptr, !dbg !3381
  br i1 %cmp6, label %do.body, label %do.end, !dbg !3382, !llvm.loop !3383

do.end:                                           ; preds = %do.body, %do.cond
  %5 = phi i8** [ %3, %do.body ], [ %incdec.ptr, %do.cond ]
  %6 = phi i8** [ %3, %do.body ], [ %incdec.ptr, %do.cond ], !dbg !3385
  %cmp9 = icmp ult i8** %6, %add.ptr, !dbg !3387
  br i1 %cmp9, label %if.then10, label %return, !dbg !3388

if.then10:                                        ; preds = %do.end
  %7 = load i8*, i8** %5, align 8, !dbg !3389
  br label %return, !dbg !3390

return:                                           ; preds = %do.end, %if.then10
  %retval.0 = phi i8* [ %7, %if.then10 ], [ null, %do.end ], !dbg !3364
  ret i8* %retval.0, !dbg !3391
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.htab* @gimple_referenced_vars(%struct.function* %fun) unnamed_addr #0 !dbg !3392 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fun, metadata !3398, metadata !DIExpression()), !dbg !3399
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %fun, i64 0, i32 3, !dbg !3400
  %0 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !3400
  %tobool = icmp eq %struct.gimple_df* %0, null, !dbg !3402
  br i1 %tobool, label %return, label %if.end, !dbg !3403

if.end:                                           ; preds = %entry
  %referenced_vars = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %0, i64 0, i32 0, !dbg !3404
  %1 = load %struct.htab*, %struct.htab** %referenced_vars, align 8, !dbg !3404
  br label %return, !dbg !3405

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.htab* [ %1, %if.end ], [ null, %entry ], !dbg !3399
  ret %struct.htab* %retval.0, !dbg !3406
}

declare dso_local i64 @htab_size(%struct.htab*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_htab_p(%struct.htab_iterator* %hti) unnamed_addr #0 !dbg !3407 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab_iterator* %hti, metadata !3413, metadata !DIExpression()), !dbg !3414
  %slot = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 1, !dbg !3415
  %0 = load i8**, i8*** %slot, align 8, !dbg !3415
  %limit = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 2, !dbg !3417
  %1 = load i8**, i8*** %limit, align 8, !dbg !3417
  %cmp = icmp uge i8** %0, %1, !dbg !3418
  %. = zext i1 %cmp to i8, !dbg !3414
  ret i8 %., !dbg !3419
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_call_clobbered(%union.tree_node* %var) unnamed_addr #0 !dbg !3420 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3422, metadata !DIExpression()), !dbg !3423
  %call = tail call fastcc zeroext i8 @is_global_var(%union.tree_node* %var) #7, !dbg !3424
  %tobool = icmp eq i8 %call, 0, !dbg !3424
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !3425

lor.rhs:                                          ; preds = %entry
  %call1 = tail call fastcc zeroext i8 @may_be_aliased(%union.tree_node* %var) #7, !dbg !3426
  %tobool3 = icmp eq i8 %call1, 0, !dbg !3426
  br i1 %tobool3, label %lor.end, label %land.rhs, !dbg !3427

land.rhs:                                         ; preds = %lor.rhs
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3428
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 3, !dbg !3429
  %1 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !3429
  %escaped = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %1, i64 0, i32 4, !dbg !3430
  %call4 = tail call zeroext i8 @pt_solution_includes(%struct.pt_solution* nonnull %escaped, %union.tree_node* %var) #6, !dbg !3431
  %tobool6 = icmp ne i8 %call4, 0, !dbg !3427
  %phitmp = zext i1 %tobool6 to i8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry, %land.rhs
  %2 = phi i8 [ 1, %entry ], [ 0, %lor.rhs ], [ %phitmp, %land.rhs ]
  ret i8 %2, !dbg !3432
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @may_be_aliased(%union.tree_node* %var) unnamed_addr #0 !dbg !3433 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3435, metadata !DIExpression()), !dbg !3436
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3437
  %bf.load = load i64, i64* %0, align 8, !dbg !3437
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3438
  %cmp = icmp eq i64 %bf.cast1, 33, !dbg !3438
  br i1 %cmp, label %land.end, label %land.lhs.true, !dbg !3439

land.lhs.true:                                    ; preds = %entry
  %bf.cast43 = and i64 %bf.load, 67108864, !dbg !3440
  %tobool = icmp eq i64 %bf.cast43, 0, !dbg !3440
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true17, !dbg !3441

lor.lhs.false:                                    ; preds = %land.lhs.true
  %bf.cast94 = and i64 %bf.load, 134217728, !dbg !3442
  %tobool10 = icmp eq i64 %bf.cast94, 0, !dbg !3442
  br i1 %tobool10, label %lor.lhs.false11, label %land.lhs.true17, !dbg !3443

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3444
  %1 = bitcast i40* %decl_flag_1 to i64*, !dbg !3444
  %bf.load12 = load i64, i64* %1, align 8, !dbg !3444
  %bf.cast155 = and i64 %bf.load12, 33554432, !dbg !3444
  %tobool16 = icmp eq i64 %bf.cast155, 0, !dbg !3444
  br i1 %tobool16, label %land.rhs, label %land.lhs.true17, !dbg !3445

land.lhs.true17:                                  ; preds = %lor.lhs.false11, %lor.lhs.false, %land.lhs.true
  %bf.cast228 = and i64 %bf.load, 1048576, !dbg !3446
  %tobool23 = icmp eq i64 %bf.cast228, 0, !dbg !3446
  br i1 %tobool23, label %land.rhs, label %land.lhs.true24, !dbg !3447

land.lhs.true24:                                  ; preds = %land.lhs.true17
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3448
  %2 = bitcast %union.tree_node** %type to %struct.tree_type**, !dbg !3448
  %3 = load %struct.tree_type*, %struct.tree_type** %2, align 8, !dbg !3448
  %needs_constructing_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %3, i64 0, i32 6, !dbg !3448
  %bf.load26 = load i32, i32* %needs_constructing_flag, align 4, !dbg !3448
  %bf.clear28 = and i32 %bf.load26, 2048, !dbg !3448
  %tobool29 = icmp eq i32 %bf.clear28, 0, !dbg !3448
  br i1 %tobool29, label %land.end, label %land.rhs, !dbg !3449

land.rhs:                                         ; preds = %land.lhs.true24, %land.lhs.true17, %lor.lhs.false11
  %bf.cast346 = and i64 %bf.load, 134217728, !dbg !3450
  %tobool35 = icmp eq i64 %bf.cast346, 0, !dbg !3450
  br i1 %tobool35, label %lor.lhs.false36, label %land.end, !dbg !3451

lor.lhs.false36:                                  ; preds = %land.rhs
  %decl_flag_138 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3452
  %4 = bitcast i40* %decl_flag_138 to i64*, !dbg !3452
  %bf.load39 = load i64, i64* %4, align 8, !dbg !3452
  %bf.cast427 = and i64 %bf.load39, 33554432, !dbg !3452
  %tobool43 = icmp eq i64 %bf.cast427, 0, !dbg !3452
  br i1 %tobool43, label %lor.rhs, label %land.end, !dbg !3453

lor.rhs:                                          ; preds = %lor.lhs.false36
  %bf.lshr46 = lshr i64 %bf.load, 18, !dbg !3454
  %5 = trunc i64 %bf.lshr46 to i8, !dbg !3453
  %6 = and i8 %5, 1, !dbg !3453
  br label %land.end, !dbg !3453

land.end:                                         ; preds = %land.lhs.true24, %lor.lhs.false36, %land.rhs, %entry, %lor.rhs
  %7 = phi i8 [ 0, %land.lhs.true24 ], [ 0, %entry ], [ 1, %lor.lhs.false36 ], [ 1, %land.rhs ], [ %6, %lor.rhs ]
  ret i8 %7, !dbg !3455
}

declare dso_local zeroext i8 @pt_solution_includes(%struct.pt_solution*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i8* @next_htab_element(%struct.htab_iterator* %hti) unnamed_addr #0 !dbg !3456 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab_iterator* %hti, metadata !3460, metadata !DIExpression()), !dbg !3463
  %slot1 = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 1, !dbg !3464
  %limit = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 2, !dbg !3463
  %.pre = load i8**, i8*** %slot1, align 8, !dbg !3465
  %.pre3 = load i8**, i8*** %limit, align 8, !dbg !3466
  br label %while.cond, !dbg !3467

while.cond:                                       ; preds = %while.body, %entry
  %0 = phi i8** [ %.pre, %entry ], [ %incdec.ptr, %while.body ], !dbg !3465
  %retval.0 = phi i8* [ undef, %entry ], [ %spec.select2, %while.body ]
  %incdec.ptr = getelementptr inbounds i8*, i8** %0, i64 1, !dbg !3465
  store i8** %incdec.ptr, i8*** %slot1, align 8, !dbg !3465
  %cmp = icmp ult i8** %incdec.ptr, %.pre3, !dbg !3468
  br i1 %cmp, label %while.body, label %return, !dbg !3467

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %incdec.ptr, align 8, !dbg !3469
  call void @llvm.dbg.value(metadata i8* %1, metadata !3461, metadata !DIExpression()), !dbg !3470
  %switch1 = icmp ult i8* %1, inttoptr (i64 2 to i8*), !dbg !3471
  %spec.select2 = select i1 %switch1, i8* %retval.0, i8* %1, !dbg !3471
  br i1 %switch1, label %while.cond, label %return, !llvm.loop !3473

return:                                           ; preds = %while.cond, %while.body
  %retval.2 = phi i8* [ %spec.select2, %while.body ], [ null, %while.cond ], !dbg !3463
  ret i8* %retval.2, !dbg !3475
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3476 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3481
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3481
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3481

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3481
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3481
  br label %cond.end, !dbg !3481

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3481
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3481
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !3482
  %conv3 = zext i1 %cmp to i8, !dbg !3483
  ret i8 %conv3, !dbg !3484
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3485 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3490
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3490
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3490

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3490
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3490
  br label %cond.end, !dbg !3490

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3490
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #7, !dbg !3490
  ret %struct.edge_def* %call2, !dbg !3491
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !3492 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3498, metadata !DIExpression()), !dbg !3499
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3500
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3500

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3500
  %0 = load i32, i32* %num, align 8, !dbg !3500
  br label %cond.end, !dbg !3500

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3500
  ret i32 %cond, !dbg !3500
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3501 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !3506
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3506

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3506
  br label %cond.end, !dbg !3506

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !3507
  ret %struct.VEC_edge_gc* %0, !dbg !3508
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3509 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3513, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3514, metadata !DIExpression()), !dbg !3515
  br label %land.end, !dbg !3516

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3516
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3516
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3516
  ret %struct.edge_def* %0, !dbg !3516
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3517 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3519, metadata !DIExpression()), !dbg !3520
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3521
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3521
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3521
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3521

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3521
  br label %cond.end, !dbg !3521

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3521
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3521
  %cmp = icmp eq i32 %call, 1, !dbg !3522
  %conv2 = zext i1 %cmp to i8, !dbg !3521
  ret i8 %conv2, !dbg !3523
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3524 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3528, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3529, metadata !DIExpression()), !dbg !3532
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !3533
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !3530, metadata !DIExpression()), !dbg !3531
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %call) #7, !dbg !3534
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3535
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3536
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3537
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !3538
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3539
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !3540
  ret void, !dbg !3541
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3542 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3546, metadata !DIExpression()), !dbg !3547
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3548
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3548
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !3549
  %conv1 = zext i1 %cmp to i8, !dbg !3550
  ret i8 %conv1, !dbg !3551
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3552 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3556, metadata !DIExpression()), !dbg !3557
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3558
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3558
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !3559
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3559
  ret %union.gimple_statement_d* %1, !dbg !3560
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3561 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3565, metadata !DIExpression()), !dbg !3566
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3567
  %cmp = icmp eq i32 %call, 2, !dbg !3568
  %conv1 = zext i1 %cmp to i8, !dbg !3567
  ret i8 %conv1, !dbg !3569
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3570 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3572, metadata !DIExpression()), !dbg !3573
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3574
  %cmp = icmp eq i32 %call, 8, !dbg !3575
  %conv1 = zext i1 %cmp to i8, !dbg !3574
  ret i8 %conv1, !dbg !3576
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3577 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3581, metadata !DIExpression()), !dbg !3582
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !3583
  ret %union.tree_node* %call, !dbg !3584
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_references_memory_p(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3585 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3589, metadata !DIExpression()), !dbg !3590
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %stmt) #7, !dbg !3591
  %tobool = icmp eq i8 %call, 0, !dbg !3591
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !3592

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %stmt) #7, !dbg !3593
  %tobool2 = icmp ne %union.tree_node* %call1, null, !dbg !3592
  %phitmp = zext i1 %tobool2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3594
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3595 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3597, metadata !DIExpression()), !dbg !3598
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %stmt) #7, !dbg !3599
  %tobool = icmp eq i8 %call, 0, !dbg !3599
  br i1 %tobool, label %return, label %if.then, !dbg !3601

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !3602
  %bf.load = load i32, i32* %0, align 8, !dbg !3602
  %bf.lshr = lshr i32 %bf.load, 14, !dbg !3602
  %1 = trunc i32 %bf.lshr to i8, !dbg !3603
  %conv = and i8 %1, 1, !dbg !3603
  br label %return, !dbg !3604

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i8 [ %conv, %if.then ], [ 0, %entry ], !dbg !3605
  ret i8 %retval.0, !dbg !3606
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_prev(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !3607 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3612, metadata !DIExpression()), !dbg !3613
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3614
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3614
  %prev = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 1, !dbg !3615
  %1 = bitcast %struct.gimple_seq_node_d** %prev to i64*, !dbg !3615
  %2 = load i64, i64* %1, align 8, !dbg !3615
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !3616
  store i64 %2, i64* %3, align 8, !dbg !3616
  ret void, !dbg !3617
}

declare dso_local zeroext i8 @is_gimple_reg(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3618 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3620, metadata !DIExpression()), !dbg !3622
  %call = tail call fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) #7, !dbg !3623
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3621, metadata !DIExpression()), !dbg !3622
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3624
  %bf.load = load i64, i64* %0, align 8, !dbg !3624
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3626
  %cmp = icmp eq i64 %bf.cast1, 121, !dbg !3626
  br i1 %cmp, label %if.then, label %cleanup, !dbg !3627

if.then:                                          ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3628
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3628
  br label %cleanup, !dbg !3629

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %1, %if.then ], [ null, %entry ], !dbg !3622
  ret %union.tree_node* %retval.0, !dbg !3630
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_call_num_args(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3631 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3635, metadata !DIExpression()), !dbg !3637
  %call = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #7, !dbg !3638
  call void @llvm.dbg.value(metadata i32 %call, metadata !3636, metadata !DIExpression()), !dbg !3637
  %sub = add i32 %call, -3, !dbg !3639
  ret i32 %sub, !dbg !3640
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !3641 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3645, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i32 %index, metadata !3646, metadata !DIExpression()), !dbg !3647
  %add = add i32 %index, 3, !dbg !3648
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %add) #7, !dbg !3649
  ret %union.tree_node* %call, !dbg !3650
}

declare dso_local zeroext i8 @is_gimple_reg_type(%union.tree_node*) local_unnamed_addr #2

declare dso_local zeroext i8 @useless_type_conversion_p(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !3651 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3653, metadata !DIExpression()), !dbg !3654
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3655
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3655
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !3656
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !3656
  %2 = load i64, i64* %1, align 8, !dbg !3656
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !3657
  store i64 %2, i64* %3, align 8, !dbg !3657
  ret void, !dbg !3658
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @propagate_through_phis(%union.tree_node* %var, %struct.edge_def* %e) unnamed_addr #5 !dbg !3659 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3663, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3664, metadata !DIExpression()), !dbg !3671
  %dest1 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !3672
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %dest1, align 8, !dbg !3672
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !3665, metadata !DIExpression()), !dbg !3671
  %1 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3673
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !3673
  %2 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3674
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #8, !dbg !3674
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %0) #6, !dbg !3674
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 24, i1 false), !dbg !3674
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #8, !dbg !3674
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 6, !dbg !3675
  br label %for.cond, !dbg !3677

for.cond:                                         ; preds = %for.inc, %entry
  %retval.0 = phi %union.tree_node* [ undef, %entry ], [ %retval.1, %for.inc ]
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3666, metadata !DIExpression(DW_OP_deref)), !dbg !3671
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3678
  %tobool = icmp eq i8 %call, 0, !dbg !3679
  br i1 %tobool, label %for.body, label %cleanup7, !dbg !3680

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3666, metadata !DIExpression(DW_OP_deref)), !dbg !3671
  %call2 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3681
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call2, metadata !3667, metadata !DIExpression()), !dbg !3682
  %3 = load i32, i32* %dest_idx, align 4, !dbg !3683
  %call3 = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %call2, i32 %3) #7, !dbg !3683
  %call4 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call3) #7, !dbg !3683
  %cmp = icmp eq %union.tree_node* %call4, %var, !dbg !3684
  br i1 %cmp, label %if.then, label %cleanup, !dbg !3685

if.then:                                          ; preds = %for.body
  %call5 = call fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %call2) #7, !dbg !3686
  %call6 = call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %call5) #7, !dbg !3686
  br label %cleanup, !dbg !3687

cleanup:                                          ; preds = %for.body, %if.then
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then ], [ true, %for.body ]
  %retval.1 = phi %union.tree_node* [ %call6, %if.then ], [ %retval.0, %for.body ]
  br i1 %cleanup.dest.slot.0, label %for.inc, label %cleanup7

for.inc:                                          ; preds = %cleanup
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3666, metadata !DIExpression(DW_OP_deref)), !dbg !3671
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !3688
  br label %for.cond, !dbg !3689, !llvm.loop !3690

cleanup7:                                         ; preds = %for.cond, %cleanup
  %retval.2 = phi %union.tree_node* [ %retval.1, %cleanup ], [ %var, %for.cond ], !dbg !3671
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !3692
  ret %union.tree_node* %retval.2, !dbg !3692
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3693 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3695, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3696, metadata !DIExpression()), !dbg !3699
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !3700
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !3697, metadata !DIExpression()), !dbg !3698
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #7, !dbg !3701
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3702
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3703
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3704
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !3705
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3706
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !3707
  ret void, !dbg !3708
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @process_assignment(%union.gimple_statement_d* %stmt, %struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %call, %union.tree_node** %m, %union.tree_node** %a, %union.tree_node** %ass_var) unnamed_addr #5 !dbg !3709 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3713, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %call, metadata !3714, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata %union.tree_node** %m, metadata !3715, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata %union.tree_node** %a, metadata !3716, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata %union.tree_node** %ass_var, metadata !3717, metadata !DIExpression()), !dbg !3725
  %call1 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %stmt) #7, !dbg !3727
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !3721, metadata !DIExpression()), !dbg !3725
  %call2 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %stmt) #7, !dbg !3728
  call void @llvm.dbg.value(metadata i32 %call2, metadata !3722, metadata !DIExpression()), !dbg !3725
  %call3 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call2) #7, !dbg !3729
  call void @llvm.dbg.value(metadata i32 %call3, metadata !3723, metadata !DIExpression()), !dbg !3725
  %call4 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #7, !dbg !3730
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !3724, metadata !DIExpression()), !dbg !3725
  %cmp = icmp eq i32 %call3, 3, !dbg !3731
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !3733

lor.lhs.false:                                    ; preds = %entry
  %call5 = tail call fastcc zeroext i8 @gimple_assign_cast_p(%union.gimple_statement_d* %stmt) #7, !dbg !3734
  %tobool = icmp eq i8 %call5, 0, !dbg !3734
  br i1 %tobool, label %if.end55, label %land.lhs.true, !dbg !3735

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3736
  %bf.load = load i64, i64* %0, align 8, !dbg !3736
  %bf.cast5 = and i64 %bf.load, 65535, !dbg !3737
  %cmp6 = icmp eq i64 %bf.cast5, 141, !dbg !3737
  br i1 %cmp6, label %if.then, label %if.end55, !dbg !3738

if.then:                                          ; preds = %land.lhs.true
  %call8 = tail call fastcc zeroext i8 @gimple_assign_cast_p(%union.gimple_statement_d* %stmt) #7, !dbg !3739
  %tobool10 = icmp eq i8 %call8, 0, !dbg !3739
  br i1 %tobool10, label %if.end, label %land.lhs.true11, !dbg !3742

land.lhs.true11:                                  ; preds = %if.then
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3743
  %1 = bitcast %union.tree_node** %type to i64**, !dbg !3743
  %2 = load i64*, i64** %1, align 8, !dbg !3743
  %bf.load13 = load i64, i64* %2, align 8, !dbg !3743
  %bf.cast156 = and i64 %bf.load13, 65535, !dbg !3743
  %cmp16 = icmp eq i64 %bf.cast156, 14, !dbg !3743
  br i1 %cmp16, label %cond.true, label %cond.false, !dbg !3743

cond.true:                                        ; preds = %land.lhs.true11
  %.cast = bitcast i64* %2 to %union.tree_node*, !dbg !3743
  %call20 = tail call i32 @vector_type_mode(%union.tree_node* %.cast) #6, !dbg !3743
  br label %cond.end, !dbg !3743

cond.false:                                       ; preds = %land.lhs.true11
  %type23 = bitcast i64* %2 to %struct.tree_type*, !dbg !3743
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type23, i64 0, i32 6, !dbg !3743
  %bf.load24 = load i32, i32* %mode, align 4, !dbg !3743
  %bf.lshr = lshr i32 %bf.load24, 16, !dbg !3743
  %bf.clear25 = and i32 %bf.lshr, 255, !dbg !3743
  br label %cond.end, !dbg !3743

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call20, %cond.true ], [ %bf.clear25, %cond.false ], !dbg !3743
  %type27 = getelementptr inbounds %union.tree_node, %union.tree_node* %call4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3744
  %3 = bitcast %union.tree_node** %type27 to i64**, !dbg !3744
  %4 = load i64*, i64** %3, align 8, !dbg !3744
  %bf.load29 = load i64, i64* %4, align 8, !dbg !3744
  %bf.cast317 = and i64 %bf.load29, 65535, !dbg !3744
  %cmp32 = icmp eq i64 %bf.cast317, 14, !dbg !3744
  br i1 %cmp32, label %cond.true34, label %cond.false38, !dbg !3744

cond.true34:                                      ; preds = %cond.end
  %.cast8 = bitcast i64* %4 to %union.tree_node*, !dbg !3744
  %call37 = tail call i32 @vector_type_mode(%union.tree_node* %.cast8) #6, !dbg !3744
  br label %cond.end46, !dbg !3744

cond.false38:                                     ; preds = %cond.end
  %type41 = bitcast i64* %4 to %struct.tree_type*, !dbg !3744
  %mode42 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type41, i64 0, i32 6, !dbg !3744
  %bf.load43 = load i32, i32* %mode42, align 4, !dbg !3744
  %bf.lshr44 = lshr i32 %bf.load43, 16, !dbg !3744
  %bf.clear45 = and i32 %bf.lshr44, 255, !dbg !3744
  br label %cond.end46, !dbg !3744

cond.end46:                                       ; preds = %cond.false38, %cond.true34
  %cond47 = phi i32 [ %call37, %cond.true34 ], [ %bf.clear45, %cond.false38 ], !dbg !3744
  %cmp48 = icmp eq i32 %cond, %cond47, !dbg !3745
  br i1 %cmp48, label %if.end, label %cleanup, !dbg !3746

if.end:                                           ; preds = %cond.end46, %if.then
  %5 = load %union.tree_node*, %union.tree_node** %ass_var, align 8, !dbg !3747
  %cmp51 = icmp eq %union.tree_node* %call4, %5, !dbg !3749
  br i1 %cmp51, label %if.end54, label %cleanup, !dbg !3750

if.end54:                                         ; preds = %if.end
  store %union.tree_node* %call1, %union.tree_node** %ass_var, align 8, !dbg !3751
  br label %cleanup, !dbg !3752

if.end55:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %cmp56 = icmp eq i32 %call3, 1, !dbg !3753
  br i1 %cmp56, label %if.end59, label %cleanup, !dbg !3755

if.end59:                                         ; preds = %if.end55
  %6 = load i32, i32* @flag_associative_math, align 4, !dbg !3756
  %tobool60 = icmp eq i32 %6, 0, !dbg !3756
  br i1 %tobool60, label %if.then61, label %if.end107, !dbg !3758

if.then61:                                        ; preds = %if.end59
  %7 = load %struct.tree_decl_non_common*, %struct.tree_decl_non_common** bitcast (%union.tree_node** @current_function_decl to %struct.tree_decl_non_common**), align 8, !dbg !3759
  %result = getelementptr inbounds %struct.tree_decl_non_common, %struct.tree_decl_non_common* %7, i64 0, i32 3, !dbg !3759
  %8 = bitcast %union.tree_node** %result to %struct.tree_common**, !dbg !3759
  %9 = load %struct.tree_common*, %struct.tree_common** %8, align 8, !dbg !3759
  %type63 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %9, i64 0, i32 2, !dbg !3759
  %10 = bitcast %union.tree_node** %type63 to i64**, !dbg !3759
  %11 = load i64*, i64** %10, align 8, !dbg !3759
  %bf.load65 = load i64, i64* %11, align 8, !dbg !3759
  %bf.cast671 = and i64 %bf.load65, 65535, !dbg !3759
  %cmp68 = icmp eq i64 %bf.cast671, 9, !dbg !3759
  br i1 %cmp68, label %cleanup, label %lor.lhs.false70, !dbg !3759

lor.lhs.false70:                                  ; preds = %if.then61
  %cmp79 = icmp eq i64 %bf.cast671, 13, !dbg !3759
  br i1 %cmp79, label %land.lhs.true92, label %lor.lhs.false81, !dbg !3759

lor.lhs.false81:                                  ; preds = %lor.lhs.false70
  %cmp90 = icmp eq i64 %bf.cast671, 14, !dbg !3759
  br i1 %cmp90, label %land.lhs.true92, label %if.end107, !dbg !3759

land.lhs.true92:                                  ; preds = %lor.lhs.false81, %lor.lhs.false70
  %type98 = getelementptr inbounds i64, i64* %11, i64 2, !dbg !3759
  %12 = bitcast i64* %type98 to i64**, !dbg !3759
  %13 = load i64*, i64** %12, align 8, !dbg !3759
  %bf.load100 = load i64, i64* %13, align 8, !dbg !3759
  %bf.cast1024 = and i64 %bf.load100, 65535, !dbg !3759
  %cmp103 = icmp eq i64 %bf.cast1024, 9, !dbg !3759
  br i1 %cmp103, label %cleanup, label %if.end107, !dbg !3761

if.end107:                                        ; preds = %if.end59, %lor.lhs.false81, %land.lhs.true92
  %call108 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #7, !dbg !3762
  call void @llvm.dbg.value(metadata %union.tree_node* %call108, metadata !3718, metadata !DIExpression()), !dbg !3725
  %call109 = tail call fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %stmt) #7, !dbg !3763
  call void @llvm.dbg.value(metadata %union.tree_node* %call109, metadata !3719, metadata !DIExpression()), !dbg !3725
  %14 = load %union.tree_node*, %union.tree_node** %ass_var, align 8, !dbg !3764
  %cmp110 = icmp eq %union.tree_node* %call108, %14, !dbg !3766
  br i1 %cmp110, label %land.lhs.true112, label %if.else, !dbg !3767

land.lhs.true112:                                 ; preds = %if.end107
  %call113 = tail call fastcc %union.tree_node* @independent_of_stmt_p(%union.tree_node* %call109, %union.gimple_statement_d* %stmt, %struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %call) #7, !dbg !3768
  call void @llvm.dbg.value(metadata %union.tree_node* %call113, metadata !3720, metadata !DIExpression()), !dbg !3725
  %tobool114 = icmp eq %union.tree_node* %call113, null, !dbg !3769
  br i1 %tobool114, label %land.lhs.true112.if.else_crit_edge, label %if.end124, !dbg !3770

land.lhs.true112.if.else_crit_edge:               ; preds = %land.lhs.true112
  %.pre = load %union.tree_node*, %union.tree_node** %ass_var, align 8, !dbg !3771
  br label %if.else, !dbg !3770

if.else:                                          ; preds = %land.lhs.true112.if.else_crit_edge, %if.end107
  %15 = phi %union.tree_node* [ %.pre, %land.lhs.true112.if.else_crit_edge ], [ %14, %if.end107 ], !dbg !3771
  %cmp116 = icmp eq %union.tree_node* %call109, %15, !dbg !3773
  br i1 %cmp116, label %land.lhs.true118, label %cleanup, !dbg !3774

land.lhs.true118:                                 ; preds = %if.else
  %call119 = tail call fastcc %union.tree_node* @independent_of_stmt_p(%union.tree_node* %call108, %union.gimple_statement_d* %stmt, %struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %call) #7, !dbg !3775
  call void @llvm.dbg.value(metadata %union.tree_node* %call119, metadata !3720, metadata !DIExpression()), !dbg !3725
  %tobool120 = icmp eq %union.tree_node* %call119, null, !dbg !3776
  br i1 %tobool120, label %cleanup, label %if.end124, !dbg !3777

if.end124:                                        ; preds = %land.lhs.true112, %land.lhs.true118
  %non_ass_var.0 = phi %union.tree_node* [ %call113, %land.lhs.true112 ], [ %call119, %land.lhs.true118 ], !dbg !3778
  call void @llvm.dbg.value(metadata %union.tree_node* %non_ass_var.0, metadata !3720, metadata !DIExpression()), !dbg !3725
  switch i32 %call2, label %cleanup [
    i32 63, label %sw.bb
    i32 65, label %sw.bb125
  ], !dbg !3779

sw.bb:                                            ; preds = %if.end124
  store %union.tree_node* %non_ass_var.0, %union.tree_node** %a, align 8, !dbg !3780
  store %union.tree_node* %call1, %union.tree_node** %ass_var, align 8, !dbg !3782
  br label %cleanup, !dbg !3783

sw.bb125:                                         ; preds = %if.end124
  store %union.tree_node* %non_ass_var.0, %union.tree_node** %m, align 8, !dbg !3784
  store %union.tree_node* %call1, %union.tree_node** %ass_var, align 8, !dbg !3785
  br label %cleanup, !dbg !3786

cleanup:                                          ; preds = %cond.end46, %if.end, %land.lhs.true118, %if.end55, %if.end124, %if.else, %if.then61, %land.lhs.true92, %sw.bb125, %sw.bb, %if.end54
  %retval.0 = phi i8 [ 1, %if.end54 ], [ 1, %sw.bb125 ], [ 1, %sw.bb ], [ 0, %cond.end46 ], [ 0, %if.end ], [ 0, %if.end55 ], [ 0, %land.lhs.true92 ], [ 0, %if.then61 ], [ 0, %land.lhs.true118 ], [ 0, %if.else ], [ 0, %if.end124 ], !dbg !3725
  ret i8 %retval.0, !dbg !3787
}

declare dso_local %union.tree_node* @fold_build2_stat_loc(i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_return_retval(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3788 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3790, metadata !DIExpression()), !dbg !3791
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !3792
  ret %union.tree_node* %call, !dbg !3793
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3794 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3796, metadata !DIExpression()), !dbg !3797
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !3798
  %0 = load i32, i32* %flags, align 8, !dbg !3798
  %and = and i32 %0, 512, !dbg !3799
  %tobool = icmp eq i32 %and, 0, !dbg !3799
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !3800

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !3801
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !3801
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !3802
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !3803

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !3804
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !3804
  br label %cond.end, !dbg !3803

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !3803
  ret %struct.gimple_seq_d* %cond, !dbg !3805
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3806 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3810, metadata !DIExpression()), !dbg !3811
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3812
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3812

cond.true:                                        ; preds = %entry
  %last = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 1, !dbg !3813
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %last, align 8, !dbg !3813
  br label %cond.end, !dbg !3812

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3812
  ret %struct.gimple_seq_node_d* %cond, !dbg !3814
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3815 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3817, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i32 %i, metadata !3818, metadata !DIExpression()), !dbg !3819
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !3820
  %tobool = icmp eq i8 %call, 0, !dbg !3820
  br i1 %tobool, label %return, label %if.then, !dbg !3822

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !3823
  %idxprom = zext i32 %i to i64, !dbg !3823
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !3823
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3823
  br label %return, !dbg !3825

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !3826
  ret %union.tree_node* %retval.0, !dbg !3827
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3828 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3830, metadata !DIExpression()), !dbg !3831
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3832
  %cmp = icmp eq i32 %call, 0, !dbg !3833
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !3834

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3835
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3836
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3837
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3838 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3842, metadata !DIExpression()), !dbg !3844
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #7, !dbg !3845
  %idxprom = zext i32 %call to i64, !dbg !3846
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !3846
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3846
  call void @llvm.dbg.value(metadata i64 %0, metadata !3843, metadata !DIExpression()), !dbg !3844
  %cmp = icmp eq i64 %0, 0, !dbg !3847
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3847

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3847
  br label %cond.end, !dbg !3847

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !3848
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !3849
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !3850
  ret %union.tree_node** %2, !dbg !3851
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3852 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3856, metadata !DIExpression()), !dbg !3857
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3858
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #7, !dbg !3859
  ret i32 %call1, !dbg !3860
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !3861 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3865, metadata !DIExpression()), !dbg !3866
  %idxprom = zext i32 %code to i64, !dbg !3867
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !3867
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3867
  ret i32 %0, !dbg !3868
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3869 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3871, metadata !DIExpression()), !dbg !3872
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3873
  %cmp = icmp ugt i32 %call, 5, !dbg !3874
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3875

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3876
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3877
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3878
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3879 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3881, metadata !DIExpression()), !dbg !3882
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !3883
  %tobool = icmp eq i8 %call, 0, !dbg !3883
  br i1 %tobool, label %return, label %if.end, !dbg !3885

if.end:                                           ; preds = %entry
  %vuse = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, i64 0, i32 0, i32 1, !dbg !3886
  %0 = bitcast %struct.ssa_use_operand_d** %vuse to %union.tree_node**, !dbg !3886
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3886
  br label %return, !dbg !3887

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !3882
  ret %union.tree_node* %retval.0, !dbg !3888
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3889 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3891, metadata !DIExpression()), !dbg !3892
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !3893
  ret %union.tree_node* %call, !dbg !3894
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3895 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3897, metadata !DIExpression()), !dbg !3898
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !3899
  %0 = load i32, i32* %num_ops, align 4, !dbg !3899
  ret i32 %0, !dbg !3900
}

declare dso_local void @gsi_start_phis(%struct.gimple_stmt_iterator* sret, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !3901 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !3908, metadata !DIExpression()), !dbg !3909
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !3910
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !3910
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3911
  ret %union.tree_node* %1, !dbg !3912
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3913 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3917, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata i32 %i, metadata !3918, metadata !DIExpression()), !dbg !3919
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %i) #7, !dbg !3920
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !3921
  ret %struct.ssa_use_operand_d* %imm_use, !dbg !3922
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %def) unnamed_addr #0 !dbg !3923 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %def, metadata !3928, metadata !DIExpression()), !dbg !3929
  %0 = load %union.tree_node*, %union.tree_node** %def, align 8, !dbg !3930
  ret %union.tree_node* %0, !dbg !3931
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3932 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3934, metadata !DIExpression()), !dbg !3935
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !3936
  ret %union.tree_node** %result, !dbg !3937
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !3938 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3943, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata i32 %index, metadata !3944, metadata !DIExpression()), !dbg !3945
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !3946
  %0 = load i32, i32* %capacity, align 8, !dbg !3946
  %cmp = icmp ult i32 %0, %index, !dbg !3946
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3946

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3946
  br label %cond.end, !dbg !3946

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !3947
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !3947
  ret %struct.phi_arg_d* %arrayidx, !dbg !3948
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3949 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3951, metadata !DIExpression()), !dbg !3952
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3953
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3953

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !3954
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !3954
  br label %cond.end, !dbg !3953

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3953
  ret %struct.gimple_seq_node_d* %cond, !dbg !3955
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3956 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3958, metadata !DIExpression()), !dbg !3959
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !3960
  ret %union.tree_node* %call, !dbg !3961
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3962 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3966, metadata !DIExpression()), !dbg !3968
  %call = tail call fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %gs) #7, !dbg !3969
  call void @llvm.dbg.value(metadata i32 %call, metadata !3967, metadata !DIExpression()), !dbg !3968
  %call1 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call) #7, !dbg !3970
  %cmp = icmp eq i32 %call1, 3, !dbg !3972
  br i1 %cmp, label %if.then, label %if.end, !dbg !3973

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) #7, !dbg !3974
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3974
  %bf.load = load i64, i64* %0, align 8, !dbg !3974
  %1 = trunc i64 %bf.load to i32, !dbg !3974
  %bf.cast = and i32 %1, 65535, !dbg !3974
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !3967, metadata !DIExpression()), !dbg !3968
  br label %if.end, !dbg !3975

if.end:                                           ; preds = %if.then, %entry
  %code.0 = phi i32 [ %bf.cast, %if.then ], [ %call, %entry ], !dbg !3968
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !3967, metadata !DIExpression()), !dbg !3968
  ret i32 %code.0, !dbg !3976
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 %code) unnamed_addr #0 !dbg !3977 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3981, metadata !DIExpression()), !dbg !3982
  %idxprom = sext i32 %code to i64, !dbg !3983
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimple_rhs_class_table, i64 0, i64 %idxprom, !dbg !3983
  %0 = load i8, i8* %arrayidx, align 1, !dbg !3983
  %conv = zext i8 %0 to i32, !dbg !3984
  ret i32 %conv, !dbg !3985
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3986 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3988, metadata !DIExpression()), !dbg !3989
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !3990
  ret %union.tree_node* %call, !dbg !3991
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_assign_cast_p(%union.gimple_statement_d* %s) unnamed_addr #0 !dbg !3992 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !3994, metadata !DIExpression()), !dbg !3998
  %call = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %s) #7, !dbg !3999
  %tobool = icmp eq i8 %call, 0, !dbg !3999
  br i1 %tobool, label %return, label %if.then, !dbg !4000

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %s) #7, !dbg !4001
  call void @llvm.dbg.value(metadata i32 %call1, metadata !3995, metadata !DIExpression()), !dbg !4002
  switch i32 %call1, label %lor.rhs [
    i32 116, label %lor.end
    i32 113, label %lor.end
    i32 118, label %lor.end
    i32 77, label %lor.end
  ], !dbg !4003

lor.rhs:                                          ; preds = %if.then
  br label %lor.end, !dbg !4004

lor.end:                                          ; preds = %if.then, %if.then, %if.then, %if.then, %lor.rhs
  %0 = phi i8 [ 1, %if.then ], [ 0, %lor.rhs ], [ 1, %if.then ], [ 1, %if.then ], [ 1, %if.then ]
  br label %return

return:                                           ; preds = %entry, %lor.end
  %retval.0 = phi i8 [ %0, %lor.end ], [ 0, %entry ], !dbg !3998
  ret i8 %retval.0, !dbg !4005
}

declare dso_local i32 @vector_type_mode(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs2(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4006 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4008, metadata !DIExpression()), !dbg !4009
  %call = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #7, !dbg !4010
  %cmp = icmp ugt i32 %call, 2, !dbg !4012
  br i1 %cmp, label %if.then, label %return, !dbg !4013

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 2) #7, !dbg !4014
  br label %return, !dbg !4015

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %call1, %if.then ], [ null, %entry ], !dbg !4016
  ret %union.tree_node* %retval.0, !dbg !4017
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @independent_of_stmt_p(%union.tree_node* %expr, %union.gimple_statement_d* %at, %struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) unnamed_addr #5 !dbg !4018 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %expr, metadata !4022, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %at, metadata !4023, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4024, metadata !DIExpression()), !dbg !4031
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !4032
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4032
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !4033
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !4033
  %call = tail call zeroext i8 @is_gimple_min_invariant(%union.tree_node* %expr) #6, !dbg !4034
  %tobool = icmp eq i8 %call, 0, !dbg !4034
  br i1 %tobool, label %if.end, label %cleanup, !dbg !4036

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4037
  %bf.load = load i64, i64* %2, align 8, !dbg !4037
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4039
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !4039
  br i1 %cmp, label %if.end2, label %cleanup, !dbg !4040

if.end2:                                          ; preds = %if.end
  %call3 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %at) #7, !dbg !4041
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call3, metadata !4027, metadata !DIExpression()), !dbg !4030
  %call4 = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4042
  %call5 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %call4) #7, !dbg !4043
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call5, metadata !4026, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call5, metadata !4025, metadata !DIExpression()), !dbg !4030
  br label %for.cond, !dbg !4044

for.cond:                                         ; preds = %for.inc, %if.end2
  %bb.0 = phi %struct.basic_block_def* [ %call5, %if.end2 ], [ %call8, %for.inc ], !dbg !4046
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !4025, metadata !DIExpression()), !dbg !4030
  %cmp6 = icmp eq %struct.basic_block_def* %bb.0, %call3, !dbg !4047
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 2, !dbg !4030
  %3 = bitcast i8** %aux to i8***, !dbg !4030
  store i8** %aux, i8*** %3, align 8, !dbg !4030
  br i1 %cmp6, label %while.cond.preheader, label %for.inc, !dbg !4049

while.cond.preheader:                             ; preds = %for.cond
  %4 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !4050
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !4050
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !4050
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !4053
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !4053
  br label %while.cond, !dbg !4055

for.inc:                                          ; preds = %for.cond
  %call8 = tail call fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %bb.0) #7, !dbg !4056
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call8, metadata !4025, metadata !DIExpression()), !dbg !4030
  br label %for.cond, !dbg !4057, !llvm.loop !4058

while.cond:                                       ; preds = %while.cond.preheader, %cond.end
  %expr.addr.0 = phi %union.tree_node* [ %call51, %cond.end ], [ %expr, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.0, metadata !4022, metadata !DIExpression()), !dbg !4030
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %expr.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4060
  %9 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !4060
  %10 = load %union.gimple_statement_d*, %union.gimple_statement_d** %9, align 8, !dbg !4060
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %10, metadata !4023, metadata !DIExpression()), !dbg !4030
  %call11 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %10) #7, !dbg !4061
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call11, metadata !4025, metadata !DIExpression()), !dbg !4030
  %tobool12 = icmp eq %struct.basic_block_def* %call11, null, !dbg !4062
  br i1 %tobool12, label %while.end.loopexit, label %lor.lhs.false, !dbg !4064

lor.lhs.false:                                    ; preds = %while.cond
  %aux13 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call11, i64 0, i32 2, !dbg !4065
  %11 = load i8*, i8** %aux13, align 8, !dbg !4065
  %tobool14 = icmp eq i8* %11, null, !dbg !4066
  br i1 %tobool14, label %while.end.loopexit, label %if.end16, !dbg !4067

if.end16:                                         ; preds = %lor.lhs.false
  %cmp17 = icmp eq %struct.basic_block_def* %call11, %call5, !dbg !4068
  br i1 %cmp17, label %for.cond19.preheader, label %if.end33, !dbg !4070

for.cond19.preheader:                             ; preds = %if.end16
  %expr.addr.0.lcssa11 = phi %union.tree_node* [ %expr.addr.0, %if.end16 ]
  %.lcssa10 = phi %union.gimple_statement_d* [ %10, %if.end16 ], !dbg !4060
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.0.lcssa11, metadata !4022, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.0.lcssa11, metadata !4022, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.0.lcssa11, metadata !4022, metadata !DIExpression()), !dbg !4030
  br label %for.cond19, !dbg !4071

for.cond19:                                       ; preds = %for.cond19.preheader, %for.inc27
  %call20 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4074
  %tobool21 = icmp eq i8 %call20, 0, !dbg !4076
  br i1 %tobool21, label %for.body22, label %for.end28, !dbg !4071

for.body22:                                       ; preds = %for.cond19
  %call23 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4077
  %cmp24 = icmp eq %union.gimple_statement_d* %call23, %.lcssa10, !dbg !4079
  br i1 %cmp24, label %for.end28, label %for.inc27, !dbg !4080

for.inc27:                                        ; preds = %for.body22
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !4081
  br label %for.cond19, !dbg !4082, !llvm.loop !4083

for.end28:                                        ; preds = %for.body22, %for.cond19
  %call29 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4085
  %tobool30 = icmp eq i8 %call29, 0, !dbg !4085
  %spec.select = select i1 %tobool30, %union.tree_node* null, %union.tree_node* %expr.addr.0.lcssa11, !dbg !4087
  call void @llvm.dbg.value(metadata %union.tree_node* %spec.select, metadata !4022, metadata !DIExpression()), !dbg !4030
  br label %while.end, !dbg !4088

if.end33:                                         ; preds = %if.end16
  %call34 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %10) #7, !dbg !4089
  %cmp35 = icmp eq i32 %call34, 16, !dbg !4091
  br i1 %cmp35, label %if.end37, label %while.end.loopexit, !dbg !4092

if.end37:                                         ; preds = %if.end33
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #8, !dbg !4093
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call11, i64 0, i32 0, !dbg !4093
  %call38 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %preds) #7, !dbg !4093
  %12 = extractvalue { i32, %struct.VEC_edge_gc** } %call38, 0, !dbg !4093
  store i32 %12, i32* %5, align 8, !dbg !4093
  %13 = extractvalue { i32, %struct.VEC_edge_gc** } %call38, 1, !dbg !4093
  store %struct.VEC_edge_gc** %13, %struct.VEC_edge_gc*** %6, align 8, !dbg !4093
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %4, i64 16, i1 false), !dbg !4093
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #8, !dbg !4093
  br label %for.cond39, !dbg !4093

for.cond39:                                       ; preds = %for.inc47, %if.end37
  %14 = load i32, i32* %7, align 8, !dbg !4094
  %15 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %8, align 8, !dbg !4094
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4028, metadata !DIExpression(DW_OP_deref)), !dbg !4030
  %call40 = call fastcc zeroext i8 @ei_cond(i32 %14, %struct.VEC_edge_gc** %15, %struct.edge_def** nonnull %e) #7, !dbg !4094
  %tobool41 = icmp eq i8 %call40, 0, !dbg !4093
  br i1 %tobool41, label %for.cond39.for.end48_crit_edge, label %for.body42, !dbg !4093

for.cond39.for.end48_crit_edge:                   ; preds = %for.cond39
  %.pre = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4095
  br label %for.end48, !dbg !4093

for.body42:                                       ; preds = %for.cond39
  %16 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4096
  call void @llvm.dbg.value(metadata %struct.edge_def* %16, metadata !4028, metadata !DIExpression()), !dbg !4030
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i64 0, i32 0, !dbg !4098
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !4098
  %aux43 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i64 0, i32 2, !dbg !4099
  %18 = load i8*, i8** %aux43, align 8, !dbg !4099
  %tobool44 = icmp eq i8* %18, null, !dbg !4096
  br i1 %tobool44, label %for.inc47, label %for.end48.loopexit, !dbg !4100

for.inc47:                                        ; preds = %for.body42
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4029, metadata !DIExpression(DW_OP_deref)), !dbg !4030
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !4094
  br label %for.cond39, !dbg !4094, !llvm.loop !4101

for.end48.loopexit:                               ; preds = %for.body42
  %.lcssa = phi %struct.edge_def* [ %16, %for.body42 ], !dbg !4096
  br label %for.end48, !dbg !4095

for.end48:                                        ; preds = %for.end48.loopexit, %for.cond39.for.end48_crit_edge
  %19 = phi %struct.edge_def* [ %.pre, %for.cond39.for.end48_crit_edge ], [ %.lcssa, %for.end48.loopexit ], !dbg !4095
  call void @llvm.dbg.value(metadata %struct.edge_def* %19, metadata !4028, metadata !DIExpression()), !dbg !4030
  %tobool49 = icmp eq %struct.edge_def* %19, null, !dbg !4095
  br i1 %tobool49, label %cond.true, label %cond.end, !dbg !4095

cond.true:                                        ; preds = %for.end48
  call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 242, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !4095
  %.pre5 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4103
  br label %cond.end, !dbg !4095

cond.end:                                         ; preds = %for.end48, %cond.true
  %20 = phi %struct.edge_def* [ %19, %for.end48 ], [ %.pre5, %cond.true ], !dbg !4103
  call void @llvm.dbg.value(metadata %struct.edge_def* %20, metadata !4028, metadata !DIExpression()), !dbg !4030
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %20, i64 0, i32 6, !dbg !4103
  %21 = load i32, i32* %dest_idx, align 4, !dbg !4103
  %call50 = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %10, i32 %21) #7, !dbg !4103
  %call51 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call50) #7, !dbg !4103
  call void @llvm.dbg.value(metadata %union.tree_node* %call51, metadata !4022, metadata !DIExpression()), !dbg !4030
  %22 = getelementptr inbounds %union.tree_node, %union.tree_node* %call51, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4104
  %bf.load53 = load i64, i64* %22, align 8, !dbg !4104
  %bf.cast552 = and i64 %bf.load53, 65535, !dbg !4106
  %cmp56 = icmp eq i64 %bf.cast552, 141, !dbg !4106
  br i1 %cmp56, label %while.cond, label %while.end.loopexit, !dbg !4107, !llvm.loop !4108

while.end.loopexit:                               ; preds = %while.cond, %lor.lhs.false, %if.end33, %cond.end
  %expr.addr.2.ph = phi %union.tree_node* [ %call51, %cond.end ], [ null, %if.end33 ], [ %expr.addr.0, %while.cond ], [ %expr.addr.0, %lor.lhs.false ]
  br label %while.end, !dbg !4110

while.end:                                        ; preds = %while.end.loopexit, %for.end28
  %expr.addr.2 = phi %union.tree_node* [ %spec.select, %for.end28 ], [ %expr.addr.2.ph, %while.end.loopexit ]
  call void @llvm.dbg.value(metadata %union.tree_node* %expr.addr.2, metadata !4022, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call5, metadata !4025, metadata !DIExpression()), !dbg !4030
  br label %for.cond59, !dbg !4110

for.cond59:                                       ; preds = %for.inc63, %while.end
  %bb.1 = phi %struct.basic_block_def* [ %call5, %while.end ], [ %call64, %for.inc63 ], !dbg !4112
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1, metadata !4025, metadata !DIExpression()), !dbg !4030
  %cmp60 = icmp eq %struct.basic_block_def* %bb.1, %call3, !dbg !4113
  %aux62 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 2, !dbg !4030
  store i8* null, i8** %aux62, align 8, !dbg !4030
  br i1 %cmp60, label %cleanup.loopexit, label %for.inc63, !dbg !4115

for.inc63:                                        ; preds = %for.cond59
  %call64 = call fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %bb.1) #7, !dbg !4116
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call64, metadata !4025, metadata !DIExpression()), !dbg !4030
  br label %for.cond59, !dbg !4117, !llvm.loop !4118

cleanup.loopexit:                                 ; preds = %for.cond59
  br label %cleanup, !dbg !4120

cleanup:                                          ; preds = %cleanup.loopexit, %if.end, %entry
  %retval.0 = phi %union.tree_node* [ %expr, %entry ], [ null, %if.end ], [ %expr.addr.2, %cleanup.loopexit ], !dbg !4030
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !4120
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4120
  ret %union.tree_node* %retval.0, !dbg !4120
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !4121 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4123, metadata !DIExpression()), !dbg !4125
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !4126
  call void @llvm.dbg.value(metadata i32 %call, metadata !4124, metadata !DIExpression()), !dbg !4125
  switch i32 %call, label %if.else4 [
    i32 6, label %if.then
    i32 1, label %if.then
    i32 8, label %cleanup
  ], !dbg !4127

if.then:                                          ; preds = %entry, %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !4129
  %bf.load = load i32, i32* %0, align 8, !dbg !4129
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !4129
  br label %cleanup, !dbg !4130

if.else4:                                         ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 1446, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !4131
  br label %cleanup, !dbg !4133

cleanup:                                          ; preds = %entry, %if.else4, %if.then
  %retval.0 = phi i32 [ %bf.lshr, %if.then ], [ 0, %if.else4 ], [ 59, %entry ], !dbg !4125
  ret i32 %retval.0, !dbg !4134
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4135 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4137, metadata !DIExpression()), !dbg !4138
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !4139
  %cmp = icmp eq i32 %call, 6, !dbg !4140
  %conv1 = zext i1 %cmp to i8, !dbg !4139
  ret i8 %conv1, !dbg !4141
}

declare dso_local zeroext i8 @is_gimple_min_invariant(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4142 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4146, metadata !DIExpression()), !dbg !4147
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !4148
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !4148
  ret %struct.basic_block_def* %0, !dbg !4149
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.var_ann_d* @var_ann(%union.tree_node* %t) unnamed_addr #0 !dbg !4150 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !4155, metadata !DIExpression()), !dbg !4159
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4160
  %bf.load = load i64, i64* %0, align 8, !dbg !4160
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4160
  %cmp = icmp eq i64 %bf.cast1, 32, !dbg !4160
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4160

cond.true:                                        ; preds = %entry
  %ann = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 1, !dbg !4160
  %1 = bitcast %union.tree_node** %ann to %struct.var_ann_d**, !dbg !4160
  br label %cond.end19, !dbg !4160

cond.false:                                       ; preds = %entry
  %cmp5 = icmp eq i64 %bf.cast1, 34, !dbg !4160
  br i1 %cmp5, label %cond.true6, label %cond.false8, !dbg !4160

cond.true6:                                       ; preds = %cond.false
  %ann7 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !4160
  %2 = bitcast %union.tree_node** %ann7 to %struct.var_ann_d**, !dbg !4160
  br label %cond.end19, !dbg !4160

cond.false8:                                      ; preds = %cond.false
  %cmp13 = icmp eq i64 %bf.cast1, 36, !dbg !4160
  %ann15 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !4160
  %3 = bitcast %union.tree_node** %ann15 to %struct.var_ann_d**, !dbg !4160
  %cond = select i1 %cmp13, %struct.var_ann_d** %3, %struct.var_ann_d** null, !dbg !4160
  br label %cond.end19, !dbg !4160

cond.end19:                                       ; preds = %cond.true6, %cond.false8, %cond.true
  %cond20 = phi %struct.var_ann_d** [ %1, %cond.true ], [ %2, %cond.true6 ], [ %cond, %cond.false8 ], !dbg !4160
  call void @llvm.dbg.value(metadata %struct.var_ann_d** %cond20, metadata !4156, metadata !DIExpression()), !dbg !4159
  %tobool = icmp eq %struct.var_ann_d** %cond20, null, !dbg !4161
  br i1 %tobool, label %cond.end23, label %cond.true21, !dbg !4161

cond.true21:                                      ; preds = %cond.end19
  %4 = load %struct.var_ann_d*, %struct.var_ann_d** %cond20, align 8, !dbg !4162
  br label %cond.end23, !dbg !4161

cond.end23:                                       ; preds = %cond.end19, %cond.true21
  %cond24 = phi %struct.var_ann_d* [ %4, %cond.true21 ], [ null, %cond.end19 ], !dbg !4161
  ret %struct.var_ann_d* %cond24, !dbg !4163
}

declare dso_local %union.tree_node* @make_ssa_name_fn(%struct.function*, %union.tree_node*, %union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local %union.tree_node* @create_tmp_var(%union.tree_node*, i8*) local_unnamed_addr #2

declare dso_local zeroext i8 @add_referenced_var(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @fold_convert_loc(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @eliminate_tail_call(%struct.tailcall* %t) unnamed_addr #5 !dbg !4164 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.tailcall* %t, metadata !4168, metadata !DIExpression()), !dbg !4183
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !4184
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !4184
  %call_gsi = getelementptr inbounds %struct.tailcall, %struct.tailcall* %t, i64 0, i32 0, !dbg !4185
  %call1 = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %call_gsi) #7, !dbg !4186
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call1, metadata !4180, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call1, metadata !4171, metadata !DIExpression()), !dbg !4183
  %call3 = tail call fastcc %struct.basic_block_def* @gsi_bb(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %call_gsi) #7, !dbg !4187
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call3, metadata !4175, metadata !DIExpression()), !dbg !4183
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4188
  %tobool = icmp eq %struct._IO_FILE* %1, null, !dbg !4188
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !4190

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* @dump_flags, align 4, !dbg !4191
  %and = and i32 %2, 8, !dbg !4192
  %tobool4 = icmp eq i32 %and, 0, !dbg !4192
  br i1 %tobool4, label %if.end, label %if.then, !dbg !4193

if.then:                                          ; preds = %land.lhs.true
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call3, i64 0, i32 9, !dbg !4194
  %3 = load i32, i32* %index, align 8, !dbg !4194
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i32 %3) #6, !dbg !4196
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4197
  tail call void @print_gimple_stmt(%struct._IO_FILE* %4, %union.gimple_statement_d* %call1, i32 0, i32 2) #6, !dbg !4198
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4199
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !4200
  br label %if.end, !dbg !4201

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %call7 = tail call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %call1) #7, !dbg !4202
  %tobool8 = icmp eq i8 %call7, 0, !dbg !4202
  br i1 %tobool8, label %cond.true, label %cond.end, !dbg !4202

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 774, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !4202
  br label %cond.end, !dbg !4202

cond.end:                                         ; preds = %if.end, %cond.true
  %6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4203
  %cfg = getelementptr inbounds %struct.function, %struct.function* %6, i64 0, i32 1, !dbg !4203
  %7 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4203
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %7, i64 0, i32 0, !dbg !4203
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !4203
  %call9 = tail call fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %8) #7, !dbg !4204
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call9, metadata !4176, metadata !DIExpression()), !dbg !4183
  %9 = bitcast %struct.tailcall* %t to i8*, !dbg !4205
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* align 8 %9, i64 24, i1 false), !dbg !4205
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4179, metadata !DIExpression(DW_OP_deref)), !dbg !4183
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !4206
  br label %while.cond, !dbg !4207

while.cond:                                       ; preds = %cleanup, %cond.end
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4179, metadata !DIExpression(DW_OP_deref)), !dbg !4183
  %call11 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4208
  %tobool12 = icmp eq i8 %call11, 0, !dbg !4209
  br i1 %tobool12, label %while.body, label %while.end, !dbg !4207

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4179, metadata !DIExpression(DW_OP_deref)), !dbg !4183
  %call14 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4210
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call14, metadata !4181, metadata !DIExpression()), !dbg !4211
  %call15 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call14) #7, !dbg !4212
  %cmp = icmp eq i32 %call15, 9, !dbg !4214
  br i1 %cmp, label %cleanup, label %if.end17, !dbg !4215

if.end17:                                         ; preds = %while.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4179, metadata !DIExpression(DW_OP_deref)), !dbg !4183
  call void @gsi_remove(%struct.gimple_stmt_iterator* nonnull %gsi, i8 zeroext 1) #6, !dbg !4216
  call void @release_defs(%union.gimple_statement_d* %call14) #6, !dbg !4217
  br label %cleanup, !dbg !4218

cleanup:                                          ; preds = %while.body, %if.end17
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end17 ], [ false, %while.body ]
  br i1 %cleanup.dest.slot.0, label %while.cond, label %while.end, !llvm.loop !4219

while.end:                                        ; preds = %cleanup, %while.cond
  %call19 = call fastcc %struct.basic_block_def* @gsi_bb(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %call_gsi) #7, !dbg !4220
  %call20 = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %call19) #7, !dbg !4221
  call void @llvm.dbg.value(metadata %struct.edge_def* %call20, metadata !4177, metadata !DIExpression()), !dbg !4183
  %10 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4222
  %cfg22 = getelementptr inbounds %struct.function, %struct.function* %10, i64 0, i32 1, !dbg !4222
  %11 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg22, align 8, !dbg !4222
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %11, i64 0, i32 1, !dbg !4222
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !4222
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call20, i64 0, i32 9, !dbg !4223
  %13 = load i64, i64* %count, align 8, !dbg !4223
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call20, i64 0, i32 0, !dbg !4224
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !4224
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %14, i64 0, i32 11, !dbg !4224
  %15 = load i32, i32* %frequency, align 8, !dbg !4224
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call20, i64 0, i32 8, !dbg !4224
  %16 = load i32, i32* %probability, align 4, !dbg !4224
  %mul = mul nsw i32 %15, %16, !dbg !4224
  %add = add nsw i32 %mul, 5000, !dbg !4224
  %div = sdiv i32 %add, 10000, !dbg !4224
  call fastcc void @decrease_profile(%struct.basic_block_def* %12, i64 %13, i32 %div) #7, !dbg !4225
  %17 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4226
  %cfg24 = getelementptr inbounds %struct.function, %struct.function* %17, i64 0, i32 1, !dbg !4226
  %18 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg24, align 8, !dbg !4226
  %x_entry_block_ptr25 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %18, i64 0, i32 0, !dbg !4226
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr25, align 8, !dbg !4226
  %20 = load i64, i64* %count, align 8, !dbg !4227
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !4228
  %frequency28 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %21, i64 0, i32 11, !dbg !4228
  %22 = load i32, i32* %frequency28, align 8, !dbg !4228
  %23 = load i32, i32* %probability, align 4, !dbg !4228
  %mul30 = mul nsw i32 %22, %23, !dbg !4228
  %add31 = add nsw i32 %mul30, 5000, !dbg !4228
  %div32 = sdiv i32 %add31, 10000, !dbg !4228
  call fastcc void @decrease_profile(%struct.basic_block_def* %19, i64 %20, i32 %div32) #7, !dbg !4229
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call20, i64 0, i32 1, !dbg !4230
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !4230
  %25 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4232
  %cfg34 = getelementptr inbounds %struct.function, %struct.function* %25, i64 0, i32 1, !dbg !4232
  %26 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg34, align 8, !dbg !4232
  %x_exit_block_ptr35 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %26, i64 0, i32 1, !dbg !4232
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr35, align 8, !dbg !4232
  %cmp36 = icmp eq %struct.basic_block_def* %24, %27, !dbg !4233
  br i1 %cmp36, label %if.end46, label %if.then37, !dbg !4234

if.then37:                                        ; preds = %while.end
  %28 = load i64, i64* %count, align 8, !dbg !4235
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !4236
  %frequency41 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %29, i64 0, i32 11, !dbg !4236
  %30 = load i32, i32* %frequency41, align 8, !dbg !4236
  %31 = load i32, i32* %probability, align 4, !dbg !4236
  %mul43 = mul nsw i32 %30, %31, !dbg !4236
  %add44 = add nsw i32 %mul43, 5000, !dbg !4236
  %div45 = sdiv i32 %add44, 10000, !dbg !4236
  call fastcc void @decrease_profile(%struct.basic_block_def* %24, i64 %28, i32 %div45) #7, !dbg !4237
  br label %if.end46, !dbg !4237

if.end46:                                         ; preds = %while.end, %if.then37
  %call48 = call fastcc %struct.basic_block_def* @gsi_bb(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %call_gsi) #7, !dbg !4238
  %call49 = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %call48) #7, !dbg !4239
  %call50 = call %struct.edge_def* @redirect_edge_and_branch(%struct.edge_def* %call49, %struct.basic_block_def* %call9) #6, !dbg !4240
  call void @llvm.dbg.value(metadata %struct.edge_def* %call50, metadata !4177, metadata !DIExpression()), !dbg !4183
  %tobool51 = icmp eq %struct.edge_def* %call50, null, !dbg !4241
  br i1 %tobool51, label %cond.true52, label %cond.end54, !dbg !4241

cond.true52:                                      ; preds = %if.end46
  call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 805, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !4241
  br label %cond.end54, !dbg !4241

cond.end54:                                       ; preds = %if.end46, %cond.true52
  %g = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call50, i64 0, i32 2, i32 0, !dbg !4242
  store %struct.gimple_seq_d* null, %struct.gimple_seq_d** %g, align 8, !dbg !4243
  %32 = load %struct.tree_decl_non_common*, %struct.tree_decl_non_common** bitcast (%union.tree_node** @current_function_decl to %struct.tree_decl_non_common**), align 8, !dbg !4244
  %arguments = getelementptr inbounds %struct.tree_decl_non_common, %struct.tree_decl_non_common* %32, i64 0, i32 2, !dbg !4244
  %33 = load %union.tree_node*, %union.tree_node** %arguments, align 8, !dbg !4244
  call void @llvm.dbg.value(metadata %union.tree_node* %33, metadata !4169, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata i64 0, metadata !4174, metadata !DIExpression()), !dbg !4183
  %34 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !4246
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %34) #8, !dbg !4246
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %call9) #6, !dbg !4246
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %34, i64 24, i1 false), !dbg !4246
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %34) #8, !dbg !4246
  br label %for.cond, !dbg !4247

for.cond:                                         ; preds = %for.inc, %cond.end54
  %idx.0 = phi i64 [ 0, %cond.end54 ], [ %inc, %for.inc ], !dbg !4248
  %param.0 = phi %union.tree_node* [ %33, %cond.end54 ], [ %37, %for.inc ], !dbg !4248
  call void @llvm.dbg.value(metadata %union.tree_node* %param.0, metadata !4169, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata i64 %idx.0, metadata !4174, metadata !DIExpression()), !dbg !4183
  %tobool56 = icmp eq %union.tree_node* %param.0, null, !dbg !4249
  br i1 %tobool56, label %for.end, label %for.body, !dbg !4249

for.body:                                         ; preds = %for.cond
  %call57 = call fastcc zeroext i8 @arg_needs_copy_p(%union.tree_node* nonnull %param.0) #7, !dbg !4250
  %tobool58 = icmp eq i8 %call57, 0, !dbg !4250
  br i1 %tobool58, label %for.inc, label %if.end60, !dbg !4254

if.end60:                                         ; preds = %for.body
  %conv = trunc i64 %idx.0 to i32, !dbg !4255
  %call61 = call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call1, i32 %conv) #7, !dbg !4256
  call void @llvm.dbg.value(metadata %union.tree_node* %call61, metadata !4173, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4179, metadata !DIExpression(DW_OP_deref)), !dbg !4183
  %call62 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4257
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call62, metadata !4178, metadata !DIExpression()), !dbg !4183
  %call63 = call fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %call62) #7, !dbg !4258
  %call64 = call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %call63) #7, !dbg !4258
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %call64, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4258
  %35 = bitcast i32* %var to %union.tree_node**, !dbg !4258
  %36 = load %union.tree_node*, %union.tree_node** %35, align 8, !dbg !4258
  %cmp65 = icmp eq %union.tree_node* %param.0, %36, !dbg !4258
  br i1 %cmp65, label %cond.end69, label %cond.true67, !dbg !4258

cond.true67:                                      ; preds = %if.end60
  call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 820, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !4258
  br label %cond.end69, !dbg !4258

cond.end69:                                       ; preds = %if.end60, %cond.true67
  %call71 = call fastcc i32 @gimple_location(%union.gimple_statement_d* %call1) #7, !dbg !4259
  call void @add_phi_arg(%union.gimple_statement_d* %call62, %union.tree_node* %call61, %struct.edge_def* %call50, i32 %call71) #6, !dbg !4260
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4179, metadata !DIExpression(DW_OP_deref)), !dbg !4183
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !4261
  br label %for.inc, !dbg !4262

for.inc:                                          ; preds = %for.body, %cond.end69
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %param.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4263
  %37 = load %union.tree_node*, %union.tree_node** %chain, align 8, !dbg !4263
  call void @llvm.dbg.value(metadata %union.tree_node* %37, metadata !4169, metadata !DIExpression()), !dbg !4183
  %inc = add i64 %idx.0, 1, !dbg !4264
  call void @llvm.dbg.value(metadata i64 %inc, metadata !4174, metadata !DIExpression()), !dbg !4183
  br label %for.cond, !dbg !4265, !llvm.loop !4266

for.end:                                          ; preds = %for.cond
  %mult = getelementptr inbounds %struct.tailcall, %struct.tailcall* %t, i64 0, i32 2, !dbg !4268
  %38 = load %union.tree_node*, %union.tree_node** %mult, align 8, !dbg !4268
  %add73 = getelementptr inbounds %struct.tailcall, %struct.tailcall* %t, i64 0, i32 3, !dbg !4269
  %39 = load %union.tree_node*, %union.tree_node** %add73, align 8, !dbg !4269
  call fastcc void @adjust_accumulator_values(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %call_gsi, %union.tree_node* %38, %union.tree_node* %39, %struct.edge_def* %call50) #7, !dbg !4270
  %call75 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %call_gsi) #7, !dbg !4271
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call75, metadata !4172, metadata !DIExpression()), !dbg !4183
  %call76 = call fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %call75) #7, !dbg !4272
  call void @llvm.dbg.value(metadata %union.tree_node* %call76, metadata !4170, metadata !DIExpression()), !dbg !4183
  %cmp77 = icmp eq %union.tree_node* %call76, null, !dbg !4273
  br i1 %cmp77, label %if.end82, label %if.then79, !dbg !4275

if.then79:                                        ; preds = %for.end
  %call80 = call %union.gimple_statement_d* @gimple_build_nop() #6, !dbg !4276
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call76, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4278
  %40 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !4278
  store %union.gimple_statement_d* %call80, %union.gimple_statement_d** %40, align 8, !dbg !4279
  br label %if.end82, !dbg !4280

if.end82:                                         ; preds = %for.end, %if.then79
  call void @gsi_remove(%struct.gimple_stmt_iterator* %call_gsi, i8 zeroext 1) #6, !dbg !4281
  call void @release_defs(%union.gimple_statement_d* %call75) #6, !dbg !4282
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !4283
  ret void, !dbg !4283
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_call_set_tail(%union.gimple_statement_d* %s, i8 zeroext %tail_p) unnamed_addr #0 !dbg !4284 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !4288, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata i8 1, metadata !4289, metadata !DIExpression()), !dbg !4290
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %s, i64 0, i32 0, i32 0, i32 0, !dbg !4291
  %bf.load = load i32, i32* %0, align 8, !dbg !4291
  %bf.lshr = and i32 %bf.load, -589824, !dbg !4293
  %or = or i32 %bf.lshr, 524288, !dbg !4293
  %bf.clear = and i32 %bf.load, 65535, !dbg !4293
  %bf.set = or i32 %bf.clear, %or, !dbg !4293
  store i32 %bf.set, i32* %0, align 8, !dbg !4291
  ret void, !dbg !4294
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local void @print_gimple_stmt(%struct._IO_FILE*, %union.gimple_statement_d*, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gsi_bb(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !4295 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !4299, metadata !DIExpression()), !dbg !4300
  %bb = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 2, !dbg !4301
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !4301
  ret %struct.basic_block_def* %0, !dbg !4302
}

declare dso_local void @gsi_remove(%struct.gimple_stmt_iterator*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @release_defs(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @decrease_profile(%struct.basic_block_def* %bb, i64 %count, i32 %frequency) unnamed_addr #5 !dbg !4303 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4307, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i64 %count, metadata !4308, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i32 %frequency, metadata !4309, metadata !DIExpression()), !dbg !4311
  %count1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 8, !dbg !4312
  %0 = load i64, i64* %count1, align 8, !dbg !4313
  %sub = sub nsw i64 %0, %count, !dbg !4313
  %cmp = icmp slt i64 %sub, 0, !dbg !4314
  br i1 %cmp, label %if.then, label %if.end, !dbg !4316

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !4317

if.end:                                           ; preds = %if.then, %entry
  %storemerge1 = phi i64 [ 0, %if.then ], [ %sub, %entry ], !dbg !4311
  store i64 %storemerge1, i64* %count1, align 8, !dbg !4311
  %frequency4 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 11, !dbg !4318
  %1 = load i32, i32* %frequency4, align 8, !dbg !4319
  %sub5 = sub nsw i32 %1, %frequency, !dbg !4319
  %cmp7 = icmp slt i32 %sub5, 0, !dbg !4320
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !4322

if.then8:                                         ; preds = %if.end
  br label %if.end10, !dbg !4323

if.end10:                                         ; preds = %if.then8, %if.end
  %storemerge = phi i32 [ 0, %if.then8 ], [ %sub5, %if.end ], !dbg !4311
  store i32 %storemerge, i32* %frequency4, align 8, !dbg !4311
  %call = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) #7, !dbg !4324
  %tobool = icmp eq i8 %call, 0, !dbg !4324
  br i1 %tobool, label %if.then11, label %if.end20, !dbg !4326

if.then11:                                        ; preds = %if.end10
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !4327
  %2 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4327
  %tobool12 = icmp eq %struct.VEC_edge_gc* %2, null, !dbg !4327
  br i1 %tobool12, label %cond.end, label %cond.true, !dbg !4327

cond.true:                                        ; preds = %if.then11
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %2, i64 0, i32 0, !dbg !4327
  br label %cond.end, !dbg !4327

cond.end:                                         ; preds = %if.then11, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %if.then11 ], !dbg !4327
  %call14 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !4327
  %tobool15 = icmp eq i32 %call14, 0, !dbg !4327
  br i1 %tobool15, label %cleanup.cont, label %cond.true16, !dbg !4327

cond.true16:                                      ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 719, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !4327
  br label %cleanup.cont, !dbg !4327

if.end20:                                         ; preds = %if.end10
  %call21 = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) #7, !dbg !4329
  call void @llvm.dbg.value(metadata %struct.edge_def* %call21, metadata !4310, metadata !DIExpression()), !dbg !4311
  %count22 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call21, i64 0, i32 9, !dbg !4330
  %3 = load i64, i64* %count22, align 8, !dbg !4331
  %sub23 = sub nsw i64 %3, %count, !dbg !4331
  store i64 %sub23, i64* %count22, align 8, !dbg !4331
  %cmp25 = icmp slt i64 %sub23, 0, !dbg !4332
  br i1 %cmp25, label %if.then26, label %cleanup.cont, !dbg !4334

if.then26:                                        ; preds = %if.end20
  store i64 0, i64* %count22, align 8, !dbg !4335
  br label %cleanup.cont, !dbg !4336

cleanup.cont:                                     ; preds = %cond.end, %cond.true16, %if.then26, %if.end20
  ret void, !dbg !4337
}

declare dso_local %struct.edge_def* @redirect_edge_and_branch(%struct.edge_def*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_location(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4338 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4342, metadata !DIExpression()), !dbg !4343
  %location = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 2, !dbg !4344
  %0 = load i32, i32* %location, align 8, !dbg !4344
  ret i32 %0, !dbg !4345
}

; Function Attrs: nounwind uwtable
define internal fastcc void @adjust_accumulator_values(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi, %union.tree_node* %m, %union.tree_node* %a, %struct.edge_def* %back) unnamed_addr #5 !dbg !4346 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4350, metadata !DIExpression()), !dbg !4357
  call void @llvm.dbg.value(metadata %union.tree_node* %m, metadata !4351, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.value(metadata %union.tree_node* %a, metadata !4352, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.value(metadata %struct.edge_def* %back, metadata !4353, metadata !DIExpression()), !dbg !4358
  %tobool = icmp eq %union.tree_node* %m, null, !dbg !4359
  br i1 %tobool, label %if.end, label %if.then, !dbg !4361

if.then:                                          ; preds = %entry
  %call = call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* nonnull %gsi, %union.tree_node* nonnull %m, i8 zeroext 1, %union.tree_node* null, i8 zeroext 1, i32 1) #6, !dbg !4362
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4351, metadata !DIExpression()), !dbg !4358
  br label %if.end, !dbg !4363

if.end:                                           ; preds = %entry, %if.then
  %m.addr.0 = phi %union.tree_node* [ %call, %if.then ], [ null, %entry ]
  call void @llvm.dbg.value(metadata %union.tree_node* %m.addr.0, metadata !4351, metadata !DIExpression()), !dbg !4358
  %tobool1 = icmp eq %union.tree_node* %a, null, !dbg !4364
  br i1 %tobool1, label %if.end4, label %if.then2, !dbg !4366

if.then2:                                         ; preds = %if.end
  %call3 = call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* nonnull %gsi, %union.tree_node* nonnull %a, i8 zeroext 1, %union.tree_node* null, i8 zeroext 1, i32 1) #6, !dbg !4367
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !4352, metadata !DIExpression()), !dbg !4358
  br label %if.end4, !dbg !4368

if.end4:                                          ; preds = %if.end, %if.then2
  %a.addr.0 = phi %union.tree_node* [ %call3, %if.then2 ], [ null, %if.end ]
  call void @llvm.dbg.value(metadata %union.tree_node* %a.addr.0, metadata !4352, metadata !DIExpression()), !dbg !4358
  %0 = load %union.tree_node*, %union.tree_node** @a_acc, align 8, !dbg !4369
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !4355, metadata !DIExpression()), !dbg !4358
  %1 = load %union.tree_node*, %union.tree_node** @m_acc, align 8, !dbg !4370
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !4356, metadata !DIExpression()), !dbg !4358
  %tobool5 = icmp eq %union.tree_node* %a.addr.0, null, !dbg !4371
  br i1 %tobool5, label %if.end17, label %if.then6, !dbg !4373

if.then6:                                         ; preds = %if.end4
  %tobool7 = icmp eq %union.tree_node* %1, null, !dbg !4374
  br i1 %tobool7, label %if.end15, label %if.then8, !dbg !4377

if.then8:                                         ; preds = %if.then6
  %call9 = call i32 @integer_onep(%union.tree_node* nonnull %a.addr.0) #6, !dbg !4378
  %tobool10 = icmp eq i32 %call9, 0, !dbg !4378
  %2 = load %union.tree_node*, %union.tree_node** @m_acc, align 8, !dbg !4381
  br i1 %tobool10, label %if.else, label %if.end15, !dbg !4382

if.else:                                          ; preds = %if.then8
  %call12 = call fastcc %union.tree_node* @adjust_return_value_with_ops(i32 65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), %union.tree_node* %2, %union.tree_node* nonnull %a.addr.0, %struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4383
  call void @llvm.dbg.value(metadata %union.tree_node* %call12, metadata !4354, metadata !DIExpression()), !dbg !4358
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %if.then6, %if.else
  %var.1 = phi %union.tree_node* [ %call12, %if.else ], [ %2, %if.then8 ], [ %a.addr.0, %if.then6 ], !dbg !4384
  call void @llvm.dbg.value(metadata %union.tree_node* %var.1, metadata !4354, metadata !DIExpression()), !dbg !4358
  %3 = load %union.tree_node*, %union.tree_node** @a_acc, align 8, !dbg !4385
  %call16 = call fastcc %union.tree_node* @update_accumulator_with_ops(i32 63, %union.tree_node* %3, %union.tree_node* %var.1, %struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4386
  call void @llvm.dbg.value(metadata %union.tree_node* %call16, metadata !4355, metadata !DIExpression()), !dbg !4358
  br label %if.end17, !dbg !4387

if.end17:                                         ; preds = %if.end4, %if.end15
  %a_acc_arg.0 = phi %union.tree_node* [ %call16, %if.end15 ], [ %0, %if.end4 ], !dbg !4358
  call void @llvm.dbg.value(metadata %union.tree_node* %a_acc_arg.0, metadata !4355, metadata !DIExpression()), !dbg !4358
  %tobool18 = icmp eq %union.tree_node* %m.addr.0, null, !dbg !4388
  br i1 %tobool18, label %if.end21, label %if.then19, !dbg !4390

if.then19:                                        ; preds = %if.end17
  %4 = load %union.tree_node*, %union.tree_node** @m_acc, align 8, !dbg !4391
  %call20 = call fastcc %union.tree_node* @update_accumulator_with_ops(i32 65, %union.tree_node* %4, %union.tree_node* nonnull %m.addr.0, %struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4392
  call void @llvm.dbg.value(metadata %union.tree_node* %call20, metadata !4356, metadata !DIExpression()), !dbg !4358
  br label %if.end21, !dbg !4393

if.end21:                                         ; preds = %if.end17, %if.then19
  %m_acc_arg.0 = phi %union.tree_node* [ %call20, %if.then19 ], [ %1, %if.end17 ], !dbg !4358
  call void @llvm.dbg.value(metadata %union.tree_node* %m_acc_arg.0, metadata !4356, metadata !DIExpression()), !dbg !4358
  %5 = load %union.tree_node*, %union.tree_node** @a_acc, align 8, !dbg !4394
  %tobool22 = icmp eq %union.tree_node* %5, null, !dbg !4394
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !4396

if.then23:                                        ; preds = %if.end21
  call fastcc void @add_successor_phi_arg(%struct.edge_def* %back, %union.tree_node* nonnull %5, %union.tree_node* %a_acc_arg.0) #7, !dbg !4397
  br label %if.end24, !dbg !4397

if.end24:                                         ; preds = %if.end21, %if.then23
  %6 = load %union.tree_node*, %union.tree_node** @m_acc, align 8, !dbg !4398
  %tobool25 = icmp eq %union.tree_node* %6, null, !dbg !4398
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !4400

if.then26:                                        ; preds = %if.end24
  call fastcc void @add_successor_phi_arg(%struct.edge_def* %back, %union.tree_node* nonnull %6, %union.tree_node* %m_acc_arg.0) #7, !dbg !4401
  br label %if.end27, !dbg !4401

if.end27:                                         ; preds = %if.end24, %if.then26
  ret void, !dbg !4402
}

declare dso_local %union.gimple_statement_d* @gimple_build_nop() local_unnamed_addr #2

declare dso_local %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator*, %union.tree_node*, i8 zeroext, %union.tree_node*, i8 zeroext, i32) local_unnamed_addr #2

declare dso_local i32 @integer_onep(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @adjust_return_value_with_ops(i32 %code, i8* %label, %union.tree_node* %acc, %union.tree_node* %op1, %struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) unnamed_addr #5 !dbg !4403 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !4407, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.value(metadata i8* %label, metadata !4408, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.value(metadata %union.tree_node* %acc, metadata !4409, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.value(metadata %union.tree_node* %op1, metadata !4410, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4411, metadata !DIExpression()), !dbg !4420
  %0 = load %struct.tree_decl_non_common*, %struct.tree_decl_non_common** bitcast (%union.tree_node** @current_function_decl to %struct.tree_decl_non_common**), align 8, !dbg !4421
  %result = getelementptr inbounds %struct.tree_decl_non_common, %struct.tree_decl_non_common* %0, i64 0, i32 3, !dbg !4421
  %1 = bitcast %union.tree_node** %result to %struct.tree_common**, !dbg !4421
  %2 = load %struct.tree_common*, %struct.tree_common** %1, align 8, !dbg !4421
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %2, i64 0, i32 2, !dbg !4421
  %3 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !4421
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !4412, metadata !DIExpression()), !dbg !4419
  %call = tail call %union.tree_node* @create_tmp_var(%union.tree_node* %3, i8* %label) #6, !dbg !4422
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4413, metadata !DIExpression()), !dbg !4419
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4423
  %bf.load = load i64, i64* %4, align 8, !dbg !4423
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4425
  %cmp = icmp eq i64 %bf.cast1, 13, !dbg !4425
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4426

lor.lhs.false:                                    ; preds = %entry
  %cmp6 = icmp eq i64 %bf.cast1, 14, !dbg !4427
  br i1 %cmp6, label %if.then, label %if.end, !dbg !4428

if.then:                                          ; preds = %lor.lhs.false, %entry
  %gimple_reg_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4429
  %5 = bitcast i40* %gimple_reg_flag to i64*, !dbg !4429
  %bf.load7 = load i64, i64* %5, align 8, !dbg !4430
  %bf.set = or i64 %bf.load7, 134217728, !dbg !4430
  store i64 %bf.set, i64* %5, align 8, !dbg !4430
  br label %if.end, !dbg !4429

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %call9 = tail call zeroext i8 @add_referenced_var(%union.tree_node* %call) #6, !dbg !4431
  %type11 = getelementptr inbounds %union.tree_node, %union.tree_node* %acc, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4432
  %6 = load %union.tree_node*, %union.tree_node** %type11, align 8, !dbg !4432
  %type13 = getelementptr inbounds %union.tree_node, %union.tree_node* %op1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4433
  %7 = load %union.tree_node*, %union.tree_node** %type13, align 8, !dbg !4433
  %call14 = tail call zeroext i8 @types_compatible_p(%union.tree_node* %6, %union.tree_node* %7) #6, !dbg !4434
  %tobool = icmp eq i8 %call14, 0, !dbg !4434
  br i1 %tobool, label %if.else, label %if.then15, !dbg !4435

if.then15:                                        ; preds = %if.end
  %call16 = tail call %union.gimple_statement_d* @gimple_build_assign_with_ops_stat(i32 %code, %union.tree_node* %call, %union.tree_node* %acc, %union.tree_node* %op1) #6, !dbg !4436
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call16, metadata !4414, metadata !DIExpression()), !dbg !4419
  br label %if.end28, !dbg !4437

if.else:                                          ; preds = %if.end
  %8 = load %union.tree_node*, %union.tree_node** %type11, align 8, !dbg !4438
  %9 = load %union.tree_node*, %union.tree_node** %type13, align 8, !dbg !4438
  %call23 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %9, %union.tree_node* %acc) #6, !dbg !4438
  %call24 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 %code, %union.tree_node* %9, %union.tree_node* %call23, %union.tree_node* %op1) #6, !dbg !4438
  %call25 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %8, %union.tree_node* %call24) #6, !dbg !4438
  call void @llvm.dbg.value(metadata %union.tree_node* %call25, metadata !4416, metadata !DIExpression()), !dbg !4439
  %call26 = call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* nonnull %gsi, %union.tree_node* %call25, i8 zeroext 0, %union.tree_node* null, i8 zeroext 1, i32 2) #6, !dbg !4440
  call void @llvm.dbg.value(metadata %union.tree_node* %call26, metadata !4416, metadata !DIExpression()), !dbg !4439
  %call27 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* null, %union.tree_node* %call26) #6, !dbg !4441
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call27, metadata !4414, metadata !DIExpression()), !dbg !4419
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then15
  %stmt.0 = phi %union.gimple_statement_d* [ %call16, %if.then15 ], [ %call27, %if.else ], !dbg !4442
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt.0, metadata !4414, metadata !DIExpression()), !dbg !4419
  %call29 = call fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %call, %union.gimple_statement_d* %stmt.0) #7, !dbg !4443
  call void @llvm.dbg.value(metadata %union.tree_node* %call29, metadata !4415, metadata !DIExpression()), !dbg !4419
  call fastcc void @gimple_assign_set_lhs(%union.gimple_statement_d* %stmt.0, %union.tree_node* %call29) #7, !dbg !4444
  call fastcc void @update_stmt(%union.gimple_statement_d* %stmt.0) #7, !dbg !4445
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %stmt.0, i32 0) #6, !dbg !4446
  ret %union.tree_node* %call29, !dbg !4447
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @update_accumulator_with_ops(i32 %code, %union.tree_node* %acc, %union.tree_node* %op1, %struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) unnamed_addr #5 !dbg !4448 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !4452, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata %union.tree_node* %acc, metadata !4453, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata %union.tree_node* %op1, metadata !4454, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4455, metadata !DIExpression()), !dbg !4462
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %acc, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4463
  %0 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !4463
  %type2 = getelementptr inbounds %union.tree_node, %union.tree_node* %op1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4464
  %1 = load %union.tree_node*, %union.tree_node** %type2, align 8, !dbg !4464
  %call = tail call zeroext i8 @types_compatible_p(%union.tree_node* %0, %union.tree_node* %1) #6, !dbg !4465
  %tobool = icmp eq i8 %call, 0, !dbg !4465
  br i1 %tobool, label %if.else, label %if.then, !dbg !4466

if.then:                                          ; preds = %entry
  %var3 = getelementptr inbounds %union.tree_node, %union.tree_node* %acc, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4467
  %2 = bitcast i32* %var3 to %union.tree_node**, !dbg !4467
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8, !dbg !4467
  %call4 = tail call %union.gimple_statement_d* @gimple_build_assign_with_ops_stat(i32 %code, %union.tree_node* %3, %union.tree_node* %acc, %union.tree_node* %op1) #6, !dbg !4467
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call4, metadata !4456, metadata !DIExpression()), !dbg !4461
  br label %if.end, !dbg !4468

if.else:                                          ; preds = %entry
  %4 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !4469
  %5 = load %union.tree_node*, %union.tree_node** %type2, align 8, !dbg !4469
  %call11 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %5, %union.tree_node* %acc) #6, !dbg !4469
  %call12 = tail call %union.tree_node* @fold_build2_stat_loc(i32 0, i32 %code, %union.tree_node* %5, %union.tree_node* %call11, %union.tree_node* %op1) #6, !dbg !4469
  %call13 = tail call %union.tree_node* @fold_convert_loc(i32 0, %union.tree_node* %4, %union.tree_node* %call12) #6, !dbg !4469
  call void @llvm.dbg.value(metadata %union.tree_node* %call13, metadata !4458, metadata !DIExpression()), !dbg !4470
  %call14 = call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* nonnull %gsi, %union.tree_node* %call13, i8 zeroext 0, %union.tree_node* null, i8 zeroext 0, i32 2) #6, !dbg !4471
  call void @llvm.dbg.value(metadata %union.tree_node* %call14, metadata !4458, metadata !DIExpression()), !dbg !4470
  %call15 = call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* null, %union.tree_node* %call14) #6, !dbg !4472
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call15, metadata !4456, metadata !DIExpression()), !dbg !4461
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %stmt.0 = phi %union.gimple_statement_d* [ %call4, %if.then ], [ %call15, %if.else ], !dbg !4473
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt.0, metadata !4456, metadata !DIExpression()), !dbg !4461
  %var17 = getelementptr inbounds %union.tree_node, %union.tree_node* %acc, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4474
  %6 = bitcast i32* %var17 to %union.tree_node**, !dbg !4474
  %7 = load %union.tree_node*, %union.tree_node** %6, align 8, !dbg !4474
  %call18 = call fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %7, %union.gimple_statement_d* %stmt.0) #7, !dbg !4475
  call void @llvm.dbg.value(metadata %union.tree_node* %call18, metadata !4457, metadata !DIExpression()), !dbg !4461
  call fastcc void @gimple_assign_set_lhs(%union.gimple_statement_d* %stmt.0, %union.tree_node* %call18) #7, !dbg !4476
  call fastcc void @update_stmt(%union.gimple_statement_d* %stmt.0) #7, !dbg !4477
  call void @gsi_insert_after(%struct.gimple_stmt_iterator* nonnull %gsi, %union.gimple_statement_d* %stmt.0, i32 0) #6, !dbg !4478
  ret %union.tree_node* %call18, !dbg !4479
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_successor_phi_arg(%struct.edge_def* %e, %union.tree_node* %var, %union.tree_node* %phi_arg) unnamed_addr #5 !dbg !4480 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !4484, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !4485, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.value(metadata %union.tree_node* %phi_arg, metadata !4486, metadata !DIExpression()), !dbg !4488
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !4489
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !4489
  %1 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !4490
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #8, !dbg !4490
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !4492
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !4492
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %2) #6, !dbg !4490
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !4490
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #8, !dbg !4490
  br label %for.cond, !dbg !4493

for.cond:                                         ; preds = %for.inc, %entry
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4487, metadata !DIExpression(DW_OP_deref)), !dbg !4488
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4494
  %tobool = icmp eq i8 %call, 0, !dbg !4496
  br i1 %tobool, label %for.body, label %for.end, !dbg !4497

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4487, metadata !DIExpression(DW_OP_deref)), !dbg !4488
  %call1 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4498
  %call2 = call fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %call1) #7, !dbg !4498
  %call3 = call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %call2) #7, !dbg !4498
  %cmp = icmp eq %union.tree_node* %call3, %var, !dbg !4500
  br i1 %cmp, label %for.end, label %for.inc, !dbg !4501

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4487, metadata !DIExpression(DW_OP_deref)), !dbg !4488
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !4502
  br label %for.cond, !dbg !4503, !llvm.loop !4504

for.end:                                          ; preds = %for.body, %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4487, metadata !DIExpression(DW_OP_deref)), !dbg !4488
  %call4 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4506
  %tobool5 = icmp eq i8 %call4, 0, !dbg !4506
  br i1 %tobool5, label %cond.end, label %cond.true, !dbg !4506

cond.true:                                        ; preds = %for.end
  call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 562, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !4506
  br label %cond.end, !dbg !4506

cond.end:                                         ; preds = %for.end, %cond.true
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4487, metadata !DIExpression(DW_OP_deref)), !dbg !4488
  %call6 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !4507
  call void @add_phi_arg(%union.gimple_statement_d* %call6, %union.tree_node* %phi_arg, %struct.edge_def* %e, i32 0) #6, !dbg !4508
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !4509
  ret void, !dbg !4509
}

declare dso_local zeroext i8 @types_compatible_p(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_assign_with_ops_stat(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_assign_set_lhs(%union.gimple_statement_d* %gs, %union.tree_node* %lhs) unnamed_addr #0 !dbg !4510 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4514, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.value(metadata %union.tree_node* %lhs, metadata !4515, metadata !DIExpression()), !dbg !4516
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 0, %union.tree_node* %lhs) #7, !dbg !4517
  %tobool = icmp eq %union.tree_node* %lhs, null, !dbg !4518
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !4520

land.lhs.true:                                    ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4521
  %bf.load = load i64, i64* %0, align 8, !dbg !4521
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4522
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !4522
  br i1 %cmp, label %if.then, label %if.end, !dbg !4523

if.then:                                          ; preds = %land.lhs.true
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4524
  %1 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !4524
  store %union.gimple_statement_d* %gs, %union.gimple_statement_d** %1, align 8, !dbg !4525
  br label %if.end, !dbg !4524

if.end:                                           ; preds = %entry, %if.then, %land.lhs.true
  ret void, !dbg !4526
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @update_stmt(%union.gimple_statement_d* %s) unnamed_addr #0 !dbg !4527 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !4531, metadata !DIExpression()), !dbg !4532
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %s) #7, !dbg !4533
  %tobool = icmp eq i8 %call, 0, !dbg !4533
  br i1 %tobool, label %if.end, label %if.then, !dbg !4535

if.then:                                          ; preds = %entry
  tail call void @gimple_set_modified(%union.gimple_statement_d* %s, i8 zeroext 1) #6, !dbg !4536
  tail call void @update_stmt_operands(%union.gimple_statement_d* %s) #6, !dbg !4538
  br label %if.end, !dbg !4539

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !4540
}

declare dso_local void @gsi_insert_before(%struct.gimple_stmt_iterator*, %union.gimple_statement_d*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 %i, %union.tree_node* %op) unnamed_addr #0 !dbg !4541 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4545, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i32 0, metadata !4546, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata %union.tree_node* %op, metadata !4547, metadata !DIExpression()), !dbg !4548
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !4549
  %tobool = icmp eq i8 %call, 0, !dbg !4549
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !4549

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #7, !dbg !4549
  %cmp = icmp eq i32 %call1, 0, !dbg !4549
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4549

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 1665, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !4549
  br label %cond.end, !dbg !4549

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %call3 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !4550
  store %union.tree_node* %op, %union.tree_node** %call3, align 8, !dbg !4551
  ret void, !dbg !4552
}

declare dso_local void @gimple_set_modified(%union.gimple_statement_d*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @update_stmt_operands(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local void @gsi_insert_after(%struct.gimple_stmt_iterator*, %union.gimple_statement_d*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gimple_seq_last_stmt(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !4553 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !4557, metadata !DIExpression()), !dbg !4559
  %call = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %s) #7, !dbg !4560
  call void @llvm.dbg.value(metadata %struct.gimple_seq_node_d* %call, metadata !4558, metadata !DIExpression()), !dbg !4559
  %tobool = icmp eq %struct.gimple_seq_node_d* %call, null, !dbg !4561
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4561

cond.true:                                        ; preds = %entry
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %call, i64 0, i32 0, !dbg !4562
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !4562
  br label %cond.end, !dbg !4561

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %union.gimple_statement_d* [ %0, %cond.true ], [ null, %entry ], !dbg !4561
  ret %union.gimple_statement_d* %cond, !dbg !4563
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_return_set_retval(%union.gimple_statement_d* %gs, %union.tree_node* %retval) unnamed_addr #0 !dbg !4564 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4566, metadata !DIExpression()), !dbg !4568
  call void @llvm.dbg.value(metadata %union.tree_node* %retval, metadata !4567, metadata !DIExpression()), !dbg !4568
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 0, %union.tree_node* %retval) #7, !dbg !4569
  ret void, !dbg !4570
}

declare dso_local void @mark_sym_for_renaming(%union.tree_node*) local_unnamed_addr #2

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
!1 = distinct !DIGlobalVariable(name: "pass_tail_recursion", scope: !2, file: !3, line: 1046, type: !2060, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !638, globals: !2057, nameTableKind: None)
!3 = !DIFile(filename: "tree-tailcall.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !317, !324, !330, !335, !340, !359, !366, !373, !567, !606, !632}
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
!317 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "eh_region_type", file: !318, line: 30, baseType: !7, size: 32, elements: !319)
!318 = !DIFile(filename: "./except.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!319 = !{!320, !321, !322, !323}
!320 = !DIEnumerator(name: "ERT_CLEANUP", value: 0, isUnsigned: true)
!321 = !DIEnumerator(name: "ERT_TRY", value: 1, isUnsigned: true)
!322 = !DIEnumerator(name: "ERT_ALLOWED_EXCEPTIONS", value: 2, isUnsigned: true)
!323 = !DIEnumerator(name: "ERT_MUST_NOT_THROW", value: 3, isUnsigned: true)
!324 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !325, line: 363, baseType: !7, size: 32, elements: !326)
!325 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!326 = !{!327, !328, !329}
!327 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!328 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!329 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!330 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !325, line: 355, baseType: !7, size: 32, elements: !331)
!331 = !{!332, !333, !334}
!332 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!333 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!334 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!335 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !336, line: 474, baseType: !7, size: 32, elements: !337)
!336 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!337 = !{!338, !339}
!338 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!339 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!340 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !341, line: 280, baseType: !7, size: 32, elements: !342)
!341 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!342 = !{!343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358}
!343 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!344 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!345 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!346 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!347 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!348 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!349 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!350 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!351 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!352 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!353 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!354 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!355 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!356 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!357 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!358 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!359 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !341, line: 1817, baseType: !7, size: 32, elements: !360)
!360 = !{!361, !362, !363, !364, !365}
!361 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!362 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!363 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!364 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!365 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!366 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !341, line: 1805, baseType: !7, size: 32, elements: !367)
!367 = !{!368, !369, !370, !371, !372}
!368 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!369 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!370 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!371 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!372 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!373 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !341, line: 39, baseType: !7, size: 32, elements: !374)
!374 = !{!375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566}
!375 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!376 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!377 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!378 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!379 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!380 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!381 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!382 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!383 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!384 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!385 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!386 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!387 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!388 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!389 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!390 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!391 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!392 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!393 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!394 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!395 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!396 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!397 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!398 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!399 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!400 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!401 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!402 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!403 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!404 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!405 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!406 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!407 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!408 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!409 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!410 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!411 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!412 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!413 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!414 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!415 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!416 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!417 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!418 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!419 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!420 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!421 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!422 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!423 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!424 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!425 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!426 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!427 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!428 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!429 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!430 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!431 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!432 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!433 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!434 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!435 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!436 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!437 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!438 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!439 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!440 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!441 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!442 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!443 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!444 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!445 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!446 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!447 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!448 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!449 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!450 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!451 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!452 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!453 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!454 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!455 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!456 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!457 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!458 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!459 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!460 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!461 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!462 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!463 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!464 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!465 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!466 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!467 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!468 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!469 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!470 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!471 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!472 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!473 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!474 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!475 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!476 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!477 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!478 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!479 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!480 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!481 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!482 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!483 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!484 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!485 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!486 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!487 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!488 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!489 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!490 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!491 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!492 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!493 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!494 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!495 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!496 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!497 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!498 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!499 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!500 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!501 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!502 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!503 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!504 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!505 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!506 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!507 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!508 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!509 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!510 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!511 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!512 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!513 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!514 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!515 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!516 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!517 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!518 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!519 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!520 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!521 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!522 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!523 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!524 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!525 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!526 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!527 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!528 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!529 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!530 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!531 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!532 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!533 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!534 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!535 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!536 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!537 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!538 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!539 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!540 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!541 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!542 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!543 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!544 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!545 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!546 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!547 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!548 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!549 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!550 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!551 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!552 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!553 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!554 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!555 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!556 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!557 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!558 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!559 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!560 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!561 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!562 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!563 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!564 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!565 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!566 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!567 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !568, line: 51, baseType: !7, size: 32, elements: !569)
!568 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!569 = !{!570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605}
!570 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!571 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!572 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!573 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!574 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!575 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!576 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!577 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!578 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!579 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!580 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!581 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!582 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!583 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!584 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!585 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!586 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!587 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!588 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!589 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!590 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!591 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!592 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!593 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!594 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!595 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!596 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!597 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!598 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!599 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!600 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!601 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!602 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!603 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!604 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!605 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!606 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !568, line: 727, baseType: !7, size: 32, elements: !607)
!607 = !{!608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631}
!608 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!609 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!610 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!611 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!612 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!613 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!614 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!615 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!616 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!617 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!618 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!619 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!620 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!621 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!622 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!623 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!624 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!625 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!626 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!627 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!628 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!629 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!630 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!631 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!632 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_rhs_class", file: !568, line: 80, baseType: !7, size: 32, elements: !633)
!633 = !{!634, !635, !636, !637}
!634 = !DIEnumerator(name: "GIMPLE_INVALID_RHS", value: 0, isUnsigned: true)
!635 = !DIEnumerator(name: "GIMPLE_BINARY_RHS", value: 1, isUnsigned: true)
!636 = !DIEnumerator(name: "GIMPLE_UNARY_RHS", value: 2, isUnsigned: true)
!637 = !DIEnumerator(name: "GIMPLE_SINGLE_RHS", value: 3, isUnsigned: true)
!638 = !{!639, !640, !641, !642, !645, !646, !648, !373, !775, !2041, !973, !2055, !1007, !643, !632}
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!641 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !644)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !649, line: 56, baseType: !650)
!649 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !341, line: 3371, size: 1792, elements: !652)
!652 = !{!653, !686, !692, !705, !724, !735, !740, !749, !755, !768, !780, !818, !1276, !1304, !1321, !1322, !1327, !1336, !1342, !1347, !1351, !1355, !1692, !1739, !1745, !1751, !1758, !1771, !1785, !1802, !1814, !1836, !1851, !2023}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !651, file: !341, line: 3372, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !341, line: 360, size: 64, elements: !655)
!655 = !{!656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !654, file: !341, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !654, file: !341, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !654, file: !341, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !654, file: !341, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !654, file: !341, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !654, file: !341, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !654, file: !341, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !654, file: !341, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !654, file: !341, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !654, file: !341, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !654, file: !341, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !654, file: !341, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !654, file: !341, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !654, file: !341, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !654, file: !341, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !654, file: !341, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !654, file: !341, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !654, file: !341, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !654, file: !341, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !654, file: !341, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !654, file: !341, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !654, file: !341, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !654, file: !341, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !654, file: !341, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !654, file: !341, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !654, file: !341, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !654, file: !341, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !654, file: !341, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !654, file: !341, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !654, file: !341, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !651, file: !341, line: 3373, baseType: !687, size: 192)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !341, line: 402, size: 192, elements: !688)
!688 = !{!689, !690, !691}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !687, file: !341, line: 403, baseType: !654, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !687, file: !341, line: 404, baseType: !648, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !687, file: !341, line: 405, baseType: !648, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !651, file: !341, line: 3374, baseType: !693, size: 320)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !341, line: 1384, size: 320, elements: !694)
!694 = !{!695, !696}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !693, file: !341, line: 1385, baseType: !687, size: 192)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !693, file: !341, line: 1386, baseType: !697, size: 128, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !698, line: 58, baseType: !699)
!698 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !698, line: 54, size: 128, elements: !700)
!700 = !{!701, !703}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !699, file: !698, line: 56, baseType: !702, size: 64)
!702 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !699, file: !698, line: 57, baseType: !704, size: 64, offset: 64)
!704 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !651, file: !341, line: 3375, baseType: !706, size: 256)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !341, line: 1397, size: 256, elements: !707)
!707 = !{!708, !709}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !706, file: !341, line: 1398, baseType: !687, size: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !706, file: !341, line: 1399, baseType: !710, size: 64, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !712, line: 52, size: 256, elements: !713)
!712 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!713 = !{!714, !715, !716, !717, !718, !719, !720}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !711, file: !712, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !711, file: !712, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !711, file: !712, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !711, file: !712, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !711, file: !712, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !711, file: !712, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !711, file: !712, line: 62, baseType: !721, size: 192, offset: 64)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !702, size: 192, elements: !722)
!722 = !{!723}
!723 = !DISubrange(count: 3)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !651, file: !341, line: 3376, baseType: !725, size: 256)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !341, line: 1408, size: 256, elements: !726)
!726 = !{!727, !728}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !725, file: !341, line: 1409, baseType: !687, size: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !725, file: !341, line: 1410, baseType: !729, size: 64, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !731, line: 27, size: 192, elements: !732)
!731 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!732 = !{!733, !734}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !730, file: !731, line: 29, baseType: !697, size: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !730, file: !731, line: 30, baseType: !189, size: 32, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !651, file: !341, line: 3377, baseType: !736, size: 256)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !341, line: 1437, size: 256, elements: !737)
!737 = !{!738, !739}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !736, file: !341, line: 1438, baseType: !687, size: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !736, file: !341, line: 1439, baseType: !648, size: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !651, file: !341, line: 3378, baseType: !741, size: 256)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !341, line: 1418, size: 256, elements: !742)
!742 = !{!743, !744, !745}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !741, file: !341, line: 1419, baseType: !687, size: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !741, file: !341, line: 1420, baseType: !641, size: 32, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !741, file: !341, line: 1421, baseType: !746, size: 8, offset: 224)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 8, elements: !747)
!747 = !{!748}
!748 = !DISubrange(count: 1)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !651, file: !341, line: 3379, baseType: !750, size: 320)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !341, line: 1428, size: 320, elements: !751)
!751 = !{!752, !753, !754}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !750, file: !341, line: 1429, baseType: !687, size: 192)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !750, file: !341, line: 1430, baseType: !648, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !750, file: !341, line: 1431, baseType: !648, size: 64, offset: 256)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !651, file: !341, line: 3380, baseType: !756, size: 320)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !341, line: 1460, size: 320, elements: !757)
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !756, file: !341, line: 1461, baseType: !687, size: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !756, file: !341, line: 1462, baseType: !760, size: 128, offset: 192)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !761, line: 31, size: 128, elements: !762)
!761 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!762 = !{!763, !766, !767}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !760, file: !761, line: 32, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !640)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !760, file: !761, line: 33, baseType: !7, size: 32, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !760, file: !761, line: 34, baseType: !7, size: 32, offset: 96)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !651, file: !341, line: 3381, baseType: !769, size: 384)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !341, line: 2507, size: 384, elements: !770)
!770 = !{!771, !772, !777, !778, !779}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !769, file: !341, line: 2508, baseType: !687, size: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !769, file: !341, line: 2509, baseType: !773, size: 32, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !774, line: 58, baseType: !775)
!774 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !776, line: 44, baseType: !7)
!776 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!777 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !769, file: !341, line: 2510, baseType: !7, size: 32, offset: 224)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !769, file: !341, line: 2511, baseType: !648, size: 64, offset: 256)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !769, file: !341, line: 2512, baseType: !648, size: 64, offset: 320)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !651, file: !341, line: 3382, baseType: !781, size: 896)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !341, line: 2652, size: 896, elements: !782)
!782 = !{!783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !781, file: !341, line: 2653, baseType: !769, size: 384)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !781, file: !341, line: 2654, baseType: !648, size: 64, offset: 384)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !781, file: !341, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !781, file: !341, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !781, file: !341, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !781, file: !341, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !781, file: !341, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !781, file: !341, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !781, file: !341, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !781, file: !341, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !781, file: !341, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !781, file: !341, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !781, file: !341, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !781, file: !341, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !781, file: !341, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !781, file: !341, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !781, file: !341, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !781, file: !341, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !781, file: !341, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !781, file: !341, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !781, file: !341, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !781, file: !341, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !781, file: !341, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !781, file: !341, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !781, file: !341, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !781, file: !341, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !781, file: !341, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !781, file: !341, line: 2703, baseType: !7, size: 32, offset: 512)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !781, file: !341, line: 2705, baseType: !648, size: 64, offset: 576)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !781, file: !341, line: 2706, baseType: !648, size: 64, offset: 640)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !781, file: !341, line: 2707, baseType: !648, size: 64, offset: 704)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !781, file: !341, line: 2708, baseType: !648, size: 64, offset: 768)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !781, file: !341, line: 2711, baseType: !816, size: 64, offset: 832)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !341, line: 2711, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !651, file: !341, line: 3383, baseType: !819, size: 960)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !341, line: 2756, size: 960, elements: !820)
!820 = !{!821, !822}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !819, file: !341, line: 2757, baseType: !781, size: 896)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !819, file: !341, line: 2758, baseType: !823, size: 64, offset: 896)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !649, line: 50, baseType: !824)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !826, line: 240, size: 384, elements: !827)
!826 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!827 = !{!828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !825, file: !826, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !825, file: !826, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !825, file: !826, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !825, file: !826, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !825, file: !826, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !825, file: !826, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !825, file: !826, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !825, file: !826, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !825, file: !826, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !825, file: !826, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !825, file: !826, line: 321, baseType: !839, size: 320, offset: 64)
!839 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !826, line: 315, size: 320, elements: !840)
!840 = !{!841, !1243, !1245, !1274, !1275}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !839, file: !826, line: 316, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !843, size: 64, elements: !747)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !826, line: 183, baseType: !844)
!844 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !826, line: 166, size: 64, elements: !845)
!845 = !{!846, !847, !848, !849, !850, !858, !859, !871, !874, !934, !935, !1220, !1233, !1240}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !844, file: !826, line: 168, baseType: !641, size: 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !844, file: !826, line: 169, baseType: !7, size: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !844, file: !826, line: 170, baseType: !646, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !844, file: !826, line: 171, baseType: !823, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !844, file: !826, line: 172, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !649, line: 53, baseType: !852)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !826, line: 359, size: 128, elements: !854)
!854 = !{!855, !856}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !853, file: !826, line: 360, baseType: !641, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !853, file: !826, line: 361, baseType: !857, size: 64, offset: 64)
!857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !823, size: 64, elements: !747)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !844, file: !826, line: 173, baseType: !189, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !844, file: !826, line: 174, baseType: !860, size: 32)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !826, line: 133, baseType: !861)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !826, line: 115, size: 32, elements: !862)
!862 = !{!863, !864, !865, !866, !867, !868, !869, !870}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !861, file: !826, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !861, file: !826, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !861, file: !826, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !861, file: !826, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !861, file: !826, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !861, file: !826, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !861, file: !826, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !861, file: !826, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !844, file: !826, line: 175, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !826, line: 175, flags: DIFlagFwdDecl)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !844, file: !826, line: 176, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !877, line: 75, size: 256, elements: !878)
!877 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!878 = !{!879, !893, !894, !895}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !876, file: !877, line: 76, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !877, line: 68, baseType: !882)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !877, line: 63, size: 320, elements: !883)
!883 = !{!884, !886, !887, !888}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !882, file: !877, line: 64, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !882, file: !877, line: 65, baseType: !885, size: 64, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !882, file: !877, line: 66, baseType: !7, size: 32, offset: 128)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !882, file: !877, line: 67, baseType: !889, size: 128, offset: 192)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !890, size: 128, elements: !891)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !877, line: 29, baseType: !702)
!891 = !{!892}
!892 = !DISubrange(count: 2)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !876, file: !877, line: 77, baseType: !880, size: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !876, file: !877, line: 78, baseType: !7, size: 32, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !876, file: !877, line: 79, baseType: !896, size: 64, offset: 192)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !877, line: 49, baseType: !898)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !877, line: 45, size: 832, elements: !899)
!899 = !{!900, !901, !902}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !898, file: !877, line: 46, baseType: !885, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !898, file: !877, line: 47, baseType: !875, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !898, file: !877, line: 48, baseType: !903, size: 704, offset: 128)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !904, line: 164, size: 704, elements: !905)
!904 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!905 = !{!906, !907, !917, !918, !919, !920, !921, !922, !926, !930, !931, !932, !933}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !903, file: !904, line: 166, baseType: !704, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !903, file: !904, line: 167, baseType: !908, size: 64, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !904, line: 157, size: 192, elements: !910)
!910 = !{!911, !912, !913}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !909, file: !904, line: 159, baseType: !643, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !909, file: !904, line: 160, baseType: !908, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !909, file: !904, line: 161, baseType: !914, size: 32, offset: 128)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 32, elements: !915)
!915 = !{!916}
!916 = !DISubrange(count: 4)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !903, file: !904, line: 168, baseType: !643, size: 64, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !903, file: !904, line: 169, baseType: !643, size: 64, offset: 192)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !903, file: !904, line: 170, baseType: !643, size: 64, offset: 256)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !903, file: !904, line: 171, baseType: !704, size: 64, offset: 320)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !903, file: !904, line: 172, baseType: !641, size: 32, offset: 384)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !903, file: !904, line: 176, baseType: !923, size: 64, offset: 448)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!908, !645, !704}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !903, file: !904, line: 177, baseType: !927, size: 64, offset: 512)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{null, !645, !908}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !903, file: !904, line: 178, baseType: !645, size: 64, offset: 576)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !903, file: !904, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !903, file: !904, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !903, file: !904, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !844, file: !826, line: 177, baseType: !648, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !844, file: !826, line: 178, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !325, line: 217, size: 832, elements: !938)
!938 = !{!939, !1185, !1186, !1187, !1190, !1194, !1195, !1196, !1214, !1215, !1216, !1217, !1218, !1219}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !937, file: !325, line: 219, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !325, line: 151, baseType: !942)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !325, line: 151, size: 128, elements: !943)
!943 = !{!944}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !942, file: !325, line: 151, baseType: !945, size: 128)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !325, line: 150, baseType: !946)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !325, line: 150, size: 128, elements: !947)
!947 = !{!948, !949, !950}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !946, file: !325, line: 150, baseType: !7, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !946, file: !325, line: 150, baseType: !7, size: 32, offset: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !946, file: !325, line: 150, baseType: !951, size: 64, offset: 64)
!951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !952, size: 64, elements: !747)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !649, line: 108, baseType: !953)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !325, line: 122, size: 512, elements: !955)
!955 = !{!956, !957, !958, !1177, !1178, !1179, !1180, !1181, !1182, !1183}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !954, file: !325, line: 124, baseType: !936, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !954, file: !325, line: 125, baseType: !936, size: 64, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !954, file: !325, line: 131, baseType: !959, size: 64, offset: 128)
!959 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !325, line: 128, size: 64, elements: !960)
!960 = !{!961, !1176}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !959, file: !325, line: 129, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !649, line: 66, baseType: !963)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !568, line: 143, size: 192, elements: !965)
!965 = !{!966, !1174, !1175}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !964, file: !568, line: 145, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !649, line: 69, baseType: !968)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !568, line: 136, size: 192, elements: !970)
!970 = !{!971, !1172, !1173}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !969, file: !568, line: 137, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !649, line: 58, baseType: !973)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !568, line: 737, size: 768, elements: !975)
!975 = !{!976, !993, !1027, !1033, !1038, !1043, !1050, !1056, !1062, !1067, !1081, !1086, !1092, !1097, !1107, !1112, !1130, !1137, !1144, !1150, !1155, !1161, !1167}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !974, file: !568, line: 738, baseType: !977, size: 256)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !568, line: 271, size: 256, elements: !978)
!978 = !{!979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !977, file: !568, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !977, file: !568, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !977, file: !568, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !977, file: !568, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !977, file: !568, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !977, file: !568, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !977, file: !568, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !977, file: !568, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !977, file: !568, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !977, file: !568, line: 312, baseType: !7, size: 32, offset: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !977, file: !568, line: 316, baseType: !773, size: 32, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !977, file: !568, line: 319, baseType: !7, size: 32, offset: 96)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !977, file: !568, line: 323, baseType: !936, size: 64, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !977, file: !568, line: 327, baseType: !648, size: 64, offset: 192)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !974, file: !568, line: 739, baseType: !994, size: 448)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !568, line: 350, size: 448, elements: !995)
!995 = !{!996, !1025}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !994, file: !568, line: 353, baseType: !997, size: 384)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !568, line: 333, size: 384, elements: !998)
!998 = !{!999, !1000, !1008}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !997, file: !568, line: 336, baseType: !977, size: 256)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !997, file: !568, line: 343, baseType: !1001, size: 64, offset: 256)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !1003, line: 37, size: 128, elements: !1004)
!1003 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1004 = !{!1005, !1006}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1002, file: !1003, line: 39, baseType: !1001, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1002, file: !1003, line: 40, baseType: !1007, size: 64, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !997, file: !568, line: 344, baseType: !1009, size: 64, offset: 320)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !1003, line: 45, size: 320, elements: !1011)
!1011 = !{!1012, !1013}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1010, file: !1003, line: 47, baseType: !1009, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1010, file: !1003, line: 48, baseType: !1014, size: 256, offset: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !341, line: 1883, size: 256, elements: !1015)
!1015 = !{!1016, !1018, !1019, !1024}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1014, file: !341, line: 1884, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1014, file: !341, line: 1885, baseType: !1017, size: 64, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1014, file: !341, line: 1891, baseType: !1020, size: 64, offset: 128)
!1020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1014, file: !341, line: 1891, size: 64, elements: !1021)
!1021 = !{!1022, !1023}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1020, file: !341, line: 1891, baseType: !972, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1020, file: !341, line: 1891, baseType: !648, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1014, file: !341, line: 1892, baseType: !1007, size: 64, offset: 192)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !994, file: !568, line: 359, baseType: !1026, size: 64, offset: 384)
!1026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !648, size: 64, elements: !747)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !974, file: !568, line: 740, baseType: !1028, size: 512)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !568, line: 365, size: 512, elements: !1029)
!1029 = !{!1030, !1031, !1032}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1028, file: !568, line: 368, baseType: !997, size: 384)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1028, file: !568, line: 373, baseType: !648, size: 64, offset: 384)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1028, file: !568, line: 374, baseType: !648, size: 64, offset: 448)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !974, file: !568, line: 741, baseType: !1034, size: 576)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !568, line: 380, size: 576, elements: !1035)
!1035 = !{!1036, !1037}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1034, file: !568, line: 383, baseType: !1028, size: 512)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1034, file: !568, line: 389, baseType: !1026, size: 64, offset: 512)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !974, file: !568, line: 742, baseType: !1039, size: 320)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !568, line: 395, size: 320, elements: !1040)
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1039, file: !568, line: 397, baseType: !977, size: 256)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1039, file: !568, line: 400, baseType: !962, size: 64, offset: 256)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !974, file: !568, line: 743, baseType: !1044, size: 448)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !568, line: 406, size: 448, elements: !1045)
!1045 = !{!1046, !1047, !1048, !1049}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1044, file: !568, line: 408, baseType: !977, size: 256)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1044, file: !568, line: 412, baseType: !648, size: 64, offset: 256)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1044, file: !568, line: 420, baseType: !648, size: 64, offset: 320)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1044, file: !568, line: 423, baseType: !962, size: 64, offset: 384)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !974, file: !568, line: 744, baseType: !1051, size: 384)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !568, line: 429, size: 384, elements: !1052)
!1052 = !{!1053, !1054, !1055}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1051, file: !568, line: 431, baseType: !977, size: 256)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1051, file: !568, line: 434, baseType: !648, size: 64, offset: 256)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1051, file: !568, line: 437, baseType: !962, size: 64, offset: 320)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !974, file: !568, line: 745, baseType: !1057, size: 384)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !568, line: 443, size: 384, elements: !1058)
!1058 = !{!1059, !1060, !1061}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1057, file: !568, line: 445, baseType: !977, size: 256)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1057, file: !568, line: 449, baseType: !648, size: 64, offset: 256)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1057, file: !568, line: 453, baseType: !962, size: 64, offset: 320)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !974, file: !568, line: 746, baseType: !1063, size: 320)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !568, line: 459, size: 320, elements: !1064)
!1064 = !{!1065, !1066}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1063, file: !568, line: 461, baseType: !977, size: 256)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1063, file: !568, line: 464, baseType: !648, size: 64, offset: 256)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !974, file: !568, line: 747, baseType: !1068, size: 768)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !568, line: 469, size: 768, elements: !1069)
!1069 = !{!1070, !1071, !1072, !1073, !1074}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1068, file: !568, line: 471, baseType: !977, size: 256)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1068, file: !568, line: 474, baseType: !7, size: 32, offset: 256)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1068, file: !568, line: 475, baseType: !7, size: 32, offset: 288)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1068, file: !568, line: 478, baseType: !648, size: 64, offset: 320)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1068, file: !568, line: 481, baseType: !1075, size: 384, offset: 384)
!1075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1076, size: 384, elements: !747)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !341, line: 1917, size: 384, elements: !1077)
!1077 = !{!1078, !1079, !1080}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1076, file: !341, line: 1920, baseType: !1014, size: 256)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1076, file: !341, line: 1921, baseType: !648, size: 64, offset: 256)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1076, file: !341, line: 1922, baseType: !773, size: 32, offset: 320)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !974, file: !568, line: 748, baseType: !1082, size: 320)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !568, line: 487, size: 320, elements: !1083)
!1083 = !{!1084, !1085}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1082, file: !568, line: 490, baseType: !977, size: 256)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1082, file: !568, line: 494, baseType: !641, size: 32, offset: 256)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !974, file: !568, line: 749, baseType: !1087, size: 384)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !568, line: 500, size: 384, elements: !1088)
!1088 = !{!1089, !1090, !1091}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1087, file: !568, line: 502, baseType: !977, size: 256)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1087, file: !568, line: 506, baseType: !962, size: 64, offset: 256)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1087, file: !568, line: 510, baseType: !962, size: 64, offset: 320)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !974, file: !568, line: 750, baseType: !1093, size: 320)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !568, line: 529, size: 320, elements: !1094)
!1094 = !{!1095, !1096}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1093, file: !568, line: 531, baseType: !977, size: 256)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1093, file: !568, line: 540, baseType: !962, size: 64, offset: 256)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !974, file: !568, line: 751, baseType: !1098, size: 704)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !568, line: 546, size: 704, elements: !1099)
!1099 = !{!1100, !1101, !1102, !1103, !1104, !1105, !1106}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1098, file: !568, line: 549, baseType: !1028, size: 512)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1098, file: !568, line: 553, baseType: !646, size: 64, offset: 512)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1098, file: !568, line: 557, baseType: !640, size: 8, offset: 576)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1098, file: !568, line: 558, baseType: !640, size: 8, offset: 584)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1098, file: !568, line: 559, baseType: !640, size: 8, offset: 592)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1098, file: !568, line: 560, baseType: !640, size: 8, offset: 600)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1098, file: !568, line: 566, baseType: !1026, size: 64, offset: 640)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !974, file: !568, line: 752, baseType: !1108, size: 384)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !568, line: 571, size: 384, elements: !1109)
!1109 = !{!1110, !1111}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1108, file: !568, line: 573, baseType: !1039, size: 320)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1108, file: !568, line: 577, baseType: !648, size: 64, offset: 320)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !974, file: !568, line: 753, baseType: !1113, size: 576)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !568, line: 600, size: 576, elements: !1114)
!1114 = !{!1115, !1116, !1117, !1120, !1129}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1113, file: !568, line: 602, baseType: !1039, size: 320)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1113, file: !568, line: 605, baseType: !648, size: 64, offset: 320)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1113, file: !568, line: 609, baseType: !1118, size: 64, offset: 384)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1119, line: 46, baseType: !702)
!1119 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1113, file: !568, line: 612, baseType: !1121, size: 64, offset: 448)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !568, line: 581, size: 320, elements: !1123)
!1123 = !{!1124, !1125, !1126, !1127, !1128}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1122, file: !568, line: 583, baseType: !373, size: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1122, file: !568, line: 586, baseType: !648, size: 64, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1122, file: !568, line: 589, baseType: !648, size: 64, offset: 128)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1122, file: !568, line: 592, baseType: !648, size: 64, offset: 192)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1122, file: !568, line: 595, baseType: !648, size: 64, offset: 256)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1113, file: !568, line: 616, baseType: !962, size: 64, offset: 512)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !974, file: !568, line: 754, baseType: !1131, size: 512)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !568, line: 622, size: 512, elements: !1132)
!1132 = !{!1133, !1134, !1135, !1136}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1131, file: !568, line: 624, baseType: !1039, size: 320)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1131, file: !568, line: 628, baseType: !648, size: 64, offset: 320)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1131, file: !568, line: 632, baseType: !648, size: 64, offset: 384)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1131, file: !568, line: 636, baseType: !648, size: 64, offset: 448)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !974, file: !568, line: 755, baseType: !1138, size: 704)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !568, line: 642, size: 704, elements: !1139)
!1139 = !{!1140, !1141, !1142, !1143}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1138, file: !568, line: 644, baseType: !1131, size: 512)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1138, file: !568, line: 648, baseType: !648, size: 64, offset: 512)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1138, file: !568, line: 652, baseType: !648, size: 64, offset: 576)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1138, file: !568, line: 653, baseType: !648, size: 64, offset: 640)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !974, file: !568, line: 756, baseType: !1145, size: 448)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !568, line: 663, size: 448, elements: !1146)
!1146 = !{!1147, !1148, !1149}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1145, file: !568, line: 665, baseType: !1039, size: 320)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1145, file: !568, line: 668, baseType: !648, size: 64, offset: 320)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1145, file: !568, line: 673, baseType: !648, size: 64, offset: 384)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !974, file: !568, line: 757, baseType: !1151, size: 384)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !568, line: 694, size: 384, elements: !1152)
!1152 = !{!1153, !1154}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1151, file: !568, line: 696, baseType: !1039, size: 320)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1151, file: !568, line: 699, baseType: !648, size: 64, offset: 320)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !974, file: !568, line: 758, baseType: !1156, size: 384)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !568, line: 681, size: 384, elements: !1157)
!1157 = !{!1158, !1159, !1160}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1156, file: !568, line: 683, baseType: !977, size: 256)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1156, file: !568, line: 686, baseType: !648, size: 64, offset: 256)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1156, file: !568, line: 689, baseType: !648, size: 64, offset: 320)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !974, file: !568, line: 759, baseType: !1162, size: 384)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !568, line: 707, size: 384, elements: !1163)
!1163 = !{!1164, !1165, !1166}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1162, file: !568, line: 709, baseType: !977, size: 256)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1162, file: !568, line: 712, baseType: !648, size: 64, offset: 256)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1162, file: !568, line: 712, baseType: !648, size: 64, offset: 320)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !974, file: !568, line: 760, baseType: !1168, size: 320)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !568, line: 718, size: 320, elements: !1169)
!1169 = !{!1170, !1171}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1168, file: !568, line: 720, baseType: !977, size: 256)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1168, file: !568, line: 723, baseType: !648, size: 64, offset: 256)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !969, file: !568, line: 138, baseType: !968, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !969, file: !568, line: 139, baseType: !968, size: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !964, file: !568, line: 146, baseType: !967, size: 64, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !964, file: !568, line: 152, baseType: !962, size: 64, offset: 128)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !959, file: !325, line: 130, baseType: !823, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !954, file: !325, line: 134, baseType: !645, size: 64, offset: 192)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !954, file: !325, line: 137, baseType: !648, size: 64, offset: 256)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !954, file: !325, line: 138, baseType: !773, size: 32, offset: 320)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !954, file: !325, line: 142, baseType: !7, size: 32, offset: 352)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !954, file: !325, line: 144, baseType: !641, size: 32, offset: 384)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !954, file: !325, line: 145, baseType: !641, size: 32, offset: 416)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !954, file: !325, line: 146, baseType: !1184, size: 64, offset: 448)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !325, line: 119, baseType: !704)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !937, file: !325, line: 220, baseType: !940, size: 64, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !937, file: !325, line: 223, baseType: !645, size: 64, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !937, file: !325, line: 226, baseType: !1188, size: 64, offset: 192)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !325, line: 185, flags: DIFlagFwdDecl)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !937, file: !325, line: 229, baseType: !1191, size: 128, offset: 256)
!1191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1192, size: 128, elements: !891)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !325, line: 229, flags: DIFlagFwdDecl)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !937, file: !325, line: 232, baseType: !936, size: 64, offset: 384)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !937, file: !325, line: 233, baseType: !936, size: 64, offset: 448)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !937, file: !325, line: 238, baseType: !1197, size: 64, offset: 512)
!1197 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !325, line: 235, size: 64, elements: !1198)
!1198 = !{!1199, !1205}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1197, file: !325, line: 236, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !325, line: 273, size: 128, elements: !1202)
!1202 = !{!1203, !1204}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1201, file: !325, line: 275, baseType: !962, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1201, file: !325, line: 278, baseType: !962, size: 64, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1197, file: !325, line: 237, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !325, line: 259, size: 320, elements: !1208)
!1208 = !{!1209, !1210, !1211, !1212, !1213}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1207, file: !325, line: 261, baseType: !823, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1207, file: !325, line: 262, baseType: !823, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1207, file: !325, line: 266, baseType: !823, size: 64, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1207, file: !325, line: 267, baseType: !823, size: 64, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1207, file: !325, line: 270, baseType: !641, size: 32, offset: 256)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !937, file: !325, line: 241, baseType: !1184, size: 64, offset: 576)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !937, file: !325, line: 244, baseType: !641, size: 32, offset: 640)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !937, file: !325, line: 247, baseType: !641, size: 32, offset: 672)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !937, file: !325, line: 250, baseType: !641, size: 32, offset: 704)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !937, file: !325, line: 253, baseType: !641, size: 32, offset: 736)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !937, file: !325, line: 256, baseType: !641, size: 32, offset: 768)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !844, file: !826, line: 179, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !826, line: 150, baseType: !1223)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !826, line: 142, size: 320, elements: !1224)
!1224 = !{!1225, !1226, !1227, !1228, !1231, !1232}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1223, file: !826, line: 144, baseType: !648, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1223, file: !826, line: 145, baseType: !823, size: 64, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1223, file: !826, line: 146, baseType: !823, size: 64, offset: 128)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1223, file: !826, line: 147, baseType: !1229, size: 32, offset: 192)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1230, line: 31, baseType: !641)
!1230 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1223, file: !826, line: 148, baseType: !7, size: 32, offset: 224)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1223, file: !826, line: 149, baseType: !640, size: 8, offset: 256)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !844, file: !826, line: 180, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !826, line: 162, baseType: !1236)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !826, line: 159, size: 128, elements: !1237)
!1237 = !{!1238, !1239}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1236, file: !826, line: 160, baseType: !648, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1236, file: !826, line: 161, baseType: !704, size: 64, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !844, file: !826, line: 181, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !826, line: 181, flags: DIFlagFwdDecl)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !839, file: !826, line: 317, baseType: !1244, size: 64)
!1244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !704, size: 64, elements: !747)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !839, file: !826, line: 318, baseType: !1246, size: 320)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !826, line: 188, size: 320, elements: !1247)
!1247 = !{!1248, !1250, !1273}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1246, file: !826, line: 190, baseType: !1249, size: 192)
!1249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !843, size: 192, elements: !722)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1246, file: !826, line: 193, baseType: !1251, size: 64, offset: 192)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !826, line: 206, size: 320, elements: !1253)
!1253 = !{!1254, !1258, !1259, !1260, !1272}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1252, file: !826, line: 208, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !649, line: 62, baseType: !1257)
!1257 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !649, line: 61, flags: DIFlagFwdDecl)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1252, file: !826, line: 211, baseType: !7, size: 32, offset: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1252, file: !826, line: 214, baseType: !704, size: 64, offset: 128)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1252, file: !826, line: 224, baseType: !1261, size: 64, offset: 192)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !826, line: 202, baseType: !1263)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !826, line: 202, size: 128, elements: !1264)
!1264 = !{!1265}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1263, file: !826, line: 202, baseType: !1266, size: 128)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !826, line: 200, baseType: !1267)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !826, line: 200, size: 128, elements: !1268)
!1268 = !{!1269, !1270, !1271}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1267, file: !826, line: 200, baseType: !7, size: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1267, file: !826, line: 200, baseType: !7, size: 32, offset: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1267, file: !826, line: 200, baseType: !857, size: 64, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1252, file: !826, line: 234, baseType: !1261, size: 64, offset: 256)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1246, file: !826, line: 197, baseType: !704, size: 64, offset: 256)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !839, file: !826, line: 319, baseType: !711, size: 256)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !839, file: !826, line: 320, baseType: !730, size: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !651, file: !341, line: 3384, baseType: !1277, size: 1472)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !341, line: 3114, size: 1472, elements: !1278)
!1278 = !{!1279, !1300, !1301, !1302, !1303}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1277, file: !341, line: 3115, baseType: !1280, size: 1216)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !341, line: 2984, size: 1216, elements: !1281)
!1281 = !{!1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1280, file: !341, line: 2985, baseType: !819, size: 960)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1280, file: !341, line: 2986, baseType: !648, size: 64, offset: 960)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1280, file: !341, line: 2987, baseType: !648, size: 64, offset: 1024)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1280, file: !341, line: 2988, baseType: !648, size: 64, offset: 1088)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1280, file: !341, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1280, file: !341, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1280, file: !341, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1280, file: !341, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1280, file: !341, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1280, file: !341, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1280, file: !341, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1280, file: !341, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1280, file: !341, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1280, file: !341, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1280, file: !341, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1280, file: !341, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1280, file: !341, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1280, file: !341, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1277, file: !341, line: 3117, baseType: !648, size: 64, offset: 1216)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1277, file: !341, line: 3119, baseType: !648, size: 64, offset: 1280)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1277, file: !341, line: 3121, baseType: !648, size: 64, offset: 1344)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1277, file: !341, line: 3123, baseType: !648, size: 64, offset: 1408)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !651, file: !341, line: 3385, baseType: !1305, size: 1088)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !341, line: 2874, size: 1088, elements: !1306)
!1306 = !{!1307, !1308, !1309}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1305, file: !341, line: 2875, baseType: !819, size: 960)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1305, file: !341, line: 2876, baseType: !823, size: 64, offset: 960)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1305, file: !341, line: 2877, baseType: !1310, size: 64, offset: 1024)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1312, line: 172, size: 128, elements: !1313)
!1312 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1313 = !{!1314, !1315, !1316, !1317, !1318, !1319, !1320}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1311, file: !1312, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1311, file: !1312, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1311, file: !1312, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1311, file: !1312, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1311, file: !1312, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1311, file: !1312, line: 195, baseType: !7, size: 32, offset: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1311, file: !1312, line: 199, baseType: !648, size: 64, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !651, file: !341, line: 3386, baseType: !1280, size: 1216)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !651, file: !341, line: 3387, baseType: !1323, size: 1280)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !341, line: 3093, size: 1280, elements: !1324)
!1324 = !{!1325, !1326}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1323, file: !341, line: 3094, baseType: !1280, size: 1216)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1323, file: !341, line: 3095, baseType: !1310, size: 64, offset: 1216)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !651, file: !341, line: 3388, baseType: !1328, size: 1216)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !341, line: 2824, size: 1216, elements: !1329)
!1329 = !{!1330, !1331, !1332, !1333, !1334, !1335}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1328, file: !341, line: 2825, baseType: !781, size: 896)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1328, file: !341, line: 2827, baseType: !648, size: 64, offset: 896)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1328, file: !341, line: 2828, baseType: !648, size: 64, offset: 960)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1328, file: !341, line: 2829, baseType: !648, size: 64, offset: 1024)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1328, file: !341, line: 2830, baseType: !648, size: 64, offset: 1088)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1328, file: !341, line: 2831, baseType: !648, size: 64, offset: 1152)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !651, file: !341, line: 3389, baseType: !1337, size: 1024)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !341, line: 2850, size: 1024, elements: !1338)
!1338 = !{!1339, !1340, !1341}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1337, file: !341, line: 2851, baseType: !819, size: 960)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1337, file: !341, line: 2852, baseType: !641, size: 32, offset: 960)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1337, file: !341, line: 2853, baseType: !641, size: 32, offset: 992)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !651, file: !341, line: 3390, baseType: !1343, size: 1024)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !341, line: 2857, size: 1024, elements: !1344)
!1344 = !{!1345, !1346}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1343, file: !341, line: 2858, baseType: !819, size: 960)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1343, file: !341, line: 2859, baseType: !1310, size: 64, offset: 960)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !651, file: !341, line: 3391, baseType: !1348, size: 960)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !341, line: 2862, size: 960, elements: !1349)
!1349 = !{!1350}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1348, file: !341, line: 2863, baseType: !819, size: 960)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !651, file: !341, line: 3392, baseType: !1352, size: 1472)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !341, line: 3304, size: 1472, elements: !1353)
!1353 = !{!1354}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1352, file: !341, line: 3305, baseType: !1277, size: 1472)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !651, file: !341, line: 3393, baseType: !1356, size: 1792)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !341, line: 3248, size: 1792, elements: !1357)
!1357 = !{!1358, !1359, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1356, file: !341, line: 3249, baseType: !1277, size: 1472)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1356, file: !341, line: 3251, baseType: !1360, size: 64, offset: 1472)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1362, line: 463, size: 1152, elements: !1363)
!1362 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1363 = !{!1364, !1525, !1556, !1557, !1612, !1615, !1616, !1617, !1618, !1619, !1620, !1644, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1361, file: !1362, line: 464, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !318, line: 194, size: 384, elements: !1367)
!1367 = !{!1368, !1417, !1430, !1444, !1494, !1506}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "region_tree", scope: !1366, file: !318, line: 197, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_region", file: !318, line: 182, baseType: !1370)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_d", file: !318, line: 116, size: 704, elements: !1372)
!1372 = !{!1373, !1374, !1375, !1376, !1377, !1378, !1405, !1414, !1415, !1416}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "outer", scope: !1371, file: !318, line: 119, baseType: !1370, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1371, file: !318, line: 122, baseType: !1370, size: 64, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "next_peer", scope: !1371, file: !318, line: 123, baseType: !1370, size: 64, offset: 128)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1371, file: !318, line: 126, baseType: !641, size: 32, offset: 192)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1371, file: !318, line: 129, baseType: !317, size: 32, offset: 224)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1371, file: !318, line: 165, baseType: !1379, size: 192, offset: 256)
!1379 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_region_u", file: !318, line: 132, size: 192, elements: !1380)
!1380 = !{!1381, !1394, !1400}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "eh_try", scope: !1379, file: !318, line: 137, baseType: !1382, size: 128)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_try", file: !318, line: 133, size: 128, elements: !1383)
!1383 = !{!1384, !1393}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "first_catch", scope: !1382, file: !318, line: 135, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_catch_d", file: !318, line: 93, size: 320, elements: !1387)
!1387 = !{!1388, !1389, !1390, !1391, !1392}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "next_catch", scope: !1386, file: !318, line: 96, baseType: !1385, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "prev_catch", scope: !1386, file: !318, line: 97, baseType: !1385, size: 64, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1386, file: !318, line: 101, baseType: !648, size: 64, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "filter_list", scope: !1386, file: !318, line: 106, baseType: !648, size: 64, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1386, file: !318, line: 111, baseType: !648, size: 64, offset: 256)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "last_catch", scope: !1382, file: !318, line: 136, baseType: !1385, size: 64, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !1379, file: !318, line: 151, baseType: !1395, size: 192)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_allowed", file: !318, line: 139, size: 192, elements: !1396)
!1396 = !{!1397, !1398, !1399}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1395, file: !318, line: 141, baseType: !648, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1395, file: !318, line: 145, baseType: !648, size: 64, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1395, file: !318, line: 150, baseType: !641, size: 32, offset: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "must_not_throw", scope: !1379, file: !318, line: 164, baseType: !1401, size: 128)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_must_not_throw", file: !318, line: 153, size: 128, elements: !1402)
!1402 = !{!1403, !1404}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "failure_decl", scope: !1401, file: !318, line: 161, baseType: !648, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "failure_loc", scope: !1401, file: !318, line: 163, baseType: !773, size: 32, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pads", scope: !1371, file: !318, line: 168, baseType: !1406, size: 64, offset: 448)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_landing_pad_d", file: !318, line: 67, size: 320, elements: !1408)
!1408 = !{!1409, !1410, !1411, !1412, !1413}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "next_lp", scope: !1407, file: !318, line: 70, baseType: !1406, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1407, file: !318, line: 73, baseType: !1370, size: 64, offset: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "post_landing_pad", scope: !1407, file: !318, line: 78, baseType: !648, size: 64, offset: 128)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pad", scope: !1407, file: !318, line: 85, baseType: !823, size: 64, offset: 192)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1407, file: !318, line: 88, baseType: !641, size: 32, offset: 256)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "exc_ptr_reg", scope: !1371, file: !318, line: 173, baseType: !823, size: 64, offset: 512)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "filter_reg", scope: !1371, file: !318, line: 173, baseType: !823, size: 64, offset: 576)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "use_cxa_end_cleanup", scope: !1371, file: !318, line: 177, baseType: !640, size: 8, offset: 640)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "region_array", scope: !1366, file: !318, line: 200, baseType: !1418, size: 64, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_gc", file: !318, line: 185, baseType: !1420)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_gc", file: !318, line: 185, size: 128, elements: !1421)
!1421 = !{!1422}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1420, file: !318, line: 185, baseType: !1423, size: 128)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_base", file: !318, line: 184, baseType: !1424)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_base", file: !318, line: 184, size: 128, elements: !1425)
!1425 = !{!1426, !1427, !1428}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1424, file: !318, line: 184, baseType: !7, size: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1424, file: !318, line: 184, baseType: !7, size: 32, offset: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1424, file: !318, line: 184, baseType: !1429, size: 64, offset: 64)
!1429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1369, size: 64, elements: !747)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "lp_array", scope: !1366, file: !318, line: 203, baseType: !1431, size: 64, offset: 128)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_gc", file: !318, line: 189, baseType: !1433)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_gc", file: !318, line: 189, size: 128, elements: !1434)
!1434 = !{!1435}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1433, file: !318, line: 189, baseType: !1436, size: 128)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_base", file: !318, line: 188, baseType: !1437)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_base", file: !318, line: 188, size: 128, elements: !1438)
!1438 = !{!1439, !1440, !1441}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1437, file: !318, line: 188, baseType: !7, size: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1437, file: !318, line: 188, baseType: !7, size: 32, offset: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1437, file: !318, line: 188, baseType: !1442, size: 64, offset: 64)
!1442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1443, size: 64, elements: !747)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_landing_pad", file: !318, line: 180, baseType: !1406)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "throw_stmt_table", scope: !1366, file: !318, line: 207, baseType: !1445, size: 64, offset: 192)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1446, line: 144, baseType: !1447)
!1446 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1446, line: 100, size: 896, elements: !1449)
!1449 = !{!1450, !1458, !1463, !1468, !1470, !1471, !1472, !1473, !1474, !1475, !1480, !1482, !1483, !1488, !1493}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1448, file: !1446, line: 102, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1446, line: 52, baseType: !1452)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!1455, !1456}
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1446, line: 47, baseType: !7)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1448, file: !1446, line: 105, baseType: !1459, size: 64, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1446, line: 59, baseType: !1460)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!641, !1456, !1456}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1448, file: !1446, line: 108, baseType: !1464, size: 64, offset: 128)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1446, line: 63, baseType: !1465)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{null, !645}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1448, file: !1446, line: 111, baseType: !1469, size: 64, offset: 192)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1448, file: !1446, line: 114, baseType: !1118, size: 64, offset: 256)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1448, file: !1446, line: 117, baseType: !1118, size: 64, offset: 320)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1448, file: !1446, line: 120, baseType: !1118, size: 64, offset: 384)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1448, file: !1446, line: 124, baseType: !7, size: 32, offset: 448)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1448, file: !1446, line: 128, baseType: !7, size: 32, offset: 480)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1448, file: !1446, line: 131, baseType: !1476, size: 64, offset: 512)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1446, line: 75, baseType: !1477)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!645, !1118, !1118}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1448, file: !1446, line: 132, baseType: !1481, size: 64, offset: 576)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1446, line: 78, baseType: !1465)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1448, file: !1446, line: 135, baseType: !645, size: 64, offset: 640)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1448, file: !1446, line: 136, baseType: !1484, size: 64, offset: 704)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1446, line: 82, baseType: !1485)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!645, !645, !1118, !1118}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1448, file: !1446, line: 137, baseType: !1489, size: 64, offset: 768)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1446, line: 83, baseType: !1490)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{null, !645, !645}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1448, file: !1446, line: 141, baseType: !7, size: 32, offset: 832)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "ttype_data", scope: !1366, file: !318, line: 211, baseType: !1495, size: 64, offset: 256)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !341, line: 183, baseType: !1497)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !341, line: 183, size: 128, elements: !1498)
!1498 = !{!1499}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1497, file: !341, line: 183, baseType: !1500, size: 128)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !341, line: 182, baseType: !1501)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !341, line: 182, size: 128, elements: !1502)
!1502 = !{!1503, !1504, !1505}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1501, file: !341, line: 182, baseType: !7, size: 32)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1501, file: !341, line: 182, baseType: !7, size: 32, offset: 32)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1501, file: !341, line: 182, baseType: !1026, size: 64, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "ehspec_data", scope: !1366, file: !318, line: 220, baseType: !1507, size: 64, offset: 320)
!1507 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_status_u", file: !318, line: 217, size: 64, elements: !1508)
!1508 = !{!1509, !1510}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "arm_eabi", scope: !1507, file: !318, line: 218, baseType: !1495, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1507, file: !318, line: 219, baseType: !1511, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_gc", file: !1513, line: 29, baseType: !1514)
!1513 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_gc", file: !1513, line: 29, size: 96, elements: !1515)
!1515 = !{!1516}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1514, file: !1513, line: 29, baseType: !1517, size: 96)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_base", file: !1513, line: 27, baseType: !1518)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_base", file: !1513, line: 27, size: 96, elements: !1519)
!1519 = !{!1520, !1521, !1522}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1518, file: !1513, line: 27, baseType: !7, size: 32)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1518, file: !1513, line: 27, baseType: !7, size: 32, offset: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1518, file: !1513, line: 27, baseType: !1523, size: 8, offset: 64)
!1523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1524, size: 8, elements: !747)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !1513, line: 26, baseType: !640)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1361, file: !1362, line: 467, baseType: !1526, size: 64, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !325, line: 374, size: 640, elements: !1528)
!1528 = !{!1529, !1531, !1532, !1545, !1546, !1547, !1548, !1549, !1550, !1552, !1554, !1555}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1527, file: !325, line: 377, baseType: !1530, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !649, line: 111, baseType: !936)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1527, file: !325, line: 378, baseType: !1530, size: 64, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1527, file: !325, line: 381, baseType: !1533, size: 64, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !325, line: 282, baseType: !1535)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !325, line: 282, size: 128, elements: !1536)
!1536 = !{!1537}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1535, file: !325, line: 282, baseType: !1538, size: 128)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !325, line: 281, baseType: !1539)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !325, line: 281, size: 128, elements: !1540)
!1540 = !{!1541, !1542, !1543}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1539, file: !325, line: 281, baseType: !7, size: 32)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1539, file: !325, line: 281, baseType: !7, size: 32, offset: 32)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1539, file: !325, line: 281, baseType: !1544, size: 64, offset: 64)
!1544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1530, size: 64, elements: !747)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1527, file: !325, line: 384, baseType: !641, size: 32, offset: 192)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1527, file: !325, line: 387, baseType: !641, size: 32, offset: 224)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1527, file: !325, line: 390, baseType: !641, size: 32, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1527, file: !325, line: 394, baseType: !1533, size: 64, offset: 320)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1527, file: !325, line: 396, baseType: !324, size: 32, offset: 384)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1527, file: !325, line: 399, baseType: !1551, size: 64, offset: 416)
!1551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 64, elements: !891)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1527, file: !325, line: 402, baseType: !1553, size: 64, offset: 480)
!1553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !891)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1527, file: !325, line: 406, baseType: !641, size: 32, offset: 544)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1527, file: !325, line: 409, baseType: !641, size: 32, offset: 576)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1361, file: !1362, line: 470, baseType: !963, size: 64, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1361, file: !1362, line: 473, baseType: !1558, size: 64, offset: 192)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1312, line: 39, size: 1152, elements: !1560)
!1560 = !{!1561, !1562, !1575, !1576, !1577, !1589, !1590, !1594, !1595, !1596, !1597, !1598}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1559, file: !1312, line: 41, baseType: !1445, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1559, file: !1312, line: 48, baseType: !1563, size: 64, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !568, line: 35, baseType: !1565)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !568, line: 35, size: 128, elements: !1566)
!1566 = !{!1567}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1565, file: !568, line: 35, baseType: !1568, size: 128)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !568, line: 33, baseType: !1569)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !568, line: 33, size: 128, elements: !1570)
!1570 = !{!1571, !1572, !1573}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1569, file: !568, line: 33, baseType: !7, size: 32)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1569, file: !568, line: 33, baseType: !7, size: 32, offset: 32)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1569, file: !568, line: 33, baseType: !1574, size: 64, offset: 64)
!1574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !972, size: 64, elements: !747)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1559, file: !1312, line: 51, baseType: !1495, size: 64, offset: 128)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1559, file: !1312, line: 54, baseType: !648, size: 64, offset: 192)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1559, file: !1312, line: 57, baseType: !1578, size: 128, offset: 256)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1579, line: 31, size: 128, elements: !1580)
!1579 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1580 = !{!1581, !1582, !1583, !1584, !1585, !1586, !1587}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1578, file: !1579, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1578, file: !1579, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1578, file: !1579, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1578, file: !1579, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1578, file: !1579, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1578, file: !1579, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1578, file: !1579, line: 56, baseType: !1588, size: 64, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !649, line: 47, baseType: !875)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1559, file: !1312, line: 60, baseType: !1578, size: 128, offset: 384)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1559, file: !1312, line: 64, baseType: !1591, size: 64, offset: 512)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1593, line: 33, flags: DIFlagFwdDecl)
!1593 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1559, file: !1312, line: 67, baseType: !648, size: 64, offset: 576)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1559, file: !1312, line: 73, baseType: !1445, size: 64, offset: 640)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1559, file: !1312, line: 77, baseType: !1588, size: 64, offset: 704)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1559, file: !1312, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1559, file: !1312, line: 82, baseType: !1599, size: 320, offset: 832)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !1003, line: 62, size: 320, elements: !1600)
!1600 = !{!1601, !1607, !1608, !1609, !1610, !1611}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1599, file: !1003, line: 63, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !1003, line: 56, size: 128, elements: !1604)
!1604 = !{!1605, !1606}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1603, file: !1003, line: 57, baseType: !1602, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1603, file: !1003, line: 58, baseType: !746, size: 8, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1599, file: !1003, line: 64, baseType: !7, size: 32, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1599, file: !1003, line: 66, baseType: !7, size: 32, offset: 96)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1599, file: !1003, line: 68, baseType: !640, size: 8, offset: 128)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1599, file: !1003, line: 70, baseType: !1001, size: 64, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1599, file: !1003, line: 71, baseType: !1009, size: 64, offset: 256)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1361, file: !1362, line: 476, baseType: !1613, size: 64, offset: 256)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1362, line: 476, flags: DIFlagFwdDecl)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1361, file: !1362, line: 479, baseType: !1445, size: 64, offset: 320)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1361, file: !1362, line: 484, baseType: !648, size: 64, offset: 384)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1361, file: !1362, line: 488, baseType: !648, size: 64, offset: 448)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1361, file: !1362, line: 493, baseType: !648, size: 64, offset: 512)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1361, file: !1362, line: 496, baseType: !648, size: 64, offset: 576)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1361, file: !1362, line: 501, baseType: !1621, size: 64, offset: 640)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !336, line: 2355, size: 576, elements: !1623)
!1623 = !{!1624, !1627, !1628, !1629, !1630, !1632, !1633, !1638, !1639, !1640, !1641, !1642, !1643}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1622, file: !336, line: 2356, baseType: !1625, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !336, line: 2356, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1622, file: !336, line: 2357, baseType: !646, size: 64, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1622, file: !336, line: 2358, baseType: !641, size: 32, offset: 128)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1622, file: !336, line: 2359, baseType: !641, size: 32, offset: 160)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1622, file: !336, line: 2360, baseType: !1631, size: 128, offset: 192)
!1631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 128, elements: !915)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1622, file: !336, line: 2364, baseType: !641, size: 32, offset: 320)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1622, file: !336, line: 2367, baseType: !1634, size: 128, offset: 384)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !336, line: 2349, size: 128, elements: !1635)
!1635 = !{!1636, !1637}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1634, file: !336, line: 2351, baseType: !823, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1634, file: !336, line: 2352, baseType: !704, size: 64, offset: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1622, file: !336, line: 2371, baseType: !335, size: 32, offset: 512)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1622, file: !336, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1622, file: !336, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1622, file: !336, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1622, file: !336, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1622, file: !336, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1361, file: !1362, line: 504, baseType: !1645, size: 64, offset: 704)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1362, line: 504, flags: DIFlagFwdDecl)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1361, file: !1362, line: 507, baseType: !1445, size: 64, offset: 768)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1361, file: !1362, line: 510, baseType: !641, size: 32, offset: 832)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1361, file: !1362, line: 513, baseType: !641, size: 32, offset: 864)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1361, file: !1362, line: 516, baseType: !773, size: 32, offset: 896)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1361, file: !1362, line: 519, baseType: !773, size: 32, offset: 928)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1361, file: !1362, line: 522, baseType: !7, size: 32, offset: 960)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1361, file: !1362, line: 523, baseType: !7, size: 32, offset: 992)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1361, file: !1362, line: 528, baseType: !646, size: 64, offset: 1024)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1361, file: !1362, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1361, file: !1362, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1361, file: !1362, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1361, file: !1362, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1361, file: !1362, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1361, file: !1362, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1361, file: !1362, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1361, file: !1362, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1361, file: !1362, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1361, file: !1362, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1361, file: !1362, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1361, file: !1362, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1361, file: !1362, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1361, file: !1362, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1361, file: !1362, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1361, file: !1362, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1356, file: !341, line: 3254, baseType: !648, size: 64, offset: 1536)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1356, file: !341, line: 3257, baseType: !648, size: 64, offset: 1600)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1356, file: !341, line: 3258, baseType: !648, size: 64, offset: 1664)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1356, file: !341, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1356, file: !341, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1356, file: !341, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1356, file: !341, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1356, file: !341, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1356, file: !341, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1356, file: !341, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1356, file: !341, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1356, file: !341, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1356, file: !341, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1356, file: !341, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1356, file: !341, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1356, file: !341, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1356, file: !341, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1356, file: !341, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1356, file: !341, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1356, file: !341, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1356, file: !341, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !651, file: !341, line: 3394, baseType: !1693, size: 1344)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !341, line: 2279, size: 1344, elements: !1694)
!1694 = !{!1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1693, file: !341, line: 2280, baseType: !687, size: 192)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1693, file: !341, line: 2281, baseType: !648, size: 64, offset: 192)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1693, file: !341, line: 2282, baseType: !648, size: 64, offset: 256)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1693, file: !341, line: 2283, baseType: !648, size: 64, offset: 320)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1693, file: !341, line: 2284, baseType: !648, size: 64, offset: 384)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1693, file: !341, line: 2285, baseType: !7, size: 32, offset: 448)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1693, file: !341, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1693, file: !341, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1693, file: !341, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1693, file: !341, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1693, file: !341, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1693, file: !341, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1693, file: !341, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1693, file: !341, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1693, file: !341, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1693, file: !341, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1693, file: !341, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1693, file: !341, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1693, file: !341, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1693, file: !341, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1693, file: !341, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1693, file: !341, line: 2305, baseType: !7, size: 32, offset: 512)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1693, file: !341, line: 2306, baseType: !1229, size: 32, offset: 544)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1693, file: !341, line: 2307, baseType: !648, size: 64, offset: 576)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1693, file: !341, line: 2308, baseType: !648, size: 64, offset: 640)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1693, file: !341, line: 2314, baseType: !1721, size: 64, offset: 704)
!1721 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !341, line: 2309, size: 64, elements: !1722)
!1722 = !{!1723, !1724, !1725}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1721, file: !341, line: 2310, baseType: !641, size: 32)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1721, file: !341, line: 2311, baseType: !646, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1721, file: !341, line: 2312, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !341, line: 2277, flags: DIFlagFwdDecl)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1693, file: !341, line: 2315, baseType: !648, size: 64, offset: 768)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1693, file: !341, line: 2316, baseType: !648, size: 64, offset: 832)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1693, file: !341, line: 2317, baseType: !648, size: 64, offset: 896)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1693, file: !341, line: 2318, baseType: !648, size: 64, offset: 960)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1693, file: !341, line: 2319, baseType: !648, size: 64, offset: 1024)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1693, file: !341, line: 2320, baseType: !648, size: 64, offset: 1088)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1693, file: !341, line: 2321, baseType: !648, size: 64, offset: 1152)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1693, file: !341, line: 2322, baseType: !648, size: 64, offset: 1216)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1693, file: !341, line: 2324, baseType: !1737, size: 64, offset: 1280)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !341, line: 2324, flags: DIFlagFwdDecl)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !651, file: !341, line: 3395, baseType: !1740, size: 320)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !341, line: 1469, size: 320, elements: !1741)
!1741 = !{!1742, !1743, !1744}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1740, file: !341, line: 1470, baseType: !687, size: 192)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1740, file: !341, line: 1471, baseType: !648, size: 64, offset: 192)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1740, file: !341, line: 1472, baseType: !648, size: 64, offset: 256)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !651, file: !341, line: 3396, baseType: !1746, size: 320)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !341, line: 1482, size: 320, elements: !1747)
!1747 = !{!1748, !1749, !1750}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1746, file: !341, line: 1483, baseType: !687, size: 192)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1746, file: !341, line: 1484, baseType: !641, size: 32, offset: 192)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1746, file: !341, line: 1485, baseType: !1026, size: 64, offset: 256)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !651, file: !341, line: 3397, baseType: !1752, size: 384)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !341, line: 1829, size: 384, elements: !1753)
!1753 = !{!1754, !1755, !1756, !1757}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1752, file: !341, line: 1830, baseType: !687, size: 192)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1752, file: !341, line: 1831, baseType: !773, size: 32, offset: 192)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1752, file: !341, line: 1832, baseType: !648, size: 64, offset: 256)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1752, file: !341, line: 1835, baseType: !1026, size: 64, offset: 320)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !651, file: !341, line: 3398, baseType: !1759, size: 704)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !341, line: 1898, size: 704, elements: !1760)
!1760 = !{!1761, !1762, !1763, !1764, !1765, !1770}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1759, file: !341, line: 1899, baseType: !687, size: 192)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1759, file: !341, line: 1902, baseType: !648, size: 64, offset: 192)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1759, file: !341, line: 1905, baseType: !972, size: 64, offset: 256)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1759, file: !341, line: 1908, baseType: !7, size: 32, offset: 320)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1759, file: !341, line: 1911, baseType: !1766, size: 64, offset: 384)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1312, line: 117, size: 128, elements: !1768)
!1768 = !{!1769}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1767, file: !1312, line: 120, baseType: !1578, size: 128)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1759, file: !341, line: 1914, baseType: !1014, size: 256, offset: 448)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !651, file: !341, line: 3399, baseType: !1772, size: 704)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !341, line: 2008, size: 704, elements: !1773)
!1773 = !{!1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1772, file: !341, line: 2009, baseType: !687, size: 192)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1772, file: !341, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1772, file: !341, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1772, file: !341, line: 2014, baseType: !773, size: 32, offset: 224)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1772, file: !341, line: 2016, baseType: !648, size: 64, offset: 256)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1772, file: !341, line: 2017, baseType: !1495, size: 64, offset: 320)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1772, file: !341, line: 2019, baseType: !648, size: 64, offset: 384)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1772, file: !341, line: 2020, baseType: !648, size: 64, offset: 448)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1772, file: !341, line: 2021, baseType: !648, size: 64, offset: 512)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1772, file: !341, line: 2022, baseType: !648, size: 64, offset: 576)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1772, file: !341, line: 2023, baseType: !648, size: 64, offset: 640)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !651, file: !341, line: 3400, baseType: !1786, size: 832)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !341, line: 2430, size: 832, elements: !1787)
!1787 = !{!1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1786, file: !341, line: 2431, baseType: !687, size: 192)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1786, file: !341, line: 2433, baseType: !648, size: 64, offset: 192)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1786, file: !341, line: 2434, baseType: !648, size: 64, offset: 256)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1786, file: !341, line: 2435, baseType: !648, size: 64, offset: 320)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1786, file: !341, line: 2436, baseType: !648, size: 64, offset: 384)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1786, file: !341, line: 2437, baseType: !1495, size: 64, offset: 448)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1786, file: !341, line: 2438, baseType: !648, size: 64, offset: 512)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1786, file: !341, line: 2440, baseType: !648, size: 64, offset: 576)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1786, file: !341, line: 2441, baseType: !648, size: 64, offset: 640)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1786, file: !341, line: 2443, baseType: !1798, size: 128, offset: 704)
!1798 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !341, line: 182, baseType: !1799)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !341, line: 182, size: 128, elements: !1800)
!1800 = !{!1801}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1799, file: !341, line: 182, baseType: !1500, size: 128)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !651, file: !341, line: 3401, baseType: !1803, size: 320)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !341, line: 3327, size: 320, elements: !1804)
!1804 = !{!1805, !1806, !1813}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1803, file: !341, line: 3329, baseType: !687, size: 192)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1803, file: !341, line: 3330, baseType: !1807, size: 64, offset: 192)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !341, line: 3320, size: 192, elements: !1809)
!1809 = !{!1810, !1811, !1812}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1808, file: !341, line: 3322, baseType: !1807, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1808, file: !341, line: 3323, baseType: !1807, size: 64, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1808, file: !341, line: 3324, baseType: !648, size: 64, offset: 128)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1803, file: !341, line: 3331, baseType: !1807, size: 64, offset: 256)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !651, file: !341, line: 3402, baseType: !1815, size: 256)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !341, line: 1540, size: 256, elements: !1816)
!1816 = !{!1817, !1818}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1815, file: !341, line: 1541, baseType: !687, size: 192)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1815, file: !341, line: 1542, baseType: !1819, size: 64, offset: 192)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !341, line: 1538, baseType: !1821)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !341, line: 1538, size: 192, elements: !1822)
!1822 = !{!1823}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1821, file: !341, line: 1538, baseType: !1824, size: 192)
!1824 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !341, line: 1537, baseType: !1825)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !341, line: 1537, size: 192, elements: !1826)
!1826 = !{!1827, !1828, !1829}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1825, file: !341, line: 1537, baseType: !7, size: 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1825, file: !341, line: 1537, baseType: !7, size: 32, offset: 32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1825, file: !341, line: 1537, baseType: !1830, size: 128, offset: 64)
!1830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1831, size: 128, elements: !747)
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !341, line: 1535, baseType: !1832)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !341, line: 1532, size: 128, elements: !1833)
!1833 = !{!1834, !1835}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1832, file: !341, line: 1533, baseType: !648, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1832, file: !341, line: 1534, baseType: !648, size: 64, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !651, file: !341, line: 3403, baseType: !1837, size: 512)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !341, line: 1938, size: 512, elements: !1838)
!1838 = !{!1839, !1840, !1841, !1842, !1848, !1849, !1850}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1837, file: !341, line: 1939, baseType: !687, size: 192)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1837, file: !341, line: 1940, baseType: !773, size: 32, offset: 192)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1837, file: !341, line: 1941, baseType: !340, size: 32, offset: 224)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1837, file: !341, line: 1946, baseType: !1843, size: 32, offset: 256)
!1843 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !341, line: 1942, size: 32, elements: !1844)
!1844 = !{!1845, !1846, !1847}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1843, file: !341, line: 1943, baseType: !359, size: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1843, file: !341, line: 1944, baseType: !366, size: 32)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1843, file: !341, line: 1945, baseType: !373, size: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1837, file: !341, line: 1950, baseType: !962, size: 64, offset: 320)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1837, file: !341, line: 1951, baseType: !962, size: 64, offset: 384)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1837, file: !341, line: 1953, baseType: !1026, size: 64, offset: 448)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !651, file: !341, line: 3404, baseType: !1852, size: 1664)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !341, line: 3337, size: 1664, elements: !1853)
!1853 = !{!1854, !1855}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1852, file: !341, line: 3338, baseType: !687, size: 192)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1852, file: !341, line: 3341, baseType: !1856, size: 1472, offset: 192)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1857, line: 410, size: 1472, elements: !1858)
!1857 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1858 = !{!1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1856, file: !1857, line: 412, baseType: !641, size: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1856, file: !1857, line: 413, baseType: !641, size: 32, offset: 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1856, file: !1857, line: 414, baseType: !641, size: 32, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1856, file: !1857, line: 415, baseType: !641, size: 32, offset: 96)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1856, file: !1857, line: 416, baseType: !641, size: 32, offset: 128)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1856, file: !1857, line: 417, baseType: !641, size: 32, offset: 160)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1856, file: !1857, line: 418, baseType: !640, size: 8, offset: 192)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1856, file: !1857, line: 419, baseType: !640, size: 8, offset: 200)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1856, file: !1857, line: 420, baseType: !1868, size: 8, offset: 208)
!1868 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1856, file: !1857, line: 421, baseType: !1868, size: 8, offset: 216)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1856, file: !1857, line: 422, baseType: !1868, size: 8, offset: 224)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1856, file: !1857, line: 423, baseType: !1868, size: 8, offset: 232)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1856, file: !1857, line: 424, baseType: !1868, size: 8, offset: 240)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1856, file: !1857, line: 425, baseType: !1868, size: 8, offset: 248)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1856, file: !1857, line: 426, baseType: !1868, size: 8, offset: 256)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1856, file: !1857, line: 427, baseType: !1868, size: 8, offset: 264)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1856, file: !1857, line: 428, baseType: !1868, size: 8, offset: 272)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1856, file: !1857, line: 429, baseType: !1868, size: 8, offset: 280)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1856, file: !1857, line: 430, baseType: !1868, size: 8, offset: 288)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1856, file: !1857, line: 431, baseType: !1868, size: 8, offset: 296)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1856, file: !1857, line: 432, baseType: !1868, size: 8, offset: 304)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1856, file: !1857, line: 433, baseType: !1868, size: 8, offset: 312)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1856, file: !1857, line: 434, baseType: !1868, size: 8, offset: 320)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1856, file: !1857, line: 435, baseType: !1868, size: 8, offset: 328)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1856, file: !1857, line: 436, baseType: !1868, size: 8, offset: 336)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1856, file: !1857, line: 437, baseType: !1868, size: 8, offset: 344)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1856, file: !1857, line: 438, baseType: !1868, size: 8, offset: 352)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1856, file: !1857, line: 439, baseType: !1868, size: 8, offset: 360)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1856, file: !1857, line: 440, baseType: !1868, size: 8, offset: 368)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1856, file: !1857, line: 441, baseType: !1868, size: 8, offset: 376)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1856, file: !1857, line: 442, baseType: !1868, size: 8, offset: 384)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1856, file: !1857, line: 443, baseType: !1868, size: 8, offset: 392)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1856, file: !1857, line: 444, baseType: !1868, size: 8, offset: 400)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1856, file: !1857, line: 445, baseType: !1868, size: 8, offset: 408)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1856, file: !1857, line: 446, baseType: !1868, size: 8, offset: 416)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1856, file: !1857, line: 447, baseType: !1868, size: 8, offset: 424)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1856, file: !1857, line: 448, baseType: !1868, size: 8, offset: 432)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1856, file: !1857, line: 449, baseType: !1868, size: 8, offset: 440)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1856, file: !1857, line: 450, baseType: !1868, size: 8, offset: 448)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1856, file: !1857, line: 451, baseType: !1868, size: 8, offset: 456)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1856, file: !1857, line: 452, baseType: !1868, size: 8, offset: 464)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1856, file: !1857, line: 453, baseType: !1868, size: 8, offset: 472)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1856, file: !1857, line: 454, baseType: !1868, size: 8, offset: 480)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1856, file: !1857, line: 455, baseType: !1868, size: 8, offset: 488)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1856, file: !1857, line: 456, baseType: !1868, size: 8, offset: 496)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1856, file: !1857, line: 457, baseType: !1868, size: 8, offset: 504)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1856, file: !1857, line: 458, baseType: !1868, size: 8, offset: 512)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1856, file: !1857, line: 459, baseType: !1868, size: 8, offset: 520)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1856, file: !1857, line: 460, baseType: !1868, size: 8, offset: 528)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1856, file: !1857, line: 461, baseType: !1868, size: 8, offset: 536)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1856, file: !1857, line: 462, baseType: !1868, size: 8, offset: 544)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1856, file: !1857, line: 463, baseType: !1868, size: 8, offset: 552)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1856, file: !1857, line: 464, baseType: !1868, size: 8, offset: 560)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1856, file: !1857, line: 465, baseType: !1868, size: 8, offset: 568)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1856, file: !1857, line: 466, baseType: !1868, size: 8, offset: 576)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1856, file: !1857, line: 467, baseType: !1868, size: 8, offset: 584)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1856, file: !1857, line: 468, baseType: !1868, size: 8, offset: 592)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1856, file: !1857, line: 469, baseType: !1868, size: 8, offset: 600)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1856, file: !1857, line: 470, baseType: !1868, size: 8, offset: 608)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1856, file: !1857, line: 471, baseType: !1868, size: 8, offset: 616)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1856, file: !1857, line: 472, baseType: !1868, size: 8, offset: 624)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1856, file: !1857, line: 473, baseType: !1868, size: 8, offset: 632)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1856, file: !1857, line: 474, baseType: !1868, size: 8, offset: 640)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1856, file: !1857, line: 475, baseType: !1868, size: 8, offset: 648)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1856, file: !1857, line: 476, baseType: !1868, size: 8, offset: 656)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1856, file: !1857, line: 477, baseType: !1868, size: 8, offset: 664)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1856, file: !1857, line: 478, baseType: !1868, size: 8, offset: 672)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1856, file: !1857, line: 479, baseType: !1868, size: 8, offset: 680)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1856, file: !1857, line: 480, baseType: !1868, size: 8, offset: 688)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1856, file: !1857, line: 481, baseType: !1868, size: 8, offset: 696)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1856, file: !1857, line: 482, baseType: !1868, size: 8, offset: 704)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1856, file: !1857, line: 483, baseType: !1868, size: 8, offset: 712)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1856, file: !1857, line: 484, baseType: !1868, size: 8, offset: 720)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1856, file: !1857, line: 485, baseType: !1868, size: 8, offset: 728)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1856, file: !1857, line: 486, baseType: !1868, size: 8, offset: 736)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1856, file: !1857, line: 487, baseType: !1868, size: 8, offset: 744)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1856, file: !1857, line: 488, baseType: !1868, size: 8, offset: 752)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1856, file: !1857, line: 489, baseType: !1868, size: 8, offset: 760)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1856, file: !1857, line: 490, baseType: !1868, size: 8, offset: 768)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1856, file: !1857, line: 491, baseType: !1868, size: 8, offset: 776)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1856, file: !1857, line: 492, baseType: !1868, size: 8, offset: 784)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1856, file: !1857, line: 493, baseType: !1868, size: 8, offset: 792)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1856, file: !1857, line: 494, baseType: !1868, size: 8, offset: 800)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1856, file: !1857, line: 495, baseType: !1868, size: 8, offset: 808)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1856, file: !1857, line: 496, baseType: !1868, size: 8, offset: 816)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1856, file: !1857, line: 497, baseType: !1868, size: 8, offset: 824)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1856, file: !1857, line: 498, baseType: !1868, size: 8, offset: 832)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1856, file: !1857, line: 499, baseType: !1868, size: 8, offset: 840)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1856, file: !1857, line: 500, baseType: !1868, size: 8, offset: 848)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1856, file: !1857, line: 501, baseType: !1868, size: 8, offset: 856)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1856, file: !1857, line: 502, baseType: !1868, size: 8, offset: 864)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1856, file: !1857, line: 503, baseType: !1868, size: 8, offset: 872)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1856, file: !1857, line: 504, baseType: !1868, size: 8, offset: 880)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1856, file: !1857, line: 505, baseType: !1868, size: 8, offset: 888)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1856, file: !1857, line: 506, baseType: !1868, size: 8, offset: 896)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1856, file: !1857, line: 507, baseType: !1868, size: 8, offset: 904)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1856, file: !1857, line: 508, baseType: !1868, size: 8, offset: 912)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1856, file: !1857, line: 509, baseType: !1868, size: 8, offset: 920)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1856, file: !1857, line: 510, baseType: !1868, size: 8, offset: 928)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1856, file: !1857, line: 511, baseType: !1868, size: 8, offset: 936)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1856, file: !1857, line: 512, baseType: !1868, size: 8, offset: 944)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1856, file: !1857, line: 513, baseType: !1868, size: 8, offset: 952)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1856, file: !1857, line: 514, baseType: !1868, size: 8, offset: 960)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1856, file: !1857, line: 515, baseType: !1868, size: 8, offset: 968)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1856, file: !1857, line: 516, baseType: !1868, size: 8, offset: 976)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1856, file: !1857, line: 517, baseType: !1868, size: 8, offset: 984)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1856, file: !1857, line: 518, baseType: !1868, size: 8, offset: 992)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1856, file: !1857, line: 519, baseType: !1868, size: 8, offset: 1000)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1856, file: !1857, line: 520, baseType: !1868, size: 8, offset: 1008)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1856, file: !1857, line: 521, baseType: !1868, size: 8, offset: 1016)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1856, file: !1857, line: 522, baseType: !1868, size: 8, offset: 1024)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1856, file: !1857, line: 523, baseType: !1868, size: 8, offset: 1032)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1856, file: !1857, line: 524, baseType: !1868, size: 8, offset: 1040)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1856, file: !1857, line: 525, baseType: !1868, size: 8, offset: 1048)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1856, file: !1857, line: 526, baseType: !1868, size: 8, offset: 1056)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1856, file: !1857, line: 527, baseType: !1868, size: 8, offset: 1064)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1856, file: !1857, line: 528, baseType: !1868, size: 8, offset: 1072)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1856, file: !1857, line: 529, baseType: !1868, size: 8, offset: 1080)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1856, file: !1857, line: 530, baseType: !1868, size: 8, offset: 1088)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1856, file: !1857, line: 531, baseType: !1868, size: 8, offset: 1096)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1856, file: !1857, line: 532, baseType: !1868, size: 8, offset: 1104)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1856, file: !1857, line: 533, baseType: !1868, size: 8, offset: 1112)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1856, file: !1857, line: 534, baseType: !1868, size: 8, offset: 1120)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1856, file: !1857, line: 535, baseType: !1868, size: 8, offset: 1128)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1856, file: !1857, line: 536, baseType: !1868, size: 8, offset: 1136)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1856, file: !1857, line: 537, baseType: !1868, size: 8, offset: 1144)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1856, file: !1857, line: 538, baseType: !1868, size: 8, offset: 1152)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1856, file: !1857, line: 539, baseType: !1868, size: 8, offset: 1160)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1856, file: !1857, line: 540, baseType: !1868, size: 8, offset: 1168)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1856, file: !1857, line: 541, baseType: !1868, size: 8, offset: 1176)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1856, file: !1857, line: 542, baseType: !1868, size: 8, offset: 1184)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1856, file: !1857, line: 543, baseType: !1868, size: 8, offset: 1192)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1856, file: !1857, line: 544, baseType: !1868, size: 8, offset: 1200)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1856, file: !1857, line: 545, baseType: !1868, size: 8, offset: 1208)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1856, file: !1857, line: 546, baseType: !1868, size: 8, offset: 1216)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1856, file: !1857, line: 547, baseType: !1868, size: 8, offset: 1224)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1856, file: !1857, line: 548, baseType: !1868, size: 8, offset: 1232)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1856, file: !1857, line: 549, baseType: !1868, size: 8, offset: 1240)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1856, file: !1857, line: 550, baseType: !1868, size: 8, offset: 1248)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1856, file: !1857, line: 551, baseType: !1868, size: 8, offset: 1256)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1856, file: !1857, line: 552, baseType: !1868, size: 8, offset: 1264)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1856, file: !1857, line: 553, baseType: !1868, size: 8, offset: 1272)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1856, file: !1857, line: 554, baseType: !1868, size: 8, offset: 1280)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1856, file: !1857, line: 555, baseType: !1868, size: 8, offset: 1288)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1856, file: !1857, line: 556, baseType: !1868, size: 8, offset: 1296)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1856, file: !1857, line: 557, baseType: !1868, size: 8, offset: 1304)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1856, file: !1857, line: 558, baseType: !1868, size: 8, offset: 1312)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1856, file: !1857, line: 559, baseType: !1868, size: 8, offset: 1320)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1856, file: !1857, line: 560, baseType: !1868, size: 8, offset: 1328)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1856, file: !1857, line: 561, baseType: !1868, size: 8, offset: 1336)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1856, file: !1857, line: 562, baseType: !1868, size: 8, offset: 1344)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1856, file: !1857, line: 563, baseType: !1868, size: 8, offset: 1352)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1856, file: !1857, line: 564, baseType: !1868, size: 8, offset: 1360)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1856, file: !1857, line: 565, baseType: !1868, size: 8, offset: 1368)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1856, file: !1857, line: 566, baseType: !1868, size: 8, offset: 1376)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1856, file: !1857, line: 567, baseType: !1868, size: 8, offset: 1384)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1856, file: !1857, line: 568, baseType: !1868, size: 8, offset: 1392)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1856, file: !1857, line: 569, baseType: !1868, size: 8, offset: 1400)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1856, file: !1857, line: 570, baseType: !1868, size: 8, offset: 1408)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1856, file: !1857, line: 571, baseType: !1868, size: 8, offset: 1416)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1856, file: !1857, line: 572, baseType: !1868, size: 8, offset: 1424)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1856, file: !1857, line: 573, baseType: !1868, size: 8, offset: 1432)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1856, file: !1857, line: 574, baseType: !1868, size: 8, offset: 1440)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !651, file: !341, line: 3405, baseType: !2024, size: 384)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !341, line: 3352, size: 384, elements: !2025)
!2025 = !{!2026, !2027}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2024, file: !341, line: 3353, baseType: !687, size: 192)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !2024, file: !341, line: 3356, baseType: !2028, size: 192, offset: 192)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1857, line: 578, size: 192, elements: !2029)
!2029 = !{!2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !2028, file: !1857, line: 580, baseType: !641, size: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !2028, file: !1857, line: 581, baseType: !641, size: 32, offset: 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !2028, file: !1857, line: 582, baseType: !641, size: 32, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !2028, file: !1857, line: 583, baseType: !641, size: 32, offset: 96)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2028, file: !1857, line: 584, baseType: !640, size: 8, offset: 128)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !2028, file: !1857, line: 585, baseType: !640, size: 8, offset: 136)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !2028, file: !1857, line: 586, baseType: !640, size: 8, offset: 144)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !2028, file: !1857, line: 587, baseType: !640, size: 8, offset: 152)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !2028, file: !1857, line: 588, baseType: !640, size: 8, offset: 160)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !2028, file: !1857, line: 589, baseType: !640, size: 8, offset: 168)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !2028, file: !1857, line: 590, baseType: !640, size: 8, offset: 176)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tailcall", file: !3, line: 102, size: 448, elements: !2043)
!2043 = !{!2044, !2051, !2052, !2053, !2054}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "call_gsi", scope: !2042, file: !3, line: 105, baseType: !2045, size: 192)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !568, line: 265, baseType: !2046)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !568, line: 254, size: 192, elements: !2047)
!2047 = !{!2048, !2049, !2050}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2046, file: !568, line: 257, baseType: !967, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2046, file: !568, line: 263, baseType: !962, size: 64, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2046, file: !568, line: 264, baseType: !1530, size: 64, offset: 128)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "tail_recursion", scope: !2042, file: !3, line: 108, baseType: !640, size: 8, offset: 192)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !2042, file: !3, line: 112, baseType: !648, size: 64, offset: 256)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2042, file: !3, line: 112, baseType: !648, size: 64, offset: 320)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2042, file: !3, line: 115, baseType: !2041, size: 64, offset: 384)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !974)
!2057 = !{!0, !2058, !2086, !2088}
!2058 = !DIGlobalVariableExpression(var: !2059, expr: !DIExpression())
!2059 = distinct !DIGlobalVariable(name: "pass_tail_calls", scope: !2, file: !3, line: 1065, type: !2060, isLocal: false, isDefinition: true)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !6, line: 156, size: 640, elements: !2061)
!2061 = !{!2062}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2060, file: !6, line: 158, baseType: !2063, size: 640)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !2064)
!2064 = !{!2065, !2066, !2067, !2071, !2075, !2077, !2078, !2079, !2081, !2082, !2083, !2084, !2085}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2063, file: !6, line: 117, baseType: !5, size: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2063, file: !6, line: 121, baseType: !646, size: 64, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !2063, file: !6, line: 125, baseType: !2068, size: 64, offset: 128)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!640}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !2063, file: !6, line: 130, baseType: !2072, size: 64, offset: 192)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!7}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !2063, file: !6, line: 133, baseType: !2076, size: 64, offset: 256)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2063, file: !6, line: 136, baseType: !2076, size: 64, offset: 320)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !2063, file: !6, line: 139, baseType: !641, size: 32, offset: 384)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !2063, file: !6, line: 143, baseType: !2080, size: 32, offset: 416)
!2080 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !2063, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !2063, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !2063, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !2063, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !2063, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!2086 = !DIGlobalVariableExpression(var: !2087, expr: !DIExpression())
!2087 = distinct !DIGlobalVariable(name: "m_acc", scope: !2, file: !3, line: 120, type: !648, isLocal: true, isDefinition: true)
!2088 = !DIGlobalVariableExpression(var: !2089, expr: !DIExpression())
!2089 = distinct !DIGlobalVariable(name: "a_acc", scope: !2, file: !3, line: 120, type: !648, isLocal: true, isDefinition: true)
!2090 = !{i32 2, !"Dwarf Version", i32 4}
!2091 = !{i32 2, !"Debug Info Version", i32 3}
!2092 = !{i32 1, !"wchar_size", i32 4}
!2093 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2094 = distinct !DISubprogram(name: "vprintf", scope: !2095, file: !2095, line: 39, type: !2096, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2106)
!2095 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!641, !2098, !2099}
!2098 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !646)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2101)
!2101 = !{!2102, !2103, !2104, !2105}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2100, file: !3, baseType: !7, size: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2100, file: !3, baseType: !7, size: 32, offset: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2100, file: !3, baseType: !645, size: 64, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2100, file: !3, baseType: !645, size: 64, offset: 128)
!2106 = !{!2107, !2108}
!2107 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2094, file: !2095, line: 39, type: !2098)
!2108 = !DILocalVariable(name: "__arg", arg: 2, scope: !2094, file: !2095, line: 39, type: !2099)
!2109 = !DILocation(line: 0, scope: !2094)
!2110 = !DILocation(line: 41, column: 20, scope: !2094)
!2111 = !DILocation(line: 41, column: 10, scope: !2094)
!2112 = !DILocation(line: 41, column: 3, scope: !2094)
!2113 = distinct !DISubprogram(name: "getchar", scope: !2095, file: !2095, line: 47, type: !2114, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2116)
!2114 = !DISubroutineType(types: !2115)
!2115 = !{!641}
!2116 = !{}
!2117 = !DILocation(line: 49, column: 16, scope: !2113)
!2118 = !DILocation(line: 49, column: 10, scope: !2113)
!2119 = !DILocation(line: 49, column: 3, scope: !2113)
!2120 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2095, file: !2095, line: 56, type: !2121, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2174)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!641, !2123}
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2125, line: 7, baseType: !2126)
!2125 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2127, line: 49, size: 1728, elements: !2128)
!2127 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2128 = !{!2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2144, !2146, !2147, !2148, !2151, !2153, !2154, !2155, !2158, !2160, !2163, !2166, !2167, !2168, !2169, !2170}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2126, file: !2127, line: 51, baseType: !641, size: 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2126, file: !2127, line: 54, baseType: !643, size: 64, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2126, file: !2127, line: 55, baseType: !643, size: 64, offset: 128)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2126, file: !2127, line: 56, baseType: !643, size: 64, offset: 192)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2126, file: !2127, line: 57, baseType: !643, size: 64, offset: 256)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2126, file: !2127, line: 58, baseType: !643, size: 64, offset: 320)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2126, file: !2127, line: 59, baseType: !643, size: 64, offset: 384)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2126, file: !2127, line: 60, baseType: !643, size: 64, offset: 448)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2126, file: !2127, line: 61, baseType: !643, size: 64, offset: 512)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2126, file: !2127, line: 64, baseType: !643, size: 64, offset: 576)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2126, file: !2127, line: 65, baseType: !643, size: 64, offset: 640)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2126, file: !2127, line: 66, baseType: !643, size: 64, offset: 704)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2126, file: !2127, line: 68, baseType: !2142, size: 64, offset: 768)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2127, line: 36, flags: DIFlagFwdDecl)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2126, file: !2127, line: 70, baseType: !2145, size: 64, offset: 832)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2126, file: !2127, line: 72, baseType: !641, size: 32, offset: 896)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2126, file: !2127, line: 73, baseType: !641, size: 32, offset: 928)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2126, file: !2127, line: 74, baseType: !2149, size: 64, offset: 960)
!2149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2150, line: 152, baseType: !704)
!2150 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2126, file: !2127, line: 77, baseType: !2152, size: 16, offset: 1024)
!2152 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2126, file: !2127, line: 78, baseType: !1868, size: 8, offset: 1040)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2126, file: !2127, line: 79, baseType: !746, size: 8, offset: 1048)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2126, file: !2127, line: 81, baseType: !2156, size: 64, offset: 1088)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2127, line: 43, baseType: null)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2126, file: !2127, line: 89, baseType: !2159, size: 64, offset: 1152)
!2159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2150, line: 153, baseType: !704)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2126, file: !2127, line: 91, baseType: !2161, size: 64, offset: 1216)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2127, line: 37, flags: DIFlagFwdDecl)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2126, file: !2127, line: 92, baseType: !2164, size: 64, offset: 1280)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2127, line: 38, flags: DIFlagFwdDecl)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2126, file: !2127, line: 93, baseType: !2145, size: 64, offset: 1344)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2126, file: !2127, line: 94, baseType: !645, size: 64, offset: 1408)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2126, file: !2127, line: 95, baseType: !1118, size: 64, offset: 1472)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2126, file: !2127, line: 96, baseType: !641, size: 32, offset: 1536)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2126, file: !2127, line: 98, baseType: !2171, size: 160, offset: 1568)
!2171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 160, elements: !2172)
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
!2190 = !{!641, !641}
!2191 = !{!2192}
!2192 = !DILocalVariable(name: "__c", arg: 1, scope: !2188, file: !2095, line: 82, type: !641)
!2193 = !DILocation(line: 0, scope: !2188)
!2194 = !DILocation(line: 84, column: 21, scope: !2188)
!2195 = !DILocation(line: 84, column: 10, scope: !2188)
!2196 = !DILocation(line: 84, column: 3, scope: !2188)
!2197 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2095, file: !2095, line: 91, type: !2198, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2200)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!641, !641, !2123}
!2200 = !{!2201, !2202}
!2201 = !DILocalVariable(name: "__c", arg: 1, scope: !2197, file: !2095, line: 91, type: !641)
!2202 = !DILocalVariable(name: "__stream", arg: 2, scope: !2197, file: !2095, line: 91, type: !2123)
!2203 = !DILocation(line: 0, scope: !2197)
!2204 = !DILocation(line: 93, column: 10, scope: !2197)
!2205 = !DILocation(line: 93, column: 3, scope: !2197)
!2206 = distinct !DISubprogram(name: "putc_unlocked", scope: !2095, file: !2095, line: 101, type: !2198, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2207)
!2207 = !{!2208, !2209}
!2208 = !DILocalVariable(name: "__c", arg: 1, scope: !2206, file: !2095, line: 101, type: !641)
!2209 = !DILocalVariable(name: "__stream", arg: 2, scope: !2206, file: !2095, line: 101, type: !2123)
!2210 = !DILocation(line: 0, scope: !2206)
!2211 = !DILocation(line: 103, column: 10, scope: !2206)
!2212 = !DILocation(line: 103, column: 3, scope: !2206)
!2213 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2095, file: !2095, line: 108, type: !2189, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2214)
!2214 = !{!2215}
!2215 = !DILocalVariable(name: "__c", arg: 1, scope: !2213, file: !2095, line: 108, type: !641)
!2216 = !DILocation(line: 0, scope: !2213)
!2217 = !DILocation(line: 110, column: 10, scope: !2213)
!2218 = !DILocation(line: 110, column: 3, scope: !2213)
!2219 = distinct !DISubprogram(name: "getline", scope: !2095, file: !2095, line: 118, type: !2220, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2224)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!2222, !642, !2223, !2123}
!2222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2150, line: 193, baseType: !704)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!2224 = !{!2225, !2226, !2227}
!2225 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2219, file: !2095, line: 118, type: !642)
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
!2246 = !DILocalVariable(name: "__c", arg: 1, scope: !2243, file: !2244, line: 207, type: !641)
!2247 = !DILocation(line: 0, scope: !2243)
!2248 = !DILocation(line: 209, column: 22, scope: !2243)
!2249 = !DILocation(line: 209, column: 39, scope: !2243)
!2250 = !DILocation(line: 209, column: 38, scope: !2243)
!2251 = !DILocation(line: 209, column: 37, scope: !2243)
!2252 = !DILocation(line: 209, column: 10, scope: !2243)
!2253 = !DILocation(line: 209, column: 3, scope: !2243)
!2254 = distinct !DISubprogram(name: "toupper", scope: !2244, file: !2244, line: 213, type: !2189, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2255)
!2255 = !{!2256}
!2256 = !DILocalVariable(name: "__c", arg: 1, scope: !2254, file: !2244, line: 213, type: !641)
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
!2267 = !{!641, !646}
!2268 = !{!2269}
!2269 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2264, file: !2265, line: 361, type: !646)
!2270 = !DILocation(line: 0, scope: !2264)
!2271 = !DILocation(line: 363, column: 16, scope: !2264)
!2272 = !DILocation(line: 363, column: 10, scope: !2264)
!2273 = !DILocation(line: 363, column: 3, scope: !2264)
!2274 = distinct !DISubprogram(name: "atol", scope: !2265, file: !2265, line: 366, type: !2275, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2277)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!704, !646}
!2277 = !{!2278}
!2278 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2274, file: !2265, line: 366, type: !646)
!2279 = !DILocation(line: 0, scope: !2274)
!2280 = !DILocation(line: 368, column: 10, scope: !2274)
!2281 = !DILocation(line: 368, column: 3, scope: !2274)
!2282 = distinct !DISubprogram(name: "atoll", scope: !2265, file: !2265, line: 373, type: !2283, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2286)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!2285, !646}
!2285 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2286 = !{!2287}
!2287 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2282, file: !2265, line: 373, type: !646)
!2288 = !DILocation(line: 0, scope: !2282)
!2289 = !DILocation(line: 375, column: 10, scope: !2282)
!2290 = !DILocation(line: 375, column: 3, scope: !2282)
!2291 = distinct !DISubprogram(name: "bsearch", scope: !2292, file: !2292, line: 20, type: !2293, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2296)
!2292 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!645, !1456, !1456, !1118, !1118, !2295}
!2295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2265, line: 808, baseType: !1460)
!2296 = !{!2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306}
!2297 = !DILocalVariable(name: "__key", arg: 1, scope: !2291, file: !2292, line: 20, type: !1456)
!2298 = !DILocalVariable(name: "__base", arg: 2, scope: !2291, file: !2292, line: 20, type: !1456)
!2299 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2291, file: !2292, line: 20, type: !1118)
!2300 = !DILocalVariable(name: "__size", arg: 4, scope: !2291, file: !2292, line: 20, type: !1118)
!2301 = !DILocalVariable(name: "__compar", arg: 5, scope: !2291, file: !2292, line: 21, type: !2295)
!2302 = !DILocalVariable(name: "__l", scope: !2291, file: !2292, line: 23, type: !1118)
!2303 = !DILocalVariable(name: "__u", scope: !2291, file: !2292, line: 23, type: !1118)
!2304 = !DILocalVariable(name: "__idx", scope: !2291, file: !2292, line: 23, type: !1118)
!2305 = !DILocalVariable(name: "__p", scope: !2291, file: !2292, line: 24, type: !1456)
!2306 = !DILocalVariable(name: "__comparison", scope: !2291, file: !2292, line: 25, type: !641)
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
!2330 = !{!2331, !646}
!2331 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2332 = !{!2333}
!2333 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2327, file: !2328, line: 25, type: !646)
!2334 = !DILocation(line: 0, scope: !2327)
!2335 = !DILocation(line: 27, column: 10, scope: !2327)
!2336 = !DILocation(line: 27, column: 3, scope: !2327)
!2337 = distinct !DISubprogram(name: "strtoimax", scope: !2338, file: !2338, line: 324, type: !2339, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2345)
!2338 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!2341, !2098, !2344, !641}
!2341 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2342, line: 101, baseType: !2343)
!2342 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2150, line: 72, baseType: !704)
!2344 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !642)
!2345 = !{!2346, !2347, !2348}
!2346 = !DILocalVariable(name: "nptr", arg: 1, scope: !2337, file: !2338, line: 324, type: !2098)
!2347 = !DILocalVariable(name: "endptr", arg: 2, scope: !2337, file: !2338, line: 324, type: !2344)
!2348 = !DILocalVariable(name: "base", arg: 3, scope: !2337, file: !2338, line: 324, type: !641)
!2349 = !DILocation(line: 0, scope: !2337)
!2350 = !DILocation(line: 327, column: 10, scope: !2337)
!2351 = !DILocation(line: 327, column: 3, scope: !2337)
!2352 = distinct !DISubprogram(name: "strtoumax", scope: !2338, file: !2338, line: 336, type: !2353, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2357)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!2355, !2098, !2344, !641}
!2355 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2342, line: 102, baseType: !2356)
!2356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2150, line: 73, baseType: !702)
!2357 = !{!2358, !2359, !2360}
!2358 = !DILocalVariable(name: "nptr", arg: 1, scope: !2352, file: !2338, line: 336, type: !2098)
!2359 = !DILocalVariable(name: "endptr", arg: 2, scope: !2352, file: !2338, line: 336, type: !2344)
!2360 = !DILocalVariable(name: "base", arg: 3, scope: !2352, file: !2338, line: 336, type: !641)
!2361 = !DILocation(line: 0, scope: !2352)
!2362 = !DILocation(line: 339, column: 10, scope: !2352)
!2363 = !DILocation(line: 339, column: 3, scope: !2352)
!2364 = distinct !DISubprogram(name: "wcstoimax", scope: !2338, file: !2338, line: 348, type: !2365, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2374)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!2341, !2367, !2371, !641}
!2367 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2368)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2370)
!2370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2338, line: 34, baseType: !641)
!2371 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2372)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2374 = !{!2375, !2376, !2377}
!2375 = !DILocalVariable(name: "nptr", arg: 1, scope: !2364, file: !2338, line: 348, type: !2367)
!2376 = !DILocalVariable(name: "endptr", arg: 2, scope: !2364, file: !2338, line: 348, type: !2371)
!2377 = !DILocalVariable(name: "base", arg: 3, scope: !2364, file: !2338, line: 348, type: !641)
!2378 = !DILocation(line: 0, scope: !2364)
!2379 = !DILocation(line: 351, column: 10, scope: !2364)
!2380 = !DILocation(line: 351, column: 3, scope: !2364)
!2381 = distinct !DISubprogram(name: "wcstoumax", scope: !2338, file: !2338, line: 362, type: !2382, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2384)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!2355, !2367, !2371, !641}
!2384 = !{!2385, !2386, !2387}
!2385 = !DILocalVariable(name: "nptr", arg: 1, scope: !2381, file: !2338, line: 362, type: !2367)
!2386 = !DILocalVariable(name: "endptr", arg: 2, scope: !2381, file: !2338, line: 362, type: !2371)
!2387 = !DILocalVariable(name: "base", arg: 3, scope: !2381, file: !2338, line: 362, type: !641)
!2388 = !DILocation(line: 0, scope: !2381)
!2389 = !DILocation(line: 365, column: 10, scope: !2381)
!2390 = !DILocation(line: 365, column: 3, scope: !2381)
!2391 = distinct !DISubprogram(name: "stat", scope: !2392, file: !2392, line: 453, type: !2393, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2430)
!2392 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!641, !646, !2395}
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2397, line: 46, size: 1152, elements: !2398)
!2397 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2398 = !{!2399, !2401, !2403, !2405, !2407, !2409, !2411, !2412, !2413, !2414, !2416, !2418, !2426, !2427, !2428}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2396, file: !2397, line: 48, baseType: !2400, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2150, line: 145, baseType: !702)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2396, file: !2397, line: 53, baseType: !2402, size: 64, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2150, line: 148, baseType: !702)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2396, file: !2397, line: 61, baseType: !2404, size: 64, offset: 128)
!2404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2150, line: 151, baseType: !702)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2396, file: !2397, line: 62, baseType: !2406, size: 32, offset: 192)
!2406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2150, line: 150, baseType: !7)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2396, file: !2397, line: 64, baseType: !2408, size: 32, offset: 224)
!2408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2150, line: 146, baseType: !7)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2396, file: !2397, line: 65, baseType: !2410, size: 32, offset: 256)
!2410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2150, line: 147, baseType: !7)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2396, file: !2397, line: 67, baseType: !641, size: 32, offset: 288)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2396, file: !2397, line: 69, baseType: !2400, size: 64, offset: 320)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2396, file: !2397, line: 74, baseType: !2149, size: 64, offset: 384)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2396, file: !2397, line: 78, baseType: !2415, size: 64, offset: 448)
!2415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2150, line: 174, baseType: !704)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2396, file: !2397, line: 80, baseType: !2417, size: 64, offset: 512)
!2417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2150, line: 179, baseType: !704)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2396, file: !2397, line: 91, baseType: !2419, size: 128, offset: 576)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2420, line: 10, size: 128, elements: !2421)
!2420 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2421 = !{!2422, !2424}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2419, file: !2420, line: 12, baseType: !2423, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2150, line: 160, baseType: !704)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2419, file: !2420, line: 16, baseType: !2425, size: 64, offset: 64)
!2425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2150, line: 196, baseType: !704)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2396, file: !2397, line: 92, baseType: !2419, size: 128, offset: 704)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2396, file: !2397, line: 93, baseType: !2419, size: 128, offset: 832)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2396, file: !2397, line: 106, baseType: !2429, size: 192, offset: 960)
!2429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2425, size: 192, elements: !722)
!2430 = !{!2431, !2432}
!2431 = !DILocalVariable(name: "__path", arg: 1, scope: !2391, file: !2392, line: 453, type: !646)
!2432 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2391, file: !2392, line: 453, type: !2395)
!2433 = !DILocation(line: 0, scope: !2391)
!2434 = !DILocation(line: 455, column: 10, scope: !2391)
!2435 = !DILocation(line: 455, column: 3, scope: !2391)
!2436 = distinct !DISubprogram(name: "lstat", scope: !2392, file: !2392, line: 460, type: !2393, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2437)
!2437 = !{!2438, !2439}
!2438 = !DILocalVariable(name: "__path", arg: 1, scope: !2436, file: !2392, line: 460, type: !646)
!2439 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2436, file: !2392, line: 460, type: !2395)
!2440 = !DILocation(line: 0, scope: !2436)
!2441 = !DILocation(line: 462, column: 10, scope: !2436)
!2442 = !DILocation(line: 462, column: 3, scope: !2436)
!2443 = distinct !DISubprogram(name: "fstat", scope: !2392, file: !2392, line: 467, type: !2444, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2446)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!641, !641, !2395}
!2446 = !{!2447, !2448}
!2447 = !DILocalVariable(name: "__fd", arg: 1, scope: !2443, file: !2392, line: 467, type: !641)
!2448 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2443, file: !2392, line: 467, type: !2395)
!2449 = !DILocation(line: 0, scope: !2443)
!2450 = !DILocation(line: 469, column: 10, scope: !2443)
!2451 = !DILocation(line: 469, column: 3, scope: !2443)
!2452 = distinct !DISubprogram(name: "fstatat", scope: !2392, file: !2392, line: 474, type: !2453, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2455)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!641, !641, !646, !2395, !641}
!2455 = !{!2456, !2457, !2458, !2459}
!2456 = !DILocalVariable(name: "__fd", arg: 1, scope: !2452, file: !2392, line: 474, type: !641)
!2457 = !DILocalVariable(name: "__filename", arg: 2, scope: !2452, file: !2392, line: 474, type: !646)
!2458 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2452, file: !2392, line: 474, type: !2395)
!2459 = !DILocalVariable(name: "__flag", arg: 4, scope: !2452, file: !2392, line: 474, type: !641)
!2460 = !DILocation(line: 0, scope: !2452)
!2461 = !DILocation(line: 477, column: 10, scope: !2452)
!2462 = !DILocation(line: 477, column: 3, scope: !2452)
!2463 = distinct !DISubprogram(name: "mknod", scope: !2392, file: !2392, line: 483, type: !2464, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2466)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!641, !646, !2406, !2400}
!2466 = !{!2467, !2468, !2469}
!2467 = !DILocalVariable(name: "__path", arg: 1, scope: !2463, file: !2392, line: 483, type: !646)
!2468 = !DILocalVariable(name: "__mode", arg: 2, scope: !2463, file: !2392, line: 483, type: !2406)
!2469 = !DILocalVariable(name: "__dev", arg: 3, scope: !2463, file: !2392, line: 483, type: !2400)
!2470 = !DILocation(line: 0, scope: !2463)
!2471 = !DILocation(line: 485, column: 10, scope: !2463)
!2472 = !DILocation(line: 485, column: 3, scope: !2463)
!2473 = distinct !DISubprogram(name: "mknodat", scope: !2392, file: !2392, line: 491, type: !2474, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2476)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!641, !641, !646, !2406, !2400}
!2476 = !{!2477, !2478, !2479, !2480}
!2477 = !DILocalVariable(name: "__fd", arg: 1, scope: !2473, file: !2392, line: 491, type: !641)
!2478 = !DILocalVariable(name: "__path", arg: 2, scope: !2473, file: !2392, line: 491, type: !646)
!2479 = !DILocalVariable(name: "__mode", arg: 3, scope: !2473, file: !2392, line: 491, type: !2406)
!2480 = !DILocalVariable(name: "__dev", arg: 4, scope: !2473, file: !2392, line: 491, type: !2400)
!2481 = !DILocation(line: 0, scope: !2473)
!2482 = !DILocation(line: 494, column: 10, scope: !2473)
!2483 = !DILocation(line: 494, column: 3, scope: !2473)
!2484 = distinct !DISubprogram(name: "stat64", scope: !2392, file: !2392, line: 502, type: !2485, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2507)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!641, !646, !2487}
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2397, line: 119, size: 1152, elements: !2489)
!2489 = !{!2490, !2491, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2503, !2504, !2505, !2506}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2488, file: !2397, line: 121, baseType: !2400, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2488, file: !2397, line: 123, baseType: !2492, size: 64, offset: 64)
!2492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2150, line: 149, baseType: !702)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2488, file: !2397, line: 124, baseType: !2404, size: 64, offset: 128)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2488, file: !2397, line: 125, baseType: !2406, size: 32, offset: 192)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2488, file: !2397, line: 132, baseType: !2408, size: 32, offset: 224)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2488, file: !2397, line: 133, baseType: !2410, size: 32, offset: 256)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2488, file: !2397, line: 135, baseType: !641, size: 32, offset: 288)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2488, file: !2397, line: 136, baseType: !2400, size: 64, offset: 320)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2488, file: !2397, line: 137, baseType: !2149, size: 64, offset: 384)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2488, file: !2397, line: 143, baseType: !2415, size: 64, offset: 448)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2488, file: !2397, line: 144, baseType: !2502, size: 64, offset: 512)
!2502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2150, line: 180, baseType: !704)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2488, file: !2397, line: 152, baseType: !2419, size: 128, offset: 576)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2488, file: !2397, line: 153, baseType: !2419, size: 128, offset: 704)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2488, file: !2397, line: 154, baseType: !2419, size: 128, offset: 832)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2488, file: !2397, line: 164, baseType: !2429, size: 192, offset: 960)
!2507 = !{!2508, !2509}
!2508 = !DILocalVariable(name: "__path", arg: 1, scope: !2484, file: !2392, line: 502, type: !646)
!2509 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2484, file: !2392, line: 502, type: !2487)
!2510 = !DILocation(line: 0, scope: !2484)
!2511 = !DILocation(line: 504, column: 10, scope: !2484)
!2512 = !DILocation(line: 504, column: 3, scope: !2484)
!2513 = distinct !DISubprogram(name: "lstat64", scope: !2392, file: !2392, line: 509, type: !2485, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2514)
!2514 = !{!2515, !2516}
!2515 = !DILocalVariable(name: "__path", arg: 1, scope: !2513, file: !2392, line: 509, type: !646)
!2516 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2513, file: !2392, line: 509, type: !2487)
!2517 = !DILocation(line: 0, scope: !2513)
!2518 = !DILocation(line: 511, column: 10, scope: !2513)
!2519 = !DILocation(line: 511, column: 3, scope: !2513)
!2520 = distinct !DISubprogram(name: "fstat64", scope: !2392, file: !2392, line: 516, type: !2521, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2523)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!641, !641, !2487}
!2523 = !{!2524, !2525}
!2524 = !DILocalVariable(name: "__fd", arg: 1, scope: !2520, file: !2392, line: 516, type: !641)
!2525 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2520, file: !2392, line: 516, type: !2487)
!2526 = !DILocation(line: 0, scope: !2520)
!2527 = !DILocation(line: 518, column: 10, scope: !2520)
!2528 = !DILocation(line: 518, column: 3, scope: !2520)
!2529 = distinct !DISubprogram(name: "fstatat64", scope: !2392, file: !2392, line: 523, type: !2530, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2532)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!641, !641, !646, !2487, !641}
!2532 = !{!2533, !2534, !2535, !2536}
!2533 = !DILocalVariable(name: "__fd", arg: 1, scope: !2529, file: !2392, line: 523, type: !641)
!2534 = !DILocalVariable(name: "__filename", arg: 2, scope: !2529, file: !2392, line: 523, type: !646)
!2535 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2529, file: !2392, line: 523, type: !2487)
!2536 = !DILocalVariable(name: "__flag", arg: 4, scope: !2529, file: !2392, line: 523, type: !641)
!2537 = !DILocation(line: 0, scope: !2529)
!2538 = !DILocation(line: 526, column: 10, scope: !2529)
!2539 = !DILocation(line: 526, column: 3, scope: !2529)
!2540 = distinct !DISubprogram(name: "gate_tail_calls", scope: !3, file: !3, line: 1035, type: !2069, scopeLine: 1036, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2116)
!2541 = !DILocation(line: 1037, column: 10, scope: !2540)
!2542 = !DILocation(line: 1037, column: 38, scope: !2540)
!2543 = !DILocation(line: 1037, column: 43, scope: !2540)
!2544 = !DILocation(line: 1037, column: 46, scope: !2540)
!2545 = !DILocation(line: 1037, column: 3, scope: !2540)
!2546 = distinct !DISubprogram(name: "execute_tail_recursion", scope: !3, file: !3, line: 1029, type: !2073, scopeLine: 1030, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2116)
!2547 = !DILocation(line: 1031, column: 10, scope: !2546)
!2548 = !DILocation(line: 1031, column: 3, scope: !2546)
!2549 = distinct !DISubprogram(name: "execute_tail_calls", scope: !3, file: !3, line: 1041, type: !2073, scopeLine: 1042, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2116)
!2550 = !DILocation(line: 1043, column: 10, scope: !2549)
!2551 = !DILocation(line: 1043, column: 3, scope: !2549)
!2552 = distinct !DISubprogram(name: "tree_optimize_tail_calls_1", scope: !3, file: !3, line: 928, type: !2553, scopeLine: 929, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2555)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!7, !640}
!2555 = !{!2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2573, !2583, !2584}
!2556 = !DILocalVariable(name: "opt_tailcalls", arg: 1, scope: !2552, file: !3, line: 928, type: !640)
!2557 = !DILocalVariable(name: "e", scope: !2552, file: !3, line: 930, type: !952)
!2558 = !DILocalVariable(name: "phis_constructed", scope: !2552, file: !3, line: 931, type: !640)
!2559 = !DILocalVariable(name: "tailcalls", scope: !2552, file: !3, line: 932, type: !2041)
!2560 = !DILocalVariable(name: "act", scope: !2552, file: !3, line: 932, type: !2041)
!2561 = !DILocalVariable(name: "next", scope: !2552, file: !3, line: 932, type: !2041)
!2562 = !DILocalVariable(name: "changed", scope: !2552, file: !3, line: 933, type: !640)
!2563 = !DILocalVariable(name: "first", scope: !2552, file: !3, line: 934, type: !1530)
!2564 = !DILocalVariable(name: "param", scope: !2552, file: !3, line: 935, type: !648)
!2565 = !DILocalVariable(name: "stmt", scope: !2552, file: !3, line: 936, type: !972)
!2566 = !DILocalVariable(name: "ei", scope: !2552, file: !3, line: 937, type: !2567)
!2567 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !325, line: 682, baseType: !2568)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !325, line: 679, size: 128, elements: !2569)
!2569 = !{!2570, !2571}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2568, file: !325, line: 680, baseType: !7, size: 32)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !2568, file: !325, line: 681, baseType: !2572, size: 64, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!2573 = !DILocalVariable(name: "name", scope: !2574, file: !3, line: 976, type: !648)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 975, column: 8)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 974, column: 10)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 971, column: 4)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !3, line: 971, column: 4)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 963, column: 2)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 962, column: 11)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 958, column: 5)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !3, line: 957, column: 3)
!2582 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 957, column: 3)
!2583 = !DILocalVariable(name: "new_name", scope: !2574, file: !3, line: 977, type: !648)
!2584 = !DILocalVariable(name: "phi", scope: !2574, file: !3, line: 978, type: !972)
!2585 = !DILocation(line: 0, scope: !2552)
!2586 = !DILocation(line: 930, column: 3, scope: !2552)
!2587 = !DILocation(line: 932, column: 3, scope: !2552)
!2588 = !DILocation(line: 932, column: 20, scope: !2552)
!2589 = !DILocation(line: 934, column: 36, scope: !2552)
!2590 = !DILocation(line: 934, column: 23, scope: !2552)
!2591 = !DILocation(line: 937, column: 3, scope: !2552)
!2592 = !DILocation(line: 939, column: 8, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 939, column: 7)
!2594 = !DILocation(line: 939, column: 7, scope: !2552)
!2595 = !DILocation(line: 941, column: 7, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 941, column: 7)
!2597 = !DILocation(line: 941, column: 7, scope: !2552)
!2598 = !DILocation(line: 942, column: 21, scope: !2596)
!2599 = !DILocation(line: 942, column: 5, scope: !2596)
!2600 = !DILocation(line: 944, column: 3, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 944, column: 3)
!2602 = !DILocation(line: 0, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 944, column: 3)
!2604 = !DILocation(line: 944, column: 3, scope: !2603)
!2605 = !DILocation(line: 948, column: 25, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 945, column: 5)
!2607 = !DILocation(line: 948, column: 28, scope: !2606)
!2608 = !DILocation(line: 948, column: 14, scope: !2606)
!2609 = !DILocation(line: 950, column: 11, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 950, column: 11)
!2611 = !DILocation(line: 951, column: 4, scope: !2610)
!2612 = !DILocation(line: 951, column: 7, scope: !2610)
!2613 = !DILocation(line: 951, column: 26, scope: !2610)
!2614 = !DILocation(line: 950, column: 11, scope: !2606)
!2615 = !DILocation(line: 952, column: 19, scope: !2610)
!2616 = !DILocation(line: 952, column: 22, scope: !2610)
!2617 = !DILocation(line: 952, column: 2, scope: !2610)
!2618 = distinct !{!2618, !2600, !2619}
!2619 = !DILocation(line: 953, column: 5, scope: !2601)
!2620 = !DILocation(line: 956, column: 17, scope: !2552)
!2621 = !DILocation(line: 956, column: 9, scope: !2552)
!2622 = !DILocation(line: 957, column: 8, scope: !2582)
!2623 = !DILocation(line: 934, column: 15, scope: !2552)
!2624 = !DILocation(line: 931, column: 8, scope: !2552)
!2625 = !DILocation(line: 0, scope: !2582)
!2626 = !DILocation(line: 957, column: 3, scope: !2582)
!2627 = !DILocation(line: 0, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 999, column: 5)
!2629 = distinct !DILexicalBlock(scope: !2630, file: !3, line: 998, column: 3)
!2630 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 998, column: 3)
!2631 = !DILocation(line: 0, scope: !2629)
!2632 = !DILocation(line: 998, column: 10, scope: !2629)
!2633 = !DILocation(line: 998, column: 3, scope: !2630)
!2634 = !DILocation(line: 959, column: 17, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 959, column: 11)
!2636 = !DILocation(line: 959, column: 12, scope: !2635)
!2637 = !DILocation(line: 959, column: 11, scope: !2580)
!2638 = !DILocation(line: 962, column: 12, scope: !2579)
!2639 = !DILocation(line: 962, column: 11, scope: !2580)
!2640 = !DILocation(line: 966, column: 9, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2578, file: !3, line: 966, column: 8)
!2642 = !DILocation(line: 967, column: 8, scope: !2641)
!2643 = !DILocation(line: 967, column: 32, scope: !2641)
!2644 = !DILocation(line: 967, column: 12, scope: !2641)
!2645 = !DILocation(line: 966, column: 8, scope: !2578)
!2646 = !DILocation(line: 968, column: 44, scope: !2641)
!2647 = !DILocation(line: 968, column: 26, scope: !2641)
!2648 = !DILocation(line: 968, column: 14, scope: !2641)
!2649 = !DILocation(line: 968, column: 6, scope: !2641)
!2650 = !DILocation(line: 971, column: 17, scope: !2577)
!2651 = !DILocation(line: 971, column: 9, scope: !2577)
!2652 = !DILocation(line: 0, scope: !2577)
!2653 = !DILocation(line: 971, column: 4, scope: !2577)
!2654 = !DILocation(line: 974, column: 10, scope: !2575)
!2655 = !DILocation(line: 974, column: 10, scope: !2576)
!2656 = !DILocation(line: 976, column: 35, scope: !2574)
!2657 = !DILocation(line: 976, column: 15, scope: !2574)
!2658 = !DILocation(line: 0, scope: !2574)
!2659 = !DILocation(line: 977, column: 41, scope: !2574)
!2660 = !DILocation(line: 977, column: 19, scope: !2574)
!2661 = !DILocation(line: 980, column: 3, scope: !2574)
!2662 = !DILocation(line: 981, column: 9, scope: !2574)
!2663 = !DILocation(line: 982, column: 28, scope: !2574)
!2664 = !DILocation(line: 983, column: 31, scope: !2574)
!2665 = !DILocation(line: 984, column: 9, scope: !2574)
!2666 = !DILocation(line: 983, column: 3, scope: !2574)
!2667 = !DILocation(line: 985, column: 8, scope: !2574)
!2668 = !DILocation(line: 973, column: 17, scope: !2576)
!2669 = !DILocation(line: 971, column: 4, scope: !2576)
!2670 = distinct !{!2670, !2653, !2671}
!2671 = !DILocation(line: 985, column: 8, scope: !2577)
!2672 = !DILocation(line: 989, column: 16, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 989, column: 11)
!2674 = !DILocation(line: 989, column: 11, scope: !2673)
!2675 = !DILocation(line: 989, column: 24, scope: !2673)
!2676 = !DILocation(line: 989, column: 20, scope: !2673)
!2677 = !DILocation(line: 991, column: 11, scope: !2673)
!2678 = !DILocation(line: 990, column: 10, scope: !2673)
!2679 = !DILocation(line: 990, column: 8, scope: !2673)
!2680 = !DILocation(line: 990, column: 2, scope: !2673)
!2681 = !DILocation(line: 993, column: 16, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 993, column: 11)
!2683 = !DILocation(line: 993, column: 11, scope: !2682)
!2684 = !DILocation(line: 993, column: 25, scope: !2682)
!2685 = !DILocation(line: 993, column: 21, scope: !2682)
!2686 = !DILocation(line: 995, column: 11, scope: !2682)
!2687 = !DILocation(line: 994, column: 10, scope: !2682)
!2688 = !DILocation(line: 994, column: 8, scope: !2682)
!2689 = !DILocation(line: 994, column: 2, scope: !2682)
!2690 = !DILocation(line: 957, column: 41, scope: !2581)
!2691 = !DILocation(line: 957, column: 3, scope: !2581)
!2692 = distinct !{!2692, !2626, !2693}
!2693 = !DILocation(line: 996, column: 5, scope: !2582)
!2694 = !DILocation(line: 1000, column: 25, scope: !2628)
!2695 = !DILocation(line: 1001, column: 18, scope: !2628)
!2696 = !DILocation(line: 1001, column: 15, scope: !2628)
!2697 = !DILocation(line: 1002, column: 13, scope: !2628)
!2698 = !DILocation(line: 1002, column: 7, scope: !2628)
!2699 = !DILocation(line: 998, column: 31, scope: !2629)
!2700 = !DILocation(line: 998, column: 3, scope: !2629)
!2701 = distinct !{!2701, !2633, !2702}
!2702 = !DILocation(line: 1003, column: 5, scope: !2630)
!2703 = !DILocation(line: 1005, column: 7, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 1005, column: 7)
!2705 = !DILocation(line: 1005, column: 16, scope: !2704)
!2706 = !DILocation(line: 1005, column: 13, scope: !2704)
!2707 = !DILocation(line: 1008, column: 7, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !3, line: 1008, column: 7)
!2709 = distinct !DILexicalBlock(scope: !2704, file: !3, line: 1006, column: 5)
!2710 = !DILocation(line: 1008, column: 7, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 1008, column: 7)
!2712 = !DILocation(line: 1010, column: 22, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2711, file: !3, line: 1009, column: 2)
!2714 = !DILocation(line: 1010, column: 25, scope: !2713)
!2715 = !DILocation(line: 1010, column: 11, scope: !2713)
!2716 = !DILocation(line: 1012, column: 8, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2713, file: !3, line: 1012, column: 8)
!2718 = !DILocation(line: 1013, column: 8, scope: !2717)
!2719 = !DILocation(line: 1013, column: 11, scope: !2717)
!2720 = !DILocation(line: 1013, column: 30, scope: !2717)
!2721 = !DILocation(line: 1012, column: 8, scope: !2713)
!2722 = !DILocation(line: 1014, column: 27, scope: !2717)
!2723 = !DILocation(line: 1014, column: 30, scope: !2717)
!2724 = !DILocation(line: 1014, column: 35, scope: !2717)
!2725 = !DILocation(line: 1014, column: 42, scope: !2717)
!2726 = !DILocation(line: 1014, column: 6, scope: !2717)
!2727 = distinct !{!2727, !2707, !2728}
!2728 = !DILocation(line: 1015, column: 2, scope: !2708)
!2729 = !DILocation(line: 1018, column: 7, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 1018, column: 7)
!2731 = !DILocation(line: 1018, column: 7, scope: !2552)
!2732 = !DILocation(line: 1019, column: 5, scope: !2730)
!2733 = !DILocation(line: 1021, column: 7, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 1021, column: 7)
!2735 = !DILocation(line: 1021, column: 7, scope: !2552)
!2736 = !DILocation(line: 1022, column: 5, scope: !2734)
!2737 = !DILocation(line: 1026, column: 1, scope: !2552)
!2738 = distinct !DISubprogram(name: "single_succ", scope: !325, file: !325, line: 663, type: !2739, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2744)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!1530, !2741}
!2741 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !649, line: 112, baseType: !2742)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !937)
!2744 = !{!2745}
!2745 = !DILocalVariable(name: "bb", arg: 1, scope: !2738, file: !325, line: 663, type: !2741)
!2746 = !DILocation(line: 0, scope: !2738)
!2747 = !DILocation(line: 665, column: 10, scope: !2738)
!2748 = !DILocation(line: 665, column: 33, scope: !2738)
!2749 = !DILocation(line: 665, column: 3, scope: !2738)
!2750 = distinct !DISubprogram(name: "suitable_for_tail_opt_p", scope: !3, file: !3, line: 131, type: !2069, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2751)
!2751 = !{!2752, !2763}
!2752 = !DILocalVariable(name: "rvi", scope: !2750, file: !3, line: 133, type: !2753)
!2753 = !DIDerivedType(tag: DW_TAG_typedef, name: "referenced_var_iterator", file: !1312, line: 336, baseType: !2754)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1312, line: 333, size: 192, elements: !2755)
!2755 = !{!2756}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "hti", scope: !2754, file: !1312, line: 335, baseType: !2757, size: 192)
!2757 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_iterator", file: !1312, line: 98, baseType: !2758)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1312, line: 93, size: 192, elements: !2759)
!2759 = !{!2760, !2761, !2762}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "htab", scope: !2758, file: !1312, line: 95, baseType: !1445, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !2758, file: !1312, line: 96, baseType: !1469, size: 64, offset: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !2758, file: !1312, line: 97, baseType: !1469, size: 64, offset: 128)
!2763 = !DILocalVariable(name: "var", scope: !2750, file: !3, line: 134, type: !648)
!2764 = !DILocation(line: 133, column: 3, scope: !2750)
!2765 = !DILocation(line: 136, column: 7, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2750, file: !3, line: 136, column: 7)
!2767 = !DILocation(line: 136, column: 13, scope: !2766)
!2768 = !DILocation(line: 136, column: 7, scope: !2750)
!2769 = !DILocation(line: 0, scope: !2750)
!2770 = !DILocation(line: 140, column: 3, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2750, file: !3, line: 140, column: 3)
!2772 = !DILocation(line: 0, scope: !2771)
!2773 = !DILocation(line: 140, column: 3, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 140, column: 3)
!2775 = !DILocation(line: 142, column: 12, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 142, column: 11)
!2777 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 141, column: 5)
!2778 = !DILocation(line: 143, column: 4, scope: !2776)
!2779 = !DILocation(line: 143, column: 7, scope: !2776)
!2780 = !DILocation(line: 142, column: 11, scope: !2777)
!2781 = distinct !{!2781, !2770, !2782}
!2782 = !DILocation(line: 145, column: 5, scope: !2771)
!2783 = !DILocation(line: 148, column: 1, scope: !2750)
!2784 = distinct !DISubprogram(name: "suitable_for_tail_call_opt_p", scope: !3, file: !3, line: 155, type: !2069, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2785)
!2785 = !{!2786}
!2786 = !DILocalVariable(name: "param", scope: !2784, file: !3, line: 157, type: !648)
!2787 = !DILocation(line: 161, column: 7, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 161, column: 7)
!2789 = !DILocation(line: 161, column: 13, scope: !2788)
!2790 = !DILocation(line: 161, column: 7, scope: !2784)
!2791 = !DILocation(line: 173, column: 13, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 173, column: 7)
!2793 = !DILocation(line: 173, column: 7, scope: !2792)
!2794 = !DILocation(line: 173, column: 7, scope: !2784)
!2795 = !DILocation(line: 178, column: 16, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 178, column: 3)
!2797 = !DILocation(line: 178, column: 8, scope: !2796)
!2798 = !DILocation(line: 0, scope: !2796)
!2799 = !DILocation(line: 0, scope: !2784)
!2800 = !DILocation(line: 178, column: 3, scope: !2796)
!2801 = !DILocation(line: 181, column: 9, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 181, column: 9)
!2803 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 178, column: 3)
!2804 = !DILocation(line: 181, column: 9, scope: !2803)
!2805 = !DILocation(line: 180, column: 16, scope: !2803)
!2806 = !DILocation(line: 178, column: 3, scope: !2803)
!2807 = distinct !{!2807, !2800, !2808}
!2808 = !DILocation(line: 182, column: 14, scope: !2796)
!2809 = !DILocation(line: 185, column: 1, scope: !2784)
!2810 = distinct !DISubprogram(name: "ei_start_1", scope: !325, file: !325, line: 696, type: !2811, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2813)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!2567, !2572}
!2813 = !{!2814, !2815}
!2814 = !DILocalVariable(name: "ev", arg: 1, scope: !2810, file: !325, line: 696, type: !2572)
!2815 = !DILocalVariable(name: "i", scope: !2810, file: !325, line: 698, type: !2567)
!2816 = !DILocation(line: 0, scope: !2810)
!2817 = !DILocation(line: 700, column: 5, scope: !2810)
!2818 = !DILocation(line: 700, column: 11, scope: !2810)
!2819 = !DILocation(line: 701, column: 5, scope: !2810)
!2820 = !DILocation(line: 701, column: 15, scope: !2810)
!2821 = !DILocation(line: 703, column: 3, scope: !2810)
!2822 = distinct !DISubprogram(name: "ei_cond", scope: !325, file: !325, line: 771, type: !2823, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2826)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!640, !2567, !2825}
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!2826 = !{!2827, !2828}
!2827 = !DILocalVariable(name: "ei", arg: 1, scope: !2822, file: !325, line: 771, type: !2567)
!2828 = !DILocalVariable(name: "p", arg: 2, scope: !2822, file: !325, line: 771, type: !2825)
!2829 = !DILocation(line: 0, scope: !2822)
!2830 = !DILocation(line: 773, column: 8, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2822, file: !325, line: 773, column: 7)
!2832 = !DILocation(line: 773, column: 7, scope: !2822)
!2833 = !DILocation(line: 775, column: 12, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2831, file: !325, line: 774, column: 5)
!2835 = !DILocation(line: 776, column: 7, scope: !2834)
!2836 = !DILocation(line: 781, column: 7, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2831, file: !325, line: 779, column: 5)
!2838 = !DILocation(line: 0, scope: !2831)
!2839 = !DILocation(line: 783, column: 1, scope: !2822)
!2840 = distinct !DISubprogram(name: "gimple_code", scope: !568, file: !568, line: 1052, type: !2841, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2844)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!567, !2843}
!2843 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !649, line: 60, baseType: !2055)
!2844 = !{!2845}
!2845 = !DILocalVariable(name: "g", arg: 1, scope: !2840, file: !568, line: 1052, type: !2843)
!2846 = !DILocation(line: 0, scope: !2840)
!2847 = !DILocation(line: 1054, column: 20, scope: !2840)
!2848 = !DILocation(line: 1054, column: 3, scope: !2840)
!2849 = distinct !DISubprogram(name: "find_tail_calls", scope: !3, file: !3, line: 367, type: !2850, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2853)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{null, !1530, !2852}
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2853 = !{!2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2874, !2877, !2879}
!2854 = !DILocalVariable(name: "bb", arg: 1, scope: !2849, file: !3, line: 367, type: !1530)
!2855 = !DILocalVariable(name: "ret", arg: 2, scope: !2849, file: !3, line: 367, type: !2852)
!2856 = !DILocalVariable(name: "ass_var", scope: !2849, file: !3, line: 369, type: !648)
!2857 = !DILocalVariable(name: "ret_var", scope: !2849, file: !3, line: 369, type: !648)
!2858 = !DILocalVariable(name: "func", scope: !2849, file: !3, line: 369, type: !648)
!2859 = !DILocalVariable(name: "param", scope: !2849, file: !3, line: 369, type: !648)
!2860 = !DILocalVariable(name: "stmt", scope: !2849, file: !3, line: 370, type: !972)
!2861 = !DILocalVariable(name: "call", scope: !2849, file: !3, line: 370, type: !972)
!2862 = !DILocalVariable(name: "gsi", scope: !2849, file: !3, line: 371, type: !2045)
!2863 = !DILocalVariable(name: "agsi", scope: !2849, file: !3, line: 371, type: !2045)
!2864 = !DILocalVariable(name: "tail_recursion", scope: !2849, file: !3, line: 372, type: !640)
!2865 = !DILocalVariable(name: "nw", scope: !2849, file: !3, line: 373, type: !2041)
!2866 = !DILocalVariable(name: "e", scope: !2849, file: !3, line: 374, type: !952)
!2867 = !DILocalVariable(name: "m", scope: !2849, file: !3, line: 375, type: !648)
!2868 = !DILocalVariable(name: "a", scope: !2849, file: !3, line: 375, type: !648)
!2869 = !DILocalVariable(name: "abb", scope: !2849, file: !3, line: 376, type: !1530)
!2870 = !DILocalVariable(name: "idx", scope: !2849, file: !3, line: 377, type: !1118)
!2871 = !DILocalVariable(name: "ei", scope: !2872, file: !3, line: 406, type: !2567)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !3, line: 405, column: 5)
!2873 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 404, column: 7)
!2874 = !DILocalVariable(name: "arg", scope: !2875, file: !3, line: 433, type: !648)
!2875 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 432, column: 5)
!2876 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 431, column: 7)
!2877 = !DILocalVariable(name: "tmp_a", scope: !2878, file: !3, line: 476, type: !648)
!2878 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 475, column: 5)
!2879 = !DILocalVariable(name: "tmp_m", scope: !2878, file: !3, line: 477, type: !648)
!2880 = !DILocation(line: 0, scope: !2849)
!2881 = !DILocation(line: 369, column: 3, scope: !2849)
!2882 = !DILocation(line: 369, column: 8, scope: !2849)
!2883 = !DILocation(line: 371, column: 3, scope: !2849)
!2884 = !DILocation(line: 374, column: 3, scope: !2849)
!2885 = !DILocation(line: 379, column: 8, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 379, column: 7)
!2887 = !DILocation(line: 379, column: 7, scope: !2849)
!2888 = !DILocation(line: 382, column: 14, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 382, column: 3)
!2890 = !DILocation(line: 382, column: 8, scope: !2889)
!2891 = !DILocation(line: 382, column: 33, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2889, file: !3, line: 382, column: 3)
!2893 = !DILocation(line: 382, column: 32, scope: !2892)
!2894 = !DILocation(line: 382, column: 3, scope: !2889)
!2895 = !DILocation(line: 384, column: 14, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2892, file: !3, line: 383, column: 5)
!2897 = !DILocation(line: 387, column: 11, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2896, file: !3, line: 387, column: 11)
!2899 = !DILocation(line: 387, column: 30, scope: !2898)
!2900 = !DILocation(line: 387, column: 46, scope: !2898)
!2901 = !DILocation(line: 387, column: 49, scope: !2898)
!2902 = !DILocation(line: 387, column: 11, scope: !2896)
!2903 = !DILocation(line: 391, column: 11, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2896, file: !3, line: 391, column: 11)
!2905 = !DILocation(line: 391, column: 11, scope: !2896)
!2906 = !DILocation(line: 394, column: 14, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2904, file: !3, line: 392, column: 2)
!2908 = !DILocation(line: 394, column: 12, scope: !2907)
!2909 = !DILocation(line: 395, column: 4, scope: !2907)
!2910 = !DILocation(line: 399, column: 11, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2896, file: !3, line: 399, column: 11)
!2912 = !DILocation(line: 400, column: 4, scope: !2911)
!2913 = !DILocation(line: 400, column: 7, scope: !2911)
!2914 = !DILocation(line: 399, column: 11, scope: !2896)
!2915 = !DILocation(line: 382, column: 50, scope: !2892)
!2916 = !DILocation(line: 382, column: 3, scope: !2892)
!2917 = distinct !{!2917, !2894, !2918}
!2918 = !DILocation(line: 402, column: 5, scope: !2889)
!2919 = !DILocation(line: 404, column: 7, scope: !2873)
!2920 = !DILocation(line: 404, column: 7, scope: !2849)
!2921 = !DILocation(line: 406, column: 7, scope: !2872)
!2922 = !DILocation(line: 408, column: 7, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2872, file: !3, line: 408, column: 7)
!2924 = !DILocation(line: 0, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2923, file: !3, line: 408, column: 7)
!2926 = !DILocation(line: 408, column: 7, scope: !2925)
!2927 = !DILocation(line: 409, column: 19, scope: !2925)
!2928 = !DILocation(line: 409, column: 22, scope: !2925)
!2929 = !DILocation(line: 409, column: 2, scope: !2925)
!2930 = !DILocation(line: 0, scope: !2872)
!2931 = distinct !{!2931, !2922, !2932}
!2932 = !DILocation(line: 409, column: 30, scope: !2923)
!2933 = !DILocation(line: 412, column: 5, scope: !2873)
!2934 = !DILocation(line: 425, column: 7, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 425, column: 7)
!2936 = !DILocation(line: 425, column: 15, scope: !2935)
!2937 = !DILocation(line: 425, column: 19, scope: !2935)
!2938 = !DILocation(line: 425, column: 7, scope: !2849)
!2939 = !DILocation(line: 430, column: 10, scope: !2849)
!2940 = !DILocation(line: 431, column: 15, scope: !2876)
!2941 = !DILocation(line: 431, column: 12, scope: !2876)
!2942 = !DILocation(line: 431, column: 7, scope: !2849)
!2943 = !DILocation(line: 434, column: 20, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2875, file: !3, line: 434, column: 7)
!2945 = !DILocation(line: 434, column: 12, scope: !2944)
!2946 = !DILocation(line: 0, scope: !2944)
!2947 = !DILocation(line: 435, column: 5, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2944, file: !3, line: 434, column: 7)
!2949 = !DILocation(line: 435, column: 11, scope: !2948)
!2950 = !DILocation(line: 435, column: 20, scope: !2948)
!2951 = !DILocation(line: 435, column: 18, scope: !2948)
!2952 = !DILocation(line: 434, column: 7, scope: !2944)
!2953 = !DILocation(line: 438, column: 33, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2948, file: !3, line: 437, column: 2)
!2955 = !DILocation(line: 438, column: 10, scope: !2954)
!2956 = !DILocation(line: 0, scope: !2875)
!2957 = !DILocation(line: 439, column: 14, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2954, file: !3, line: 439, column: 8)
!2959 = !DILocation(line: 439, column: 8, scope: !2954)
!2960 = !DILocation(line: 445, column: 33, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 445, column: 12)
!2962 = distinct !DILexicalBlock(scope: !2958, file: !3, line: 440, column: 6)
!2963 = !DILocation(line: 445, column: 13, scope: !2961)
!2964 = !DILocation(line: 446, column: 5, scope: !2961)
!2965 = !DILocation(line: 446, column: 36, scope: !2961)
!2966 = !DILocation(line: 447, column: 15, scope: !2961)
!2967 = !DILocation(line: 446, column: 9, scope: !2961)
!2968 = !DILocation(line: 445, column: 12, scope: !2962)
!2969 = !DILocation(line: 457, column: 13, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 457, column: 12)
!2971 = !DILocation(line: 457, column: 12, scope: !2962)
!2972 = !DILocation(line: 436, column: 13, scope: !2948)
!2973 = !DILocation(line: 436, column: 37, scope: !2948)
!2974 = !DILocation(line: 434, column: 7, scope: !2948)
!2975 = distinct !{!2975, !2952, !2976}
!2976 = !DILocation(line: 460, column: 2, scope: !2944)
!2977 = !DILocation(line: 461, column: 18, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2875, file: !3, line: 461, column: 11)
!2979 = !DILocation(line: 461, column: 15, scope: !2978)
!2980 = !DILocation(line: 461, column: 46, scope: !2978)
!2981 = !DILocation(line: 429, column: 18, scope: !2849)
!2982 = !DILocation(line: 473, column: 10, scope: !2849)
!2983 = !DILocation(line: 0, scope: !2878)
!2984 = !DILocation(line: 0, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2878, file: !3, line: 481, column: 2)
!2986 = !DILocation(line: 0, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !3, line: 519, column: 8)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 513, column: 2)
!2989 = distinct !DILexicalBlock(scope: !2878, file: !3, line: 512, column: 11)
!2990 = !DILocation(line: 474, column: 3, scope: !2849)
!2991 = !DILocation(line: 469, column: 5, scope: !2849)
!2992 = !DILocation(line: 470, column: 5, scope: !2849)
!2993 = !DILocation(line: 472, column: 7, scope: !2849)
!2994 = !DILocation(line: 476, column: 7, scope: !2878)
!2995 = !DILocation(line: 476, column: 12, scope: !2878)
!2996 = !DILocation(line: 477, column: 7, scope: !2878)
!2997 = !DILocation(line: 477, column: 12, scope: !2878)
!2998 = !DILocation(line: 478, column: 7, scope: !2878)
!2999 = !DILocation(line: 480, column: 7, scope: !2878)
!3000 = !DILocation(line: 480, column: 14, scope: !2878)
!3001 = !DILocation(line: 482, column: 38, scope: !2985)
!3002 = !DILocation(line: 482, column: 47, scope: !2985)
!3003 = !DILocation(line: 482, column: 14, scope: !2985)
!3004 = !DILocation(line: 482, column: 12, scope: !2985)
!3005 = !DILocation(line: 483, column: 10, scope: !2985)
!3006 = !DILocation(line: 484, column: 11, scope: !2985)
!3007 = distinct !{!3007, !2999, !3008}
!3008 = !DILocation(line: 485, column: 2, scope: !2878)
!3009 = !DILocation(line: 487, column: 14, scope: !2878)
!3010 = !DILocation(line: 489, column: 11, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !2878, file: !3, line: 489, column: 11)
!3012 = !DILocation(line: 489, column: 30, scope: !3011)
!3013 = !DILocation(line: 489, column: 11, scope: !2878)
!3014 = distinct !{!3014, !2990, !3015}
!3015 = !DILocation(line: 522, column: 5, scope: !2849)
!3016 = !DILocation(line: 492, column: 11, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !2878, file: !3, line: 492, column: 11)
!3018 = !DILocation(line: 492, column: 30, scope: !3017)
!3019 = !DILocation(line: 492, column: 11, scope: !2878)
!3020 = !DILocation(line: 495, column: 11, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !2878, file: !3, line: 495, column: 11)
!3022 = !DILocation(line: 495, column: 11, scope: !2878)
!3023 = !DILocation(line: 498, column: 11, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !2878, file: !3, line: 498, column: 11)
!3025 = !DILocation(line: 498, column: 30, scope: !3024)
!3026 = !DILocation(line: 498, column: 11, scope: !2878)
!3027 = !DILocation(line: 502, column: 13, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !2878, file: !3, line: 502, column: 11)
!3029 = !DILocation(line: 502, column: 11, scope: !2878)
!3030 = !DILocation(line: 505, column: 11, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !2878, file: !3, line: 505, column: 11)
!3032 = !DILocation(line: 505, column: 11, scope: !2878)
!3033 = !DILocation(line: 507, column: 8, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 507, column: 8)
!3035 = distinct !DILexicalBlock(scope: !3031, file: !3, line: 506, column: 2)
!3036 = !DILocation(line: 507, column: 8, scope: !3035)
!3037 = !DILocation(line: 508, column: 10, scope: !3034)
!3038 = !DILocation(line: 508, column: 6, scope: !3034)
!3039 = !DILocation(line: 512, column: 11, scope: !2989)
!3040 = !DILocation(line: 512, column: 11, scope: !2878)
!3041 = !DILocation(line: 514, column: 8, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !2988, file: !3, line: 514, column: 8)
!3043 = !DILocation(line: 514, column: 8, scope: !2988)
!3044 = !DILocation(line: 515, column: 10, scope: !3042)
!3045 = !DILocation(line: 515, column: 6, scope: !3042)
!3046 = !DILocation(line: 0, scope: !3042)
!3047 = !DILocation(line: 519, column: 8, scope: !2987)
!3048 = !DILocation(line: 519, column: 8, scope: !2988)
!3049 = !DILocation(line: 520, column: 10, scope: !2987)
!3050 = !DILocation(line: 520, column: 6, scope: !2987)
!3051 = !DILocation(line: 525, column: 13, scope: !2849)
!3052 = !DILocation(line: 529, column: 7, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 529, column: 7)
!3054 = !DILocation(line: 530, column: 22, scope: !3053)
!3055 = !DILocation(line: 530, column: 19, scope: !3053)
!3056 = !DILocation(line: 530, column: 7, scope: !3053)
!3057 = !DILocation(line: 535, column: 8, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 535, column: 7)
!3059 = !DILocation(line: 535, column: 23, scope: !3058)
!3060 = !DILocation(line: 535, column: 27, scope: !3058)
!3061 = !DILocation(line: 535, column: 32, scope: !3058)
!3062 = !DILocation(line: 535, column: 29, scope: !3058)
!3063 = !DILocation(line: 538, column: 8, scope: !2849)
!3064 = !DILocation(line: 540, column: 18, scope: !2849)
!3065 = !DILocation(line: 542, column: 7, scope: !2849)
!3066 = !DILocation(line: 542, column: 22, scope: !2849)
!3067 = !DILocation(line: 544, column: 7, scope: !2849)
!3068 = !DILocation(line: 544, column: 12, scope: !2849)
!3069 = !DILocation(line: 545, column: 7, scope: !2849)
!3070 = !DILocation(line: 545, column: 11, scope: !2849)
!3071 = !DILocation(line: 547, column: 14, scope: !2849)
!3072 = !DILocation(line: 547, column: 7, scope: !2849)
!3073 = !DILocation(line: 547, column: 12, scope: !2849)
!3074 = !DILocation(line: 548, column: 8, scope: !2849)
!3075 = !DILocation(line: 549, column: 1, scope: !2849)
!3076 = distinct !DISubprogram(name: "ei_next", scope: !325, file: !325, line: 736, type: !3077, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3080)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{null, !3079}
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!3080 = !{!3081}
!3081 = !DILocalVariable(name: "i", arg: 1, scope: !3076, file: !325, line: 736, type: !3079)
!3082 = !DILocation(line: 0, scope: !3076)
!3083 = !DILocation(line: 738, column: 3, scope: !3076)
!3084 = !DILocation(line: 739, column: 11, scope: !3076)
!3085 = !DILocation(line: 740, column: 1, scope: !3076)
!3086 = distinct !DISubprogram(name: "single_pred_p", scope: !325, file: !325, line: 634, type: !3087, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3089)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!640, !2741}
!3089 = !{!3090}
!3090 = !DILocalVariable(name: "bb", arg: 1, scope: !3086, file: !325, line: 634, type: !2741)
!3091 = !DILocation(line: 0, scope: !3086)
!3092 = !DILocation(line: 636, column: 10, scope: !3086)
!3093 = !DILocation(line: 636, column: 33, scope: !3086)
!3094 = !DILocation(line: 636, column: 3, scope: !3086)
!3095 = distinct !DISubprogram(name: "gimple_seq_empty_p", scope: !568, file: !568, line: 215, type: !3096, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3101)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!640, !3098}
!3098 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !649, line: 67, baseType: !3099)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !964)
!3101 = !{!3102}
!3102 = !DILocalVariable(name: "s", arg: 1, scope: !3095, file: !568, line: 215, type: !3098)
!3103 = !DILocation(line: 0, scope: !3095)
!3104 = !DILocation(line: 217, column: 12, scope: !3095)
!3105 = !DILocation(line: 217, column: 20, scope: !3095)
!3106 = !DILocation(line: 217, column: 26, scope: !3095)
!3107 = !DILocation(line: 217, column: 32, scope: !3095)
!3108 = !DILocation(line: 217, column: 3, scope: !3095)
!3109 = distinct !DISubprogram(name: "phi_nodes", scope: !3110, file: !3110, line: 508, type: !3111, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3113)
!3110 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!962, !2741}
!3113 = !{!3114}
!3114 = !DILocalVariable(name: "bb", arg: 1, scope: !3109, file: !3110, line: 508, type: !2741)
!3115 = !DILocation(line: 0, scope: !3109)
!3116 = !DILocation(line: 510, column: 3, scope: !3109)
!3117 = !DILocation(line: 511, column: 15, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3109, file: !3110, line: 511, column: 7)
!3119 = !DILocation(line: 511, column: 8, scope: !3118)
!3120 = !DILocation(line: 511, column: 7, scope: !3109)
!3121 = !DILocation(line: 513, column: 25, scope: !3109)
!3122 = !DILocation(line: 513, column: 3, scope: !3109)
!3123 = !DILocation(line: 514, column: 1, scope: !3109)
!3124 = distinct !DISubprogram(name: "single_succ_edge", scope: !325, file: !325, line: 643, type: !3125, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3127)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!952, !2741}
!3127 = !{!3128}
!3128 = !DILocalVariable(name: "bb", arg: 1, scope: !3124, file: !325, line: 643, type: !2741)
!3129 = !DILocation(line: 0, scope: !3124)
!3130 = !DILocation(line: 645, column: 3, scope: !3124)
!3131 = !DILocation(line: 646, column: 10, scope: !3124)
!3132 = !DILocation(line: 646, column: 3, scope: !3124)
!3133 = distinct !DISubprogram(name: "arg_needs_copy_p", scope: !3, file: !3, line: 732, type: !3134, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3136)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!640, !648}
!3136 = !{!3137, !3138}
!3137 = !DILocalVariable(name: "param", arg: 1, scope: !3133, file: !3, line: 732, type: !648)
!3138 = !DILocalVariable(name: "def", scope: !3133, file: !3, line: 734, type: !648)
!3139 = !DILocation(line: 0, scope: !3133)
!3140 = !DILocation(line: 736, column: 8, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3133, file: !3, line: 736, column: 7)
!3142 = !DILocation(line: 736, column: 30, scope: !3141)
!3143 = !DILocation(line: 736, column: 34, scope: !3141)
!3144 = !DILocation(line: 736, column: 7, scope: !3133)
!3145 = !DILocation(line: 740, column: 29, scope: !3133)
!3146 = !DILocation(line: 740, column: 9, scope: !3133)
!3147 = !DILocation(line: 741, column: 8, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3133, file: !3, line: 741, column: 7)
!3149 = !DILocation(line: 745, column: 1, scope: !3133)
!3150 = distinct !DISubprogram(name: "make_ssa_name", scope: !3110, file: !3110, line: 1245, type: !3151, scopeLine: 1246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3153)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!648, !648, !972}
!3153 = !{!3154, !3155}
!3154 = !DILocalVariable(name: "var", arg: 1, scope: !3150, file: !3110, line: 1245, type: !648)
!3155 = !DILocalVariable(name: "stmt", arg: 2, scope: !3150, file: !3110, line: 1245, type: !972)
!3156 = !DILocation(line: 0, scope: !3150)
!3157 = !DILocation(line: 1247, column: 28, scope: !3150)
!3158 = !DILocation(line: 1247, column: 10, scope: !3150)
!3159 = !DILocation(line: 1247, column: 3, scope: !3150)
!3160 = distinct !DISubprogram(name: "single_pred_edge", scope: !325, file: !325, line: 653, type: !3125, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3161)
!3161 = !{!3162}
!3162 = !DILocalVariable(name: "bb", arg: 1, scope: !3160, file: !325, line: 653, type: !2741)
!3163 = !DILocation(line: 0, scope: !3160)
!3164 = !DILocation(line: 655, column: 3, scope: !3160)
!3165 = !DILocation(line: 656, column: 10, scope: !3160)
!3166 = !DILocation(line: 656, column: 3, scope: !3160)
!3167 = distinct !DISubprogram(name: "create_tailcall_accumulator", scope: !3, file: !3, line: 907, type: !3168, scopeLine: 908, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3170)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!648, !646, !1530, !648}
!3170 = !{!3171, !3172, !3173, !3174, !3175, !3176}
!3171 = !DILocalVariable(name: "label", arg: 1, scope: !3167, file: !3, line: 907, type: !646)
!3172 = !DILocalVariable(name: "bb", arg: 2, scope: !3167, file: !3, line: 907, type: !1530)
!3173 = !DILocalVariable(name: "init", arg: 3, scope: !3167, file: !3, line: 907, type: !648)
!3174 = !DILocalVariable(name: "ret_type", scope: !3167, file: !3, line: 909, type: !648)
!3175 = !DILocalVariable(name: "tmp", scope: !3167, file: !3, line: 910, type: !648)
!3176 = !DILocalVariable(name: "phi", scope: !3167, file: !3, line: 911, type: !972)
!3177 = !DILocation(line: 0, scope: !3167)
!3178 = !DILocation(line: 909, column: 19, scope: !3167)
!3179 = !DILocation(line: 910, column: 14, scope: !3167)
!3180 = !DILocation(line: 913, column: 7, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 913, column: 7)
!3182 = !DILocation(line: 913, column: 28, scope: !3181)
!3183 = !DILocation(line: 914, column: 7, scope: !3181)
!3184 = !DILocation(line: 914, column: 31, scope: !3181)
!3185 = !DILocation(line: 913, column: 7, scope: !3167)
!3186 = !DILocation(line: 915, column: 5, scope: !3181)
!3187 = !DILocation(line: 915, column: 29, scope: !3181)
!3188 = !DILocation(line: 916, column: 3, scope: !3167)
!3189 = !DILocation(line: 917, column: 9, scope: !3167)
!3190 = !DILocation(line: 919, column: 21, scope: !3167)
!3191 = !DILocation(line: 919, column: 52, scope: !3167)
!3192 = !DILocation(line: 919, column: 3, scope: !3167)
!3193 = !DILocation(line: 921, column: 10, scope: !3167)
!3194 = !DILocation(line: 921, column: 3, scope: !3167)
!3195 = distinct !DISubprogram(name: "optimize_tail_call", scope: !3, file: !3, line: 876, type: !3196, scopeLine: 877, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3198)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!640, !2041, !640}
!3198 = !{!3199, !3200, !3201}
!3199 = !DILocalVariable(name: "t", arg: 1, scope: !3195, file: !3, line: 876, type: !2041)
!3200 = !DILocalVariable(name: "opt_tailcalls", arg: 2, scope: !3195, file: !3, line: 876, type: !640)
!3201 = !DILocalVariable(name: "stmt", scope: !3202, file: !3, line: 886, type: !972)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !3, line: 885, column: 5)
!3203 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 884, column: 7)
!3204 = !DILocation(line: 0, scope: !3195)
!3205 = !DILocation(line: 878, column: 10, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 878, column: 7)
!3207 = !DILocation(line: 878, column: 7, scope: !3206)
!3208 = !DILocation(line: 878, column: 7, scope: !3195)
!3209 = !DILocation(line: 880, column: 7, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3206, file: !3, line: 879, column: 5)
!3211 = !DILocation(line: 881, column: 7, scope: !3210)
!3212 = !DILocation(line: 884, column: 7, scope: !3203)
!3213 = !DILocation(line: 884, column: 7, scope: !3195)
!3214 = !DILocation(line: 886, column: 34, scope: !3202)
!3215 = !DILocation(line: 886, column: 21, scope: !3202)
!3216 = !DILocation(line: 0, scope: !3202)
!3217 = !DILocation(line: 888, column: 7, scope: !3202)
!3218 = !DILocation(line: 889, column: 11, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 889, column: 11)
!3220 = !DILocation(line: 889, column: 21, scope: !3219)
!3221 = !DILocation(line: 889, column: 25, scope: !3219)
!3222 = !DILocation(line: 889, column: 36, scope: !3219)
!3223 = !DILocation(line: 889, column: 11, scope: !3202)
!3224 = !DILocation(line: 891, column: 4, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3219, file: !3, line: 890, column: 9)
!3226 = !DILocation(line: 892, column: 23, scope: !3225)
!3227 = !DILocation(line: 892, column: 43, scope: !3225)
!3228 = !DILocation(line: 892, column: 4, scope: !3225)
!3229 = !DILocation(line: 893, column: 13, scope: !3225)
!3230 = !DILocation(line: 893, column: 40, scope: !3225)
!3231 = !DILocation(line: 893, column: 63, scope: !3225)
!3232 = !DILocation(line: 893, column: 4, scope: !3225)
!3233 = !DILocation(line: 894, column: 2, scope: !3225)
!3234 = !DILocation(line: 898, column: 1, scope: !3195)
!3235 = distinct !DISubprogram(name: "adjust_return_value", scope: !3, file: !3, line: 683, type: !3236, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3238)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{null, !1530, !648, !648}
!3238 = !{!3239, !3240, !3241, !3242, !3243, !3244}
!3239 = !DILocalVariable(name: "bb", arg: 1, scope: !3235, file: !3, line: 683, type: !1530)
!3240 = !DILocalVariable(name: "m", arg: 2, scope: !3235, file: !3, line: 683, type: !648)
!3241 = !DILocalVariable(name: "a", arg: 3, scope: !3235, file: !3, line: 683, type: !648)
!3242 = !DILocalVariable(name: "retval", scope: !3235, file: !3, line: 685, type: !648)
!3243 = !DILocalVariable(name: "ret_stmt", scope: !3235, file: !3, line: 686, type: !972)
!3244 = !DILocalVariable(name: "gsi", scope: !3235, file: !3, line: 687, type: !2045)
!3245 = !DILocation(line: 0, scope: !3235)
!3246 = !DILocation(line: 686, column: 43, scope: !3235)
!3247 = !DILocation(line: 686, column: 21, scope: !3235)
!3248 = !DILocation(line: 687, column: 3, scope: !3235)
!3249 = !DILocation(line: 687, column: 30, scope: !3235)
!3250 = !DILocation(line: 689, column: 3, scope: !3235)
!3251 = !DILocation(line: 691, column: 12, scope: !3235)
!3252 = !DILocation(line: 692, column: 8, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3235, file: !3, line: 692, column: 7)
!3254 = !DILocation(line: 692, column: 28, scope: !3253)
!3255 = !DILocation(line: 692, column: 25, scope: !3253)
!3256 = !DILocation(line: 692, column: 15, scope: !3253)
!3257 = !DILocation(line: 695, column: 7, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3235, file: !3, line: 695, column: 7)
!3259 = !DILocation(line: 695, column: 7, scope: !3235)
!3260 = !DILocation(line: 696, column: 66, scope: !3258)
!3261 = !DILocation(line: 696, column: 14, scope: !3258)
!3262 = !DILocation(line: 696, column: 5, scope: !3258)
!3263 = !DILocation(line: 698, column: 7, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3235, file: !3, line: 698, column: 7)
!3265 = !DILocation(line: 698, column: 7, scope: !3235)
!3266 = !DILocation(line: 699, column: 66, scope: !3264)
!3267 = !DILocation(line: 699, column: 14, scope: !3264)
!3268 = !DILocation(line: 699, column: 5, scope: !3264)
!3269 = !DILocation(line: 701, column: 3, scope: !3235)
!3270 = !DILocation(line: 702, column: 3, scope: !3235)
!3271 = !DILocation(line: 703, column: 1, scope: !3235)
!3272 = distinct !DISubprogram(name: "add_virtual_phis", scope: !3, file: !3, line: 853, type: !3273, scopeLine: 854, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3275)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{null}
!3275 = !{!3276, !3277}
!3276 = !DILocalVariable(name: "rvi", scope: !3272, file: !3, line: 855, type: !2753)
!3277 = !DILocalVariable(name: "var", scope: !3272, file: !3, line: 856, type: !648)
!3278 = !DILocation(line: 855, column: 3, scope: !3272)
!3279 = !DILocation(line: 0, scope: !3272)
!3280 = !DILocation(line: 865, column: 3, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3272, file: !3, line: 865, column: 3)
!3282 = !DILocation(line: 0, scope: !3281)
!3283 = !DILocation(line: 865, column: 3, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3281, file: !3, line: 865, column: 3)
!3285 = !DILocation(line: 867, column: 12, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !3, line: 867, column: 11)
!3287 = distinct !DILexicalBlock(scope: !3284, file: !3, line: 866, column: 5)
!3288 = !DILocation(line: 867, column: 32, scope: !3286)
!3289 = !DILocation(line: 867, column: 55, scope: !3286)
!3290 = !DILocation(line: 867, column: 35, scope: !3286)
!3291 = !DILocation(line: 867, column: 66, scope: !3286)
!3292 = !DILocation(line: 867, column: 11, scope: !3287)
!3293 = !DILocation(line: 868, column: 2, scope: !3286)
!3294 = distinct !{!3294, !3280, !3295}
!3295 = !DILocation(line: 869, column: 5, scope: !3281)
!3296 = !DILocation(line: 870, column: 1, scope: !3272)
!3297 = distinct !DISubprogram(name: "first_referenced_var", scope: !3110, file: !3110, line: 105, type: !3298, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3301)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!648, !3300}
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!3301 = !{!3302}
!3302 = !DILocalVariable(name: "iter", arg: 1, scope: !3297, file: !3110, line: 105, type: !3300)
!3303 = !DILocation(line: 0, scope: !3297)
!3304 = !DILocation(line: 107, column: 44, scope: !3297)
!3305 = !DILocation(line: 108, column: 33, scope: !3297)
!3306 = !DILocation(line: 108, column: 9, scope: !3297)
!3307 = !DILocation(line: 107, column: 17, scope: !3297)
!3308 = !DILocation(line: 107, column: 10, scope: !3297)
!3309 = !DILocation(line: 107, column: 3, scope: !3297)
!3310 = distinct !DISubprogram(name: "end_referenced_vars_p", scope: !3110, file: !3110, line: 115, type: !3311, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3315)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!640, !3313}
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2753)
!3315 = !{!3316}
!3316 = !DILocalVariable(name: "iter", arg: 1, scope: !3310, file: !3110, line: 115, type: !3313)
!3317 = !DILocation(line: 0, scope: !3310)
!3318 = !DILocation(line: 117, column: 29, scope: !3310)
!3319 = !DILocation(line: 117, column: 10, scope: !3310)
!3320 = !DILocation(line: 117, column: 3, scope: !3310)
!3321 = distinct !DISubprogram(name: "is_global_var", scope: !3110, file: !3110, line: 575, type: !3322, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3327)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!640, !3324}
!3324 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !649, line: 59, baseType: !3325)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !651)
!3327 = !{!3328}
!3328 = !DILocalVariable(name: "t", arg: 1, scope: !3321, file: !3110, line: 575, type: !3324)
!3329 = !DILocation(line: 0, scope: !3321)
!3330 = !DILocation(line: 577, column: 11, scope: !3321)
!3331 = !DILocation(line: 577, column: 27, scope: !3321)
!3332 = !DILocation(line: 577, column: 30, scope: !3321)
!3333 = !DILocation(line: 577, column: 3, scope: !3321)
!3334 = distinct !DISubprogram(name: "is_call_used", scope: !3110, file: !3110, line: 638, type: !3322, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3335)
!3335 = !{!3336}
!3336 = !DILocalVariable(name: "var", arg: 1, scope: !3334, file: !3110, line: 638, type: !3324)
!3337 = !DILocation(line: 0, scope: !3334)
!3338 = !DILocation(line: 640, column: 11, scope: !3334)
!3339 = !DILocation(line: 641, column: 4, scope: !3334)
!3340 = !DILocation(line: 641, column: 8, scope: !3334)
!3341 = !DILocation(line: 642, column: 8, scope: !3334)
!3342 = !DILocation(line: 642, column: 34, scope: !3334)
!3343 = !DILocation(line: 642, column: 40, scope: !3334)
!3344 = !DILocation(line: 642, column: 51, scope: !3334)
!3345 = !DILocation(line: 642, column: 11, scope: !3334)
!3346 = !DILocation(line: 640, column: 3, scope: !3334)
!3347 = distinct !DISubprogram(name: "next_referenced_var", scope: !3110, file: !3110, line: 124, type: !3298, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3348)
!3348 = !{!3349}
!3349 = !DILocalVariable(name: "iter", arg: 1, scope: !3347, file: !3110, line: 124, type: !3300)
!3350 = !DILocation(line: 0, scope: !3347)
!3351 = !DILocation(line: 126, column: 43, scope: !3347)
!3352 = !DILocation(line: 126, column: 17, scope: !3347)
!3353 = !DILocation(line: 126, column: 10, scope: !3347)
!3354 = !DILocation(line: 126, column: 3, scope: !3347)
!3355 = distinct !DISubprogram(name: "first_htab_element", scope: !3110, file: !3110, line: 58, type: !3356, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3359)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!645, !3358, !1445}
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!3359 = !{!3360, !3361, !3362}
!3360 = !DILocalVariable(name: "hti", arg: 1, scope: !3355, file: !3110, line: 58, type: !3358)
!3361 = !DILocalVariable(name: "table", arg: 2, scope: !3355, file: !3110, line: 58, type: !1445)
!3362 = !DILocalVariable(name: "x", scope: !3363, file: !3110, line: 65, type: !645)
!3363 = distinct !DILexicalBlock(scope: !3355, file: !3110, line: 64, column: 5)
!3364 = !DILocation(line: 0, scope: !3355)
!3365 = !DILocation(line: 60, column: 8, scope: !3355)
!3366 = !DILocation(line: 60, column: 13, scope: !3355)
!3367 = !DILocation(line: 61, column: 22, scope: !3355)
!3368 = !DILocation(line: 61, column: 8, scope: !3355)
!3369 = !DILocation(line: 61, column: 13, scope: !3355)
!3370 = !DILocation(line: 62, column: 21, scope: !3355)
!3371 = !DILocation(line: 62, column: 28, scope: !3355)
!3372 = !DILocation(line: 62, column: 26, scope: !3355)
!3373 = !DILocation(line: 62, column: 8, scope: !3355)
!3374 = !DILocation(line: 62, column: 14, scope: !3355)
!3375 = !DILocation(line: 65, column: 22, scope: !3363)
!3376 = !DILocation(line: 63, column: 3, scope: !3355)
!3377 = !DILocation(line: 65, column: 15, scope: !3363)
!3378 = !DILocation(line: 66, column: 33, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3363, file: !3110, line: 66, column: 11)
!3380 = !DILocation(line: 68, column: 14, scope: !3355)
!3381 = !DILocation(line: 68, column: 28, scope: !3355)
!3382 = !DILocation(line: 68, column: 5, scope: !3363)
!3383 = distinct !{!3383, !3376, !3384}
!3384 = !DILocation(line: 68, column: 40, scope: !3355)
!3385 = !DILocation(line: 70, column: 12, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3355, file: !3110, line: 70, column: 7)
!3387 = !DILocation(line: 70, column: 17, scope: !3386)
!3388 = !DILocation(line: 70, column: 7, scope: !3355)
!3389 = !DILocation(line: 71, column: 12, scope: !3386)
!3390 = !DILocation(line: 71, column: 5, scope: !3386)
!3391 = !DILocation(line: 73, column: 1, scope: !3355)
!3392 = distinct !DISubprogram(name: "gimple_referenced_vars", scope: !3110, file: !3110, line: 40, type: !3393, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3397)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!1445, !3395}
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1361)
!3397 = !{!3398}
!3398 = !DILocalVariable(name: "fun", arg: 1, scope: !3392, file: !3110, line: 40, type: !3395)
!3399 = !DILocation(line: 0, scope: !3392)
!3400 = !DILocation(line: 42, column: 13, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3392, file: !3110, line: 42, column: 7)
!3402 = !DILocation(line: 42, column: 8, scope: !3401)
!3403 = !DILocation(line: 42, column: 7, scope: !3392)
!3404 = !DILocation(line: 44, column: 26, scope: !3392)
!3405 = !DILocation(line: 44, column: 3, scope: !3392)
!3406 = !DILocation(line: 45, column: 1, scope: !3392)
!3407 = distinct !DISubprogram(name: "end_htab_p", scope: !3110, file: !3110, line: 79, type: !3408, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3412)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!640, !3410}
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2757)
!3412 = !{!3413}
!3413 = !DILocalVariable(name: "hti", arg: 1, scope: !3407, file: !3110, line: 79, type: !3410)
!3414 = !DILocation(line: 0, scope: !3407)
!3415 = !DILocation(line: 81, column: 12, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3407, file: !3110, line: 81, column: 7)
!3417 = !DILocation(line: 81, column: 25, scope: !3416)
!3418 = !DILocation(line: 81, column: 17, scope: !3416)
!3419 = !DILocation(line: 84, column: 1, scope: !3407)
!3420 = distinct !DISubprogram(name: "is_call_clobbered", scope: !3110, file: !3110, line: 629, type: !3322, scopeLine: 630, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3421)
!3421 = !{!3422}
!3422 = !DILocalVariable(name: "var", arg: 1, scope: !3420, file: !3110, line: 629, type: !3324)
!3423 = !DILocation(line: 0, scope: !3420)
!3424 = !DILocation(line: 631, column: 11, scope: !3420)
!3425 = !DILocation(line: 632, column: 4, scope: !3420)
!3426 = !DILocation(line: 632, column: 8, scope: !3420)
!3427 = !DILocation(line: 633, column: 8, scope: !3420)
!3428 = !DILocation(line: 633, column: 34, scope: !3420)
!3429 = !DILocation(line: 633, column: 40, scope: !3420)
!3430 = !DILocation(line: 633, column: 51, scope: !3420)
!3431 = !DILocation(line: 633, column: 11, scope: !3420)
!3432 = !DILocation(line: 631, column: 3, scope: !3420)
!3433 = distinct !DISubprogram(name: "may_be_aliased", scope: !3110, file: !3110, line: 586, type: !3322, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3434)
!3434 = !{!3435}
!3435 = !DILocalVariable(name: "var", arg: 1, scope: !3433, file: !3110, line: 586, type: !3324)
!3436 = !DILocation(line: 0, scope: !3433)
!3437 = !DILocation(line: 588, column: 11, scope: !3433)
!3438 = !DILocation(line: 588, column: 27, scope: !3433)
!3439 = !DILocation(line: 589, column: 4, scope: !3433)
!3440 = !DILocation(line: 589, column: 10, scope: !3433)
!3441 = !DILocation(line: 589, column: 28, scope: !3433)
!3442 = !DILocation(line: 589, column: 31, scope: !3433)
!3443 = !DILocation(line: 589, column: 49, scope: !3433)
!3444 = !DILocation(line: 589, column: 52, scope: !3433)
!3445 = !DILocation(line: 590, column: 9, scope: !3433)
!3446 = !DILocation(line: 590, column: 12, scope: !3433)
!3447 = !DILocation(line: 591, column: 9, scope: !3433)
!3448 = !DILocation(line: 591, column: 13, scope: !3433)
!3449 = !DILocation(line: 592, column: 4, scope: !3433)
!3450 = !DILocation(line: 592, column: 8, scope: !3433)
!3451 = !DILocation(line: 593, column: 8, scope: !3433)
!3452 = !DILocation(line: 593, column: 11, scope: !3433)
!3453 = !DILocation(line: 594, column: 8, scope: !3433)
!3454 = !DILocation(line: 594, column: 11, scope: !3433)
!3455 = !DILocation(line: 588, column: 3, scope: !3433)
!3456 = distinct !DISubprogram(name: "next_htab_element", scope: !3110, file: !3110, line: 90, type: !3457, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3459)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!645, !3358}
!3459 = !{!3460, !3461}
!3460 = !DILocalVariable(name: "hti", arg: 1, scope: !3456, file: !3110, line: 90, type: !3358)
!3461 = !DILocalVariable(name: "x", scope: !3462, file: !3110, line: 94, type: !645)
!3462 = distinct !DILexicalBlock(scope: !3456, file: !3110, line: 93, column: 5)
!3463 = !DILocation(line: 0, scope: !3456)
!3464 = !DILocation(line: 94, column: 22, scope: !3462)
!3465 = !DILocation(line: 92, column: 10, scope: !3456)
!3466 = !DILocation(line: 92, column: 31, scope: !3456)
!3467 = !DILocation(line: 92, column: 3, scope: !3456)
!3468 = !DILocation(line: 92, column: 24, scope: !3456)
!3469 = !DILocation(line: 94, column: 15, scope: !3462)
!3470 = !DILocation(line: 0, scope: !3462)
!3471 = !DILocation(line: 95, column: 33, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3462, file: !3110, line: 95, column: 11)
!3473 = distinct !{!3473, !3467, !3474}
!3474 = !DILocation(line: 97, column: 5, scope: !3456)
!3475 = !DILocation(line: 99, column: 1, scope: !3456)
!3476 = distinct !DISubprogram(name: "ei_end_p", scope: !325, file: !325, line: 721, type: !3477, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3479)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!640, !2567}
!3479 = !{!3480}
!3480 = !DILocalVariable(name: "i", arg: 1, scope: !3476, file: !325, line: 721, type: !2567)
!3481 = !DILocation(line: 723, column: 22, scope: !3476)
!3482 = !DILocation(line: 723, column: 19, scope: !3476)
!3483 = !DILocation(line: 723, column: 10, scope: !3476)
!3484 = !DILocation(line: 723, column: 3, scope: !3476)
!3485 = distinct !DISubprogram(name: "ei_edge", scope: !325, file: !325, line: 752, type: !3486, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3488)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!952, !2567}
!3488 = !{!3489}
!3489 = !DILocalVariable(name: "i", arg: 1, scope: !3485, file: !325, line: 752, type: !2567)
!3490 = !DILocation(line: 754, column: 10, scope: !3485)
!3491 = !DILocation(line: 754, column: 3, scope: !3485)
!3492 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !325, file: !325, line: 150, type: !3493, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3497)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!7, !3495}
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !945)
!3497 = !{!3498}
!3498 = !DILocalVariable(name: "vec_", arg: 1, scope: !3492, file: !325, line: 150, type: !3495)
!3499 = !DILocation(line: 0, scope: !3492)
!3500 = !DILocation(line: 150, column: 1, scope: !3492)
!3501 = distinct !DISubprogram(name: "ei_container", scope: !325, file: !325, line: 685, type: !3502, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3504)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!940, !2567}
!3504 = !{!3505}
!3505 = !DILocalVariable(name: "i", arg: 1, scope: !3501, file: !325, line: 685, type: !2567)
!3506 = !DILocation(line: 687, column: 3, scope: !3501)
!3507 = !DILocation(line: 688, column: 10, scope: !3501)
!3508 = !DILocation(line: 688, column: 3, scope: !3501)
!3509 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !325, file: !325, line: 150, type: !3510, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3512)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!952, !3495, !7}
!3512 = !{!3513, !3514}
!3513 = !DILocalVariable(name: "vec_", arg: 1, scope: !3509, file: !325, line: 150, type: !3495)
!3514 = !DILocalVariable(name: "ix_", arg: 2, scope: !3509, file: !325, line: 150, type: !7)
!3515 = !DILocation(line: 0, scope: !3509)
!3516 = !DILocation(line: 150, column: 1, scope: !3509)
!3517 = distinct !DISubprogram(name: "single_succ_p", scope: !325, file: !325, line: 626, type: !3087, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3518)
!3518 = !{!3519}
!3519 = !DILocalVariable(name: "bb", arg: 1, scope: !3517, file: !325, line: 626, type: !2741)
!3520 = !DILocation(line: 0, scope: !3517)
!3521 = !DILocation(line: 628, column: 10, scope: !3517)
!3522 = !DILocation(line: 628, column: 33, scope: !3517)
!3523 = !DILocation(line: 628, column: 3, scope: !3517)
!3524 = distinct !DISubprogram(name: "gsi_last_bb", scope: !568, file: !568, line: 4450, type: !3525, scopeLine: 4451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3527)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!2045, !1530}
!3527 = !{!3528, !3529, !3530}
!3528 = !DILocalVariable(name: "bb", arg: 1, scope: !3524, file: !568, line: 4450, type: !1530)
!3529 = !DILocalVariable(name: "i", scope: !3524, file: !568, line: 4452, type: !2045)
!3530 = !DILocalVariable(name: "seq", scope: !3524, file: !568, line: 4453, type: !962)
!3531 = !DILocation(line: 0, scope: !3524)
!3532 = !DILocation(line: 4452, column: 24, scope: !3524)
!3533 = !DILocation(line: 4455, column: 9, scope: !3524)
!3534 = !DILocation(line: 4456, column: 11, scope: !3524)
!3535 = !DILocation(line: 4456, column: 5, scope: !3524)
!3536 = !DILocation(line: 4456, column: 9, scope: !3524)
!3537 = !DILocation(line: 4457, column: 5, scope: !3524)
!3538 = !DILocation(line: 4457, column: 9, scope: !3524)
!3539 = !DILocation(line: 4458, column: 5, scope: !3524)
!3540 = !DILocation(line: 4458, column: 8, scope: !3524)
!3541 = !DILocation(line: 4461, column: 1, scope: !3524)
!3542 = distinct !DISubprogram(name: "gsi_end_p", scope: !568, file: !568, line: 4467, type: !3543, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3545)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!640, !2045}
!3545 = !{!3546}
!3546 = !DILocalVariable(name: "i", arg: 1, scope: !3542, file: !568, line: 4467, type: !2045)
!3547 = !DILocation(line: 4467, column: 33, scope: !3542)
!3548 = !DILocation(line: 4469, column: 12, scope: !3542)
!3549 = !DILocation(line: 4469, column: 16, scope: !3542)
!3550 = !DILocation(line: 4469, column: 10, scope: !3542)
!3551 = !DILocation(line: 4469, column: 3, scope: !3542)
!3552 = distinct !DISubprogram(name: "gsi_stmt", scope: !568, file: !568, line: 4501, type: !3553, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3555)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!972, !2045}
!3555 = !{!3556}
!3556 = !DILocalVariable(name: "i", arg: 1, scope: !3552, file: !568, line: 4501, type: !2045)
!3557 = !DILocation(line: 4501, column: 32, scope: !3552)
!3558 = !DILocation(line: 4503, column: 12, scope: !3552)
!3559 = !DILocation(line: 4503, column: 17, scope: !3552)
!3560 = !DILocation(line: 4503, column: 3, scope: !3552)
!3561 = distinct !DISubprogram(name: "is_gimple_debug", scope: !568, file: !568, line: 3249, type: !3562, scopeLine: 3250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3564)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!640, !2843}
!3564 = !{!3565}
!3565 = !DILocalVariable(name: "gs", arg: 1, scope: !3561, file: !568, line: 3249, type: !2843)
!3566 = !DILocation(line: 0, scope: !3561)
!3567 = !DILocation(line: 3251, column: 10, scope: !3561)
!3568 = !DILocation(line: 3251, column: 27, scope: !3561)
!3569 = !DILocation(line: 3251, column: 3, scope: !3561)
!3570 = distinct !DISubprogram(name: "is_gimple_call", scope: !568, file: !568, line: 1870, type: !3562, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3571)
!3571 = !{!3572}
!3572 = !DILocalVariable(name: "gs", arg: 1, scope: !3570, file: !568, line: 1870, type: !2843)
!3573 = !DILocation(line: 0, scope: !3570)
!3574 = !DILocation(line: 1872, column: 10, scope: !3570)
!3575 = !DILocation(line: 1872, column: 27, scope: !3570)
!3576 = !DILocation(line: 1872, column: 3, scope: !3570)
!3577 = distinct !DISubprogram(name: "gimple_call_lhs", scope: !568, file: !568, line: 1878, type: !3578, scopeLine: 1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3580)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!648, !2843}
!3580 = !{!3581}
!3581 = !DILocalVariable(name: "gs", arg: 1, scope: !3577, file: !568, line: 1878, type: !2843)
!3582 = !DILocation(line: 0, scope: !3577)
!3583 = !DILocation(line: 1881, column: 10, scope: !3577)
!3584 = !DILocation(line: 1881, column: 3, scope: !3577)
!3585 = distinct !DISubprogram(name: "gimple_references_memory_p", scope: !568, file: !568, line: 1499, type: !3586, scopeLine: 1500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3588)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!640, !972}
!3588 = !{!3589}
!3589 = !DILocalVariable(name: "stmt", arg: 1, scope: !3585, file: !568, line: 1499, type: !972)
!3590 = !DILocation(line: 0, scope: !3585)
!3591 = !DILocation(line: 1501, column: 10, scope: !3585)
!3592 = !DILocation(line: 1501, column: 36, scope: !3585)
!3593 = !DILocation(line: 1501, column: 39, scope: !3585)
!3594 = !DILocation(line: 1501, column: 3, scope: !3585)
!3595 = distinct !DISubprogram(name: "gimple_has_volatile_ops", scope: !568, file: !568, line: 1477, type: !3562, scopeLine: 1478, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3596)
!3596 = !{!3597}
!3597 = !DILocalVariable(name: "stmt", arg: 1, scope: !3595, file: !568, line: 1477, type: !2843)
!3598 = !DILocation(line: 0, scope: !3595)
!3599 = !DILocation(line: 1479, column: 7, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3595, file: !568, line: 1479, column: 7)
!3601 = !DILocation(line: 1479, column: 7, scope: !3595)
!3602 = !DILocation(line: 1480, column: 25, scope: !3600)
!3603 = !DILocation(line: 1480, column: 12, scope: !3600)
!3604 = !DILocation(line: 1480, column: 5, scope: !3600)
!3605 = !DILocation(line: 0, scope: !3600)
!3606 = !DILocation(line: 1483, column: 1, scope: !3595)
!3607 = distinct !DISubprogram(name: "gsi_prev", scope: !568, file: !568, line: 4493, type: !3608, scopeLine: 4494, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3611)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{null, !3610}
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!3611 = !{!3612}
!3612 = !DILocalVariable(name: "i", arg: 1, scope: !3607, file: !568, line: 4493, type: !3610)
!3613 = !DILocation(line: 0, scope: !3607)
!3614 = !DILocation(line: 4495, column: 15, scope: !3607)
!3615 = !DILocation(line: 4495, column: 20, scope: !3607)
!3616 = !DILocation(line: 4495, column: 10, scope: !3607)
!3617 = !DILocation(line: 4496, column: 1, scope: !3607)
!3618 = distinct !DISubprogram(name: "gimple_call_fndecl", scope: !568, file: !568, line: 1954, type: !3578, scopeLine: 1955, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3619)
!3619 = !{!3620, !3621}
!3620 = !DILocalVariable(name: "gs", arg: 1, scope: !3618, file: !568, line: 1954, type: !2843)
!3621 = !DILocalVariable(name: "addr", scope: !3618, file: !568, line: 1956, type: !648)
!3622 = !DILocation(line: 0, scope: !3618)
!3623 = !DILocation(line: 1956, column: 15, scope: !3618)
!3624 = !DILocation(line: 1957, column: 7, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3618, file: !568, line: 1957, column: 7)
!3626 = !DILocation(line: 1957, column: 24, scope: !3625)
!3627 = !DILocation(line: 1957, column: 7, scope: !3618)
!3628 = !DILocation(line: 1958, column: 12, scope: !3625)
!3629 = !DILocation(line: 1958, column: 5, scope: !3625)
!3630 = !DILocation(line: 1960, column: 1, scope: !3618)
!3631 = distinct !DISubprogram(name: "gimple_call_num_args", scope: !568, file: !568, line: 2013, type: !3632, scopeLine: 2014, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3634)
!3632 = !DISubroutineType(types: !3633)
!3633 = !{!7, !2843}
!3634 = !{!3635, !3636}
!3635 = !DILocalVariable(name: "gs", arg: 1, scope: !3631, file: !568, line: 2013, type: !2843)
!3636 = !DILocalVariable(name: "num_ops", scope: !3631, file: !568, line: 2015, type: !7)
!3637 = !DILocation(line: 0, scope: !3631)
!3638 = !DILocation(line: 2017, column: 13, scope: !3631)
!3639 = !DILocation(line: 2018, column: 18, scope: !3631)
!3640 = !DILocation(line: 2018, column: 3, scope: !3631)
!3641 = distinct !DISubprogram(name: "gimple_call_arg", scope: !568, file: !568, line: 2025, type: !3642, scopeLine: 2026, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3644)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!648, !2843, !7}
!3644 = !{!3645, !3646}
!3645 = !DILocalVariable(name: "gs", arg: 1, scope: !3641, file: !568, line: 2025, type: !2843)
!3646 = !DILocalVariable(name: "index", arg: 2, scope: !3641, file: !568, line: 2025, type: !7)
!3647 = !DILocation(line: 0, scope: !3641)
!3648 = !DILocation(line: 2028, column: 31, scope: !3641)
!3649 = !DILocation(line: 2028, column: 10, scope: !3641)
!3650 = !DILocation(line: 2028, column: 3, scope: !3641)
!3651 = distinct !DISubprogram(name: "gsi_next", scope: !568, file: !568, line: 4485, type: !3608, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3652)
!3652 = !{!3653}
!3653 = !DILocalVariable(name: "i", arg: 1, scope: !3651, file: !568, line: 4485, type: !3610)
!3654 = !DILocation(line: 0, scope: !3651)
!3655 = !DILocation(line: 4487, column: 15, scope: !3651)
!3656 = !DILocation(line: 4487, column: 20, scope: !3651)
!3657 = !DILocation(line: 4487, column: 10, scope: !3651)
!3658 = !DILocation(line: 4488, column: 1, scope: !3651)
!3659 = distinct !DISubprogram(name: "propagate_through_phis", scope: !3, file: !3, line: 349, type: !3660, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3662)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!648, !648, !952}
!3662 = !{!3663, !3664, !3665, !3666, !3667}
!3663 = !DILocalVariable(name: "var", arg: 1, scope: !3659, file: !3, line: 349, type: !648)
!3664 = !DILocalVariable(name: "e", arg: 2, scope: !3659, file: !3, line: 349, type: !952)
!3665 = !DILocalVariable(name: "dest", scope: !3659, file: !3, line: 351, type: !1530)
!3666 = !DILocalVariable(name: "gsi", scope: !3659, file: !3, line: 352, type: !2045)
!3667 = !DILocalVariable(name: "phi", scope: !3668, file: !3, line: 356, type: !972)
!3668 = distinct !DILexicalBlock(scope: !3669, file: !3, line: 355, column: 5)
!3669 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 354, column: 3)
!3670 = distinct !DILexicalBlock(scope: !3659, file: !3, line: 354, column: 3)
!3671 = !DILocation(line: 0, scope: !3659)
!3672 = !DILocation(line: 351, column: 25, scope: !3659)
!3673 = !DILocation(line: 352, column: 3, scope: !3659)
!3674 = !DILocation(line: 354, column: 14, scope: !3670)
!3675 = !DILocation(line: 0, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3668, file: !3, line: 357, column: 11)
!3677 = !DILocation(line: 354, column: 8, scope: !3670)
!3678 = !DILocation(line: 354, column: 38, scope: !3669)
!3679 = !DILocation(line: 354, column: 37, scope: !3669)
!3680 = !DILocation(line: 354, column: 3, scope: !3670)
!3681 = !DILocation(line: 356, column: 20, scope: !3668)
!3682 = !DILocation(line: 0, scope: !3668)
!3683 = !DILocation(line: 357, column: 11, scope: !3676)
!3684 = !DILocation(line: 357, column: 42, scope: !3676)
!3685 = !DILocation(line: 357, column: 11, scope: !3668)
!3686 = !DILocation(line: 358, column: 16, scope: !3676)
!3687 = !DILocation(line: 358, column: 9, scope: !3676)
!3688 = !DILocation(line: 354, column: 55, scope: !3669)
!3689 = !DILocation(line: 354, column: 3, scope: !3669)
!3690 = distinct !{!3690, !3680, !3691}
!3691 = !DILocation(line: 359, column: 5, scope: !3670)
!3692 = !DILocation(line: 361, column: 1, scope: !3659)
!3693 = distinct !DISubprogram(name: "gsi_start_bb", scope: !568, file: !568, line: 4418, type: !3525, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3694)
!3694 = !{!3695, !3696, !3697}
!3695 = !DILocalVariable(name: "bb", arg: 1, scope: !3693, file: !568, line: 4418, type: !1530)
!3696 = !DILocalVariable(name: "i", scope: !3693, file: !568, line: 4420, type: !2045)
!3697 = !DILocalVariable(name: "seq", scope: !3693, file: !568, line: 4421, type: !962)
!3698 = !DILocation(line: 0, scope: !3693)
!3699 = !DILocation(line: 4420, column: 24, scope: !3693)
!3700 = !DILocation(line: 4423, column: 9, scope: !3693)
!3701 = !DILocation(line: 4424, column: 11, scope: !3693)
!3702 = !DILocation(line: 4424, column: 5, scope: !3693)
!3703 = !DILocation(line: 4424, column: 9, scope: !3693)
!3704 = !DILocation(line: 4425, column: 5, scope: !3693)
!3705 = !DILocation(line: 4425, column: 9, scope: !3693)
!3706 = !DILocation(line: 4426, column: 5, scope: !3693)
!3707 = !DILocation(line: 4426, column: 8, scope: !3693)
!3708 = !DILocation(line: 4429, column: 1, scope: !3693)
!3709 = distinct !DISubprogram(name: "process_assignment", scope: !3, file: !3, line: 265, type: !3710, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3712)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!640, !972, !2045, !1007, !1007, !1007}
!3712 = !{!3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724}
!3713 = !DILocalVariable(name: "stmt", arg: 1, scope: !3709, file: !3, line: 265, type: !972)
!3714 = !DILocalVariable(name: "call", arg: 2, scope: !3709, file: !3, line: 265, type: !2045)
!3715 = !DILocalVariable(name: "m", arg: 3, scope: !3709, file: !3, line: 265, type: !1007)
!3716 = !DILocalVariable(name: "a", arg: 4, scope: !3709, file: !3, line: 266, type: !1007)
!3717 = !DILocalVariable(name: "ass_var", arg: 5, scope: !3709, file: !3, line: 266, type: !1007)
!3718 = !DILocalVariable(name: "op0", scope: !3709, file: !3, line: 268, type: !648)
!3719 = !DILocalVariable(name: "op1", scope: !3709, file: !3, line: 268, type: !648)
!3720 = !DILocalVariable(name: "non_ass_var", scope: !3709, file: !3, line: 268, type: !648)
!3721 = !DILocalVariable(name: "dest", scope: !3709, file: !3, line: 269, type: !648)
!3722 = !DILocalVariable(name: "code", scope: !3709, file: !3, line: 270, type: !373)
!3723 = !DILocalVariable(name: "rhs_class", scope: !3709, file: !3, line: 271, type: !632)
!3724 = !DILocalVariable(name: "src_var", scope: !3709, file: !3, line: 272, type: !648)
!3725 = !DILocation(line: 0, scope: !3709)
!3726 = !DILocation(line: 265, column: 55, scope: !3709)
!3727 = !DILocation(line: 269, column: 15, scope: !3709)
!3728 = !DILocation(line: 270, column: 25, scope: !3709)
!3729 = !DILocation(line: 271, column: 37, scope: !3709)
!3730 = !DILocation(line: 272, column: 18, scope: !3709)
!3731 = !DILocation(line: 278, column: 18, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3709, file: !3, line: 278, column: 7)
!3733 = !DILocation(line: 278, column: 39, scope: !3732)
!3734 = !DILocation(line: 278, column: 42, scope: !3732)
!3735 = !DILocation(line: 279, column: 7, scope: !3732)
!3736 = !DILocation(line: 279, column: 11, scope: !3732)
!3737 = !DILocation(line: 279, column: 31, scope: !3732)
!3738 = !DILocation(line: 278, column: 7, scope: !3709)
!3739 = !DILocation(line: 283, column: 11, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3741, file: !3, line: 283, column: 11)
!3741 = distinct !DILexicalBlock(scope: !3732, file: !3, line: 280, column: 5)
!3742 = !DILocation(line: 284, column: 4, scope: !3740)
!3743 = !DILocation(line: 284, column: 7, scope: !3740)
!3744 = !DILocation(line: 284, column: 39, scope: !3740)
!3745 = !DILocation(line: 284, column: 36, scope: !3740)
!3746 = !DILocation(line: 283, column: 11, scope: !3741)
!3747 = !DILocation(line: 287, column: 22, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3741, file: !3, line: 287, column: 11)
!3749 = !DILocation(line: 287, column: 19, scope: !3748)
!3750 = !DILocation(line: 287, column: 11, scope: !3741)
!3751 = !DILocation(line: 290, column: 16, scope: !3741)
!3752 = !DILocation(line: 291, column: 7, scope: !3741)
!3753 = !DILocation(line: 294, column: 17, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3709, file: !3, line: 294, column: 7)
!3755 = !DILocation(line: 294, column: 7, scope: !3709)
!3756 = !DILocation(line: 300, column: 8, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3709, file: !3, line: 300, column: 7)
!3758 = !DILocation(line: 300, column: 7, scope: !3709)
!3759 = !DILocation(line: 301, column: 9, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3757, file: !3, line: 301, column: 9)
!3761 = !DILocation(line: 301, column: 9, scope: !3757)
!3762 = !DILocation(line: 314, column: 9, scope: !3709)
!3763 = !DILocation(line: 315, column: 9, scope: !3709)
!3764 = !DILocation(line: 317, column: 14, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3709, file: !3, line: 317, column: 7)
!3766 = !DILocation(line: 317, column: 11, scope: !3765)
!3767 = !DILocation(line: 318, column: 7, scope: !3765)
!3768 = !DILocation(line: 318, column: 25, scope: !3765)
!3769 = !DILocation(line: 318, column: 23, scope: !3765)
!3770 = !DILocation(line: 317, column: 7, scope: !3709)
!3771 = !DILocation(line: 320, column: 19, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3765, file: !3, line: 320, column: 12)
!3773 = !DILocation(line: 320, column: 16, scope: !3772)
!3774 = !DILocation(line: 321, column: 5, scope: !3772)
!3775 = !DILocation(line: 321, column: 23, scope: !3772)
!3776 = !DILocation(line: 321, column: 21, scope: !3772)
!3777 = !DILocation(line: 320, column: 12, scope: !3765)
!3778 = !DILocation(line: 0, scope: !3765)
!3779 = !DILocation(line: 326, column: 3, scope: !3709)
!3780 = !DILocation(line: 329, column: 10, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3709, file: !3, line: 327, column: 5)
!3782 = !DILocation(line: 330, column: 16, scope: !3781)
!3783 = !DILocation(line: 331, column: 7, scope: !3781)
!3784 = !DILocation(line: 334, column: 10, scope: !3781)
!3785 = !DILocation(line: 335, column: 16, scope: !3781)
!3786 = !DILocation(line: 336, column: 7, scope: !3781)
!3787 = !DILocation(line: 344, column: 1, scope: !3709)
!3788 = distinct !DISubprogram(name: "gimple_return_retval", scope: !568, file: !568, line: 4253, type: !3578, scopeLine: 4254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3789)
!3789 = !{!3790}
!3790 = !DILocalVariable(name: "gs", arg: 1, scope: !3788, file: !568, line: 4253, type: !2843)
!3791 = !DILocation(line: 0, scope: !3788)
!3792 = !DILocation(line: 4256, column: 10, scope: !3788)
!3793 = !DILocation(line: 4256, column: 3, scope: !3788)
!3794 = distinct !DISubprogram(name: "bb_seq", scope: !568, file: !568, line: 237, type: !3111, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3795)
!3795 = !{!3796}
!3796 = !DILocalVariable(name: "bb", arg: 1, scope: !3794, file: !568, line: 237, type: !2741)
!3797 = !DILocation(line: 0, scope: !3794)
!3798 = !DILocation(line: 239, column: 17, scope: !3794)
!3799 = !DILocation(line: 239, column: 23, scope: !3794)
!3800 = !DILocation(line: 239, column: 33, scope: !3794)
!3801 = !DILocation(line: 239, column: 43, scope: !3794)
!3802 = !DILocation(line: 239, column: 36, scope: !3794)
!3803 = !DILocation(line: 239, column: 10, scope: !3794)
!3804 = !DILocation(line: 239, column: 68, scope: !3794)
!3805 = !DILocation(line: 239, column: 3, scope: !3794)
!3806 = distinct !DISubprogram(name: "gimple_seq_last", scope: !568, file: !568, line: 178, type: !3807, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3809)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!967, !3098}
!3809 = !{!3810}
!3810 = !DILocalVariable(name: "s", arg: 1, scope: !3806, file: !568, line: 178, type: !3098)
!3811 = !DILocation(line: 0, scope: !3806)
!3812 = !DILocation(line: 180, column: 10, scope: !3806)
!3813 = !DILocation(line: 180, column: 17, scope: !3806)
!3814 = !DILocation(line: 180, column: 3, scope: !3806)
!3815 = distinct !DISubprogram(name: "gimple_op", scope: !568, file: !568, line: 1631, type: !3642, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3816)
!3816 = !{!3817, !3818}
!3817 = !DILocalVariable(name: "gs", arg: 1, scope: !3815, file: !568, line: 1631, type: !2843)
!3818 = !DILocalVariable(name: "i", arg: 2, scope: !3815, file: !568, line: 1631, type: !7)
!3819 = !DILocation(line: 0, scope: !3815)
!3820 = !DILocation(line: 1633, column: 7, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3815, file: !568, line: 1633, column: 7)
!3822 = !DILocation(line: 1633, column: 7, scope: !3815)
!3823 = !DILocation(line: 1638, column: 14, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3821, file: !568, line: 1634, column: 5)
!3825 = !DILocation(line: 1638, column: 7, scope: !3824)
!3826 = !DILocation(line: 0, scope: !3821)
!3827 = !DILocation(line: 1642, column: 1, scope: !3815)
!3828 = distinct !DISubprogram(name: "gimple_has_ops", scope: !568, file: !568, line: 1274, type: !3562, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3829)
!3829 = !{!3830}
!3830 = !DILocalVariable(name: "g", arg: 1, scope: !3828, file: !568, line: 1274, type: !2843)
!3831 = !DILocation(line: 0, scope: !3828)
!3832 = !DILocation(line: 1276, column: 10, scope: !3828)
!3833 = !DILocation(line: 1276, column: 26, scope: !3828)
!3834 = !DILocation(line: 1276, column: 41, scope: !3828)
!3835 = !DILocation(line: 1276, column: 44, scope: !3828)
!3836 = !DILocation(line: 1276, column: 60, scope: !3828)
!3837 = !DILocation(line: 1276, column: 3, scope: !3828)
!3838 = distinct !DISubprogram(name: "gimple_ops", scope: !568, file: !568, line: 1614, type: !3839, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3841)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!1007, !972}
!3841 = !{!3842, !3843}
!3842 = !DILocalVariable(name: "gs", arg: 1, scope: !3838, file: !568, line: 1614, type: !972)
!3843 = !DILocalVariable(name: "off", scope: !3838, file: !568, line: 1616, type: !1118)
!3844 = !DILocation(line: 0, scope: !3838)
!3845 = !DILocation(line: 1621, column: 28, scope: !3838)
!3846 = !DILocation(line: 1621, column: 9, scope: !3838)
!3847 = !DILocation(line: 1622, column: 3, scope: !3838)
!3848 = !DILocation(line: 1624, column: 20, scope: !3838)
!3849 = !DILocation(line: 1624, column: 32, scope: !3838)
!3850 = !DILocation(line: 1624, column: 10, scope: !3838)
!3851 = !DILocation(line: 1624, column: 3, scope: !3838)
!3852 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !568, file: !568, line: 1073, type: !3853, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3855)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!606, !972}
!3855 = !{!3856}
!3856 = !DILocalVariable(name: "gs", arg: 1, scope: !3852, file: !568, line: 1073, type: !972)
!3857 = !DILocation(line: 0, scope: !3852)
!3858 = !DILocation(line: 1075, column: 24, scope: !3852)
!3859 = !DILocation(line: 1075, column: 10, scope: !3852)
!3860 = !DILocation(line: 1075, column: 3, scope: !3852)
!3861 = distinct !DISubprogram(name: "gss_for_code", scope: !568, file: !568, line: 1061, type: !3862, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3864)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!606, !567}
!3864 = !{!3865}
!3865 = !DILocalVariable(name: "code", arg: 1, scope: !3861, file: !568, line: 1061, type: !567)
!3866 = !DILocation(line: 0, scope: !3861)
!3867 = !DILocation(line: 1066, column: 10, scope: !3861)
!3868 = !DILocation(line: 1066, column: 3, scope: !3861)
!3869 = distinct !DISubprogram(name: "gimple_has_mem_ops", scope: !568, file: !568, line: 1283, type: !3562, scopeLine: 1284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3870)
!3870 = !{!3871}
!3871 = !DILocalVariable(name: "g", arg: 1, scope: !3869, file: !568, line: 1283, type: !2843)
!3872 = !DILocation(line: 0, scope: !3869)
!3873 = !DILocation(line: 1285, column: 10, scope: !3869)
!3874 = !DILocation(line: 1285, column: 26, scope: !3869)
!3875 = !DILocation(line: 1285, column: 43, scope: !3869)
!3876 = !DILocation(line: 1285, column: 46, scope: !3869)
!3877 = !DILocation(line: 1285, column: 62, scope: !3869)
!3878 = !DILocation(line: 1285, column: 3, scope: !3869)
!3879 = distinct !DISubprogram(name: "gimple_vuse", scope: !568, file: !568, line: 1365, type: !3578, scopeLine: 1366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3880)
!3880 = !{!3881}
!3881 = !DILocalVariable(name: "g", arg: 1, scope: !3879, file: !568, line: 1365, type: !2843)
!3882 = !DILocation(line: 0, scope: !3879)
!3883 = !DILocation(line: 1367, column: 8, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3879, file: !568, line: 1367, column: 7)
!3885 = !DILocation(line: 1367, column: 7, scope: !3879)
!3886 = !DILocation(line: 1369, column: 23, scope: !3879)
!3887 = !DILocation(line: 1369, column: 3, scope: !3879)
!3888 = !DILocation(line: 1370, column: 1, scope: !3879)
!3889 = distinct !DISubprogram(name: "gimple_call_fn", scope: !568, file: !568, line: 1911, type: !3578, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3890)
!3890 = !{!3891}
!3891 = !DILocalVariable(name: "gs", arg: 1, scope: !3889, file: !568, line: 1911, type: !2843)
!3892 = !DILocation(line: 0, scope: !3889)
!3893 = !DILocation(line: 1914, column: 10, scope: !3889)
!3894 = !DILocation(line: 1914, column: 3, scope: !3889)
!3895 = distinct !DISubprogram(name: "gimple_num_ops", scope: !568, file: !568, line: 1596, type: !3632, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3896)
!3896 = !{!3897}
!3897 = !DILocalVariable(name: "gs", arg: 1, scope: !3895, file: !568, line: 1596, type: !2843)
!3898 = !DILocation(line: 0, scope: !3895)
!3899 = !DILocation(line: 1598, column: 21, scope: !3895)
!3900 = !DILocation(line: 1598, column: 3, scope: !3895)
!3901 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !3110, file: !3110, line: 427, type: !3902, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3907)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!648, !3904}
!3904 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !1003, line: 30, baseType: !3905)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !341, line: 1893, baseType: !1014)
!3907 = !{!3908}
!3908 = !DILocalVariable(name: "use", arg: 1, scope: !3901, file: !3110, line: 427, type: !3904)
!3909 = !DILocation(line: 0, scope: !3901)
!3910 = !DILocation(line: 429, column: 17, scope: !3901)
!3911 = !DILocation(line: 429, column: 10, scope: !3901)
!3912 = !DILocation(line: 429, column: 3, scope: !3901)
!3913 = distinct !DISubprogram(name: "gimple_phi_arg_imm_use_ptr", scope: !3110, file: !3110, line: 442, type: !3914, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3916)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!3904, !972, !641}
!3916 = !{!3917, !3918}
!3917 = !DILocalVariable(name: "gs", arg: 1, scope: !3913, file: !3110, line: 442, type: !972)
!3918 = !DILocalVariable(name: "i", arg: 2, scope: !3913, file: !3110, line: 442, type: !641)
!3919 = !DILocation(line: 0, scope: !3913)
!3920 = !DILocation(line: 444, column: 11, scope: !3913)
!3921 = !DILocation(line: 444, column: 35, scope: !3913)
!3922 = !DILocation(line: 444, column: 3, scope: !3913)
!3923 = distinct !DISubprogram(name: "get_def_from_ptr", scope: !3110, file: !3110, line: 434, type: !3924, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3927)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!648, !3926}
!3926 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_operand_p", file: !1003, line: 27, baseType: !1007)
!3927 = !{!3928}
!3928 = !DILocalVariable(name: "def", arg: 1, scope: !3923, file: !3110, line: 434, type: !3926)
!3929 = !DILocation(line: 0, scope: !3923)
!3930 = !DILocation(line: 436, column: 10, scope: !3923)
!3931 = !DILocation(line: 436, column: 3, scope: !3923)
!3932 = distinct !DISubprogram(name: "gimple_phi_result_ptr", scope: !568, file: !568, line: 3080, type: !3839, scopeLine: 3081, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3933)
!3933 = !{!3934}
!3934 = !DILocalVariable(name: "gs", arg: 1, scope: !3932, file: !568, line: 3080, type: !972)
!3935 = !DILocation(line: 0, scope: !3932)
!3936 = !DILocation(line: 3083, column: 26, scope: !3932)
!3937 = !DILocation(line: 3083, column: 3, scope: !3932)
!3938 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !568, file: !568, line: 3100, type: !3939, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3942)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{!3941, !972, !7}
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!3942 = !{!3943, !3944}
!3943 = !DILocalVariable(name: "gs", arg: 1, scope: !3938, file: !568, line: 3100, type: !972)
!3944 = !DILocalVariable(name: "index", arg: 2, scope: !3938, file: !568, line: 3100, type: !7)
!3945 = !DILocation(line: 0, scope: !3938)
!3946 = !DILocation(line: 3103, column: 3, scope: !3938)
!3947 = !DILocation(line: 3104, column: 12, scope: !3938)
!3948 = !DILocation(line: 3104, column: 3, scope: !3938)
!3949 = distinct !DISubprogram(name: "gimple_seq_first", scope: !568, file: !568, line: 159, type: !3807, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3950)
!3950 = !{!3951}
!3951 = !DILocalVariable(name: "s", arg: 1, scope: !3949, file: !568, line: 159, type: !3098)
!3952 = !DILocation(line: 0, scope: !3949)
!3953 = !DILocation(line: 161, column: 10, scope: !3949)
!3954 = !DILocation(line: 161, column: 17, scope: !3949)
!3955 = !DILocation(line: 161, column: 3, scope: !3949)
!3956 = distinct !DISubprogram(name: "gimple_assign_lhs", scope: !568, file: !568, line: 1694, type: !3578, scopeLine: 1695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3957)
!3957 = !{!3958}
!3958 = !DILocalVariable(name: "gs", arg: 1, scope: !3956, file: !568, line: 1694, type: !2843)
!3959 = !DILocation(line: 0, scope: !3956)
!3960 = !DILocation(line: 1697, column: 10, scope: !3956)
!3961 = !DILocation(line: 1697, column: 3, scope: !3956)
!3962 = distinct !DISubprogram(name: "gimple_assign_rhs_code", scope: !568, file: !568, line: 1815, type: !3963, scopeLine: 1816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3965)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!373, !2843}
!3965 = !{!3966, !3967}
!3966 = !DILocalVariable(name: "gs", arg: 1, scope: !3962, file: !568, line: 1815, type: !2843)
!3967 = !DILocalVariable(name: "code", scope: !3962, file: !568, line: 1817, type: !373)
!3968 = !DILocation(line: 0, scope: !3962)
!3969 = !DILocation(line: 1820, column: 10, scope: !3962)
!3970 = !DILocation(line: 1821, column: 7, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3962, file: !568, line: 1821, column: 7)
!3972 = !DILocation(line: 1821, column: 35, scope: !3971)
!3973 = !DILocation(line: 1821, column: 7, scope: !3962)
!3974 = !DILocation(line: 1822, column: 12, scope: !3971)
!3975 = !DILocation(line: 1822, column: 5, scope: !3971)
!3976 = !DILocation(line: 1824, column: 3, scope: !3962)
!3977 = distinct !DISubprogram(name: "get_gimple_rhs_class", scope: !568, file: !568, line: 1686, type: !3978, scopeLine: 1687, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3980)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!632, !373}
!3980 = !{!3981}
!3981 = !DILocalVariable(name: "code", arg: 1, scope: !3977, file: !568, line: 1686, type: !373)
!3982 = !DILocation(line: 0, scope: !3977)
!3983 = !DILocation(line: 1688, column: 34, scope: !3977)
!3984 = !DILocation(line: 1688, column: 10, scope: !3977)
!3985 = !DILocation(line: 1688, column: 3, scope: !3977)
!3986 = distinct !DISubprogram(name: "gimple_assign_rhs1", scope: !568, file: !568, line: 1727, type: !3578, scopeLine: 1728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3987)
!3987 = !{!3988}
!3988 = !DILocalVariable(name: "gs", arg: 1, scope: !3986, file: !568, line: 1727, type: !2843)
!3989 = !DILocation(line: 0, scope: !3986)
!3990 = !DILocation(line: 1730, column: 10, scope: !3986)
!3991 = !DILocation(line: 1730, column: 3, scope: !3986)
!3992 = distinct !DISubprogram(name: "gimple_assign_cast_p", scope: !568, file: !568, line: 1853, type: !3586, scopeLine: 1854, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3993)
!3993 = !{!3994, !3995}
!3994 = !DILocalVariable(name: "s", arg: 1, scope: !3992, file: !568, line: 1853, type: !972)
!3995 = !DILocalVariable(name: "sc", scope: !3996, file: !568, line: 1857, type: !373)
!3996 = distinct !DILexicalBlock(scope: !3997, file: !568, line: 1856, column: 5)
!3997 = distinct !DILexicalBlock(scope: !3992, file: !568, line: 1855, column: 7)
!3998 = !DILocation(line: 0, scope: !3992)
!3999 = !DILocation(line: 1855, column: 7, scope: !3997)
!4000 = !DILocation(line: 1855, column: 7, scope: !3992)
!4001 = !DILocation(line: 1857, column: 27, scope: !3996)
!4002 = !DILocation(line: 0, scope: !3996)
!4003 = !DILocation(line: 1858, column: 14, scope: !3996)
!4004 = !DILocation(line: 1860, column: 7, scope: !3996)
!4005 = !DILocation(line: 1864, column: 1, scope: !3992)
!4006 = distinct !DISubprogram(name: "gimple_assign_rhs2", scope: !568, file: !568, line: 1759, type: !3578, scopeLine: 1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4007)
!4007 = !{!4008}
!4008 = !DILocalVariable(name: "gs", arg: 1, scope: !4006, file: !568, line: 1759, type: !2843)
!4009 = !DILocation(line: 0, scope: !4006)
!4010 = !DILocation(line: 1763, column: 7, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !4006, file: !568, line: 1763, column: 7)
!4012 = !DILocation(line: 1763, column: 27, scope: !4011)
!4013 = !DILocation(line: 1763, column: 7, scope: !4006)
!4014 = !DILocation(line: 1764, column: 12, scope: !4011)
!4015 = !DILocation(line: 1764, column: 5, scope: !4011)
!4016 = !DILocation(line: 0, scope: !4011)
!4017 = !DILocation(line: 1767, column: 1, scope: !4006)
!4018 = distinct !DISubprogram(name: "independent_of_stmt_p", scope: !3, file: !3, line: 194, type: !4019, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4021)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!648, !648, !972, !2045}
!4021 = !{!4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029}
!4022 = !DILocalVariable(name: "expr", arg: 1, scope: !4018, file: !3, line: 194, type: !648)
!4023 = !DILocalVariable(name: "at", arg: 2, scope: !4018, file: !3, line: 194, type: !972)
!4024 = !DILocalVariable(name: "gsi", arg: 3, scope: !4018, file: !3, line: 194, type: !2045)
!4025 = !DILocalVariable(name: "bb", scope: !4018, file: !3, line: 196, type: !1530)
!4026 = !DILocalVariable(name: "call_bb", scope: !4018, file: !3, line: 196, type: !1530)
!4027 = !DILocalVariable(name: "at_bb", scope: !4018, file: !3, line: 196, type: !1530)
!4028 = !DILocalVariable(name: "e", scope: !4018, file: !3, line: 197, type: !952)
!4029 = !DILocalVariable(name: "ei", scope: !4018, file: !3, line: 198, type: !2567)
!4030 = !DILocation(line: 0, scope: !4018)
!4031 = !DILocation(line: 194, column: 67, scope: !4018)
!4032 = !DILocation(line: 197, column: 3, scope: !4018)
!4033 = !DILocation(line: 198, column: 3, scope: !4018)
!4034 = !DILocation(line: 200, column: 7, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !4018, file: !3, line: 200, column: 7)
!4036 = !DILocation(line: 200, column: 7, scope: !4018)
!4037 = !DILocation(line: 203, column: 7, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4018, file: !3, line: 203, column: 7)
!4039 = !DILocation(line: 203, column: 24, scope: !4038)
!4040 = !DILocation(line: 203, column: 7, scope: !4018)
!4041 = !DILocation(line: 207, column: 11, scope: !4018)
!4042 = !DILocation(line: 208, column: 24, scope: !4018)
!4043 = !DILocation(line: 208, column: 13, scope: !4018)
!4044 = !DILocation(line: 209, column: 8, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4018, file: !3, line: 209, column: 3)
!4046 = !DILocation(line: 0, scope: !4045)
!4047 = !DILocation(line: 209, column: 25, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 209, column: 3)
!4049 = !DILocation(line: 209, column: 3, scope: !4045)
!4050 = !DILocation(line: 0, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4052, file: !3, line: 239, column: 7)
!4052 = distinct !DILexicalBlock(scope: !4018, file: !3, line: 214, column: 5)
!4053 = !DILocation(line: 0, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4051, file: !3, line: 239, column: 7)
!4055 = !DILocation(line: 213, column: 3, scope: !4018)
!4056 = !DILocation(line: 209, column: 40, scope: !4048)
!4057 = !DILocation(line: 209, column: 3, scope: !4048)
!4058 = distinct !{!4058, !4049, !4059}
!4059 = !DILocation(line: 210, column: 20, scope: !4045)
!4060 = !DILocation(line: 215, column: 12, scope: !4052)
!4061 = !DILocation(line: 216, column: 12, scope: !4052)
!4062 = !DILocation(line: 219, column: 12, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4052, file: !3, line: 219, column: 11)
!4064 = !DILocation(line: 219, column: 15, scope: !4063)
!4065 = !DILocation(line: 219, column: 23, scope: !4063)
!4066 = !DILocation(line: 219, column: 19, scope: !4063)
!4067 = !DILocation(line: 219, column: 11, scope: !4052)
!4068 = !DILocation(line: 222, column: 14, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4052, file: !3, line: 222, column: 11)
!4070 = !DILocation(line: 222, column: 11, scope: !4052)
!4071 = !DILocation(line: 224, column: 4, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4073, file: !3, line: 224, column: 4)
!4073 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 223, column: 2)
!4074 = !DILocation(line: 224, column: 12, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4072, file: !3, line: 224, column: 4)
!4076 = !DILocation(line: 224, column: 11, scope: !4075)
!4077 = !DILocation(line: 225, column: 10, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4075, file: !3, line: 225, column: 10)
!4079 = !DILocation(line: 225, column: 25, scope: !4078)
!4080 = !DILocation(line: 225, column: 10, scope: !4075)
!4081 = !DILocation(line: 224, column: 29, scope: !4075)
!4082 = !DILocation(line: 224, column: 4, scope: !4075)
!4083 = distinct !{!4083, !4071, !4084}
!4084 = !DILocation(line: 226, column: 8, scope: !4072)
!4085 = !DILocation(line: 228, column: 9, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4073, file: !3, line: 228, column: 8)
!4087 = !DILocation(line: 228, column: 8, scope: !4073)
!4088 = !DILocation(line: 230, column: 4, scope: !4073)
!4089 = !DILocation(line: 233, column: 11, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4052, file: !3, line: 233, column: 11)
!4091 = !DILocation(line: 233, column: 28, scope: !4090)
!4092 = !DILocation(line: 233, column: 11, scope: !4052)
!4093 = !DILocation(line: 239, column: 7, scope: !4051)
!4094 = !DILocation(line: 239, column: 7, scope: !4054)
!4095 = !DILocation(line: 242, column: 7, scope: !4052)
!4096 = !DILocation(line: 240, column: 6, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4054, file: !3, line: 240, column: 6)
!4098 = !DILocation(line: 240, column: 9, scope: !4097)
!4099 = !DILocation(line: 240, column: 14, scope: !4097)
!4100 = !DILocation(line: 240, column: 6, scope: !4054)
!4101 = distinct !{!4101, !4093, !4102}
!4102 = !DILocation(line: 241, column: 4, scope: !4051)
!4103 = !DILocation(line: 244, column: 14, scope: !4052)
!4104 = !DILocation(line: 245, column: 11, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4052, file: !3, line: 245, column: 11)
!4106 = !DILocation(line: 245, column: 28, scope: !4105)
!4107 = !DILocation(line: 245, column: 11, scope: !4052)
!4108 = distinct !{!4108, !4055, !4109}
!4109 = !DILocation(line: 250, column: 5, scope: !4018)
!4110 = !DILocation(line: 253, column: 8, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4018, file: !3, line: 253, column: 3)
!4112 = !DILocation(line: 0, scope: !4111)
!4113 = !DILocation(line: 253, column: 25, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4111, file: !3, line: 253, column: 3)
!4115 = !DILocation(line: 253, column: 3, scope: !4111)
!4116 = !DILocation(line: 253, column: 40, scope: !4114)
!4117 = !DILocation(line: 253, column: 3, scope: !4114)
!4118 = distinct !{!4118, !4115, !4119}
!4119 = !DILocation(line: 254, column: 15, scope: !4111)
!4120 = !DILocation(line: 258, column: 1, scope: !4018)
!4121 = distinct !DISubprogram(name: "gimple_expr_code", scope: !568, file: !568, line: 1438, type: !3963, scopeLine: 1439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4122)
!4122 = !{!4123, !4124}
!4123 = !DILocalVariable(name: "stmt", arg: 1, scope: !4121, file: !568, line: 1438, type: !2843)
!4124 = !DILocalVariable(name: "code", scope: !4121, file: !568, line: 1440, type: !567)
!4125 = !DILocation(line: 0, scope: !4121)
!4126 = !DILocation(line: 1440, column: 27, scope: !4121)
!4127 = !DILocation(line: 1441, column: 29, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4121, file: !568, line: 1441, column: 7)
!4129 = !DILocation(line: 1442, column: 42, scope: !4128)
!4130 = !DILocation(line: 1442, column: 5, scope: !4128)
!4131 = !DILocation(line: 1446, column: 5, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4128, file: !568, line: 1443, column: 12)
!4133 = !DILocation(line: 1448, column: 5, scope: !4121)
!4134 = !DILocation(line: 1450, column: 1, scope: !4121)
!4135 = distinct !DISubprogram(name: "is_gimple_assign", scope: !568, file: !568, line: 1677, type: !3562, scopeLine: 1678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4136)
!4136 = !{!4137}
!4137 = !DILocalVariable(name: "gs", arg: 1, scope: !4135, file: !568, line: 1677, type: !2843)
!4138 = !DILocation(line: 0, scope: !4135)
!4139 = !DILocation(line: 1679, column: 10, scope: !4135)
!4140 = !DILocation(line: 1679, column: 27, scope: !4135)
!4141 = !DILocation(line: 1679, column: 3, scope: !4135)
!4142 = distinct !DISubprogram(name: "gimple_bb", scope: !568, file: !568, line: 1112, type: !4143, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4145)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{!936, !2843}
!4145 = !{!4146}
!4146 = !DILocalVariable(name: "g", arg: 1, scope: !4142, file: !568, line: 1112, type: !2843)
!4147 = !DILocation(line: 0, scope: !4142)
!4148 = !DILocation(line: 1114, column: 20, scope: !4142)
!4149 = !DILocation(line: 1114, column: 3, scope: !4142)
!4150 = distinct !DISubprogram(name: "var_ann", scope: !3110, file: !3110, line: 132, type: !4151, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4154)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!4153, !3324}
!4153 = !DIDerivedType(tag: DW_TAG_typedef, name: "var_ann_t", file: !1312, line: 297, baseType: !1310)
!4154 = !{!4155, !4156}
!4155 = !DILocalVariable(name: "t", arg: 1, scope: !4150, file: !3110, line: 132, type: !3324)
!4156 = !DILocalVariable(name: "p", scope: !4150, file: !3110, line: 134, type: !4157)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4153)
!4159 = !DILocation(line: 0, scope: !4150)
!4160 = !DILocation(line: 134, column: 24, scope: !4150)
!4161 = !DILocation(line: 135, column: 10, scope: !4150)
!4162 = !DILocation(line: 135, column: 14, scope: !4150)
!4163 = !DILocation(line: 135, column: 3, scope: !4150)
!4164 = distinct !DISubprogram(name: "eliminate_tail_call", scope: !3, file: !3, line: 751, type: !4165, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4167)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{null, !2041}
!4167 = !{!4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181}
!4168 = !DILocalVariable(name: "t", arg: 1, scope: !4164, file: !3, line: 751, type: !2041)
!4169 = !DILocalVariable(name: "param", scope: !4164, file: !3, line: 753, type: !648)
!4170 = !DILocalVariable(name: "rslt", scope: !4164, file: !3, line: 753, type: !648)
!4171 = !DILocalVariable(name: "stmt", scope: !4164, file: !3, line: 754, type: !972)
!4172 = !DILocalVariable(name: "call", scope: !4164, file: !3, line: 754, type: !972)
!4173 = !DILocalVariable(name: "arg", scope: !4164, file: !3, line: 755, type: !648)
!4174 = !DILocalVariable(name: "idx", scope: !4164, file: !3, line: 756, type: !1118)
!4175 = !DILocalVariable(name: "bb", scope: !4164, file: !3, line: 757, type: !1530)
!4176 = !DILocalVariable(name: "first", scope: !4164, file: !3, line: 757, type: !1530)
!4177 = !DILocalVariable(name: "e", scope: !4164, file: !3, line: 758, type: !952)
!4178 = !DILocalVariable(name: "phi", scope: !4164, file: !3, line: 759, type: !972)
!4179 = !DILocalVariable(name: "gsi", scope: !4164, file: !3, line: 760, type: !2045)
!4180 = !DILocalVariable(name: "orig_stmt", scope: !4164, file: !3, line: 761, type: !972)
!4181 = !DILocalVariable(name: "t", scope: !4182, file: !3, line: 785, type: !972)
!4182 = distinct !DILexicalBlock(scope: !4164, file: !3, line: 784, column: 5)
!4183 = !DILocation(line: 0, scope: !4164)
!4184 = !DILocation(line: 760, column: 3, scope: !4164)
!4185 = !DILocation(line: 763, column: 35, scope: !4164)
!4186 = !DILocation(line: 763, column: 22, scope: !4164)
!4187 = !DILocation(line: 764, column: 8, scope: !4164)
!4188 = !DILocation(line: 766, column: 7, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4164, file: !3, line: 766, column: 7)
!4190 = !DILocation(line: 766, column: 17, scope: !4189)
!4191 = !DILocation(line: 766, column: 21, scope: !4189)
!4192 = !DILocation(line: 766, column: 32, scope: !4189)
!4193 = !DILocation(line: 766, column: 7, scope: !4164)
!4194 = !DILocation(line: 769, column: 13, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4189, file: !3, line: 767, column: 5)
!4196 = !DILocation(line: 768, column: 7, scope: !4195)
!4197 = !DILocation(line: 770, column: 26, scope: !4195)
!4198 = !DILocation(line: 770, column: 7, scope: !4195)
!4199 = !DILocation(line: 771, column: 16, scope: !4195)
!4200 = !DILocation(line: 771, column: 7, scope: !4195)
!4201 = !DILocation(line: 772, column: 5, scope: !4195)
!4202 = !DILocation(line: 774, column: 3, scope: !4164)
!4203 = !DILocation(line: 776, column: 24, scope: !4164)
!4204 = !DILocation(line: 776, column: 11, scope: !4164)
!4205 = !DILocation(line: 781, column: 12, scope: !4164)
!4206 = !DILocation(line: 782, column: 3, scope: !4164)
!4207 = !DILocation(line: 783, column: 3, scope: !4164)
!4208 = !DILocation(line: 783, column: 11, scope: !4164)
!4209 = !DILocation(line: 783, column: 10, scope: !4164)
!4210 = !DILocation(line: 785, column: 18, scope: !4182)
!4211 = !DILocation(line: 0, scope: !4182)
!4212 = !DILocation(line: 788, column: 11, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 788, column: 11)
!4214 = !DILocation(line: 788, column: 27, scope: !4213)
!4215 = !DILocation(line: 788, column: 11, scope: !4182)
!4216 = !DILocation(line: 791, column: 7, scope: !4182)
!4217 = !DILocation(line: 792, column: 7, scope: !4182)
!4218 = !DILocation(line: 793, column: 5, scope: !4164)
!4219 = distinct !{!4219, !4207, !4218}
!4220 = !DILocation(line: 796, column: 25, scope: !4164)
!4221 = !DILocation(line: 796, column: 7, scope: !4164)
!4222 = !DILocation(line: 797, column: 21, scope: !4164)
!4223 = !DILocation(line: 797, column: 40, scope: !4164)
!4224 = !DILocation(line: 797, column: 47, scope: !4164)
!4225 = !DILocation(line: 797, column: 3, scope: !4164)
!4226 = !DILocation(line: 798, column: 21, scope: !4164)
!4227 = !DILocation(line: 798, column: 41, scope: !4164)
!4228 = !DILocation(line: 798, column: 48, scope: !4164)
!4229 = !DILocation(line: 798, column: 3, scope: !4164)
!4230 = !DILocation(line: 799, column: 10, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4164, file: !3, line: 799, column: 7)
!4232 = !DILocation(line: 799, column: 18, scope: !4231)
!4233 = !DILocation(line: 799, column: 15, scope: !4231)
!4234 = !DILocation(line: 799, column: 7, scope: !4164)
!4235 = !DILocation(line: 800, column: 35, scope: !4231)
!4236 = !DILocation(line: 800, column: 42, scope: !4231)
!4237 = !DILocation(line: 800, column: 5, scope: !4231)
!4238 = !DILocation(line: 803, column: 51, scope: !4164)
!4239 = !DILocation(line: 803, column: 33, scope: !4164)
!4240 = !DILocation(line: 803, column: 7, scope: !4164)
!4241 = !DILocation(line: 805, column: 3, scope: !4164)
!4242 = !DILocation(line: 806, column: 3, scope: !4164)
!4243 = !DILocation(line: 806, column: 20, scope: !4164)
!4244 = !DILocation(line: 810, column: 16, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4164, file: !3, line: 810, column: 3)
!4246 = !DILocation(line: 811, column: 18, scope: !4245)
!4247 = !DILocation(line: 810, column: 8, scope: !4245)
!4248 = !DILocation(line: 0, scope: !4245)
!4249 = !DILocation(line: 810, column: 3, scope: !4245)
!4250 = !DILocation(line: 815, column: 12, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !4252, file: !3, line: 815, column: 11)
!4252 = distinct !DILexicalBlock(scope: !4253, file: !3, line: 814, column: 5)
!4253 = distinct !DILexicalBlock(scope: !4245, file: !3, line: 810, column: 3)
!4254 = !DILocation(line: 815, column: 11, scope: !4252)
!4255 = !DILocation(line: 818, column: 36, scope: !4252)
!4256 = !DILocation(line: 818, column: 13, scope: !4252)
!4257 = !DILocation(line: 819, column: 13, scope: !4252)
!4258 = !DILocation(line: 820, column: 7, scope: !4252)
!4259 = !DILocation(line: 822, column: 33, scope: !4252)
!4260 = !DILocation(line: 822, column: 7, scope: !4252)
!4261 = !DILocation(line: 823, column: 7, scope: !4252)
!4262 = !DILocation(line: 824, column: 5, scope: !4252)
!4263 = !DILocation(line: 813, column: 16, scope: !4253)
!4264 = !DILocation(line: 813, column: 39, scope: !4253)
!4265 = !DILocation(line: 810, column: 3, scope: !4253)
!4266 = distinct !{!4266, !4249, !4267}
!4267 = !DILocation(line: 824, column: 5, scope: !4245)
!4268 = !DILocation(line: 827, column: 46, scope: !4164)
!4269 = !DILocation(line: 827, column: 55, scope: !4164)
!4270 = !DILocation(line: 827, column: 3, scope: !4164)
!4271 = !DILocation(line: 829, column: 10, scope: !4164)
!4272 = !DILocation(line: 830, column: 10, scope: !4164)
!4273 = !DILocation(line: 831, column: 12, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4164, file: !3, line: 831, column: 7)
!4275 = !DILocation(line: 831, column: 7, scope: !4164)
!4276 = !DILocation(line: 835, column: 34, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 832, column: 5)
!4278 = !DILocation(line: 835, column: 7, scope: !4277)
!4279 = !DILocation(line: 835, column: 32, scope: !4277)
!4280 = !DILocation(line: 836, column: 5, scope: !4277)
!4281 = !DILocation(line: 838, column: 3, scope: !4164)
!4282 = !DILocation(line: 839, column: 3, scope: !4164)
!4283 = !DILocation(line: 840, column: 1, scope: !4164)
!4284 = distinct !DISubprogram(name: "gimple_call_set_tail", scope: !568, file: !568, line: 2058, type: !4285, scopeLine: 2059, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4287)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{null, !972, !640}
!4287 = !{!4288, !4289}
!4288 = !DILocalVariable(name: "s", arg: 1, scope: !4284, file: !568, line: 2058, type: !972)
!4289 = !DILocalVariable(name: "tail_p", arg: 2, scope: !4284, file: !568, line: 2058, type: !640)
!4290 = !DILocation(line: 0, scope: !4284)
!4291 = !DILocation(line: 0, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4284, file: !568, line: 2061, column: 7)
!4293 = !DILocation(line: 2062, column: 23, scope: !4292)
!4294 = !DILocation(line: 2065, column: 1, scope: !4284)
!4295 = distinct !DISubprogram(name: "gsi_bb", scope: !568, file: !568, line: 4588, type: !4296, scopeLine: 4589, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4298)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!1530, !2045}
!4298 = !{!4299}
!4299 = !DILocalVariable(name: "i", arg: 1, scope: !4295, file: !568, line: 4588, type: !2045)
!4300 = !DILocation(line: 4588, column: 30, scope: !4295)
!4301 = !DILocation(line: 4590, column: 12, scope: !4295)
!4302 = !DILocation(line: 4590, column: 3, scope: !4295)
!4303 = distinct !DISubprogram(name: "decrease_profile", scope: !3, file: !3, line: 708, type: !4304, scopeLine: 709, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4306)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{null, !1530, !1184, !641}
!4306 = !{!4307, !4308, !4309, !4310}
!4307 = !DILocalVariable(name: "bb", arg: 1, scope: !4303, file: !3, line: 708, type: !1530)
!4308 = !DILocalVariable(name: "count", arg: 2, scope: !4303, file: !3, line: 708, type: !1184)
!4309 = !DILocalVariable(name: "frequency", arg: 3, scope: !4303, file: !3, line: 708, type: !641)
!4310 = !DILocalVariable(name: "e", scope: !4303, file: !3, line: 710, type: !952)
!4311 = !DILocation(line: 0, scope: !4303)
!4312 = !DILocation(line: 711, column: 7, scope: !4303)
!4313 = !DILocation(line: 711, column: 13, scope: !4303)
!4314 = !DILocation(line: 712, column: 17, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4303, file: !3, line: 712, column: 7)
!4316 = !DILocation(line: 712, column: 7, scope: !4303)
!4317 = !DILocation(line: 713, column: 5, scope: !4315)
!4318 = !DILocation(line: 714, column: 7, scope: !4303)
!4319 = !DILocation(line: 714, column: 17, scope: !4303)
!4320 = !DILocation(line: 715, column: 21, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4303, file: !3, line: 715, column: 7)
!4322 = !DILocation(line: 715, column: 7, scope: !4303)
!4323 = !DILocation(line: 716, column: 5, scope: !4321)
!4324 = !DILocation(line: 717, column: 8, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4303, file: !3, line: 717, column: 7)
!4326 = !DILocation(line: 717, column: 7, scope: !4303)
!4327 = !DILocation(line: 719, column: 7, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4325, file: !3, line: 718, column: 5)
!4329 = !DILocation(line: 722, column: 7, scope: !4303)
!4330 = !DILocation(line: 723, column: 6, scope: !4303)
!4331 = !DILocation(line: 723, column: 12, scope: !4303)
!4332 = !DILocation(line: 724, column: 16, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4303, file: !3, line: 724, column: 7)
!4334 = !DILocation(line: 724, column: 7, scope: !4303)
!4335 = !DILocation(line: 725, column: 14, scope: !4333)
!4336 = !DILocation(line: 725, column: 5, scope: !4333)
!4337 = !DILocation(line: 726, column: 1, scope: !4303)
!4338 = distinct !DISubprogram(name: "gimple_location", scope: !568, file: !568, line: 1139, type: !4339, scopeLine: 1140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4341)
!4339 = !DISubroutineType(types: !4340)
!4340 = !{!773, !2843}
!4341 = !{!4342}
!4342 = !DILocalVariable(name: "g", arg: 1, scope: !4338, file: !568, line: 1139, type: !2843)
!4343 = !DILocation(line: 0, scope: !4338)
!4344 = !DILocation(line: 1141, column: 20, scope: !4338)
!4345 = !DILocation(line: 1141, column: 3, scope: !4338)
!4346 = distinct !DISubprogram(name: "adjust_accumulator_values", scope: !3, file: !3, line: 642, type: !4347, scopeLine: 643, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4349)
!4347 = !DISubroutineType(types: !4348)
!4348 = !{null, !2045, !648, !648, !952}
!4349 = !{!4350, !4351, !4352, !4353, !4354, !4355, !4356}
!4350 = !DILocalVariable(name: "gsi", arg: 1, scope: !4346, file: !3, line: 642, type: !2045)
!4351 = !DILocalVariable(name: "m", arg: 2, scope: !4346, file: !3, line: 642, type: !648)
!4352 = !DILocalVariable(name: "a", arg: 3, scope: !4346, file: !3, line: 642, type: !648)
!4353 = !DILocalVariable(name: "back", arg: 4, scope: !4346, file: !3, line: 642, type: !952)
!4354 = !DILocalVariable(name: "var", scope: !4346, file: !3, line: 644, type: !648)
!4355 = !DILocalVariable(name: "a_acc_arg", scope: !4346, file: !3, line: 644, type: !648)
!4356 = !DILocalVariable(name: "m_acc_arg", scope: !4346, file: !3, line: 644, type: !648)
!4357 = !DILocation(line: 642, column: 49, scope: !4346)
!4358 = !DILocation(line: 0, scope: !4346)
!4359 = !DILocation(line: 646, column: 7, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4346, file: !3, line: 646, column: 7)
!4361 = !DILocation(line: 646, column: 7, scope: !4346)
!4362 = !DILocation(line: 647, column: 9, scope: !4360)
!4363 = !DILocation(line: 647, column: 5, scope: !4360)
!4364 = !DILocation(line: 648, column: 7, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4346, file: !3, line: 648, column: 7)
!4366 = !DILocation(line: 648, column: 7, scope: !4346)
!4367 = !DILocation(line: 649, column: 9, scope: !4365)
!4368 = !DILocation(line: 649, column: 5, scope: !4365)
!4369 = !DILocation(line: 651, column: 15, scope: !4346)
!4370 = !DILocation(line: 652, column: 15, scope: !4346)
!4371 = !DILocation(line: 653, column: 7, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4346, file: !3, line: 653, column: 7)
!4373 = !DILocation(line: 653, column: 7, scope: !4346)
!4374 = !DILocation(line: 655, column: 11, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4376, file: !3, line: 655, column: 11)
!4376 = distinct !DILexicalBlock(scope: !4372, file: !3, line: 654, column: 5)
!4377 = !DILocation(line: 655, column: 11, scope: !4376)
!4378 = !DILocation(line: 657, column: 8, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4380, file: !3, line: 657, column: 8)
!4380 = distinct !DILexicalBlock(scope: !4375, file: !3, line: 656, column: 2)
!4381 = !DILocation(line: 0, scope: !4379)
!4382 = !DILocation(line: 657, column: 8, scope: !4380)
!4383 = !DILocation(line: 660, column: 12, scope: !4379)
!4384 = !DILocation(line: 0, scope: !4375)
!4385 = !DILocation(line: 666, column: 59, scope: !4376)
!4386 = !DILocation(line: 666, column: 19, scope: !4376)
!4387 = !DILocation(line: 667, column: 5, scope: !4376)
!4388 = !DILocation(line: 669, column: 7, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4346, file: !3, line: 669, column: 7)
!4390 = !DILocation(line: 669, column: 7, scope: !4346)
!4391 = !DILocation(line: 670, column: 57, scope: !4389)
!4392 = !DILocation(line: 670, column: 17, scope: !4389)
!4393 = !DILocation(line: 670, column: 5, scope: !4389)
!4394 = !DILocation(line: 672, column: 7, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4346, file: !3, line: 672, column: 7)
!4396 = !DILocation(line: 672, column: 7, scope: !4346)
!4397 = !DILocation(line: 673, column: 5, scope: !4395)
!4398 = !DILocation(line: 675, column: 7, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4346, file: !3, line: 675, column: 7)
!4400 = !DILocation(line: 675, column: 7, scope: !4346)
!4401 = !DILocation(line: 676, column: 5, scope: !4399)
!4402 = !DILocation(line: 677, column: 1, scope: !4346)
!4403 = distinct !DISubprogram(name: "adjust_return_value_with_ops", scope: !3, file: !3, line: 572, type: !4404, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4406)
!4404 = !DISubroutineType(types: !4405)
!4405 = !{!648, !373, !646, !648, !648, !2045}
!4406 = !{!4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416}
!4407 = !DILocalVariable(name: "code", arg: 1, scope: !4403, file: !3, line: 572, type: !373)
!4408 = !DILocalVariable(name: "label", arg: 2, scope: !4403, file: !3, line: 572, type: !646)
!4409 = !DILocalVariable(name: "acc", arg: 3, scope: !4403, file: !3, line: 573, type: !648)
!4410 = !DILocalVariable(name: "op1", arg: 4, scope: !4403, file: !3, line: 573, type: !648)
!4411 = !DILocalVariable(name: "gsi", arg: 5, scope: !4403, file: !3, line: 573, type: !2045)
!4412 = !DILocalVariable(name: "ret_type", scope: !4403, file: !3, line: 576, type: !648)
!4413 = !DILocalVariable(name: "tmp", scope: !4403, file: !3, line: 577, type: !648)
!4414 = !DILocalVariable(name: "stmt", scope: !4403, file: !3, line: 578, type: !972)
!4415 = !DILocalVariable(name: "result", scope: !4403, file: !3, line: 579, type: !648)
!4416 = !DILocalVariable(name: "rhs", scope: !4417, file: !3, line: 590, type: !648)
!4417 = distinct !DILexicalBlock(scope: !4418, file: !3, line: 589, column: 5)
!4418 = distinct !DILexicalBlock(scope: !4403, file: !3, line: 586, column: 7)
!4419 = !DILocation(line: 0, scope: !4403)
!4420 = !DILocation(line: 573, column: 51, scope: !4403)
!4421 = !DILocation(line: 576, column: 19, scope: !4403)
!4422 = !DILocation(line: 577, column: 14, scope: !4403)
!4423 = !DILocation(line: 581, column: 7, scope: !4424)
!4424 = distinct !DILexicalBlock(scope: !4403, file: !3, line: 581, column: 7)
!4425 = !DILocation(line: 581, column: 28, scope: !4424)
!4426 = !DILocation(line: 582, column: 7, scope: !4424)
!4427 = !DILocation(line: 582, column: 31, scope: !4424)
!4428 = !DILocation(line: 581, column: 7, scope: !4403)
!4429 = !DILocation(line: 583, column: 5, scope: !4424)
!4430 = !DILocation(line: 583, column: 29, scope: !4424)
!4431 = !DILocation(line: 584, column: 3, scope: !4403)
!4432 = !DILocation(line: 586, column: 27, scope: !4418)
!4433 = !DILocation(line: 586, column: 44, scope: !4418)
!4434 = !DILocation(line: 586, column: 7, scope: !4418)
!4435 = !DILocation(line: 586, column: 7, scope: !4403)
!4436 = !DILocation(line: 587, column: 12, scope: !4418)
!4437 = !DILocation(line: 587, column: 5, scope: !4418)
!4438 = !DILocation(line: 590, column: 18, scope: !4417)
!4439 = !DILocation(line: 0, scope: !4417)
!4440 = !DILocation(line: 595, column: 13, scope: !4417)
!4441 = !DILocation(line: 597, column: 14, scope: !4417)
!4442 = !DILocation(line: 0, scope: !4418)
!4443 = !DILocation(line: 600, column: 12, scope: !4403)
!4444 = !DILocation(line: 601, column: 3, scope: !4403)
!4445 = !DILocation(line: 602, column: 3, scope: !4403)
!4446 = !DILocation(line: 603, column: 3, scope: !4403)
!4447 = !DILocation(line: 604, column: 3, scope: !4403)
!4448 = distinct !DISubprogram(name: "update_accumulator_with_ops", scope: !3, file: !3, line: 613, type: !4449, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4451)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{!648, !373, !648, !648, !2045}
!4451 = !{!4452, !4453, !4454, !4455, !4456, !4457, !4458}
!4452 = !DILocalVariable(name: "code", arg: 1, scope: !4448, file: !3, line: 613, type: !373)
!4453 = !DILocalVariable(name: "acc", arg: 2, scope: !4448, file: !3, line: 613, type: !648)
!4454 = !DILocalVariable(name: "op1", arg: 3, scope: !4448, file: !3, line: 613, type: !648)
!4455 = !DILocalVariable(name: "gsi", arg: 4, scope: !4448, file: !3, line: 614, type: !2045)
!4456 = !DILocalVariable(name: "stmt", scope: !4448, file: !3, line: 616, type: !972)
!4457 = !DILocalVariable(name: "var", scope: !4448, file: !3, line: 617, type: !648)
!4458 = !DILocalVariable(name: "rhs", scope: !4459, file: !3, line: 622, type: !648)
!4459 = distinct !DILexicalBlock(scope: !4460, file: !3, line: 621, column: 5)
!4460 = distinct !DILexicalBlock(scope: !4448, file: !3, line: 618, column: 7)
!4461 = !DILocation(line: 0, scope: !4448)
!4462 = !DILocation(line: 614, column: 30, scope: !4448)
!4463 = !DILocation(line: 618, column: 27, scope: !4460)
!4464 = !DILocation(line: 618, column: 44, scope: !4460)
!4465 = !DILocation(line: 618, column: 7, scope: !4460)
!4466 = !DILocation(line: 618, column: 7, scope: !4448)
!4467 = !DILocation(line: 619, column: 12, scope: !4460)
!4468 = !DILocation(line: 619, column: 5, scope: !4460)
!4469 = !DILocation(line: 622, column: 18, scope: !4459)
!4470 = !DILocation(line: 0, scope: !4459)
!4471 = !DILocation(line: 627, column: 13, scope: !4459)
!4472 = !DILocation(line: 629, column: 14, scope: !4459)
!4473 = !DILocation(line: 0, scope: !4460)
!4474 = !DILocation(line: 631, column: 24, scope: !4448)
!4475 = !DILocation(line: 631, column: 9, scope: !4448)
!4476 = !DILocation(line: 632, column: 3, scope: !4448)
!4477 = !DILocation(line: 633, column: 3, scope: !4448)
!4478 = !DILocation(line: 634, column: 3, scope: !4448)
!4479 = !DILocation(line: 635, column: 3, scope: !4448)
!4480 = distinct !DISubprogram(name: "add_successor_phi_arg", scope: !3, file: !3, line: 554, type: !4481, scopeLine: 555, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4483)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{null, !952, !648, !648}
!4483 = !{!4484, !4485, !4486, !4487}
!4484 = !DILocalVariable(name: "e", arg: 1, scope: !4480, file: !3, line: 554, type: !952)
!4485 = !DILocalVariable(name: "var", arg: 2, scope: !4480, file: !3, line: 554, type: !648)
!4486 = !DILocalVariable(name: "phi_arg", arg: 3, scope: !4480, file: !3, line: 554, type: !648)
!4487 = !DILocalVariable(name: "gsi", scope: !4480, file: !3, line: 556, type: !2045)
!4488 = !DILocation(line: 0, scope: !4480)
!4489 = !DILocation(line: 556, column: 3, scope: !4480)
!4490 = !DILocation(line: 558, column: 14, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4480, file: !3, line: 558, column: 3)
!4492 = !DILocation(line: 558, column: 33, scope: !4491)
!4493 = !DILocation(line: 558, column: 8, scope: !4491)
!4494 = !DILocation(line: 558, column: 41, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !4491, file: !3, line: 558, column: 3)
!4496 = !DILocation(line: 558, column: 40, scope: !4495)
!4497 = !DILocation(line: 558, column: 3, scope: !4491)
!4498 = !DILocation(line: 559, column: 9, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4495, file: !3, line: 559, column: 9)
!4500 = !DILocation(line: 559, column: 37, scope: !4499)
!4501 = !DILocation(line: 559, column: 9, scope: !4495)
!4502 = !DILocation(line: 558, column: 58, scope: !4495)
!4503 = !DILocation(line: 558, column: 3, scope: !4495)
!4504 = distinct !{!4504, !4497, !4505}
!4505 = !DILocation(line: 560, column: 7, scope: !4491)
!4506 = !DILocation(line: 562, column: 3, scope: !4480)
!4507 = !DILocation(line: 563, column: 16, scope: !4480)
!4508 = !DILocation(line: 563, column: 3, scope: !4480)
!4509 = !DILocation(line: 564, column: 1, scope: !4480)
!4510 = distinct !DISubprogram(name: "gimple_assign_set_lhs", scope: !568, file: !568, line: 1714, type: !4511, scopeLine: 1715, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4513)
!4511 = !DISubroutineType(types: !4512)
!4512 = !{null, !972, !648}
!4513 = !{!4514, !4515}
!4514 = !DILocalVariable(name: "gs", arg: 1, scope: !4510, file: !568, line: 1714, type: !972)
!4515 = !DILocalVariable(name: "lhs", arg: 2, scope: !4510, file: !568, line: 1714, type: !648)
!4516 = !DILocation(line: 0, scope: !4510)
!4517 = !DILocation(line: 1717, column: 3, scope: !4510)
!4518 = !DILocation(line: 1719, column: 7, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4510, file: !568, line: 1719, column: 7)
!4520 = !DILocation(line: 1719, column: 11, scope: !4519)
!4521 = !DILocation(line: 1719, column: 14, scope: !4519)
!4522 = !DILocation(line: 1719, column: 30, scope: !4519)
!4523 = !DILocation(line: 1719, column: 7, scope: !4510)
!4524 = !DILocation(line: 1720, column: 5, scope: !4519)
!4525 = !DILocation(line: 1720, column: 29, scope: !4519)
!4526 = !DILocation(line: 1721, column: 1, scope: !4510)
!4527 = distinct !DISubprogram(name: "update_stmt", scope: !568, file: !568, line: 1456, type: !4528, scopeLine: 1457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4530)
!4528 = !DISubroutineType(types: !4529)
!4529 = !{null, !972}
!4530 = !{!4531}
!4531 = !DILocalVariable(name: "s", arg: 1, scope: !4527, file: !568, line: 1456, type: !972)
!4532 = !DILocation(line: 0, scope: !4527)
!4533 = !DILocation(line: 1458, column: 7, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4527, file: !568, line: 1458, column: 7)
!4535 = !DILocation(line: 1458, column: 7, scope: !4527)
!4536 = !DILocation(line: 1460, column: 7, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4534, file: !568, line: 1459, column: 5)
!4538 = !DILocation(line: 1461, column: 7, scope: !4537)
!4539 = !DILocation(line: 1462, column: 5, scope: !4537)
!4540 = !DILocation(line: 1463, column: 1, scope: !4527)
!4541 = distinct !DISubprogram(name: "gimple_set_op", scope: !568, file: !568, line: 1663, type: !4542, scopeLine: 1664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4544)
!4542 = !DISubroutineType(types: !4543)
!4543 = !{null, !972, !7, !648}
!4544 = !{!4545, !4546, !4547}
!4545 = !DILocalVariable(name: "gs", arg: 1, scope: !4541, file: !568, line: 1663, type: !972)
!4546 = !DILocalVariable(name: "i", arg: 2, scope: !4541, file: !568, line: 1663, type: !7)
!4547 = !DILocalVariable(name: "op", arg: 3, scope: !4541, file: !568, line: 1663, type: !648)
!4548 = !DILocation(line: 0, scope: !4541)
!4549 = !DILocation(line: 1665, column: 3, scope: !4541)
!4550 = !DILocation(line: 1671, column: 3, scope: !4541)
!4551 = !DILocation(line: 1671, column: 22, scope: !4541)
!4552 = !DILocation(line: 1672, column: 1, scope: !4541)
!4553 = distinct !DISubprogram(name: "gimple_seq_last_stmt", scope: !568, file: !568, line: 187, type: !4554, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4556)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{!972, !3098}
!4556 = !{!4557, !4558}
!4557 = !DILocalVariable(name: "s", arg: 1, scope: !4553, file: !568, line: 187, type: !3098)
!4558 = !DILocalVariable(name: "n", scope: !4553, file: !568, line: 189, type: !967)
!4559 = !DILocation(line: 0, scope: !4553)
!4560 = !DILocation(line: 189, column: 23, scope: !4553)
!4561 = !DILocation(line: 190, column: 10, scope: !4553)
!4562 = !DILocation(line: 190, column: 19, scope: !4553)
!4563 = !DILocation(line: 190, column: 3, scope: !4553)
!4564 = distinct !DISubprogram(name: "gimple_return_set_retval", scope: !568, file: !568, line: 4263, type: !4511, scopeLine: 4264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4565)
!4565 = !{!4566, !4567}
!4566 = !DILocalVariable(name: "gs", arg: 1, scope: !4564, file: !568, line: 4263, type: !972)
!4567 = !DILocalVariable(name: "retval", arg: 2, scope: !4564, file: !568, line: 4263, type: !648)
!4568 = !DILocation(line: 0, scope: !4564)
!4569 = !DILocation(line: 4266, column: 3, scope: !4564)
!4570 = !DILocation(line: 4267, column: 1, scope: !4564)
