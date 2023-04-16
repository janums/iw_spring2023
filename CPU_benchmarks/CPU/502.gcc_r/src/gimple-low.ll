; ModuleID = 'gimple-low.bc'
source_filename = "gimple-low.c"
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
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], %struct.object_block*, i64 }
%union.rtunion_def = type { i8* }
%struct.object_block = type { %union.section*, i32, i64, %struct.VEC_rtx_gc*, %struct.VEC_rtx_gc* }
%union.section = type opaque
%struct.VEC_rtx_gc = type { %struct.VEC_rtx_base }
%struct.VEC_rtx_base = type { i32, i32, [1 x %struct.rtx_def*] }
%struct.function = type { %struct.eh_status*, %struct.control_flow_graph*, %struct.gimple_seq_d*, %struct.gimple_df*, %struct.loops*, %struct.htab*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.machine_function*, %struct.language_function*, %struct.htab*, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.eh_status = type { %struct.eh_region_d*, %struct.VEC_eh_region_gc*, %struct.VEC_eh_landing_pad_gc*, %struct.htab*, %struct.VEC_tree_gc*, %union.eh_status_u }
%struct.eh_region_d = type { %struct.eh_region_d*, %struct.eh_region_d*, %struct.eh_region_d*, i32, i32, %union.eh_region_u, %struct.eh_landing_pad_d*, %struct.rtx_def*, %struct.rtx_def*, i8 }
%union.eh_region_u = type { %struct.eh_region_u_allowed }
%struct.eh_region_u_allowed = type { %union.tree_node*, %union.tree_node*, i32 }
%struct.eh_landing_pad_d = type { %struct.eh_landing_pad_d*, %struct.eh_region_d*, %union.tree_node*, %struct.rtx_def*, i32 }
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
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.lower_data = type { %union.tree_node*, %struct.VEC_return_statements_t_heap*, i8, i8 }
%struct.VEC_return_statements_t_heap = type { %struct.VEC_return_statements_t_base }
%struct.VEC_return_statements_t_base = type { i32, i32, [1 x %struct.return_statements_t] }
%struct.return_statements_t = type { %union.tree_node*, %union.gimple_statement_d* }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.tree_block = type { %struct.tree_common, i32, i32, %union.tree_node*, %struct.VEC_tree_gc*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node* }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque
%struct.tree_list = type { %struct.tree_common, %union.tree_node*, %union.tree_node* }
%struct.tree_stmt_iterator = type { %struct.tree_statement_list_node*, %union.tree_node* }
%struct.tree_statement_list_node = type { %struct.tree_statement_list_node*, %struct.tree_statement_list_node*, %union.tree_node* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@pass_lower_cf = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8 ()* null, i32 ()* @lower_function_body, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 1, i32 2, i32 0, i32 0, i32 1 } }, align 8, !dbg !0
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@current_function_decl = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"gimple-low.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"setjmpvar\00", align 1
@implicit_built_in_decls = external dso_local local_unnamed_addr global [721 x %union.tree_node*], align 16
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2093 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2106, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2107, metadata !DIExpression()), !dbg !2108
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2109
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2110
  ret i32 %call, !dbg !2111
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2112 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2116
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2117
  ret i32 %call, !dbg !2118
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2119 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2174, metadata !DIExpression()), !dbg !2175
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2176
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2176
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2176
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2176
  %cmp = icmp uge i8* %0, %1, !dbg !2176
  %conv1 = zext i1 %cmp to i64, !dbg !2176
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2176
  %tobool = icmp eq i64 %expval, 0, !dbg !2176
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2176

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2176
  br label %cond.end, !dbg !2176

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2176
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2176
  %2 = load i8, i8* %0, align 1, !dbg !2176
  %conv3 = zext i8 %2 to i32, !dbg !2176
  br label %cond.end, !dbg !2176

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2176
  ret i32 %cond, !dbg !2177
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2178 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2180, metadata !DIExpression()), !dbg !2181
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2182
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2182
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2182
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2182
  %cmp = icmp uge i8* %0, %1, !dbg !2182
  %conv1 = zext i1 %cmp to i64, !dbg !2182
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2182
  %tobool = icmp eq i64 %expval, 0, !dbg !2182
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2182

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2182
  br label %cond.end, !dbg !2182

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2182
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2182
  %2 = load i8, i8* %0, align 1, !dbg !2182
  %conv3 = zext i8 %2 to i32, !dbg !2182
  br label %cond.end, !dbg !2182

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2182
  ret i32 %cond, !dbg !2183
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2184 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2185
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2185
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2185
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2185
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2185
  %cmp = icmp uge i8* %1, %2, !dbg !2185
  %conv1 = zext i1 %cmp to i64, !dbg !2185
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2185
  %tobool = icmp eq i64 %expval, 0, !dbg !2185
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2185

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2185
  br label %cond.end, !dbg !2185

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2185
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2185
  %3 = load i8, i8* %1, align 1, !dbg !2185
  %conv3 = zext i8 %3 to i32, !dbg !2185
  br label %cond.end, !dbg !2185

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2185
  ret i32 %cond, !dbg !2186
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2187 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2191, metadata !DIExpression()), !dbg !2192
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2193
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2194
  ret i32 %call, !dbg !2195
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2196 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2200, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2201, metadata !DIExpression()), !dbg !2202
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2203
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2203
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2203
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2203
  %cmp = icmp uge i8* %0, %1, !dbg !2203
  %conv1 = zext i1 %cmp to i64, !dbg !2203
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2203
  %tobool = icmp eq i64 %expval, 0, !dbg !2203
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2203

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2203
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2203
  br label %cond.end, !dbg !2203

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2203
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2203
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2203
  store i8 %conv2, i8* %0, align 1, !dbg !2203
  %conv6 = and i32 %__c, 255, !dbg !2203
  br label %cond.end, !dbg !2203

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2203
  ret i32 %cond, !dbg !2204
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2205 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2207, metadata !DIExpression()), !dbg !2209
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2208, metadata !DIExpression()), !dbg !2209
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2210
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2210
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2210
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2210
  %cmp = icmp uge i8* %0, %1, !dbg !2210
  %conv1 = zext i1 %cmp to i64, !dbg !2210
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2210
  %tobool = icmp eq i64 %expval, 0, !dbg !2210
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2210

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2210
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2210
  br label %cond.end, !dbg !2210

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2210
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2210
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2210
  store i8 %conv2, i8* %0, align 1, !dbg !2210
  %conv6 = and i32 %__c, 255, !dbg !2210
  br label %cond.end, !dbg !2210

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2210
  ret i32 %cond, !dbg !2211
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2212 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2214, metadata !DIExpression()), !dbg !2215
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2216
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2216
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2216
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2216
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2216
  %cmp = icmp uge i8* %1, %2, !dbg !2216
  %conv1 = zext i1 %cmp to i64, !dbg !2216
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2216
  %tobool = icmp eq i64 %expval, 0, !dbg !2216
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2216

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2216
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2216
  br label %cond.end, !dbg !2216

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2216
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2216
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2216
  store i8 %conv4, i8* %1, align 1, !dbg !2216
  %conv6 = and i32 %__c, 255, !dbg !2216
  br label %cond.end, !dbg !2216

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2216
  ret i32 %cond, !dbg !2217
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2218 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2224, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2225, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2226, metadata !DIExpression()), !dbg !2227
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2228
  ret i64 %call, !dbg !2229
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2230 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2232, metadata !DIExpression()), !dbg !2233
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2234
  %0 = load i32, i32* %_flags, align 8, !dbg !2234
  %and = lshr i32 %0, 4, !dbg !2234
  %and.lobit = and i32 %and, 1, !dbg !2234
  ret i32 %and.lobit, !dbg !2235
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2236 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2238, metadata !DIExpression()), !dbg !2239
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2240
  %0 = load i32, i32* %_flags, align 8, !dbg !2240
  %and = lshr i32 %0, 5, !dbg !2240
  %and.lobit = and i32 %and, 1, !dbg !2240
  ret i32 %and.lobit, !dbg !2241
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2242 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2245, metadata !DIExpression()), !dbg !2246
  %__c.off = add i32 %__c, 128, !dbg !2247
  %0 = icmp ult i32 %__c.off, 384, !dbg !2247
  br i1 %0, label %cond.true, label %cond.end, !dbg !2247

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2248
  %1 = load i32*, i32** %call, align 8, !dbg !2249
  %idxprom = sext i32 %__c to i64, !dbg !2250
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2250
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2250
  br label %cond.end, !dbg !2251

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2251
  ret i32 %cond, !dbg !2252
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2253 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2255, metadata !DIExpression()), !dbg !2256
  %__c.off = add i32 %__c, 128, !dbg !2257
  %0 = icmp ult i32 %__c.off, 384, !dbg !2257
  br i1 %0, label %cond.true, label %cond.end, !dbg !2257

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2258
  %1 = load i32*, i32** %call, align 8, !dbg !2259
  %idxprom = sext i32 %__c to i64, !dbg !2260
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2260
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2260
  br label %cond.end, !dbg !2261

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2261
  ret i32 %cond, !dbg !2262
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2263 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2268, metadata !DIExpression()), !dbg !2269
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2270
  %conv = trunc i64 %call to i32, !dbg !2271
  ret i32 %conv, !dbg !2272
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2273 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2277, metadata !DIExpression()), !dbg !2278
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2279
  ret i64 %call, !dbg !2280
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2281 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2286, metadata !DIExpression()), !dbg !2287
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2288
  ret i64 %call, !dbg !2289
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2290 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2296, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2297, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2298, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2299, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2300, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 0, metadata !2301, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2302, metadata !DIExpression()), !dbg !2306
  br label %while.cond, !dbg !2307

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2308
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2306
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2302, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2301, metadata !DIExpression()), !dbg !2306
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2309
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2307

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2310
  %div = lshr i64 %add, 1, !dbg !2312
  call void @llvm.dbg.value(metadata i64 %div, metadata !2303, metadata !DIExpression()), !dbg !2306
  %mul = mul i64 %div, %__size, !dbg !2313
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2314
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2304, metadata !DIExpression()), !dbg !2306
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2315
  call void @llvm.dbg.value(metadata i32 %call, metadata !2305, metadata !DIExpression()), !dbg !2306
  %cmp1 = icmp slt i32 %call, 0, !dbg !2316
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2318

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2319
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2321

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2322
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2301, metadata !DIExpression()), !dbg !2306
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2306
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2306
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2302, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2301, metadata !DIExpression()), !dbg !2306
  br label %while.cond, !dbg !2307, !llvm.loop !2323

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2306
  ret i8* %retval.0, !dbg !2325
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2326 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2332, metadata !DIExpression()), !dbg !2333
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2334
  ret double %call, !dbg !2335
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2336 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2345, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2346, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata i32 %base, metadata !2347, metadata !DIExpression()), !dbg !2348
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2349
  ret i64 %call, !dbg !2350
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2351 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2357, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2358, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i32 %base, metadata !2359, metadata !DIExpression()), !dbg !2360
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2361
  ret i64 %call, !dbg !2362
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2363 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2374, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2375, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i32 %base, metadata !2376, metadata !DIExpression()), !dbg !2377
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2378
  ret i64 %call, !dbg !2379
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2380 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2384, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2385, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i32 %base, metadata !2386, metadata !DIExpression()), !dbg !2387
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2388
  ret i64 %call, !dbg !2389
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2390 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2430, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2431, metadata !DIExpression()), !dbg !2432
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2433
  ret i32 %call, !dbg !2434
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2435 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2437, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2438, metadata !DIExpression()), !dbg !2439
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2440
  ret i32 %call, !dbg !2441
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2442 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2446, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2447, metadata !DIExpression()), !dbg !2448
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2449
  ret i32 %call, !dbg !2450
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2451 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2455, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2456, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2457, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2458, metadata !DIExpression()), !dbg !2459
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2460
  ret i32 %call, !dbg !2461
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2462 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2466, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2467, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2468, metadata !DIExpression()), !dbg !2469
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2468, metadata !DIExpression(DW_OP_deref)), !dbg !2469
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2470
  ret i32 %call, !dbg !2471
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2472 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2476, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2477, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2478, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2479, metadata !DIExpression()), !dbg !2480
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2479, metadata !DIExpression(DW_OP_deref)), !dbg !2480
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2481
  ret i32 %call, !dbg !2482
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2483 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2507, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2508, metadata !DIExpression()), !dbg !2509
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2510
  ret i32 %call, !dbg !2511
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2512 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2514, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2515, metadata !DIExpression()), !dbg !2516
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2517
  ret i32 %call, !dbg !2518
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2519 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2523, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2524, metadata !DIExpression()), !dbg !2525
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2526
  ret i32 %call, !dbg !2527
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2528 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2532, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2533, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2534, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2535, metadata !DIExpression()), !dbg !2536
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2537
  ret i32 %call, !dbg !2538
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @lower_function_body() #5 !dbg !2539 {
entry:
  %data = alloca %struct.lower_data, align 8
  %lowered_body = alloca %struct.gimple_seq_d*, align 8
  %i = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp13 = alloca %struct.gimple_stmt_iterator, align 8
  %t53 = alloca %struct.return_statements_t, align 8
  %0 = bitcast %struct.lower_data* %data to i8*, !dbg !2567
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !2567
  %1 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !2568
  %call = tail call %struct.gimple_seq_d* @gimple_body(%union.tree_node* %1) #6, !dbg !2569
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !2548, metadata !DIExpression()), !dbg !2570
  %2 = bitcast %struct.gimple_seq_d** %lowered_body to i8*, !dbg !2571
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7, !dbg !2571
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i8*, !dbg !2572
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #7, !dbg !2572
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #8, !dbg !2573
  %call2 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %call) #8, !dbg !2573
  %cmp = icmp eq %struct.gimple_seq_node_d* %call1, %call2, !dbg !2573
  br i1 %cmp, label %land.lhs.true, label %cond.true, !dbg !2573

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call fastcc %union.gimple_statement_d* @gimple_seq_first_stmt(%struct.gimple_seq_d* %call) #8, !dbg !2573
  %call4 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %call3) #8, !dbg !2573
  %cmp5 = icmp eq i32 %call4, 10, !dbg !2573
  br i1 %cmp5, label %cond.end, label %cond.true, !dbg !2573

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2573
  br label %cond.end, !dbg !2573

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %call6 = call i8* @memset(i8* nonnull %0, i32 0, i64 24) #6, !dbg !2574
  %4 = load %struct.tree_decl_common*, %struct.tree_decl_common** bitcast (%union.tree_node** @current_function_decl to %struct.tree_decl_common**), align 8, !dbg !2575
  %initial = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %4, i64 0, i32 5, !dbg !2575
  %5 = bitcast %union.tree_node** %initial to i64*, !dbg !2575
  %6 = load i64, i64* %5, align 8, !dbg !2575
  %7 = bitcast %struct.lower_data* %data to i64*, !dbg !2576
  store i64 %6, i64* %7, align 8, !dbg !2576
  %.cast = inttoptr i64 %6 to %struct.tree_block*, !dbg !2577
  %subblocks = getelementptr inbounds %struct.tree_block, %struct.tree_block* %.cast, i64 0, i32 5, !dbg !2577
  store %union.tree_node* null, %union.tree_node** %subblocks, align 8, !dbg !2578
  %.cast1 = inttoptr i64 %6 to %struct.tree_common*, !dbg !2579
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %.cast1, i64 0, i32 1, !dbg !2579
  store %union.tree_node* null, %union.tree_node** %chain, align 8, !dbg !2580
  %8 = inttoptr i64 %6 to i64*, !dbg !2581
  %bf.load = load i64, i64* %8, align 8, !dbg !2582
  %bf.set = or i64 %bf.load, 4194304, !dbg !2582
  store i64 %bf.set, i64* %8, align 8, !dbg !2582
  %call11 = call fastcc %struct.VEC_return_statements_t_heap* @VEC_return_statements_t_heap_alloc(i32 8) #8, !dbg !2583
  %return_statements = getelementptr inbounds %struct.lower_data, %struct.lower_data* %data, i64 0, i32 1, !dbg !2584
  store %struct.VEC_return_statements_t_heap* %call11, %struct.VEC_return_statements_t_heap** %return_statements, align 8, !dbg !2585
  %call12 = call fastcc %union.gimple_statement_d* @gimple_seq_first_stmt(%struct.gimple_seq_d* %call) #8, !dbg !2586
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call12, metadata !2557, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* null, metadata !2549, metadata !DIExpression()), !dbg !2570
  store %struct.gimple_seq_d* null, %struct.gimple_seq_d** %lowered_body, align 8, !dbg !2587
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d** %lowered_body, metadata !2549, metadata !DIExpression(DW_OP_deref)), !dbg !2570
  call void @gimple_seq_add_stmt(%struct.gimple_seq_d** nonnull %lowered_body, %union.gimple_statement_d* %call12) #6, !dbg !2588
  %9 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2589
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #7, !dbg !2589
  %10 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %lowered_body, align 8, !dbg !2590
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %10, metadata !2549, metadata !DIExpression()), !dbg !2570
  call fastcc void @gsi_start(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.gimple_seq_d* %10) #8, !dbg !2589
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %9, i64 24, i1 false), !dbg !2589
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #7, !dbg !2589
  call void @llvm.dbg.value(metadata %struct.lower_data* %data, metadata !2541, metadata !DIExpression(DW_OP_deref)), !dbg !2570
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2550, metadata !DIExpression(DW_OP_deref)), !dbg !2570
  call fastcc void @lower_gimple_bind(%struct.gimple_stmt_iterator* nonnull %i, %struct.lower_data* nonnull %data) #8, !dbg !2591
  %11 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !2592
  %12 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %lowered_body, align 8, !dbg !2593
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %12, metadata !2549, metadata !DIExpression()), !dbg !2570
  call void @gimple_set_body(%union.tree_node* %11, %struct.gimple_seq_d* %12) #6, !dbg !2594
  %13 = bitcast %struct.gimple_stmt_iterator* %tmp13 to i8*, !dbg !2595
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #7, !dbg !2595
  %14 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %lowered_body, align 8, !dbg !2596
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %14, metadata !2549, metadata !DIExpression()), !dbg !2570
  call fastcc void @gsi_last(%struct.gimple_stmt_iterator* nonnull sret %tmp13, %struct.gimple_seq_d* %14) #8, !dbg !2595
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %13, i64 24, i1 false), !dbg !2595
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %13) #7, !dbg !2595
  %15 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %lowered_body, align 8, !dbg !2597
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %15, metadata !2549, metadata !DIExpression()), !dbg !2570
  %call14 = call zeroext i8 @gimple_seq_may_fallthru(%struct.gimple_seq_d* %15) #8, !dbg !2599
  %tobool = icmp eq i8 %call14, 0, !dbg !2599
  br i1 %tobool, label %if.end, label %land.lhs.true15, !dbg !2600

land.lhs.true15:                                  ; preds = %cond.end
  %16 = load %struct.VEC_return_statements_t_heap*, %struct.VEC_return_statements_t_heap** %return_statements, align 8, !dbg !2601
  %base20 = getelementptr inbounds %struct.VEC_return_statements_t_heap, %struct.VEC_return_statements_t_heap* %16, i64 0, i32 0, !dbg !2601
  %call24 = call fastcc i32 @VEC_return_statements_t_base_length(%struct.VEC_return_statements_t_base* %base20) #8, !dbg !2601
  %cmp25 = icmp eq i32 %call24, 0, !dbg !2601
  br i1 %cmp25, label %if.then, label %lor.lhs.false, !dbg !2602

lor.lhs.false:                                    ; preds = %land.lhs.true15
  %17 = load %struct.VEC_return_statements_t_heap*, %struct.VEC_return_statements_t_heap** %return_statements, align 8, !dbg !2603
  %base31 = getelementptr inbounds %struct.VEC_return_statements_t_heap, %struct.VEC_return_statements_t_heap* %17, i64 0, i32 0, !dbg !2603
  %call35 = call fastcc %struct.return_statements_t* @VEC_return_statements_t_base_last(%struct.VEC_return_statements_t_base* %base31) #8, !dbg !2603
  %stmt = getelementptr inbounds %struct.return_statements_t, %struct.return_statements_t* %call35, i64 0, i32 1, !dbg !2604
  %18 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2604
  %call36 = call fastcc %union.tree_node* @gimple_return_retval(%union.gimple_statement_d* %18) #8, !dbg !2605
  %cmp37 = icmp eq %union.tree_node* %call36, null, !dbg !2606
  br i1 %cmp37, label %if.end, label %if.then, !dbg !2607

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true15
  %call39 = call %union.gimple_statement_d* @gimple_build_return(%union.tree_node* null) #6, !dbg !2608
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call39, metadata !2559, metadata !DIExpression()), !dbg !2570
  %19 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2610
  %function_end_locus = getelementptr inbounds %struct.function, %struct.function* %19, i64 0, i32 16, !dbg !2611
  %20 = load i32, i32* %function_end_locus, align 4, !dbg !2611
  call fastcc void @gimple_set_location(%union.gimple_statement_d* %call39, i32 %20) #8, !dbg !2612
  %21 = load %struct.tree_decl_common*, %struct.tree_decl_common** bitcast (%union.tree_node** @current_function_decl to %struct.tree_decl_common**), align 8, !dbg !2613
  %initial41 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %21, i64 0, i32 5, !dbg !2613
  %22 = load %union.tree_node*, %union.tree_node** %initial41, align 8, !dbg !2613
  call fastcc void @gimple_set_block(%union.gimple_statement_d* %call39, %union.tree_node* %22) #8, !dbg !2614
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2550, metadata !DIExpression(DW_OP_deref)), !dbg !2570
  call void @gsi_insert_after(%struct.gimple_stmt_iterator* nonnull %i, %union.gimple_statement_d* %call39, i32 2) #6, !dbg !2615
  br label %if.end, !dbg !2616

if.end:                                           ; preds = %lor.lhs.false, %cond.end, %if.then
  %23 = bitcast %struct.return_statements_t* %t53 to i8*, !dbg !2617
  %label = getelementptr inbounds %struct.return_statements_t, %struct.return_statements_t* %t53, i64 0, i32 0, !dbg !2617
  %stmt81 = getelementptr inbounds %struct.return_statements_t, %struct.return_statements_t* %t53, i64 0, i32 1, !dbg !2617
  br label %while.cond, !dbg !2618

while.cond:                                       ; preds = %while.body, %if.end
  %24 = load %struct.VEC_return_statements_t_heap*, %struct.VEC_return_statements_t_heap** %return_statements, align 8, !dbg !2619
  %base46 = getelementptr inbounds %struct.VEC_return_statements_t_heap, %struct.VEC_return_statements_t_heap* %24, i64 0, i32 0, !dbg !2619
  %call50 = call fastcc i32 @VEC_return_statements_t_base_length(%struct.VEC_return_statements_t_base* %base46) #8, !dbg !2619
  %cmp51 = icmp eq i32 %call50, 0, !dbg !2619
  br i1 %cmp51, label %while.end, label %while.body, !dbg !2618

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %23) #7, !dbg !2620
  %25 = load %struct.VEC_return_statements_t_heap*, %struct.VEC_return_statements_t_heap** %return_statements, align 8, !dbg !2621
  %base58 = getelementptr inbounds %struct.VEC_return_statements_t_heap, %struct.VEC_return_statements_t_heap* %25, i64 0, i32 0, !dbg !2621
  %call62 = call fastcc %struct.return_statements_t* @VEC_return_statements_t_base_last(%struct.VEC_return_statements_t_base* %base58) #8, !dbg !2621
  %26 = bitcast %struct.return_statements_t* %call62 to i8*, !dbg !2622
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %23, i8* align 8 %26, i64 16, i1 false), !dbg !2622
  %27 = load %struct.VEC_return_statements_t_heap*, %struct.VEC_return_statements_t_heap** %return_statements, align 8, !dbg !2623
  %base67 = getelementptr inbounds %struct.VEC_return_statements_t_heap, %struct.VEC_return_statements_t_heap* %27, i64 0, i32 0, !dbg !2623
  %call79 = call fastcc i32 @VEC_return_statements_t_base_length(%struct.VEC_return_statements_t_base* %base67) #8, !dbg !2623
  %sub = add i32 %call79, -1, !dbg !2623
  call fastcc void @VEC_return_statements_t_base_truncate(%struct.VEC_return_statements_t_base* %base67, i32 %sub) #8, !dbg !2623
  %28 = load %union.tree_node*, %union.tree_node** %label, align 8, !dbg !2624
  %call80 = call %union.gimple_statement_d* @gimple_build_label(%union.tree_node* %28) #6, !dbg !2625
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call80, metadata !2559, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2550, metadata !DIExpression(DW_OP_deref)), !dbg !2570
  call void @gsi_insert_after(%struct.gimple_stmt_iterator* nonnull %i, %union.gimple_statement_d* %call80, i32 2) #6, !dbg !2626
  %29 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt81, align 8, !dbg !2627
  call fastcc void @gimple_set_location(%union.gimple_statement_d* %29, i32 0) #8, !dbg !2628
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2550, metadata !DIExpression(DW_OP_deref)), !dbg !2570
  call void @gsi_insert_after(%struct.gimple_stmt_iterator* nonnull %i, %union.gimple_statement_d* %29, i32 2) #6, !dbg !2629
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %23) #7, !dbg !2630
  br label %while.cond, !dbg !2618, !llvm.loop !2631

while.end:                                        ; preds = %while.cond
  %calls_builtin_setjmp = getelementptr inbounds %struct.lower_data, %struct.lower_data* %data, i64 0, i32 3, !dbg !2632
  %30 = load i8, i8* %calls_builtin_setjmp, align 1, !dbg !2632
  %tobool83 = icmp eq i8 %30, 0, !dbg !2633
  br i1 %tobool83, label %if.end101, label %if.then84, !dbg !2634

if.then84:                                        ; preds = %while.end
  %31 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2635
  %function_end_locus86 = getelementptr inbounds %struct.function, %struct.function* %31, i64 0, i32 16, !dbg !2636
  %32 = load i32, i32* %function_end_locus86, align 4, !dbg !2636
  %call87 = call %union.tree_node* @create_artificial_label(i32 %32) #6, !dbg !2637
  call void @llvm.dbg.value(metadata %union.tree_node* %call87, metadata !2562, metadata !DIExpression()), !dbg !2638
  %nonlocal_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %call87, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2639
  %33 = bitcast i40* %nonlocal_flag to i64*, !dbg !2639
  %bf.load89 = load i64, i64* %33, align 8, !dbg !2640
  %bf.set91 = or i64 %bf.load89, 256, !dbg !2640
  store i64 %bf.set91, i64* %33, align 8, !dbg !2640
  %34 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2641
  %has_nonlocal_label = getelementptr inbounds %struct.function, %struct.function* %34, i64 0, i32 20, !dbg !2642
  %bf.load93 = load i32, i32* %has_nonlocal_label, align 8, !dbg !2643
  %bf.set95 = or i32 %bf.load93, 1048576, !dbg !2643
  store i32 %bf.set95, i32* %has_nonlocal_label, align 8, !dbg !2643
  %call96 = call %union.gimple_statement_d* @gimple_build_label(%union.tree_node* %call87) #6, !dbg !2644
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call96, metadata !2559, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2550, metadata !DIExpression(DW_OP_deref)), !dbg !2570
  call void @gsi_insert_after(%struct.gimple_stmt_iterator* nonnull %i, %union.gimple_statement_d* %call96, i32 2) #6, !dbg !2645
  %35 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 39), align 8, !dbg !2646
  %call97 = call %union.tree_node* @create_tmp_var(%union.tree_node* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !2647
  call void @llvm.dbg.value(metadata %union.tree_node* %call97, metadata !2565, metadata !DIExpression()), !dbg !2638
  %36 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !2648
  %call98 = call %union.tree_node* @build_addr(%union.tree_node* %call87, %union.tree_node* %36) #6, !dbg !2649
  call void @llvm.dbg.value(metadata %union.tree_node* %call98, metadata !2566, metadata !DIExpression()), !dbg !2638
  %37 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([721 x %union.tree_node*], [721 x %union.tree_node*]* @implicit_built_in_decls, i64 0, i64 524), align 16, !dbg !2650
  call void @llvm.dbg.value(metadata %union.tree_node* %37, metadata !2558, metadata !DIExpression()), !dbg !2570
  %call99 = call %union.gimple_statement_d* (%union.tree_node*, i32, ...) @gimple_build_call(%union.tree_node* %37, i32 1, %union.tree_node* %call98) #6, !dbg !2651
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call99, metadata !2559, metadata !DIExpression()), !dbg !2570
  call fastcc void @gimple_call_set_lhs(%union.gimple_statement_d* %call99, %union.tree_node* %call97) #8, !dbg !2652
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2550, metadata !DIExpression(DW_OP_deref)), !dbg !2570
  call void @gsi_insert_after(%struct.gimple_stmt_iterator* nonnull %i, %union.gimple_statement_d* %call99, i32 2) #6, !dbg !2653
  %call100 = call %union.gimple_statement_d* @gimple_build_goto(%union.tree_node* %call97) #6, !dbg !2654
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call100, metadata !2559, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2550, metadata !DIExpression(DW_OP_deref)), !dbg !2570
  call void @gsi_insert_after(%struct.gimple_stmt_iterator* nonnull %i, %union.gimple_statement_d* %call100, i32 2) #6, !dbg !2655
  br label %if.end101, !dbg !2656

if.end101:                                        ; preds = %while.end, %if.then84
  %block102 = getelementptr inbounds %struct.lower_data, %struct.lower_data* %data, i64 0, i32 0, !dbg !2657
  %38 = load %union.tree_node*, %union.tree_node** %block102, align 8, !dbg !2657
  %39 = load %struct.tree_decl_common*, %struct.tree_decl_common** bitcast (%union.tree_node** @current_function_decl to %struct.tree_decl_common**), align 8, !dbg !2657
  %initial104 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %39, i64 0, i32 5, !dbg !2657
  %40 = load %union.tree_node*, %union.tree_node** %initial104, align 8, !dbg !2657
  %cmp105 = icmp eq %union.tree_node* %38, %40, !dbg !2657
  br i1 %cmp105, label %if.end101.cond.end109_crit_edge, label %cond.true107, !dbg !2657

if.end101.cond.end109_crit_edge:                  ; preds = %if.end101
  %41 = bitcast %union.tree_node* %38 to %struct.tree_block*, !dbg !2657
  %.pre3 = bitcast %struct.lower_data* %data to %struct.tree_block**, !dbg !2658
  br label %cond.end109, !dbg !2657

cond.true107:                                     ; preds = %if.end101
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 196, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2657
  %.phi.trans.insert = bitcast %struct.lower_data* %data to %struct.tree_block**, !dbg !2570
  %.pre = load %struct.tree_block*, %struct.tree_block** %.phi.trans.insert, align 8, !dbg !2658
  br label %cond.end109, !dbg !2657

cond.end109:                                      ; preds = %if.end101.cond.end109_crit_edge, %cond.true107
  %.pre-phi = phi %struct.tree_block** [ %.pre3, %if.end101.cond.end109_crit_edge ], [ %.phi.trans.insert, %cond.true107 ], !dbg !2658
  %42 = phi %struct.tree_block* [ %41, %if.end101.cond.end109_crit_edge ], [ %.pre, %cond.true107 ], !dbg !2658
  %subblocks113 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %42, i64 0, i32 5, !dbg !2658
  %43 = load %union.tree_node*, %union.tree_node** %subblocks113, align 8, !dbg !2658
  %call114 = call %union.tree_node* @blocks_nreverse(%union.tree_node* %43) #6, !dbg !2659
  %44 = load %struct.tree_block*, %struct.tree_block** %.pre-phi, align 8, !dbg !2660
  %subblocks117 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %44, i64 0, i32 5, !dbg !2660
  store %union.tree_node* %call114, %union.tree_node** %subblocks117, align 8, !dbg !2661
  %.cast2 = bitcast %struct.tree_block* %44 to %union.tree_node*, !dbg !2662
  call void @clear_block_marks(%union.tree_node* %.cast2) #6, !dbg !2663
  call fastcc void @VEC_return_statements_t_heap_free(%struct.VEC_return_statements_t_heap** nonnull %return_statements) #8, !dbg !2664
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #7, !dbg !2665
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7, !dbg !2665
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !2665
  ret i32 0, !dbg !2666
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @gimple_check_call_args(%union.gimple_statement_d* %stmt) local_unnamed_addr #5 !dbg !2667 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2671, metadata !DIExpression()), !dbg !2677
  %call = tail call fastcc i32 @gimple_call_num_args(%union.gimple_statement_d* %stmt) #8, !dbg !2678
  call void @llvm.dbg.value(metadata i32 %call, metadata !2676, metadata !DIExpression()), !dbg !2677
  %call1 = tail call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %stmt) #8, !dbg !2679
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !2672, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !2673, metadata !DIExpression()), !dbg !2677
  %tobool = icmp eq %union.tree_node* %call1, null, !dbg !2680
  br i1 %tobool, label %if.else, label %if.then, !dbg !2682

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2683
  %0 = bitcast %union.tree_node** %type to %struct.tree_type**, !dbg !2683
  %1 = load %struct.tree_type*, %struct.tree_type** %0, align 8, !dbg !2683
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %1, i64 0, i32 1, !dbg !2683
  %2 = load %union.tree_node*, %union.tree_node** %values, align 8, !dbg !2683
  %3 = bitcast %union.tree_node* %2 to %struct.tree_list*, !dbg !2677
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !2673, metadata !DIExpression()), !dbg !2677
  br label %if.end22, !dbg !2684

if.else:                                          ; preds = %entry
  %call3 = tail call fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %stmt) #8, !dbg !2685
  %type5 = getelementptr inbounds %union.tree_node, %union.tree_node* %call3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2685
  %4 = bitcast %union.tree_node** %type5 to i64**, !dbg !2685
  %5 = load i64*, i64** %4, align 8, !dbg !2685
  %bf.load = load i64, i64* %5, align 8, !dbg !2685
  %bf.cast2 = and i64 %bf.load, 65535, !dbg !2685
  %cmp = icmp eq i64 %bf.cast2, 10, !dbg !2685
  br i1 %cmp, label %if.then14, label %lor.lhs.false, !dbg !2685

lor.lhs.false:                                    ; preds = %if.else
  %call6 = tail call fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %stmt) #8, !dbg !2685
  %type8 = getelementptr inbounds %union.tree_node, %union.tree_node* %call6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2685
  %6 = bitcast %union.tree_node** %type8 to i64**, !dbg !2685
  %7 = load i64*, i64** %6, align 8, !dbg !2685
  %bf.load10 = load i64, i64* %7, align 8, !dbg !2685
  %bf.cast123 = and i64 %bf.load10, 65535, !dbg !2685
  %cmp13 = icmp eq i64 %bf.cast123, 12, !dbg !2685
  br i1 %cmp13, label %if.then14, label %if.end22, !dbg !2687

if.then14:                                        ; preds = %lor.lhs.false, %if.else
  %call15 = tail call fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %stmt) #8, !dbg !2688
  %type17 = getelementptr inbounds %union.tree_node, %union.tree_node* %call15, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2688
  %8 = bitcast %union.tree_node** %type17 to %struct.tree_common**, !dbg !2688
  %9 = load %struct.tree_common*, %struct.tree_common** %8, align 8, !dbg !2688
  %type19 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %9, i64 0, i32 2, !dbg !2688
  %10 = bitcast %union.tree_node** %type19 to %struct.tree_type**, !dbg !2688
  %11 = load %struct.tree_type*, %struct.tree_type** %10, align 8, !dbg !2688
  %values21 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %11, i64 0, i32 1, !dbg !2688
  %12 = load %union.tree_node*, %union.tree_node** %values21, align 8, !dbg !2688
  %13 = bitcast %union.tree_node* %12 to %struct.tree_list*, !dbg !2677
  call void @llvm.dbg.value(metadata %union.tree_node* %12, metadata !2673, metadata !DIExpression()), !dbg !2677
  br label %if.end22, !dbg !2689

if.end22:                                         ; preds = %lor.lhs.false, %if.then14, %if.then
  %14 = phi %struct.tree_list* [ %3, %if.then ], [ %13, %if.then14 ], [ null, %lor.lhs.false ], !dbg !2690
  %parms.1 = phi %union.tree_node* [ %2, %if.then ], [ %12, %if.then14 ], [ null, %lor.lhs.false ], !dbg !2690
  call void @llvm.dbg.value(metadata %union.tree_node* %parms.1, metadata !2673, metadata !DIExpression()), !dbg !2677
  br i1 %tobool, label %if.else43, label %land.lhs.true, !dbg !2691

land.lhs.true:                                    ; preds = %if.end22
  %arguments = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 2, !dbg !2693
  %15 = load %union.tree_node*, %union.tree_node** %arguments, align 8, !dbg !2693
  %tobool24 = icmp eq %union.tree_node* %15, null, !dbg !2693
  br i1 %tobool24, label %if.else43, label %if.then25, !dbg !2694

if.then25:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i32 0, metadata !2675, metadata !DIExpression()), !dbg !2677
  br label %for.cond, !dbg !2695

for.cond:                                         ; preds = %for.inc, %if.then25
  %p.0 = phi %union.tree_node* [ %15, %if.then25 ], [ %p.0.pre, %for.inc ], !dbg !2698
  %i.0 = phi i32 [ 0, %if.then25 ], [ %inc, %for.inc ], !dbg !2698
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2675, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata %union.tree_node* %p.0, metadata !2674, metadata !DIExpression()), !dbg !2677
  %cmp28 = icmp ult i32 %i.0, %call, !dbg !2699
  %tobool29 = icmp ne %union.tree_node* %p.0, null, !dbg !2701
  %or.cond = and i1 %cmp28, %tobool29, !dbg !2704
  br i1 %or.cond, label %if.end31, label %if.end82.loopexit5, !dbg !2704

if.end31:                                         ; preds = %for.cond
  %16 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !2705
  %cmp32 = icmp eq %union.tree_node* %p.0, %16, !dbg !2707
  br i1 %cmp32, label %cleanup.loopexit6, label %lor.lhs.false33, !dbg !2708

lor.lhs.false33:                                  ; preds = %if.end31
  %call34 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %stmt, i32 %i.0) #8, !dbg !2709
  %17 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !2710
  %cmp35 = icmp eq %union.tree_node* %call34, %17, !dbg !2711
  br i1 %cmp35, label %cleanup.loopexit6, label %lor.lhs.false36, !dbg !2712

lor.lhs.false36:                                  ; preds = %lor.lhs.false33
  %initial = getelementptr inbounds %union.tree_node, %union.tree_node* %p.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, !dbg !2713
  %18 = load %union.tree_node*, %union.tree_node** %initial, align 8, !dbg !2713
  %call37 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %stmt, i32 %i.0) #8, !dbg !2714
  %call38 = tail call zeroext i8 @fold_convertible_p(%union.tree_node* %18, %union.tree_node* %call37) #6, !dbg !2715
  %tobool39 = icmp eq i8 %call38, 0, !dbg !2715
  br i1 %tobool39, label %cleanup.loopexit6, label %for.inc, !dbg !2716

for.inc:                                          ; preds = %lor.lhs.false36
  %inc = add i32 %i.0, 1, !dbg !2717
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2675, metadata !DIExpression()), !dbg !2677
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %p.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2718
  %p.0.pre = load %union.tree_node*, %union.tree_node** %chain, align 8, !dbg !2698
  br label %for.cond, !dbg !2719, !llvm.loop !2720

if.else43:                                        ; preds = %land.lhs.true, %if.end22
  %tobool44 = icmp eq %union.tree_node* %parms.1, null, !dbg !2722
  br i1 %tobool44, label %if.else77, label %for.cond46.preheader, !dbg !2724

for.cond46.preheader:                             ; preds = %if.else43
  br label %for.cond46, !dbg !2725

for.cond46:                                       ; preds = %for.cond46.preheader, %for.inc72
  %19 = phi %struct.tree_list* [ %27, %for.inc72 ], [ %14, %for.cond46.preheader ], !dbg !2728
  %p.1 = phi %union.tree_node* [ %26, %for.inc72 ], [ %parms.1, %for.cond46.preheader ], !dbg !2728
  %i.1 = phi i32 [ %inc73, %for.inc72 ], [ 0, %for.cond46.preheader ], !dbg !2728
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !2675, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata %union.tree_node* %p.1, metadata !2674, metadata !DIExpression()), !dbg !2677
  %cmp47 = icmp ult i32 %i.1, %call, !dbg !2729
  %tobool49 = icmp ne %union.tree_node* %p.1, null, !dbg !2731
  %or.cond1 = and i1 %cmp47, %tobool49, !dbg !2725
  br i1 %or.cond1, label %if.end51, label %if.end82.loopexit, !dbg !2725

if.end51:                                         ; preds = %for.cond46
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %19, i64 0, i32 2, !dbg !2734
  %20 = load %union.tree_node*, %union.tree_node** %value, align 8, !dbg !2734
  %21 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !2736
  %cmp52 = icmp eq %union.tree_node* %20, %21, !dbg !2737
  br i1 %cmp52, label %cleanup.loopexit, label %lor.lhs.false53, !dbg !2738

lor.lhs.false53:                                  ; preds = %if.end51
  %call54 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %stmt, i32 %i.1) #8, !dbg !2739
  %22 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 0), align 16, !dbg !2740
  %cmp55 = icmp eq %union.tree_node* %call54, %22, !dbg !2741
  br i1 %cmp55, label %cleanup.loopexit, label %lor.lhs.false56, !dbg !2742

lor.lhs.false56:                                  ; preds = %lor.lhs.false53
  %23 = bitcast %union.tree_node** %value to i64**, !dbg !2743
  %24 = load i64*, i64** %23, align 8, !dbg !2743
  %bf.load60 = load i64, i64* %24, align 8, !dbg !2743
  %bf.cast624 = and i64 %bf.load60, 65535, !dbg !2744
  %cmp63 = icmp eq i64 %bf.cast624, 19, !dbg !2744
  br i1 %cmp63, label %cleanup.loopexit, label %lor.lhs.false64, !dbg !2745

lor.lhs.false64:                                  ; preds = %lor.lhs.false56
  %25 = bitcast i64* %24 to %union.tree_node*, !dbg !2745
  %call67 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %stmt, i32 %i.1) #8, !dbg !2746
  %call68 = tail call zeroext i8 @fold_convertible_p(%union.tree_node* %25, %union.tree_node* %call67) #6, !dbg !2747
  %tobool69 = icmp eq i8 %call68, 0, !dbg !2747
  br i1 %tobool69, label %cleanup.loopexit, label %for.inc72, !dbg !2748

for.inc72:                                        ; preds = %lor.lhs.false64
  %inc73 = add i32 %i.1, 1, !dbg !2749
  call void @llvm.dbg.value(metadata i32 %inc73, metadata !2675, metadata !DIExpression()), !dbg !2677
  %chain75 = getelementptr inbounds %union.tree_node, %union.tree_node* %p.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2750
  %26 = load %union.tree_node*, %union.tree_node** %chain75, align 8, !dbg !2750
  %27 = bitcast %union.tree_node* %26 to %struct.tree_list*, !dbg !2677
  call void @llvm.dbg.value(metadata %union.tree_node* %26, metadata !2674, metadata !DIExpression()), !dbg !2677
  br label %for.cond46, !dbg !2751, !llvm.loop !2752

if.else77:                                        ; preds = %if.else43
  %cmp78 = icmp eq i32 %call, 0, !dbg !2754
  br i1 %cmp78, label %if.end82, label %cleanup, !dbg !2757

if.end82.loopexit:                                ; preds = %for.cond46
  br label %if.end82, !dbg !2758

if.end82.loopexit5:                               ; preds = %for.cond
  br label %if.end82, !dbg !2758

if.end82:                                         ; preds = %if.end82.loopexit5, %if.end82.loopexit, %if.else77
  br label %cleanup, !dbg !2758

cleanup.loopexit:                                 ; preds = %lor.lhs.false56, %lor.lhs.false53, %if.end51, %lor.lhs.false64
  br label %cleanup, !dbg !2759

cleanup.loopexit6:                                ; preds = %lor.lhs.false33, %if.end31, %lor.lhs.false36
  br label %cleanup, !dbg !2759

cleanup:                                          ; preds = %cleanup.loopexit6, %cleanup.loopexit, %if.else77, %if.end82
  %retval.0 = phi i8 [ 1, %if.end82 ], [ 0, %if.else77 ], [ 0, %cleanup.loopexit ], [ 0, %cleanup.loopexit6 ], !dbg !2677
  ret i8 %retval.0, !dbg !2759
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_call_num_args(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2760 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2765, metadata !DIExpression()), !dbg !2767
  %call = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #8, !dbg !2768
  call void @llvm.dbg.value(metadata i32 %call, metadata !2766, metadata !DIExpression()), !dbg !2767
  %sub = add i32 %call, -3, !dbg !2769
  ret i32 %sub, !dbg !2770
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2771 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2775, metadata !DIExpression()), !dbg !2777
  %call = tail call fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) #8, !dbg !2778
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2776, metadata !DIExpression()), !dbg !2777
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2779
  %bf.load = load i64, i64* %0, align 8, !dbg !2779
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2781
  %cmp = icmp eq i64 %bf.cast1, 121, !dbg !2781
  br i1 %cmp, label %if.then, label %cleanup, !dbg !2782

if.then:                                          ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2783
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2783
  br label %cleanup, !dbg !2784

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %1, %if.then ], [ null, %entry ], !dbg !2777
  ret %union.tree_node* %retval.0, !dbg !2785
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2786 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2788, metadata !DIExpression()), !dbg !2789
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #8, !dbg !2790
  ret %union.tree_node* %call, !dbg !2791
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !2792 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2796, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata i32 %index, metadata !2797, metadata !DIExpression()), !dbg !2798
  %add = add i32 %index, 3, !dbg !2799
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %add) #8, !dbg !2800
  ret %union.tree_node* %call, !dbg !2801
}

declare dso_local zeroext i8 @fold_convertible_p(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @block_may_fallthru(%union.tree_node* %block) local_unnamed_addr #5 !dbg !2802 {
entry:
  br label %tailrecurse, !dbg !2809

tailrecurse:                                      ; preds = %tailrecurse.backedge, %entry
  %block.tr = phi %union.tree_node* [ %block, %entry ], [ %block.tr.be, %tailrecurse.backedge ]
  call void @llvm.dbg.value(metadata %union.tree_node* %block.tr, metadata !2807, metadata !DIExpression()), !dbg !2811
  %call = tail call %union.tree_node* @expr_last(%union.tree_node* %block.tr) #6, !dbg !2812
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2808, metadata !DIExpression()), !dbg !2811
  %tobool = icmp eq %union.tree_node* %call, null, !dbg !2813
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2813

cond.true:                                        ; preds = %tailrecurse
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2814
  %bf.load = load i64, i64* %0, align 8, !dbg !2814
  %1 = trunc i64 %bf.load to i16, !dbg !2814
  br label %cond.end, !dbg !2813

cond.end:                                         ; preds = %tailrecurse, %cond.true
  %cond = phi i16 [ %1, %cond.true ], [ 0, %tailrecurse ]
  switch i16 %cond, label %sw.default [
    i16 134, label %cleanup.loopexit
    i16 135, label %cleanup.loopexit
    i16 138, label %sw.bb1
    i16 56, label %sw.bb3
    i16 58, label %sw.bb13
    i16 130, label %sw.bb18
    i16 131, label %sw.bb20
    i16 53, label %sw.bb34
    i16 59, label %sw.bb49.loopexit
    i16 61, label %sw.bb54
  ], !dbg !2815

sw.bb1:                                           ; preds = %cond.end
  %call.lcssa16 = phi %union.tree_node* [ %call, %cond.end ], !dbg !2812
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %call.lcssa16, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2816
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !2816
  %2 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2816
  %cmp = icmp eq %union.tree_node* %2, null, !dbg !2817
  %conv2 = zext i1 %cmp to i8, !dbg !2816
  br label %cleanup, !dbg !2818

sw.bb3:                                           ; preds = %cond.end
  %operands5 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2819
  %arrayidx6 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands5, i64 1, !dbg !2819
  %3 = load %union.tree_node*, %union.tree_node** %arrayidx6, align 8, !dbg !2819
  %call7 = tail call zeroext i8 @block_may_fallthru(%union.tree_node* %3) #8, !dbg !2821
  %tobool8 = icmp eq i8 %call7, 0, !dbg !2821
  br i1 %tobool8, label %if.end, label %cleanup.loopexit, !dbg !2822

if.end:                                           ; preds = %sw.bb3
  %arrayidx11 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands5, i64 2, !dbg !2823
  br label %tailrecurse.backedge, !dbg !2809

tailrecurse.backedge:                             ; preds = %if.end, %sw.bb13, %sw.bb54
  %block.tr.be.in = phi %union.tree_node** [ %arrayidx11, %if.end ], [ %arrayidx16, %sw.bb13 ], [ %operands56, %sw.bb54 ]
  %block.tr.be = load %union.tree_node*, %union.tree_node** %block.tr.be.in, align 8, !dbg !2824
  br label %tailrecurse, !dbg !2811

sw.bb13:                                          ; preds = %cond.end
  %operands15 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2825
  %arrayidx16 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands15, i64 1, !dbg !2825
  br label %tailrecurse.backedge, !dbg !2826

sw.bb18:                                          ; preds = %cond.end
  %call.lcssa17 = phi %union.tree_node* [ %call, %cond.end ], !dbg !2812
  %call19 = tail call fastcc zeroext i8 @try_catch_may_fallthru(%union.tree_node* %call.lcssa17) #8, !dbg !2827
  br label %cleanup, !dbg !2828

sw.bb20:                                          ; preds = %cond.end
  %call.lcssa18 = phi %union.tree_node* [ %call, %cond.end ], !dbg !2812
  %operands22 = getelementptr inbounds %union.tree_node, %union.tree_node* %call.lcssa18, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2829
  %4 = load %union.tree_node*, %union.tree_node** %operands22, align 8, !dbg !2829
  %call24 = tail call zeroext i8 @block_may_fallthru(%union.tree_node* %4) #8, !dbg !2830
  %tobool26 = icmp eq i8 %call24, 0, !dbg !2830
  br i1 %tobool26, label %land.end, label %land.rhs, !dbg !2831

land.rhs:                                         ; preds = %sw.bb20
  %arrayidx29 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands22, i64 1, !dbg !2832
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx29, align 8, !dbg !2832
  %call30 = tail call zeroext i8 @block_may_fallthru(%union.tree_node* %5) #8, !dbg !2833
  %tobool32 = icmp ne i8 %call30, 0, !dbg !2831
  %phitmp = zext i1 %tobool32 to i8
  br label %land.end

land.end:                                         ; preds = %sw.bb20, %land.rhs
  %6 = phi i8 [ 0, %sw.bb20 ], [ %phitmp, %land.rhs ]
  br label %cleanup, !dbg !2834

sw.bb34:                                          ; preds = %cond.end
  %call.lcssa19 = phi %union.tree_node* [ %call, %cond.end ], !dbg !2812
  %operands36 = getelementptr inbounds %union.tree_node, %union.tree_node* %call.lcssa19, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2835
  %arrayidx37 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands36, i64 1, !dbg !2835
  %7 = bitcast %union.tree_node** %arrayidx37 to i64**, !dbg !2835
  %8 = load i64*, i64** %7, align 8, !dbg !2835
  %bf.load39 = load i64, i64* %8, align 8, !dbg !2835
  %bf.cast411 = and i64 %bf.load39, 65535, !dbg !2837
  %cmp42 = icmp eq i64 %bf.cast411, 59, !dbg !2837
  br i1 %cmp42, label %if.then44, label %cleanup, !dbg !2838

if.then44:                                        ; preds = %sw.bb34
  %9 = bitcast i64* %8 to %union.tree_node*, !dbg !2838
  call void @llvm.dbg.value(metadata %union.tree_node* %9, metadata !2808, metadata !DIExpression()), !dbg !2811
  br label %sw.bb49, !dbg !2839

sw.bb49.loopexit:                                 ; preds = %cond.end
  %call.lcssa20 = phi %union.tree_node* [ %call, %cond.end ], !dbg !2812
  br label %sw.bb49, !dbg !2840

sw.bb49:                                          ; preds = %sw.bb49.loopexit, %if.then44
  %stmt.0 = phi %union.tree_node* [ %9, %if.then44 ], [ %call.lcssa20, %sw.bb49.loopexit ], !dbg !2811
  call void @llvm.dbg.value(metadata %union.tree_node* %stmt.0, metadata !2808, metadata !DIExpression()), !dbg !2811
  %call50 = tail call i32 @call_expr_flags(%union.tree_node* %stmt.0) #6, !dbg !2840
  %and = lshr i32 %call50, 3, !dbg !2841
  %10 = trunc i32 %and to i8, !dbg !2841
  %11 = and i8 %10, 1, !dbg !2841
  %12 = xor i8 %11, 1, !dbg !2841
  br label %cleanup, !dbg !2842

sw.bb54:                                          ; preds = %cond.end
  %operands56 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2843
  br label %tailrecurse.backedge, !dbg !2844

sw.default:                                       ; preds = %cond.end
  br label %cleanup, !dbg !2845

cleanup.loopexit:                                 ; preds = %cond.end, %cond.end, %sw.bb3
  %retval.0.ph = phi i8 [ 1, %sw.bb3 ], [ 0, %cond.end ], [ 0, %cond.end ]
  br label %cleanup, !dbg !2846

cleanup:                                          ; preds = %cleanup.loopexit, %sw.bb34, %sw.default, %sw.bb49, %land.end, %sw.bb18, %sw.bb1
  %retval.0 = phi i8 [ 1, %sw.default ], [ %12, %sw.bb49 ], [ %6, %land.end ], [ %call19, %sw.bb18 ], [ %conv2, %sw.bb1 ], [ 1, %sw.bb34 ], [ %retval.0.ph, %cleanup.loopexit ], !dbg !2824
  ret i8 %retval.0, !dbg !2846
}

declare dso_local %union.tree_node* @expr_last(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @try_catch_may_fallthru(%union.tree_node* %stmt) unnamed_addr #5 !dbg !2847 {
entry:
  %i = alloca %struct.tree_stmt_iterator, align 8
  %tmp = alloca %struct.tree_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %stmt, metadata !2849, metadata !DIExpression()), !dbg !2857
  %0 = bitcast %struct.tree_stmt_iterator* %i to i8*, !dbg !2858
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7, !dbg !2858
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %stmt, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2859
  %1 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2859
  %call = tail call zeroext i8 @block_may_fallthru(%union.tree_node* %1) #8, !dbg !2861
  %tobool = icmp eq i8 %call, 0, !dbg !2861
  br i1 %tobool, label %if.end, label %cleanup, !dbg !2862

if.end:                                           ; preds = %entry
  %2 = bitcast %struct.tree_stmt_iterator* %tmp to i8*, !dbg !2863
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !2863
  %arrayidx3 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !2864
  %3 = load %union.tree_node*, %union.tree_node** %arrayidx3, align 8, !dbg !2864
  %call4 = tail call fastcc { %struct.tree_statement_list_node*, %union.tree_node* } @tsi_start(%union.tree_node* %3) #8, !dbg !2863
  %4 = getelementptr inbounds %struct.tree_stmt_iterator, %struct.tree_stmt_iterator* %tmp, i64 0, i32 0, !dbg !2863
  %5 = extractvalue { %struct.tree_statement_list_node*, %union.tree_node* } %call4, 0, !dbg !2863
  store %struct.tree_statement_list_node* %5, %struct.tree_statement_list_node** %4, align 8, !dbg !2863
  %6 = getelementptr inbounds %struct.tree_stmt_iterator, %struct.tree_stmt_iterator* %tmp, i64 0, i32 1, !dbg !2863
  %7 = extractvalue { %struct.tree_statement_list_node*, %union.tree_node* } %call4, 1, !dbg !2863
  store %union.tree_node* %7, %union.tree_node** %6, align 8, !dbg !2863
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !2863
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !2863
  %8 = getelementptr inbounds %struct.tree_stmt_iterator, %struct.tree_stmt_iterator* %i, i64 0, i32 0, !dbg !2865
  %9 = load %struct.tree_statement_list_node*, %struct.tree_statement_list_node** %8, align 8, !dbg !2865
  %10 = getelementptr inbounds %struct.tree_stmt_iterator, %struct.tree_stmt_iterator* %i, i64 0, i32 1, !dbg !2865
  %11 = load %union.tree_node*, %union.tree_node** %10, align 8, !dbg !2865
  %call5 = tail call fastcc %union.tree_node* @tsi_stmt(%struct.tree_statement_list_node* %9, %union.tree_node* %11) #8, !dbg !2865
  %12 = getelementptr inbounds %union.tree_node, %union.tree_node* %call5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2865
  %bf.load = load i64, i64* %12, align 8, !dbg !2865
  %13 = trunc i64 %bf.load to i16, !dbg !2865
  switch i16 %13, label %cleanup [
    i16 142, label %for.cond.preheader
    i16 143, label %sw.bb16
  ], !dbg !2866

for.cond.preheader:                               ; preds = %if.end
  br label %for.cond, !dbg !2867

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %14 = phi %union.tree_node* [ %11, %for.cond.preheader ], [ %.pre1, %for.inc ], !dbg !2870
  %15 = phi %struct.tree_statement_list_node* [ %9, %for.cond.preheader ], [ %.pre, %for.inc ], !dbg !2870
  %call6 = call fastcc zeroext i8 @tsi_end_p(%struct.tree_statement_list_node* %15, %union.tree_node* %14) #8, !dbg !2870
  %tobool7 = icmp eq i8 %call6, 0, !dbg !2872
  br i1 %tobool7, label %for.body, label %cleanup.loopexit, !dbg !2867

for.body:                                         ; preds = %for.cond
  %16 = load %struct.tree_statement_list_node*, %struct.tree_statement_list_node** %8, align 8, !dbg !2873
  %17 = load %union.tree_node*, %union.tree_node** %10, align 8, !dbg !2873
  %call8 = call fastcc %union.tree_node* @tsi_stmt(%struct.tree_statement_list_node* %16, %union.tree_node* %17) #8, !dbg !2873
  %operands10 = getelementptr inbounds %union.tree_node, %union.tree_node* %call8, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2873
  %arrayidx11 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands10, i64 1, !dbg !2873
  %18 = load %union.tree_node*, %union.tree_node** %arrayidx11, align 8, !dbg !2873
  %call12 = call zeroext i8 @block_may_fallthru(%union.tree_node* %18) #8, !dbg !2876
  %tobool13 = icmp eq i8 %call12, 0, !dbg !2876
  br i1 %tobool13, label %for.inc, label %cleanup.loopexit, !dbg !2877

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.tree_stmt_iterator* %i, metadata !2850, metadata !DIExpression(DW_OP_deref)), !dbg !2857
  call fastcc void @tsi_next(%struct.tree_stmt_iterator* nonnull %i) #8, !dbg !2878
  %.pre = load %struct.tree_statement_list_node*, %struct.tree_statement_list_node** %8, align 8, !dbg !2870
  %.pre1 = load %union.tree_node*, %union.tree_node** %10, align 8, !dbg !2870
  br label %for.cond, !dbg !2879, !llvm.loop !2880

sw.bb16:                                          ; preds = %if.end
  %call17 = tail call fastcc %union.tree_node* @tsi_stmt(%struct.tree_statement_list_node* %9, %union.tree_node* %11) #8, !dbg !2882
  %operands19 = getelementptr inbounds %union.tree_node, %union.tree_node* %call17, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2882
  %arrayidx20 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands19, i64 1, !dbg !2882
  %19 = load %union.tree_node*, %union.tree_node** %arrayidx20, align 8, !dbg !2882
  %call21 = tail call zeroext i8 @block_may_fallthru(%union.tree_node* %19) #8, !dbg !2883
  br label %cleanup, !dbg !2884

cleanup.loopexit:                                 ; preds = %for.cond, %for.body
  %retval.0.ph = phi i8 [ 0, %for.cond ], [ 1, %for.body ]
  br label %cleanup, !dbg !2885

cleanup:                                          ; preds = %cleanup.loopexit, %entry, %if.end, %sw.bb16
  %retval.0 = phi i8 [ %call21, %sw.bb16 ], [ 1, %entry ], [ 0, %if.end ], [ %retval.0.ph, %cleanup.loopexit ], !dbg !2857
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7, !dbg !2885
  ret i8 %retval.0, !dbg !2885
}

declare dso_local i32 @call_expr_flags(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @gimple_stmt_may_fallthru(%union.gimple_statement_d* %stmt) local_unnamed_addr #5 !dbg !2886 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2888, metadata !DIExpression()), !dbg !2889
  %tobool = icmp eq %union.gimple_statement_d* %stmt, null, !dbg !2890
  br i1 %tobool, label %return, label %if.end, !dbg !2892

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %stmt) #8, !dbg !2893
  switch i32 %call, label %sw.default [
    i32 3, label %return
    i32 9, label %return
    i32 14, label %return
    i32 5, label %return
    i32 1, label %return
    i32 10, label %sw.bb3
    i32 17, label %sw.bb6
    i32 8, label %sw.bb19
  ], !dbg !2894

sw.bb3:                                           ; preds = %if.end
  %call4 = tail call fastcc %struct.gimple_seq_d* @gimple_bind_body(%union.gimple_statement_d* nonnull %stmt) #8, !dbg !2895
  %call5 = tail call zeroext i8 @gimple_seq_may_fallthru(%struct.gimple_seq_d* %call4) #8, !dbg !2897
  br label %return, !dbg !2898

sw.bb6:                                           ; preds = %if.end
  %call7 = tail call fastcc i32 @gimple_try_kind(%union.gimple_statement_d* nonnull %stmt) #8, !dbg !2899
  %cmp = icmp eq i32 %call7, 1, !dbg !2901
  br i1 %cmp, label %if.then8, label %if.end10, !dbg !2902

if.then8:                                         ; preds = %sw.bb6
  %call9 = tail call fastcc zeroext i8 @gimple_try_catch_may_fallthru(%union.gimple_statement_d* nonnull %stmt) #8, !dbg !2903
  br label %return, !dbg !2904

if.end10:                                         ; preds = %sw.bb6
  %call11 = tail call fastcc %struct.gimple_seq_d* @gimple_try_eval(%union.gimple_statement_d* nonnull %stmt) #8, !dbg !2905
  %call12 = tail call zeroext i8 @gimple_seq_may_fallthru(%struct.gimple_seq_d* %call11) #8, !dbg !2906
  %tobool13 = icmp eq i8 %call12, 0, !dbg !2906
  br i1 %tobool13, label %land.end, label %land.rhs, !dbg !2907

land.rhs:                                         ; preds = %if.end10
  %call14 = tail call fastcc %struct.gimple_seq_d* @gimple_try_cleanup(%union.gimple_statement_d* nonnull %stmt) #8, !dbg !2908
  %call15 = tail call zeroext i8 @gimple_seq_may_fallthru(%struct.gimple_seq_d* %call14) #8, !dbg !2909
  %tobool17 = icmp ne i8 %call15, 0, !dbg !2907
  %phitmp = zext i1 %tobool17 to i8
  br label %land.end

land.end:                                         ; preds = %if.end10, %land.rhs
  %0 = phi i8 [ 0, %if.end10 ], [ %phitmp, %land.rhs ]
  br label %return, !dbg !2910

sw.bb19:                                          ; preds = %if.end
  %call20 = tail call i32 @gimple_call_flags(%union.gimple_statement_d* nonnull %stmt) #6, !dbg !2911
  %and = lshr i32 %call20, 3, !dbg !2912
  %1 = trunc i32 %and to i8, !dbg !2912
  %2 = and i8 %1, 1, !dbg !2912
  %3 = xor i8 %2, 1, !dbg !2912
  br label %return, !dbg !2913

sw.default:                                       ; preds = %if.end
  br label %return, !dbg !2914

return:                                           ; preds = %entry, %if.end, %if.end, %if.end, %if.end, %if.end, %sw.default, %sw.bb19, %land.end, %if.then8, %sw.bb3
  %retval.0 = phi i8 [ 1, %sw.default ], [ %3, %sw.bb19 ], [ %call9, %if.then8 ], [ %0, %land.end ], [ %call5, %sw.bb3 ], [ 1, %entry ], [ 0, %if.end ], [ 0, %if.end ], [ 0, %if.end ], [ 0, %if.end ], [ 0, %if.end ], !dbg !2889
  ret i8 %retval.0, !dbg !2915
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2916 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2920, metadata !DIExpression()), !dbg !2921
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !2922
  %bf.load = load i32, i32* %0, align 8, !dbg !2922
  %bf.clear = and i32 %bf.load, 255, !dbg !2922
  ret i32 %bf.clear, !dbg !2923
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @gimple_seq_may_fallthru(%struct.gimple_seq_d* %seq) local_unnamed_addr #5 !dbg !2924 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %seq, metadata !2928, metadata !DIExpression()), !dbg !2929
  %call = tail call fastcc %union.gimple_statement_d* @gimple_seq_last_stmt(%struct.gimple_seq_d* %seq) #8, !dbg !2930
  %call1 = tail call zeroext i8 @gimple_stmt_may_fallthru(%union.gimple_statement_d* %call) #8, !dbg !2931
  ret i8 %call1, !dbg !2932
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @gimple_bind_body(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2933 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2937, metadata !DIExpression()), !dbg !2938
  %body = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, !dbg !2939
  %0 = bitcast [1 x %struct.phi_arg_d]* %body to %struct.gimple_seq_d**, !dbg !2939
  %1 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %0, align 8, !dbg !2939
  ret %struct.gimple_seq_d* %1, !dbg !2940
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_try_kind(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2941 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2945, metadata !DIExpression()), !dbg !2946
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 0, !dbg !2947
  %bf.load = load i32, i32* %0, align 8, !dbg !2947
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !2947
  %and = and i32 %bf.lshr, 3, !dbg !2948
  ret i32 %and, !dbg !2949
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @gimple_try_catch_may_fallthru(%union.gimple_statement_d* %stmt) unnamed_addr #5 !dbg !2950 {
entry:
  %i = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2952, metadata !DIExpression()), !dbg !2954
  %0 = bitcast %struct.gimple_stmt_iterator* %i to i8*, !dbg !2955
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !2955
  %call = tail call fastcc i32 @gimple_try_kind(%union.gimple_statement_d* %stmt) #8, !dbg !2956
  %cmp = icmp eq i32 %call, 1, !dbg !2956
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2956

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 560, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2956
  br label %cond.end, !dbg !2956

cond.end:                                         ; preds = %entry, %cond.true
  %call1 = tail call fastcc %struct.gimple_seq_d* @gimple_try_eval(%union.gimple_statement_d* %stmt) #8, !dbg !2957
  %call2 = tail call zeroext i8 @gimple_seq_may_fallthru(%struct.gimple_seq_d* %call1) #8, !dbg !2959
  %tobool = icmp eq i8 %call2, 0, !dbg !2959
  br i1 %tobool, label %if.end, label %cleanup, !dbg !2960

if.end:                                           ; preds = %cond.end
  %1 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2961
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #7, !dbg !2961
  %call3 = tail call fastcc %struct.gimple_seq_d* @gimple_try_cleanup(%union.gimple_statement_d* %stmt) #8, !dbg !2962
  call fastcc void @gsi_start(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.gimple_seq_d* %call3) #8, !dbg !2961
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !2961
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #7, !dbg !2961
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2953, metadata !DIExpression(DW_OP_deref)), !dbg !2954
  %call4 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %i) #8, !dbg !2963
  %call5 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call4) #8, !dbg !2964
  switch i32 %call5, label %cleanup [
    i32 11, label %for.cond.preheader
    i32 12, label %sw.bb14
  ], !dbg !2965

for.cond.preheader:                               ; preds = %if.end
  br label %for.cond, !dbg !2966

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2953, metadata !DIExpression(DW_OP_deref)), !dbg !2954
  %call6 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %i) #8, !dbg !2969
  %tobool7 = icmp eq i8 %call6, 0, !dbg !2971
  br i1 %tobool7, label %for.body, label %cleanup.loopexit, !dbg !2966

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2953, metadata !DIExpression(DW_OP_deref)), !dbg !2954
  %call8 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %i) #8, !dbg !2972
  %call9 = call fastcc %struct.gimple_seq_d* @gimple_catch_handler(%union.gimple_statement_d* %call8) #8, !dbg !2975
  %call10 = call zeroext i8 @gimple_seq_may_fallthru(%struct.gimple_seq_d* %call9) #8, !dbg !2976
  %tobool11 = icmp eq i8 %call10, 0, !dbg !2976
  br i1 %tobool11, label %for.inc, label %cleanup.loopexit, !dbg !2977

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2953, metadata !DIExpression(DW_OP_deref)), !dbg !2954
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %i) #8, !dbg !2978
  br label %for.cond, !dbg !2979, !llvm.loop !2980

sw.bb14:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2953, metadata !DIExpression(DW_OP_deref)), !dbg !2954
  %call15 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %i) #8, !dbg !2982
  %call16 = call fastcc %struct.gimple_seq_d* @gimple_eh_filter_failure(%union.gimple_statement_d* %call15) #8, !dbg !2983
  %call17 = call zeroext i8 @gimple_seq_may_fallthru(%struct.gimple_seq_d* %call16) #8, !dbg !2984
  br label %cleanup, !dbg !2985

cleanup.loopexit:                                 ; preds = %for.cond, %for.body
  %retval.0.ph = phi i8 [ 0, %for.cond ], [ 1, %for.body ]
  br label %cleanup, !dbg !2986

cleanup:                                          ; preds = %cleanup.loopexit, %cond.end, %if.end, %sw.bb14
  %retval.0 = phi i8 [ %call17, %sw.bb14 ], [ 1, %cond.end ], [ 0, %if.end ], [ %retval.0.ph, %cleanup.loopexit ], !dbg !2954
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !2986
  ret i8 %retval.0, !dbg !2986
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @gimple_try_eval(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2987 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2989, metadata !DIExpression()), !dbg !2990
  %eval = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !2991
  %0 = bitcast i32* %eval to %struct.gimple_seq_d**, !dbg !2991
  %1 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %0, align 8, !dbg !2991
  ret %struct.gimple_seq_d* %1, !dbg !2992
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @gimple_try_cleanup(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2993 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2995, metadata !DIExpression()), !dbg !2996
  %cleanup = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !2997
  %0 = bitcast %union.tree_node** %cleanup to %struct.gimple_seq_d**, !dbg !2997
  %1 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %0, align 8, !dbg !2997
  ret %struct.gimple_seq_d* %1, !dbg !2998
}

declare dso_local i32 @gimple_call_flags(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gimple_seq_last_stmt(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !2999 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3006, metadata !DIExpression()), !dbg !3008
  %call = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %s) #8, !dbg !3009
  call void @llvm.dbg.value(metadata %struct.gimple_seq_node_d* %call, metadata !3007, metadata !DIExpression()), !dbg !3008
  %tobool = icmp eq %struct.gimple_seq_node_d* %call, null, !dbg !3010
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3010

cond.true:                                        ; preds = %entry
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %call, i64 0, i32 0, !dbg !3011
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3011
  br label %cond.end, !dbg !3010

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %union.gimple_statement_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3010
  ret %union.gimple_statement_d* %cond, !dbg !3012
}

; Function Attrs: nounwind uwtable
define dso_local void @record_vars_into(%union.tree_node* %vars, %union.tree_node* %fn) local_unnamed_addr #5 !dbg !3013 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %vars, metadata !3017, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata %union.tree_node* %fn, metadata !3018, metadata !DIExpression()), !dbg !3023
  %0 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !3024
  %cmp = icmp eq %union.tree_node* %0, %fn, !dbg !3026
  br i1 %cmp, label %if.end, label %if.then, !dbg !3027

if.then:                                          ; preds = %entry
  %f = getelementptr inbounds %union.tree_node, %union.tree_node* %fn, i64 0, i32 0, i32 1, !dbg !3028
  %1 = load %struct.function*, %struct.function** %f, align 8, !dbg !3028
  tail call void @push_cfun(%struct.function* %1) #6, !dbg !3029
  br label %if.end, !dbg !3029

if.end:                                           ; preds = %entry, %if.then
  br label %for.cond, !dbg !3030

for.cond:                                         ; preds = %cleanup, %if.end
  %vars.addr.0 = phi %union.tree_node* [ %vars, %if.end ], [ %7, %cleanup ]
  call void @llvm.dbg.value(metadata %union.tree_node* %vars.addr.0, metadata !3017, metadata !DIExpression()), !dbg !3023
  %tobool = icmp eq %union.tree_node* %vars.addr.0, null, !dbg !3031
  br i1 %tobool, label %for.end, label %for.body, !dbg !3031

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %union.tree_node* %vars.addr.0, metadata !3019, metadata !DIExpression()), !dbg !3032
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %vars.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3033
  %bf.load = load i64, i64* %2, align 8, !dbg !3033
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3035
  %cmp1 = icmp eq i64 %bf.cast1, 32, !dbg !3035
  br i1 %cmp1, label %if.end3, label %cleanup, !dbg !3036

if.end3:                                          ; preds = %for.body
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %vars.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3037
  %3 = bitcast i40* %decl_flag_1 to i64*, !dbg !3037
  %bf.load4 = load i64, i64* %3, align 8, !dbg !3037
  %bf.cast62 = and i64 %bf.load4, 33554432, !dbg !3037
  %tobool7 = icmp eq i64 %bf.cast62, 0, !dbg !3037
  br i1 %tobool7, label %if.end9, label %cleanup, !dbg !3039

if.end9:                                          ; preds = %if.end3
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3040
  %local_decls = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 9, !dbg !3040
  %5 = load %union.tree_node*, %union.tree_node** %local_decls, align 8, !dbg !3040
  %call = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* null, %union.tree_node* nonnull %vars.addr.0, %union.tree_node* %5) #6, !dbg !3040
  %6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3041
  %local_decls11 = getelementptr inbounds %struct.function, %struct.function* %6, i64 0, i32 9, !dbg !3042
  store %union.tree_node* %call, %union.tree_node** %local_decls11, align 8, !dbg !3043
  br label %cleanup, !dbg !3044

cleanup:                                          ; preds = %if.end3, %for.body, %if.end9
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %vars.addr.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3045
  %7 = load %union.tree_node*, %union.tree_node** %chain, align 8, !dbg !3045
  call void @llvm.dbg.value(metadata %union.tree_node* %7, metadata !3017, metadata !DIExpression()), !dbg !3023
  br label %for.cond, !dbg !3046, !llvm.loop !3047

for.end:                                          ; preds = %for.cond
  %8 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !3049
  %cmp12 = icmp eq %union.tree_node* %8, %fn, !dbg !3051
  br i1 %cmp12, label %if.end14, label %if.then13, !dbg !3052

if.then13:                                        ; preds = %for.end
  tail call void @pop_cfun() #6, !dbg !3053
  br label %if.end14, !dbg !3053

if.end14:                                         ; preds = %for.end, %if.then13
  ret void, !dbg !3054
}

declare dso_local void @push_cfun(%struct.function*) local_unnamed_addr #2

declare dso_local %union.tree_node* @tree_cons_stat(%union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local void @pop_cfun() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @record_vars(%union.tree_node* %vars) local_unnamed_addr #5 !dbg !3055 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %vars, metadata !3059, metadata !DIExpression()), !dbg !3060
  %0 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !3061
  tail call void @record_vars_into(%union.tree_node* %vars, %union.tree_node* %0) #8, !dbg !3062
  ret void, !dbg !3063
}

declare dso_local %struct.gimple_seq_d* @gimple_body(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3064 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3068, metadata !DIExpression()), !dbg !3069
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3070
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3070

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !3071
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !3071
  br label %cond.end, !dbg !3070

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3070
  ret %struct.gimple_seq_node_d* %cond, !dbg !3072
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3073 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3075, metadata !DIExpression()), !dbg !3076
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3077
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3077

cond.true:                                        ; preds = %entry
  %last = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 1, !dbg !3078
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %last, align 8, !dbg !3078
  br label %cond.end, !dbg !3077

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3077
  ret %struct.gimple_seq_node_d* %cond, !dbg !3079
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gimple_seq_first_stmt(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3080 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3082, metadata !DIExpression()), !dbg !3084
  %call = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) #8, !dbg !3085
  call void @llvm.dbg.value(metadata %struct.gimple_seq_node_d* %call, metadata !3083, metadata !DIExpression()), !dbg !3084
  %tobool = icmp eq %struct.gimple_seq_node_d* %call, null, !dbg !3086
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3086

cond.true:                                        ; preds = %entry
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %call, i64 0, i32 0, !dbg !3087
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3087
  br label %cond.end, !dbg !3086

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %union.gimple_statement_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3086
  ret %union.gimple_statement_d* %cond, !dbg !3088
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_return_statements_t_heap* @VEC_return_statements_t_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !3089 {
entry:
  call void @llvm.dbg.value(metadata i32 8, metadata !3093, metadata !DIExpression()), !dbg !3094
  %call = tail call i8* @vec_heap_o_reserve_exact(i8* null, i32 8, i64 8, i64 16) #6, !dbg !3095
  %0 = bitcast i8* %call to %struct.VEC_return_statements_t_heap*, !dbg !3095
  ret %struct.VEC_return_statements_t_heap* %0, !dbg !3095
}

declare dso_local void @gimple_seq_add_stmt(%struct.gimple_seq_d**, %union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.gimple_seq_d* %seq) unnamed_addr #0 !dbg !3096 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %seq, metadata !3100, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3101, metadata !DIExpression()), !dbg !3103
  %call = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %seq) #8, !dbg !3104
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3105
  store %struct.gimple_seq_node_d* %call, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3106
  %seq1 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3107
  store %struct.gimple_seq_d* %seq, %struct.gimple_seq_d** %seq1, align 8, !dbg !3108
  %tobool = icmp eq %struct.gimple_seq_node_d* %call, null, !dbg !3109
  br i1 %tobool, label %cond.end, label %land.lhs.true, !dbg !3110

land.lhs.true:                                    ; preds = %entry
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %call, i64 0, i32 0, !dbg !3111
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3111
  %tobool4 = icmp eq %union.gimple_statement_d* %0, null, !dbg !3112
  br i1 %tobool4, label %cond.end, label %cond.true, !dbg !3113

cond.true:                                        ; preds = %land.lhs.true
  %call7 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* nonnull %0) #8, !dbg !3114
  br label %cond.end, !dbg !3113

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.basic_block_def* [ %call7, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !3113
  %bb = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3115
  store %struct.basic_block_def* %cond, %struct.basic_block_def** %bb, align 8, !dbg !3116
  ret void, !dbg !3117
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc void @lower_gimple_bind(%struct.gimple_stmt_iterator* %gsi, %struct.lower_data* %data) unnamed_addr #5 !dbg !3118 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3124, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata %struct.lower_data* %data, metadata !3125, metadata !DIExpression()), !dbg !3129
  %block = getelementptr inbounds %struct.lower_data, %struct.lower_data* %data, i64 0, i32 0, !dbg !3130
  %0 = load %union.tree_node*, %union.tree_node** %block, align 8, !dbg !3130
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !3126, metadata !DIExpression()), !dbg !3129
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3131
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !3127, metadata !DIExpression()), !dbg !3129
  %call1 = tail call fastcc %union.tree_node* @gimple_bind_block(%union.gimple_statement_d* %call) #8, !dbg !3132
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !3128, metadata !DIExpression()), !dbg !3129
  %tobool = icmp eq %union.tree_node* %call1, null, !dbg !3133
  br i1 %tobool, label %if.end19, label %if.then, !dbg !3135

if.then:                                          ; preds = %entry
  %cmp = icmp eq %union.tree_node* %call1, %0, !dbg !3136
  br i1 %cmp, label %if.then2, label %if.else, !dbg !3139

if.then2:                                         ; preds = %if.then
  %1 = load %struct.tree_decl_common*, %struct.tree_decl_common** bitcast (%union.tree_node** @current_function_decl to %struct.tree_decl_common**), align 8, !dbg !3140
  %initial = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %1, i64 0, i32 5, !dbg !3140
  %2 = load %union.tree_node*, %union.tree_node** %initial, align 8, !dbg !3140
  %cmp3 = icmp eq %union.tree_node* %0, %2, !dbg !3140
  br i1 %cmp3, label %if.end19, label %cond.true, !dbg !3140

cond.true:                                        ; preds = %if.then2
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 465, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3140
  br label %if.end19, !dbg !3140

if.else:                                          ; preds = %if.then
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3142
  %bf.load = load i64, i64* %3, align 8, !dbg !3142
  %bf.cast1 = and i64 %bf.load, 4194304, !dbg !3142
  %tobool4 = icmp eq i64 %bf.cast1, 0, !dbg !3142
  br i1 %tobool4, label %cond.end7, label %cond.true5, !dbg !3142

cond.true5:                                       ; preds = %if.else
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 471, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3142
  %bf.load10.pre = load i64, i64* %3, align 8, !dbg !3144
  br label %cond.end7, !dbg !3142

cond.end7:                                        ; preds = %if.else, %cond.true5
  %bf.load10 = phi i64 [ %bf.load, %if.else ], [ %bf.load10.pre, %cond.true5 ], !dbg !3144
  %bf.set = or i64 %bf.load10, 4194304, !dbg !3144
  store i64 %bf.set, i64* %3, align 8, !dbg !3144
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3145
  %5 = bitcast %union.tree_node** %4 to i64*, !dbg !3145
  %6 = load i64, i64* %5, align 8, !dbg !3145
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3146
  %7 = bitcast %union.tree_node** %chain to i64*, !dbg !3147
  store i64 %6, i64* %7, align 8, !dbg !3147
  store %union.tree_node* %call1, %union.tree_node** %4, align 8, !dbg !3148
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3149
  store %union.tree_node* null, %union.tree_node** %8, align 8, !dbg !3150
  %supercontext = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3151
  %9 = bitcast i40* %supercontext to %union.tree_node**, !dbg !3151
  store %union.tree_node* %0, %union.tree_node** %9, align 8, !dbg !3152
  store %union.tree_node* %call1, %union.tree_node** %block, align 8, !dbg !3153
  br label %if.end19

if.end19:                                         ; preds = %entry, %cond.end7, %if.then2, %cond.true
  %new_block.1 = phi %union.tree_node* [ null, %entry ], [ %call1, %cond.end7 ], [ null, %if.then2 ], [ null, %cond.true ], !dbg !3129
  call void @llvm.dbg.value(metadata %union.tree_node* %new_block.1, metadata !3128, metadata !DIExpression()), !dbg !3129
  %call20 = tail call fastcc %union.tree_node* @gimple_bind_vars(%union.gimple_statement_d* %call) #8, !dbg !3154
  tail call void @record_vars(%union.tree_node* %call20) #8, !dbg !3155
  %call21 = tail call fastcc %struct.gimple_seq_d* @gimple_bind_body(%union.gimple_statement_d* %call) #8, !dbg !3156
  tail call fastcc void @lower_sequence(%struct.gimple_seq_d* %call21, %struct.lower_data* %data) #8, !dbg !3157
  %tobool22 = icmp eq %union.tree_node* %new_block.1, null, !dbg !3158
  br i1 %tobool22, label %if.end36, label %if.then23, !dbg !3160

if.then23:                                        ; preds = %if.end19
  %10 = load %union.tree_node*, %union.tree_node** %block, align 8, !dbg !3161
  %cmp25 = icmp eq %union.tree_node* %10, %new_block.1, !dbg !3161
  br i1 %cmp25, label %cond.end28, label %cond.true26, !dbg !3161

cond.true26:                                      ; preds = %if.then23
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 491, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3161
  br label %cond.end28, !dbg !3161

cond.end28:                                       ; preds = %if.then23, %cond.true26
  %11 = getelementptr inbounds %union.tree_node, %union.tree_node* %new_block.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3163
  %12 = load %union.tree_node*, %union.tree_node** %11, align 8, !dbg !3163
  %call32 = tail call %union.tree_node* @blocks_nreverse(%union.tree_node* %12) #6, !dbg !3164
  store %union.tree_node* %call32, %union.tree_node** %11, align 8, !dbg !3165
  store %union.tree_node* %0, %union.tree_node** %block, align 8, !dbg !3166
  br label %if.end36, !dbg !3167

if.end36:                                         ; preds = %if.end19, %cond.end28
  %call37 = tail call fastcc %struct.gimple_seq_d* @gimple_bind_body(%union.gimple_statement_d* %call) #8, !dbg !3168
  tail call void @gsi_insert_seq_before(%struct.gimple_stmt_iterator* %gsi, %struct.gimple_seq_d* %call37, i32 1) #6, !dbg !3169
  tail call void @gsi_remove(%struct.gimple_stmt_iterator* %gsi, i8 zeroext 0) #6, !dbg !3170
  ret void, !dbg !3171
}

declare dso_local void @gimple_set_body(%union.tree_node*, %struct.gimple_seq_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_last(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.gimple_seq_d* %seq) unnamed_addr #0 !dbg !3172 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %seq, metadata !3174, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3175, metadata !DIExpression()), !dbg !3177
  %call = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %seq) #8, !dbg !3178
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3179
  store %struct.gimple_seq_node_d* %call, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3180
  %seq1 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3181
  store %struct.gimple_seq_d* %seq, %struct.gimple_seq_d** %seq1, align 8, !dbg !3182
  %tobool = icmp eq %struct.gimple_seq_node_d* %call, null, !dbg !3183
  br i1 %tobool, label %cond.end, label %land.lhs.true, !dbg !3184

land.lhs.true:                                    ; preds = %entry
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %call, i64 0, i32 0, !dbg !3185
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3185
  %tobool4 = icmp eq %union.gimple_statement_d* %0, null, !dbg !3186
  br i1 %tobool4, label %cond.end, label %cond.true, !dbg !3187

cond.true:                                        ; preds = %land.lhs.true
  %call7 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* nonnull %0) #8, !dbg !3188
  br label %cond.end, !dbg !3187

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.basic_block_def* [ %call7, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !3187
  %bb = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3189
  store %struct.basic_block_def* %cond, %struct.basic_block_def** %bb, align 8, !dbg !3190
  ret void, !dbg !3191
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_return_statements_t_base_length(%struct.VEC_return_statements_t_base* %vec_) unnamed_addr #0 !dbg !3192 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_return_statements_t_base* %vec_, metadata !3198, metadata !DIExpression()), !dbg !3199
  %tobool = icmp eq %struct.VEC_return_statements_t_base* %vec_, null, !dbg !3200
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3200

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_return_statements_t_base, %struct.VEC_return_statements_t_base* %vec_, i64 0, i32 0, !dbg !3200
  %0 = load i32, i32* %num, align 8, !dbg !3200
  br label %cond.end, !dbg !3200

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3200
  ret i32 %cond, !dbg !3200
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_return_retval(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3201 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3203, metadata !DIExpression()), !dbg !3204
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !3205
  ret %union.tree_node* %call, !dbg !3206
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.return_statements_t* @VEC_return_statements_t_base_last(%struct.VEC_return_statements_t_base* %vec_) unnamed_addr #0 !dbg !3207 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_return_statements_t_base* %vec_, metadata !3213, metadata !DIExpression()), !dbg !3214
  br label %land.end, !dbg !3215

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %num2 = getelementptr inbounds %struct.VEC_return_statements_t_base, %struct.VEC_return_statements_t_base* %vec_, i64 0, i32 0, !dbg !3215
  %0 = load i32, i32* %num2, align 8, !dbg !3215
  %sub = add i32 %0, -1, !dbg !3215
  %idxprom = zext i32 %sub to i64, !dbg !3215
  %arrayidx = getelementptr inbounds %struct.VEC_return_statements_t_base, %struct.VEC_return_statements_t_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3215
  ret %struct.return_statements_t* %arrayidx, !dbg !3215
}

declare dso_local %union.gimple_statement_d* @gimple_build_return(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_location(%union.gimple_statement_d* %g, i32 %location) unnamed_addr #0 !dbg !3216 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3220, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i32 %location, metadata !3221, metadata !DIExpression()), !dbg !3222
  %location1 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 2, !dbg !3223
  store i32 %location, i32* %location1, align 8, !dbg !3224
  ret void, !dbg !3225
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_block(%union.gimple_statement_d* %g, %union.tree_node* %block) unnamed_addr #0 !dbg !3226 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3230, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata %union.tree_node* %block, metadata !3231, metadata !DIExpression()), !dbg !3232
  %block1 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 5, !dbg !3233
  store %union.tree_node* %block, %union.tree_node** %block1, align 8, !dbg !3234
  ret void, !dbg !3235
}

declare dso_local void @gsi_insert_after(%struct.gimple_stmt_iterator*, %union.gimple_statement_d*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_return_statements_t_base_truncate(%struct.VEC_return_statements_t_base* %vec_, i32 %size_) unnamed_addr #0 !dbg !3236 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_return_statements_t_base* %vec_, metadata !3240, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i32 %size_, metadata !3241, metadata !DIExpression()), !dbg !3242
  %tobool = icmp eq %struct.VEC_return_statements_t_base* %vec_, null, !dbg !3243
  br label %cond.true, !dbg !3243

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !3243

cond.false:                                       ; No predecessors!
  br label %cond.end, !dbg !3243

cond.end:                                         ; preds = %cond.false, %cond.true
  br i1 %tobool, label %if.end, label %if.then, !dbg !3243

if.then:                                          ; preds = %cond.end
  %num3 = getelementptr inbounds %struct.VEC_return_statements_t_base, %struct.VEC_return_statements_t_base* %vec_, i64 0, i32 0, !dbg !3244
  store i32 %size_, i32* %num3, align 8, !dbg !3244
  br label %if.end, !dbg !3244

if.end:                                           ; preds = %cond.end, %if.then
  ret void, !dbg !3243
}

declare dso_local %union.gimple_statement_d* @gimple_build_label(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @create_artificial_label(i32) local_unnamed_addr #2

declare dso_local %union.tree_node* @create_tmp_var(%union.tree_node*, i8*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_addr(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_call(%union.tree_node*, i32, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_call_set_lhs(%union.gimple_statement_d* %gs, %union.tree_node* %lhs) unnamed_addr #0 !dbg !3246 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3248, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata %union.tree_node* %lhs, metadata !3249, metadata !DIExpression()), !dbg !3250
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 0, %union.tree_node* %lhs) #8, !dbg !3251
  %tobool = icmp eq %union.tree_node* %lhs, null, !dbg !3252
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3254

land.lhs.true:                                    ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3255
  %bf.load = load i64, i64* %0, align 8, !dbg !3255
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3256
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !3256
  br i1 %cmp, label %if.then, label %if.end, !dbg !3257

if.then:                                          ; preds = %land.lhs.true
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3258
  %1 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !3258
  store %union.gimple_statement_d* %gs, %union.gimple_statement_d** %1, align 8, !dbg !3259
  br label %if.end, !dbg !3258

if.end:                                           ; preds = %entry, %if.then, %land.lhs.true
  ret void, !dbg !3260
}

declare dso_local %union.gimple_statement_d* @gimple_build_goto(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @blocks_nreverse(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @clear_block_marks(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_return_statements_t_heap_free(%struct.VEC_return_statements_t_heap** %vec_) unnamed_addr #0 !dbg !3261 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_return_statements_t_heap** %vec_, metadata !3266, metadata !DIExpression()), !dbg !3267
  %0 = load %struct.VEC_return_statements_t_heap*, %struct.VEC_return_statements_t_heap** %vec_, align 8, !dbg !3268
  %tobool = icmp eq %struct.VEC_return_statements_t_heap* %0, null, !dbg !3268
  br i1 %tobool, label %if.end, label %if.then, !dbg !3270

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_return_statements_t_heap* %0 to i8*, !dbg !3270
  tail call void @free(i8* nonnull %1) #6, !dbg !3268
  br label %if.end, !dbg !3268

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_return_statements_t_heap* null, %struct.VEC_return_statements_t_heap** %vec_, align 8, !dbg !3270
  ret void, !dbg !3270
}

declare dso_local i8* @vec_heap_o_reserve_exact(i8*, i32, i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3271 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3275, metadata !DIExpression()), !dbg !3276
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !3277
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3277
  ret %struct.basic_block_def* %0, !dbg !3278
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3279 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3283, metadata !DIExpression()), !dbg !3284
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3285
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3285
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !3286
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3286
  ret %union.gimple_statement_d* %1, !dbg !3287
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_bind_block(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3288 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3290, metadata !DIExpression()), !dbg !3291
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !3292
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3292
  ret %union.tree_node* %1, !dbg !3293
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_bind_vars(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3294 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3296, metadata !DIExpression()), !dbg !3297
  %vars = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !3298
  %0 = bitcast i32* %vars to %union.tree_node**, !dbg !3298
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3298
  ret %union.tree_node* %1, !dbg !3299
}

; Function Attrs: nounwind uwtable
define internal fastcc void @lower_sequence(%struct.gimple_seq_d* %seq, %struct.lower_data* %data) unnamed_addr #5 !dbg !3300 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %seq, metadata !3304, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata %struct.lower_data* %data, metadata !3305, metadata !DIExpression()), !dbg !3307
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3308
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3308
  %1 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3309
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #7, !dbg !3309
  call fastcc void @gsi_start(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.gimple_seq_d* %seq) #8, !dbg !3309
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !3309
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #7, !dbg !3309
  br label %for.cond, !dbg !3311

for.cond:                                         ; preds = %for.body, %entry
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3306, metadata !DIExpression(DW_OP_deref)), !dbg !3307
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3312
  %tobool = icmp eq i8 %call, 0, !dbg !3314
  br i1 %tobool, label %for.body, label %for.end, !dbg !3315

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3306, metadata !DIExpression(DW_OP_deref)), !dbg !3307
  call fastcc void @lower_stmt(%struct.gimple_stmt_iterator* nonnull %gsi, %struct.lower_data* %data) #8, !dbg !3316
  br label %for.cond, !dbg !3317, !llvm.loop !3318

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !3320
  ret void, !dbg !3320
}

declare dso_local void @gsi_insert_seq_before(%struct.gimple_stmt_iterator*, %struct.gimple_seq_d*, i32) local_unnamed_addr #2

declare dso_local void @gsi_remove(%struct.gimple_stmt_iterator*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3321 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3325, metadata !DIExpression()), !dbg !3326
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3327
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3327
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !3328
  %conv1 = zext i1 %cmp to i8, !dbg !3329
  ret i8 %conv1, !dbg !3330
}

; Function Attrs: nounwind uwtable
define internal fastcc void @lower_stmt(%struct.gimple_stmt_iterator* %gsi, %struct.lower_data* %data) unnamed_addr #5 !dbg !3331 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3333, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata %struct.lower_data* %data, metadata !3334, metadata !DIExpression()), !dbg !3341
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3342
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !3335, metadata !DIExpression()), !dbg !3341
  %block = getelementptr inbounds %struct.lower_data, %struct.lower_data* %data, i64 0, i32 0, !dbg !3343
  %0 = load %union.tree_node*, %union.tree_node** %block, align 8, !dbg !3343
  tail call fastcc void @gimple_set_block(%union.gimple_statement_d* %call, %union.tree_node* %0) #8, !dbg !3344
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %call) #8, !dbg !3345
  switch i32 %call1, label %sw.default [
    i32 10, label %sw.bb
    i32 1, label %sw.bb2
    i32 3, label %sw.bb2
    i32 5, label %sw.bb2
    i32 9, label %sw.bb3
    i32 17, label %sw.bb6
    i32 11, label %sw.bb17
    i32 12, label %sw.bb20
    i32 18, label %sw.epilog
    i32 7, label %sw.epilog
    i32 6, label %sw.epilog
    i32 33, label %sw.epilog
    i32 4, label %sw.epilog
    i32 13, label %sw.epilog
    i32 23, label %sw.epilog
    i32 30, label %sw.epilog
    i32 31, label %sw.epilog
    i32 29, label %sw.epilog
    i32 32, label %sw.epilog
    i32 24, label %sw.epilog
    i32 25, label %sw.epilog
    i32 22, label %sw.epilog
    i32 28, label %sw.epilog
    i32 19, label %sw.epilog
    i32 20, label %sw.epilog
    i32 21, label %sw.epilog
    i32 8, label %sw.bb24
    i32 26, label %sw.bb48
    i32 27, label %sw.bb48
  ], !dbg !3346

sw.bb:                                            ; preds = %entry
  tail call fastcc void @lower_gimple_bind(%struct.gimple_stmt_iterator* %gsi, %struct.lower_data* %data) #8, !dbg !3347
  br label %cleanup.cont54, !dbg !3348

sw.bb2:                                           ; preds = %entry, %entry, %entry
  %cannot_fallthru = getelementptr inbounds %struct.lower_data, %struct.lower_data* %data, i64 0, i32 2, !dbg !3349
  store i8 1, i8* %cannot_fallthru, align 8, !dbg !3350
  tail call fastcc void @gsi_next(%struct.gimple_stmt_iterator* %gsi) #8, !dbg !3351
  br label %cleanup.cont54, !dbg !3352

sw.bb3:                                           ; preds = %entry
  %cannot_fallthru4 = getelementptr inbounds %struct.lower_data, %struct.lower_data* %data, i64 0, i32 2, !dbg !3353
  %1 = load i8, i8* %cannot_fallthru4, align 8, !dbg !3353
  %tobool = icmp eq i8 %1, 0, !dbg !3355
  br i1 %tobool, label %if.else, label %if.then, !dbg !3356

if.then:                                          ; preds = %sw.bb3
  tail call void @gsi_remove(%struct.gimple_stmt_iterator* %gsi, i8 zeroext 0) #6, !dbg !3357
  br label %cleanup.cont54, !dbg !3359

if.else:                                          ; preds = %sw.bb3
  tail call fastcc void @lower_gimple_return(%struct.gimple_stmt_iterator* %gsi, %struct.lower_data* %data) #8, !dbg !3360
  store i8 1, i8* %cannot_fallthru4, align 8, !dbg !3362
  br label %cleanup.cont54

sw.bb6:                                           ; preds = %entry
  %call7 = tail call fastcc %struct.gimple_seq_d* @gimple_try_eval(%union.gimple_statement_d* %call) #8, !dbg !3363
  tail call fastcc void @lower_sequence(%struct.gimple_seq_d* %call7, %struct.lower_data* %data) #8, !dbg !3364
  %cannot_fallthru8 = getelementptr inbounds %struct.lower_data, %struct.lower_data* %data, i64 0, i32 2, !dbg !3365
  %2 = load i8, i8* %cannot_fallthru8, align 8, !dbg !3365
  call void @llvm.dbg.value(metadata i8 %2, metadata !3336, metadata !DIExpression()), !dbg !3366
  store i8 0, i8* %cannot_fallthru8, align 8, !dbg !3367
  %call10 = tail call fastcc %struct.gimple_seq_d* @gimple_try_cleanup(%union.gimple_statement_d* %call) #8, !dbg !3368
  tail call fastcc void @lower_sequence(%struct.gimple_seq_d* %call10, %struct.lower_data* %data) #8, !dbg !3369
  %call11 = tail call fastcc i32 @gimple_try_kind(%union.gimple_statement_d* %call) #8, !dbg !3370
  %cmp = icmp eq i32 %call11, 2, !dbg !3372
  br i1 %cmp, label %if.then12, label %cleanup, !dbg !3373

if.then12:                                        ; preds = %sw.bb6
  %3 = load i8, i8* %cannot_fallthru8, align 8, !dbg !3374
  %or3 = or i8 %3, %2, !dbg !3374
  store i8 %or3, i8* %cannot_fallthru8, align 8, !dbg !3374
  tail call fastcc void @gsi_next(%struct.gimple_stmt_iterator* %gsi) #8, !dbg !3376
  br label %cleanup, !dbg !3377

cleanup:                                          ; preds = %sw.bb6, %if.then12
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then12 ], [ true, %sw.bb6 ]
  br i1 %cleanup.dest.slot.0, label %sw.epilog, label %cleanup.cont54

sw.bb17:                                          ; preds = %entry
  %cannot_fallthru18 = getelementptr inbounds %struct.lower_data, %struct.lower_data* %data, i64 0, i32 2, !dbg !3378
  store i8 0, i8* %cannot_fallthru18, align 8, !dbg !3379
  %call19 = tail call fastcc %struct.gimple_seq_d* @gimple_catch_handler(%union.gimple_statement_d* %call) #8, !dbg !3380
  tail call fastcc void @lower_sequence(%struct.gimple_seq_d* %call19, %struct.lower_data* %data) #8, !dbg !3381
  br label %sw.epilog, !dbg !3382

sw.bb20:                                          ; preds = %entry
  %cannot_fallthru21 = getelementptr inbounds %struct.lower_data, %struct.lower_data* %data, i64 0, i32 2, !dbg !3383
  store i8 0, i8* %cannot_fallthru21, align 8, !dbg !3384
  %call22 = tail call fastcc %struct.gimple_seq_d* @gimple_eh_filter_failure(%union.gimple_statement_d* %call) #8, !dbg !3385
  tail call fastcc void @lower_sequence(%struct.gimple_seq_d* %call22, %struct.lower_data* %data) #8, !dbg !3386
  br label %sw.epilog, !dbg !3387

sw.bb24:                                          ; preds = %entry
  %call25 = tail call fastcc %union.tree_node* @gimple_call_fndecl(%union.gimple_statement_d* %call) #8, !dbg !3388
  call void @llvm.dbg.value(metadata %union.tree_node* %call25, metadata !3339, metadata !DIExpression()), !dbg !3389
  %cond2 = icmp eq %union.tree_node* %call25, null, !dbg !3390
  br i1 %cond2, label %cleanup45, label %land.lhs.true, !dbg !3390

land.lhs.true:                                    ; preds = %sw.bb24
  %built_in_class = getelementptr inbounds %union.tree_node, %union.tree_node* %call25, i64 0, i32 0, i32 5, !dbg !3392
  %bf.load = load i32, i32* %built_in_class, align 8, !dbg !3392
  %bf.clear = and i32 %bf.load, 6144, !dbg !3392
  %cmp27 = icmp eq i32 %bf.clear, 6144, !dbg !3393
  br i1 %cmp27, label %land.lhs.true29, label %if.end37, !dbg !3394

land.lhs.true29:                                  ; preds = %land.lhs.true
  %bf.clear32 = and i32 %bf.load, 2047, !dbg !3395
  %cmp33 = icmp eq i32 %bf.clear32, 506, !dbg !3396
  br i1 %cmp33, label %if.then35, label %if.end37, !dbg !3397

if.then35:                                        ; preds = %land.lhs.true29
  tail call fastcc void @lower_builtin_setjmp(%struct.gimple_stmt_iterator* %gsi) #8, !dbg !3398
  %cannot_fallthru36 = getelementptr inbounds %struct.lower_data, %struct.lower_data* %data, i64 0, i32 2, !dbg !3400
  store i8 0, i8* %cannot_fallthru36, align 8, !dbg !3401
  %calls_builtin_setjmp = getelementptr inbounds %struct.lower_data, %struct.lower_data* %data, i64 0, i32 3, !dbg !3402
  store i8 1, i8* %calls_builtin_setjmp, align 1, !dbg !3403
  br label %cleanup45, !dbg !3404

if.end37:                                         ; preds = %land.lhs.true29, %land.lhs.true
  %call40 = tail call i32 @flags_from_decl_or_type(%union.tree_node* nonnull %call25) #6, !dbg !3405
  %and = and i32 %call40, 8, !dbg !3407
  %tobool41 = icmp eq i32 %and, 0, !dbg !3407
  br i1 %tobool41, label %cleanup45, label %if.then42, !dbg !3408

if.then42:                                        ; preds = %if.end37
  %cannot_fallthru43 = getelementptr inbounds %struct.lower_data, %struct.lower_data* %data, i64 0, i32 2, !dbg !3409
  store i8 1, i8* %cannot_fallthru43, align 8, !dbg !3411
  tail call fastcc void @gsi_next(%struct.gimple_stmt_iterator* %gsi) #8, !dbg !3412
  br label %cleanup45, !dbg !3413

cleanup45:                                        ; preds = %if.end37, %sw.bb24, %if.then42, %if.then35
  %cleanup.dest.slot.1 = phi i1 [ false, %if.then35 ], [ false, %if.then42 ], [ true, %sw.bb24 ], [ true, %if.end37 ]
  br i1 %cleanup.dest.slot.1, label %sw.epilog, label %cleanup.cont54

sw.bb48:                                          ; preds = %entry, %entry
  %cannot_fallthru49 = getelementptr inbounds %struct.lower_data, %struct.lower_data* %data, i64 0, i32 2, !dbg !3414
  store i8 0, i8* %cannot_fallthru49, align 8, !dbg !3415
  tail call fastcc void @lower_omp_directive(%struct.gimple_stmt_iterator* %gsi, %struct.lower_data* %data) #8, !dbg !3416
  store i8 0, i8* %cannot_fallthru49, align 8, !dbg !3417
  br label %cleanup.cont54, !dbg !3418

sw.default:                                       ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 442, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3419
  br label %sw.epilog, !dbg !3420

sw.epilog:                                        ; preds = %cleanup45, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %cleanup, %sw.default, %sw.bb20, %sw.bb17
  %cannot_fallthru51 = getelementptr inbounds %struct.lower_data, %struct.lower_data* %data, i64 0, i32 2, !dbg !3421
  store i8 0, i8* %cannot_fallthru51, align 8, !dbg !3422
  tail call fastcc void @gsi_next(%struct.gimple_stmt_iterator* %gsi) #8, !dbg !3423
  br label %cleanup.cont54, !dbg !3424

cleanup.cont54:                                   ; preds = %sw.bb, %sw.bb2, %sw.bb48, %sw.epilog, %cleanup45, %cleanup, %if.else, %if.then
  ret void, !dbg !3424
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !3425 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3429, metadata !DIExpression()), !dbg !3430
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3431
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3431
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !3432
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !3432
  %2 = load i64, i64* %1, align 8, !dbg !3432
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !3433
  store i64 %2, i64* %3, align 8, !dbg !3433
  ret void, !dbg !3434
}

; Function Attrs: nounwind uwtable
define internal fastcc void @lower_gimple_return(%struct.gimple_stmt_iterator* %gsi, %struct.lower_data* %data) unnamed_addr #5 !dbg !3435 {
entry:
  %tmp_rs = alloca %struct.return_statements_t, align 8
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3437, metadata !DIExpression()), !dbg !3444
  call void @llvm.dbg.value(metadata %struct.lower_data* %data, metadata !3438, metadata !DIExpression()), !dbg !3444
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3445
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !3439, metadata !DIExpression()), !dbg !3444
  %0 = bitcast %struct.return_statements_t* %tmp_rs to i8*, !dbg !3446
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7, !dbg !3446
  %return_statements = getelementptr inbounds %struct.lower_data, %struct.lower_data* %data, i64 0, i32 1, !dbg !3447
  %1 = load %struct.VEC_return_statements_t_heap*, %struct.VEC_return_statements_t_heap** %return_statements, align 8, !dbg !3447
  %tobool = icmp eq %struct.VEC_return_statements_t_heap* %1, null, !dbg !3447
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3447

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_return_statements_t_heap, %struct.VEC_return_statements_t_heap* %1, i64 0, i32 0, !dbg !3447
  br label %cond.end, !dbg !3447

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_return_statements_t_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3447
  %call2 = tail call fastcc i32 @VEC_return_statements_t_base_length(%struct.VEC_return_statements_t_base* %cond) #8, !dbg !3447
  call void @llvm.dbg.value(metadata i32 %call2, metadata !3441, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3444
  %stmt13 = getelementptr inbounds %struct.return_statements_t, %struct.return_statements_t* %tmp_rs, i64 0, i32 1, !dbg !3449
  br label %for.cond, !dbg !3453

for.cond:                                         ; preds = %for.inc, %cond.end
  %i.0.in = phi i32 [ %call2, %cond.end ], [ %i.0, %for.inc ]
  %i.0 = add i32 %i.0.in, -1, !dbg !3454
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3441, metadata !DIExpression()), !dbg !3444
  %cmp = icmp sgt i32 %i.0, -1, !dbg !3455
  br i1 %cmp, label %for.body, label %for.end, !dbg !3456

for.body:                                         ; preds = %for.cond
  %2 = load %struct.VEC_return_statements_t_heap*, %struct.VEC_return_statements_t_heap** %return_statements, align 8, !dbg !3457
  %tobool4 = icmp eq %struct.VEC_return_statements_t_heap* %2, null, !dbg !3457
  br i1 %tobool4, label %cond.end9, label %cond.true5, !dbg !3457

cond.true5:                                       ; preds = %for.body
  %base7 = getelementptr inbounds %struct.VEC_return_statements_t_heap, %struct.VEC_return_statements_t_heap* %2, i64 0, i32 0, !dbg !3457
  br label %cond.end9, !dbg !3457

cond.end9:                                        ; preds = %for.body, %cond.true5
  %cond10 = phi %struct.VEC_return_statements_t_base* [ %base7, %cond.true5 ], [ null, %for.body ], !dbg !3457
  %call11 = tail call fastcc %struct.return_statements_t* @VEC_return_statements_t_base_index(%struct.VEC_return_statements_t_base* %cond10, i32 %i.0) #8, !dbg !3457
  %3 = bitcast %struct.return_statements_t* %call11 to i8*, !dbg !3458
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* align 8 %3, i64 16, i1 false), !dbg !3458
  %call12 = tail call fastcc %union.tree_node* @gimple_return_retval(%union.gimple_statement_d* %call) #8, !dbg !3459
  %4 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt13, align 8, !dbg !3460
  %call14 = tail call fastcc %union.tree_node* @gimple_return_retval(%union.gimple_statement_d* %4) #8, !dbg !3461
  %cmp15 = icmp eq %union.tree_node* %call12, %call14, !dbg !3462
  br i1 %cmp15, label %found.loopexit, label %for.inc, !dbg !3463

for.inc:                                          ; preds = %cond.end9
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3441, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3444
  br label %for.cond, !dbg !3464, !llvm.loop !3465

for.end:                                          ; preds = %for.cond
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3467
  %function_end_locus = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 16, !dbg !3468
  %6 = load i32, i32* %function_end_locus, align 4, !dbg !3468
  %call16 = tail call %union.tree_node* @create_artificial_label(i32 %6) #6, !dbg !3469
  %label = getelementptr inbounds %struct.return_statements_t, %struct.return_statements_t* %tmp_rs, i64 0, i32 0, !dbg !3470
  store %union.tree_node* %call16, %union.tree_node** %label, align 8, !dbg !3471
  store %union.gimple_statement_d* %call, %union.gimple_statement_d** %stmt13, align 8, !dbg !3472
  call void @llvm.dbg.value(metadata %struct.return_statements_t* %tmp_rs, metadata !3442, metadata !DIExpression(DW_OP_deref)), !dbg !3444
  %call19 = call fastcc %struct.return_statements_t* @VEC_return_statements_t_heap_safe_push(%struct.VEC_return_statements_t_heap** nonnull %return_statements, %struct.return_statements_t* nonnull %tmp_rs) #8, !dbg !3473
  br label %found, !dbg !3473

found.loopexit:                                   ; preds = %cond.end9
  br label %found, !dbg !3474

found:                                            ; preds = %found.loopexit, %for.end
  call void @llvm.dbg.label(metadata !3443), !dbg !3475
  %label20 = getelementptr inbounds %struct.return_statements_t, %struct.return_statements_t* %tmp_rs, i64 0, i32 0, !dbg !3474
  %7 = load %union.tree_node*, %union.tree_node** %label20, align 8, !dbg !3474
  %call21 = call %union.gimple_statement_d* @gimple_build_goto(%union.tree_node* %7) #6, !dbg !3476
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call21, metadata !3440, metadata !DIExpression()), !dbg !3444
  %call22 = call fastcc i32 @gimple_location(%union.gimple_statement_d* %call) #8, !dbg !3477
  call fastcc void @gimple_set_location(%union.gimple_statement_d* %call21, i32 %call22) #8, !dbg !3478
  %call23 = call fastcc %union.tree_node* @gimple_block(%union.gimple_statement_d* %call) #8, !dbg !3479
  call fastcc void @gimple_set_block(%union.gimple_statement_d* %call21, %union.tree_node* %call23) #8, !dbg !3480
  call void @gsi_insert_before(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %call21, i32 1) #6, !dbg !3481
  call void @gsi_remove(%struct.gimple_stmt_iterator* %gsi, i8 zeroext 0) #6, !dbg !3482
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7, !dbg !3483
  ret void, !dbg !3483
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @gimple_catch_handler(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3484 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3486, metadata !DIExpression()), !dbg !3487
  %handler = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !3488
  %0 = bitcast %union.tree_node** %handler to %struct.gimple_seq_d**, !dbg !3488
  %1 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %0, align 8, !dbg !3488
  ret %struct.gimple_seq_d* %1, !dbg !3489
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @gimple_eh_filter_failure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3490 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3492, metadata !DIExpression()), !dbg !3493
  %failure = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !3494
  %0 = bitcast %union.tree_node** %failure to %struct.gimple_seq_d**, !dbg !3494
  %1 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %0, align 8, !dbg !3494
  ret %struct.gimple_seq_d* %1, !dbg !3495
}

; Function Attrs: nounwind uwtable
define internal fastcc void @lower_builtin_setjmp(%struct.gimple_stmt_iterator* %gsi) unnamed_addr #5 !dbg !3496 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3498, metadata !DIExpression()), !dbg !3507
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3508
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !3499, metadata !DIExpression()), !dbg !3507
  %call1 = tail call fastcc i32 @gimple_location(%union.gimple_statement_d* %call) #8, !dbg !3509
  call void @llvm.dbg.value(metadata i32 %call1, metadata !3500, metadata !DIExpression()), !dbg !3507
  %call2 = tail call %union.tree_node* @create_artificial_label(i32 %call1) #6, !dbg !3510
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !3501, metadata !DIExpression()), !dbg !3507
  %call3 = tail call %union.tree_node* @create_artificial_label(i32 %call1) #6, !dbg !3511
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !3502, metadata !DIExpression()), !dbg !3507
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3512
  %bf.load = load i64, i64* %0, align 8, !dbg !3513
  %bf.set = or i64 %bf.load, 65536, !dbg !3513
  store i64 %bf.set, i64* %0, align 8, !dbg !3513
  %call4 = tail call fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %call) #8, !dbg !3514
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !3503, metadata !DIExpression()), !dbg !3507
  %1 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !3515
  %call5 = tail call %union.tree_node* @build_addr(%union.tree_node* %call3, %union.tree_node* %1) #6, !dbg !3516
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !3505, metadata !DIExpression()), !dbg !3507
  %2 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([721 x %union.tree_node*], [721 x %union.tree_node*]* @implicit_built_in_decls, i64 0, i64 523), align 8, !dbg !3517
  call void @llvm.dbg.value(metadata %union.tree_node* %2, metadata !3504, metadata !DIExpression()), !dbg !3507
  %call6 = tail call fastcc %union.tree_node* @gimple_call_arg(%union.gimple_statement_d* %call, i32 0) #8, !dbg !3518
  %call7 = tail call %union.gimple_statement_d* (%union.tree_node*, i32, ...) @gimple_build_call(%union.tree_node* %2, i32 2, %union.tree_node* %call6, %union.tree_node* %call5) #6, !dbg !3519
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call7, metadata !3506, metadata !DIExpression()), !dbg !3507
  tail call fastcc void @gimple_set_location(%union.gimple_statement_d* %call7, i32 %call1) #8, !dbg !3520
  %call8 = tail call fastcc %union.tree_node* @gimple_block(%union.gimple_statement_d* %call) #8, !dbg !3521
  tail call fastcc void @gimple_set_block(%union.gimple_statement_d* %call7, %union.tree_node* %call8) #8, !dbg !3522
  tail call void @gsi_insert_before(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %call7, i32 1) #6, !dbg !3523
  %tobool = icmp eq %union.tree_node* %call4, null, !dbg !3524
  br i1 %tobool, label %if.end, label %if.then, !dbg !3526

if.then:                                          ; preds = %entry
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3527
  %3 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !3527
  %4 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 13), align 8, !dbg !3527
  %call9 = tail call %union.tree_node* @fold_convert_loc(i32 %call1, %union.tree_node* %3, %union.tree_node* %4) #6, !dbg !3527
  %call10 = tail call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* nonnull %call4, %union.tree_node* %call9) #6, !dbg !3527
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call10, metadata !3506, metadata !DIExpression()), !dbg !3507
  tail call fastcc void @gimple_set_location(%union.gimple_statement_d* %call10, i32 %call1) #8, !dbg !3529
  %call11 = tail call fastcc %union.tree_node* @gimple_block(%union.gimple_statement_d* %call) #8, !dbg !3530
  tail call fastcc void @gimple_set_block(%union.gimple_statement_d* %call10, %union.tree_node* %call11) #8, !dbg !3531
  tail call void @gsi_insert_before(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %call10, i32 1) #6, !dbg !3532
  br label %if.end, !dbg !3533

if.end:                                           ; preds = %entry, %if.then
  %call12 = tail call %union.gimple_statement_d* @gimple_build_goto(%union.tree_node* %call2) #6, !dbg !3534
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call12, metadata !3506, metadata !DIExpression()), !dbg !3507
  tail call void @gsi_insert_before(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %call12, i32 1) #6, !dbg !3535
  %call13 = tail call %union.gimple_statement_d* @gimple_build_label(%union.tree_node* %call3) #6, !dbg !3536
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call13, metadata !3506, metadata !DIExpression()), !dbg !3507
  tail call void @gsi_insert_before(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %call13, i32 1) #6, !dbg !3537
  %5 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !3538
  %call14 = tail call %union.tree_node* @build_addr(%union.tree_node* %call3, %union.tree_node* %5) #6, !dbg !3539
  call void @llvm.dbg.value(metadata %union.tree_node* %call14, metadata !3505, metadata !DIExpression()), !dbg !3507
  %6 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([721 x %union.tree_node*], [721 x %union.tree_node*]* @implicit_built_in_decls, i64 0, i64 525), align 8, !dbg !3540
  call void @llvm.dbg.value(metadata %union.tree_node* %6, metadata !3504, metadata !DIExpression()), !dbg !3507
  %call15 = tail call %union.gimple_statement_d* (%union.tree_node*, i32, ...) @gimple_build_call(%union.tree_node* %6, i32 1, %union.tree_node* %call14) #6, !dbg !3541
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call15, metadata !3506, metadata !DIExpression()), !dbg !3507
  tail call fastcc void @gimple_set_location(%union.gimple_statement_d* %call15, i32 %call1) #8, !dbg !3542
  %call16 = tail call fastcc %union.tree_node* @gimple_block(%union.gimple_statement_d* %call) #8, !dbg !3543
  tail call fastcc void @gimple_set_block(%union.gimple_statement_d* %call15, %union.tree_node* %call16) #8, !dbg !3544
  tail call void @gsi_insert_before(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %call15, i32 1) #6, !dbg !3545
  br i1 %tobool, label %if.end24, label %if.then18, !dbg !3546

if.then18:                                        ; preds = %if.end
  %type20 = getelementptr inbounds %union.tree_node, %union.tree_node* %call4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3547
  %7 = load %union.tree_node*, %union.tree_node** %type20, align 8, !dbg !3547
  %8 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 14), align 16, !dbg !3547
  %call21 = tail call %union.tree_node* @fold_convert_loc(i32 %call1, %union.tree_node* %7, %union.tree_node* %8) #6, !dbg !3547
  %call22 = tail call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* nonnull %call4, %union.tree_node* %call21) #6, !dbg !3547
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call22, metadata !3506, metadata !DIExpression()), !dbg !3507
  tail call fastcc void @gimple_set_location(%union.gimple_statement_d* %call22, i32 %call1) #8, !dbg !3550
  %call23 = tail call fastcc %union.tree_node* @gimple_block(%union.gimple_statement_d* %call) #8, !dbg !3551
  tail call fastcc void @gimple_set_block(%union.gimple_statement_d* %call22, %union.tree_node* %call23) #8, !dbg !3552
  tail call void @gsi_insert_before(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %call22, i32 1) #6, !dbg !3553
  br label %if.end24, !dbg !3554

if.end24:                                         ; preds = %if.end, %if.then18
  %call25 = tail call %union.gimple_statement_d* @gimple_build_label(%union.tree_node* %call2) #6, !dbg !3555
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call25, metadata !3506, metadata !DIExpression()), !dbg !3507
  tail call void @gsi_insert_before(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %call25, i32 1) #6, !dbg !3556
  tail call void @gsi_remove(%struct.gimple_stmt_iterator* %gsi, i8 zeroext 0) #6, !dbg !3557
  ret void, !dbg !3558
}

declare dso_local i32 @flags_from_decl_or_type(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @lower_omp_directive(%struct.gimple_stmt_iterator* %gsi, %struct.lower_data* %data) unnamed_addr #5 !dbg !3559 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3561, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata %struct.lower_data* %data, metadata !3562, metadata !DIExpression()), !dbg !3564
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3565
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !3563, metadata !DIExpression()), !dbg !3564
  %call1 = tail call fastcc %struct.gimple_seq_d* @gimple_omp_body(%union.gimple_statement_d* %call) #8, !dbg !3566
  tail call fastcc void @lower_sequence(%struct.gimple_seq_d* %call1, %struct.lower_data* %data) #8, !dbg !3567
  tail call void @gsi_insert_before(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %call, i32 1) #6, !dbg !3568
  %call2 = tail call fastcc %struct.gimple_seq_d* @gimple_omp_body(%union.gimple_statement_d* %call) #8, !dbg !3569
  tail call void @gsi_insert_seq_before(%struct.gimple_stmt_iterator* %gsi, %struct.gimple_seq_d* %call2, i32 1) #6, !dbg !3570
  tail call fastcc void @gimple_omp_set_body(%union.gimple_statement_d* %call, %struct.gimple_seq_d* null) #8, !dbg !3571
  tail call void @gsi_remove(%struct.gimple_stmt_iterator* %gsi, i8 zeroext 0) #6, !dbg !3572
  ret void, !dbg !3573
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.return_statements_t* @VEC_return_statements_t_base_index(%struct.VEC_return_statements_t_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3574 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_return_statements_t_base* %vec_, metadata !3578, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3579, metadata !DIExpression()), !dbg !3580
  br label %land.end, !dbg !3581

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3581
  %arrayidx = getelementptr inbounds %struct.VEC_return_statements_t_base, %struct.VEC_return_statements_t_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3581
  ret %struct.return_statements_t* %arrayidx, !dbg !3581
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.return_statements_t* @VEC_return_statements_t_heap_safe_push(%struct.VEC_return_statements_t_heap** %vec_, %struct.return_statements_t* %obj_) unnamed_addr #0 !dbg !3582 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_return_statements_t_heap** %vec_, metadata !3588, metadata !DIExpression()), !dbg !3590
  call void @llvm.dbg.value(metadata %struct.return_statements_t* %obj_, metadata !3589, metadata !DIExpression()), !dbg !3590
  %call = tail call fastcc i32 @VEC_return_statements_t_heap_reserve(%struct.VEC_return_statements_t_heap** %vec_, i32 1) #8, !dbg !3591
  %0 = load %struct.VEC_return_statements_t_heap*, %struct.VEC_return_statements_t_heap** %vec_, align 8, !dbg !3591
  %tobool = icmp eq %struct.VEC_return_statements_t_heap* %0, null, !dbg !3591
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3591

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_return_statements_t_heap, %struct.VEC_return_statements_t_heap* %0, i64 0, i32 0, !dbg !3591
  br label %cond.end, !dbg !3591

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_return_statements_t_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3591
  %call1 = tail call fastcc %struct.return_statements_t* @VEC_return_statements_t_base_quick_push(%struct.VEC_return_statements_t_base* %cond, %struct.return_statements_t* %obj_) #8, !dbg !3591
  ret %struct.return_statements_t* %call1, !dbg !3591
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_location(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3592 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3596, metadata !DIExpression()), !dbg !3597
  %location = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 2, !dbg !3598
  %0 = load i32, i32* %location, align 8, !dbg !3598
  ret i32 %0, !dbg !3599
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_block(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3600 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3602, metadata !DIExpression()), !dbg !3603
  %block = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 5, !dbg !3604
  %0 = load %union.tree_node*, %union.tree_node** %block, align 8, !dbg !3604
  ret %union.tree_node* %0, !dbg !3605
}

declare dso_local void @gsi_insert_before(%struct.gimple_stmt_iterator*, %union.gimple_statement_d*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_return_statements_t_heap_reserve(%struct.VEC_return_statements_t_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3606 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_return_statements_t_heap** %vec_, metadata !3610, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata i32 1, metadata !3611, metadata !DIExpression()), !dbg !3613
  %0 = load %struct.VEC_return_statements_t_heap*, %struct.VEC_return_statements_t_heap** %vec_, align 8, !dbg !3614
  %tobool = icmp eq %struct.VEC_return_statements_t_heap* %0, null, !dbg !3614
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3614

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_return_statements_t_heap, %struct.VEC_return_statements_t_heap* %0, i64 0, i32 0, !dbg !3614
  br label %cond.end, !dbg !3614

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_return_statements_t_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3614
  %call = tail call fastcc i32 @VEC_return_statements_t_base_space(%struct.VEC_return_statements_t_base* %cond, i32 1) #8, !dbg !3614
  %tobool1 = icmp eq i32 %call, 0, !dbg !3614
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !3614
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3612, metadata !DIExpression()), !dbg !3613
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3614

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_return_statements_t_heap** %vec_ to i8**, !dbg !3615
  %2 = load i8*, i8** %1, align 8, !dbg !3615
  %call3 = tail call i8* @vec_heap_o_reserve(i8* %2, i32 1, i64 8, i64 16) #6, !dbg !3615
  store i8* %call3, i8** %1, align 8, !dbg !3615
  br label %if.end, !dbg !3615

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !3614
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.return_statements_t* @VEC_return_statements_t_base_quick_push(%struct.VEC_return_statements_t_base* %vec_, %struct.return_statements_t* %obj_) unnamed_addr #0 !dbg !3617 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_return_statements_t_base* %vec_, metadata !3621, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata %struct.return_statements_t* %obj_, metadata !3622, metadata !DIExpression()), !dbg !3624
  %num1 = getelementptr inbounds %struct.VEC_return_statements_t_base, %struct.VEC_return_statements_t_base* %vec_, i64 0, i32 0, !dbg !3625
  %0 = load i32, i32* %num1, align 8, !dbg !3625
  %inc = add i32 %0, 1, !dbg !3625
  store i32 %inc, i32* %num1, align 8, !dbg !3625
  %idxprom = zext i32 %0 to i64, !dbg !3625
  %arrayidx = getelementptr inbounds %struct.VEC_return_statements_t_base, %struct.VEC_return_statements_t_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3625
  call void @llvm.dbg.value(metadata %struct.return_statements_t* %arrayidx, metadata !3623, metadata !DIExpression()), !dbg !3624
  %tobool = icmp eq %struct.return_statements_t* %obj_, null, !dbg !3626
  br i1 %tobool, label %if.end, label %if.then, !dbg !3625

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.return_statements_t* %arrayidx to i8*, !dbg !3626
  %2 = bitcast %struct.return_statements_t* %obj_ to i8*, !dbg !3626
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !3626
  br label %if.end, !dbg !3626

if.end:                                           ; preds = %entry, %if.then
  ret %struct.return_statements_t* %arrayidx, !dbg !3625
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_return_statements_t_base_space(%struct.VEC_return_statements_t_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3628 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_return_statements_t_base* %vec_, metadata !3632, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i32 1, metadata !3633, metadata !DIExpression()), !dbg !3634
  %tobool = icmp eq %struct.VEC_return_statements_t_base* %vec_, null, !dbg !3635
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3635

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_return_statements_t_base, %struct.VEC_return_statements_t_base* %vec_, i64 0, i32 1, !dbg !3635
  %0 = load i32, i32* %alloc, align 4, !dbg !3635
  %num = getelementptr inbounds %struct.VEC_return_statements_t_base, %struct.VEC_return_statements_t_base* %vec_, i64 0, i32 0, !dbg !3635
  %1 = load i32, i32* %num, align 8, !dbg !3635
  %cmp1 = icmp ne i32 %0, %1, !dbg !3635
  %phitmp = zext i1 %cmp1 to i32, !dbg !3635
  br label %cond.end, !dbg !3635

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3635

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !3635
}

declare dso_local i8* @vec_heap_o_reserve(i8*, i32, i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3636 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3638, metadata !DIExpression()), !dbg !3639
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !3640
  ret %union.tree_node* %call, !dbg !3641
}

declare dso_local %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @fold_convert_loc(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3642 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3644, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 %i, metadata !3645, metadata !DIExpression()), !dbg !3646
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #8, !dbg !3647
  %tobool = icmp eq i8 %call, 0, !dbg !3647
  br i1 %tobool, label %return, label %if.then, !dbg !3649

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #8, !dbg !3650
  %idxprom = zext i32 %i to i64, !dbg !3650
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !3650
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3650
  br label %return, !dbg !3652

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !3653
  ret %union.tree_node* %retval.0, !dbg !3654
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3655 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3659, metadata !DIExpression()), !dbg !3660
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3661
  %cmp = icmp eq i32 %call, 0, !dbg !3662
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !3663

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3664
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3665
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3666
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3667 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3671, metadata !DIExpression()), !dbg !3673
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #8, !dbg !3674
  %idxprom = zext i32 %call to i64, !dbg !3675
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !3675
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3675
  call void @llvm.dbg.value(metadata i64 %0, metadata !3672, metadata !DIExpression()), !dbg !3673
  %cmp = icmp eq i64 %0, 0, !dbg !3676
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3676

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3676
  br label %cond.end, !dbg !3676

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !3677
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !3678
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !3679
  ret %union.tree_node** %2, !dbg !3680
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3681 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3685, metadata !DIExpression()), !dbg !3686
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !3687
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #8, !dbg !3688
  ret i32 %call1, !dbg !3689
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !3690 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3694, metadata !DIExpression()), !dbg !3695
  %idxprom = zext i32 %code to i64, !dbg !3696
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !3696
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3696
  ret i32 %0, !dbg !3697
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @gimple_omp_body(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3698 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3700, metadata !DIExpression()), !dbg !3701
  %body = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !3702
  %0 = bitcast i32* %body to %struct.gimple_seq_d**, !dbg !3702
  %1 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %0, align 8, !dbg !3702
  ret %struct.gimple_seq_d* %1, !dbg !3703
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_omp_set_body(%union.gimple_statement_d* %gs, %struct.gimple_seq_d* %body) unnamed_addr #0 !dbg !3704 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3708, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* null, metadata !3709, metadata !DIExpression()), !dbg !3710
  %body1 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !3711
  %0 = bitcast i32* %body1 to %struct.gimple_seq_d**, !dbg !3711
  store %struct.gimple_seq_d* null, %struct.gimple_seq_d** %0, align 8, !dbg !3712
  ret void, !dbg !3713
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 %i, %union.tree_node* %op) unnamed_addr #0 !dbg !3714 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3718, metadata !DIExpression()), !dbg !3721
  call void @llvm.dbg.value(metadata i32 0, metadata !3719, metadata !DIExpression()), !dbg !3721
  call void @llvm.dbg.value(metadata %union.tree_node* %op, metadata !3720, metadata !DIExpression()), !dbg !3721
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #8, !dbg !3722
  %tobool = icmp eq i8 %call, 0, !dbg !3722
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !3722

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #8, !dbg !3722
  %cmp = icmp eq i32 %call1, 0, !dbg !3722
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3722

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 1665, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3722
  br label %cond.end, !dbg !3722

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %call3 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #8, !dbg !3723
  store %union.tree_node* %op, %union.tree_node** %call3, align 8, !dbg !3724
  ret void, !dbg !3725
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3726 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3728, metadata !DIExpression()), !dbg !3729
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !3730
  %0 = load i32, i32* %num_ops, align 4, !dbg !3730
  ret i32 %0, !dbg !3731
}

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { %struct.tree_statement_list_node*, %union.tree_node* } @tsi_start(%union.tree_node* %t) unnamed_addr #0 !dbg !3732 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !3736, metadata !DIExpression()), !dbg !3738
  %head = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3739
  %0 = bitcast i32* %head to %struct.tree_statement_list_node**, !dbg !3739
  %1 = load %struct.tree_statement_list_node*, %struct.tree_statement_list_node** %0, align 8, !dbg !3739
  %2 = insertvalue { %struct.tree_statement_list_node*, %union.tree_node* } undef, %struct.tree_statement_list_node* %1, 0, !dbg !3740
  %3 = insertvalue { %struct.tree_statement_list_node*, %union.tree_node* } %2, %union.tree_node* %t, 1, !dbg !3740
  ret { %struct.tree_statement_list_node*, %union.tree_node* } %3, !dbg !3740
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @tsi_stmt(%struct.tree_statement_list_node* %i.coerce0, %union.tree_node* %i.coerce1) unnamed_addr #0 !dbg !3741 {
entry:
  %stmt = getelementptr inbounds %struct.tree_statement_list_node, %struct.tree_statement_list_node* %i.coerce0, i64 0, i32 2, !dbg !3746
  %0 = load %union.tree_node*, %union.tree_node** %stmt, align 8, !dbg !3746
  ret %union.tree_node* %0, !dbg !3747
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @tsi_end_p(%struct.tree_statement_list_node* %i.coerce0, %union.tree_node* %i.coerce1) unnamed_addr #0 !dbg !3748 {
entry:
  %cmp = icmp eq %struct.tree_statement_list_node* %i.coerce0, null, !dbg !3753
  %conv1 = zext i1 %cmp to i8, !dbg !3754
  ret i8 %conv1, !dbg !3755
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @tsi_next(%struct.tree_stmt_iterator* %i) unnamed_addr #0 !dbg !3756 {
entry:
  call void @llvm.dbg.value(metadata %struct.tree_stmt_iterator* %i, metadata !3761, metadata !DIExpression()), !dbg !3762
  %ptr = getelementptr inbounds %struct.tree_stmt_iterator, %struct.tree_stmt_iterator* %i, i64 0, i32 0, !dbg !3763
  %0 = load %struct.tree_statement_list_node*, %struct.tree_statement_list_node** %ptr, align 8, !dbg !3763
  %next = getelementptr inbounds %struct.tree_statement_list_node, %struct.tree_statement_list_node* %0, i64 0, i32 1, !dbg !3764
  %1 = bitcast %struct.tree_statement_list_node** %next to i64*, !dbg !3764
  %2 = load i64, i64* %1, align 8, !dbg !3764
  %3 = bitcast %struct.tree_stmt_iterator* %i to i64*, !dbg !3765
  store i64 %2, i64* %3, align 8, !dbg !3765
  ret void, !dbg !3766
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
!llvm.module.flags = !{!2089, !2090, !2091}
!llvm.ident = !{!2092}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_lower_cf", scope: !2, file: !3, line: 205, type: !2063, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !638, globals: !2062, nameTableKind: None)
!3 = !DIFile(filename: "gimple-low.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !317, !324, !330, !335, !340, !359, !366, !373, !567, !594, !632}
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
!567 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !568, line: 727, baseType: !7, size: 32, elements: !569)
!568 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!569 = !{!570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593}
!570 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!571 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!572 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!573 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!574 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!575 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!576 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!577 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!578 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!579 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!580 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!581 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!582 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!583 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!584 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!585 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!586 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!587 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!588 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!589 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!590 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!591 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!592 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!593 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!594 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !568, line: 51, baseType: !7, size: 32, elements: !595)
!595 = !{!596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631}
!596 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!597 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!598 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!599 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!600 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!601 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!602 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!603 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!604 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!605 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!606 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!607 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!608 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!609 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!610 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!611 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!612 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!613 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!614 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!615 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!616 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!617 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!618 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!619 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!620 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!621 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!622 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!623 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!624 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!625 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!626 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!627 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!628 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!629 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!630 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!631 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!632 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_try_flags", file: !568, line: 514, baseType: !7, size: 32, elements: !633)
!633 = !{!634, !635, !636, !637}
!634 = !DIEnumerator(name: "GIMPLE_TRY_CATCH", value: 1, isUnsigned: true)
!635 = !DIEnumerator(name: "GIMPLE_TRY_FINALLY", value: 2, isUnsigned: true)
!636 = !DIEnumerator(name: "GIMPLE_TRY_KIND", value: 3, isUnsigned: true)
!637 = !DIEnumerator(name: "GIMPLE_TRY_CATCH_IS_CLEANUP", value: 4, isUnsigned: true)
!638 = !{!639, !640, !641, !642, !645, !646, !648, !373, !650, !2041, !775, !2043, !7, !973, !2060, !1007, !643, !632}
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
!2042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !651)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_return_statements_t_heap", file: !3, line: 68, baseType: !2045)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_return_statements_t_heap", file: !3, line: 68, size: 192, elements: !2046)
!2046 = !{!2047}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2045, file: !3, line: 68, baseType: !2048, size: 192)
!2048 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_return_statements_t_base", file: !3, line: 67, baseType: !2049)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_return_statements_t_base", file: !3, line: 67, size: 192, elements: !2050)
!2050 = !{!2051, !2052, !2053}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2049, file: !3, line: 67, baseType: !7, size: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2049, file: !3, line: 67, baseType: !7, size: 32, offset: 32)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2049, file: !3, line: 67, baseType: !2054, size: 128, offset: 64)
!2054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2055, size: 128, elements: !747)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "return_statements_t", file: !3, line: 65, baseType: !2056)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_statements_t", file: !3, line: 60, size: 128, elements: !2057)
!2057 = !{!2058, !2059}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !2056, file: !3, line: 62, baseType: !648, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !2056, file: !3, line: 63, baseType: !972, size: 64, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !974)
!2062 = !{!0}
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !6, line: 156, size: 640, elements: !2064)
!2064 = !{!2065}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2063, file: !6, line: 158, baseType: !2066, size: 640)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !2067)
!2067 = !{!2068, !2069, !2070, !2074, !2078, !2080, !2081, !2082, !2084, !2085, !2086, !2087, !2088}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2066, file: !6, line: 117, baseType: !5, size: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2066, file: !6, line: 121, baseType: !646, size: 64, offset: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !2066, file: !6, line: 125, baseType: !2071, size: 64, offset: 128)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!640}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !2066, file: !6, line: 130, baseType: !2075, size: 64, offset: 192)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!7}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !2066, file: !6, line: 133, baseType: !2079, size: 64, offset: 256)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2066, file: !6, line: 136, baseType: !2079, size: 64, offset: 320)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !2066, file: !6, line: 139, baseType: !641, size: 32, offset: 384)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !2066, file: !6, line: 143, baseType: !2083, size: 32, offset: 416)
!2083 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !2066, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !2066, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !2066, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !2066, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !2066, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!2089 = !{i32 2, !"Dwarf Version", i32 4}
!2090 = !{i32 2, !"Debug Info Version", i32 3}
!2091 = !{i32 1, !"wchar_size", i32 4}
!2092 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2093 = distinct !DISubprogram(name: "vprintf", scope: !2094, file: !2094, line: 39, type: !2095, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2105)
!2094 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!641, !2097, !2098}
!2097 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !646)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2100)
!2100 = !{!2101, !2102, !2103, !2104}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2099, file: !3, baseType: !7, size: 32)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2099, file: !3, baseType: !7, size: 32, offset: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2099, file: !3, baseType: !645, size: 64, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2099, file: !3, baseType: !645, size: 64, offset: 128)
!2105 = !{!2106, !2107}
!2106 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2093, file: !2094, line: 39, type: !2097)
!2107 = !DILocalVariable(name: "__arg", arg: 2, scope: !2093, file: !2094, line: 39, type: !2098)
!2108 = !DILocation(line: 0, scope: !2093)
!2109 = !DILocation(line: 41, column: 20, scope: !2093)
!2110 = !DILocation(line: 41, column: 10, scope: !2093)
!2111 = !DILocation(line: 41, column: 3, scope: !2093)
!2112 = distinct !DISubprogram(name: "getchar", scope: !2094, file: !2094, line: 47, type: !2113, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2115)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!641}
!2115 = !{}
!2116 = !DILocation(line: 49, column: 16, scope: !2112)
!2117 = !DILocation(line: 49, column: 10, scope: !2112)
!2118 = !DILocation(line: 49, column: 3, scope: !2112)
!2119 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2094, file: !2094, line: 56, type: !2120, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2173)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!641, !2122}
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2124, line: 7, baseType: !2125)
!2124 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2126, line: 49, size: 1728, elements: !2127)
!2126 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2127 = !{!2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2143, !2145, !2146, !2147, !2150, !2152, !2153, !2154, !2157, !2159, !2162, !2165, !2166, !2167, !2168, !2169}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2125, file: !2126, line: 51, baseType: !641, size: 32)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2125, file: !2126, line: 54, baseType: !643, size: 64, offset: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2125, file: !2126, line: 55, baseType: !643, size: 64, offset: 128)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2125, file: !2126, line: 56, baseType: !643, size: 64, offset: 192)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2125, file: !2126, line: 57, baseType: !643, size: 64, offset: 256)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2125, file: !2126, line: 58, baseType: !643, size: 64, offset: 320)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2125, file: !2126, line: 59, baseType: !643, size: 64, offset: 384)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2125, file: !2126, line: 60, baseType: !643, size: 64, offset: 448)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2125, file: !2126, line: 61, baseType: !643, size: 64, offset: 512)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2125, file: !2126, line: 64, baseType: !643, size: 64, offset: 576)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2125, file: !2126, line: 65, baseType: !643, size: 64, offset: 640)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2125, file: !2126, line: 66, baseType: !643, size: 64, offset: 704)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2125, file: !2126, line: 68, baseType: !2141, size: 64, offset: 768)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2126, line: 36, flags: DIFlagFwdDecl)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2125, file: !2126, line: 70, baseType: !2144, size: 64, offset: 832)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2125, file: !2126, line: 72, baseType: !641, size: 32, offset: 896)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2125, file: !2126, line: 73, baseType: !641, size: 32, offset: 928)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2125, file: !2126, line: 74, baseType: !2148, size: 64, offset: 960)
!2148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2149, line: 152, baseType: !704)
!2149 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2125, file: !2126, line: 77, baseType: !2151, size: 16, offset: 1024)
!2151 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2125, file: !2126, line: 78, baseType: !1868, size: 8, offset: 1040)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2125, file: !2126, line: 79, baseType: !746, size: 8, offset: 1048)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2125, file: !2126, line: 81, baseType: !2155, size: 64, offset: 1088)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2126, line: 43, baseType: null)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2125, file: !2126, line: 89, baseType: !2158, size: 64, offset: 1152)
!2158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2149, line: 153, baseType: !704)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2125, file: !2126, line: 91, baseType: !2160, size: 64, offset: 1216)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2126, line: 37, flags: DIFlagFwdDecl)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2125, file: !2126, line: 92, baseType: !2163, size: 64, offset: 1280)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2126, line: 38, flags: DIFlagFwdDecl)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2125, file: !2126, line: 93, baseType: !2144, size: 64, offset: 1344)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2125, file: !2126, line: 94, baseType: !645, size: 64, offset: 1408)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2125, file: !2126, line: 95, baseType: !1118, size: 64, offset: 1472)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2125, file: !2126, line: 96, baseType: !641, size: 32, offset: 1536)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2125, file: !2126, line: 98, baseType: !2170, size: 160, offset: 1568)
!2170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 160, elements: !2171)
!2171 = !{!2172}
!2172 = !DISubrange(count: 20)
!2173 = !{!2174}
!2174 = !DILocalVariable(name: "__fp", arg: 1, scope: !2119, file: !2094, line: 56, type: !2122)
!2175 = !DILocation(line: 0, scope: !2119)
!2176 = !DILocation(line: 58, column: 10, scope: !2119)
!2177 = !DILocation(line: 58, column: 3, scope: !2119)
!2178 = distinct !DISubprogram(name: "getc_unlocked", scope: !2094, file: !2094, line: 66, type: !2120, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2179)
!2179 = !{!2180}
!2180 = !DILocalVariable(name: "__fp", arg: 1, scope: !2178, file: !2094, line: 66, type: !2122)
!2181 = !DILocation(line: 0, scope: !2178)
!2182 = !DILocation(line: 68, column: 10, scope: !2178)
!2183 = !DILocation(line: 68, column: 3, scope: !2178)
!2184 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2094, file: !2094, line: 73, type: !2113, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2115)
!2185 = !DILocation(line: 75, column: 10, scope: !2184)
!2186 = !DILocation(line: 75, column: 3, scope: !2184)
!2187 = distinct !DISubprogram(name: "putchar", scope: !2094, file: !2094, line: 82, type: !2188, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2190)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!641, !641}
!2190 = !{!2191}
!2191 = !DILocalVariable(name: "__c", arg: 1, scope: !2187, file: !2094, line: 82, type: !641)
!2192 = !DILocation(line: 0, scope: !2187)
!2193 = !DILocation(line: 84, column: 21, scope: !2187)
!2194 = !DILocation(line: 84, column: 10, scope: !2187)
!2195 = !DILocation(line: 84, column: 3, scope: !2187)
!2196 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2094, file: !2094, line: 91, type: !2197, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2199)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!641, !641, !2122}
!2199 = !{!2200, !2201}
!2200 = !DILocalVariable(name: "__c", arg: 1, scope: !2196, file: !2094, line: 91, type: !641)
!2201 = !DILocalVariable(name: "__stream", arg: 2, scope: !2196, file: !2094, line: 91, type: !2122)
!2202 = !DILocation(line: 0, scope: !2196)
!2203 = !DILocation(line: 93, column: 10, scope: !2196)
!2204 = !DILocation(line: 93, column: 3, scope: !2196)
!2205 = distinct !DISubprogram(name: "putc_unlocked", scope: !2094, file: !2094, line: 101, type: !2197, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2206)
!2206 = !{!2207, !2208}
!2207 = !DILocalVariable(name: "__c", arg: 1, scope: !2205, file: !2094, line: 101, type: !641)
!2208 = !DILocalVariable(name: "__stream", arg: 2, scope: !2205, file: !2094, line: 101, type: !2122)
!2209 = !DILocation(line: 0, scope: !2205)
!2210 = !DILocation(line: 103, column: 10, scope: !2205)
!2211 = !DILocation(line: 103, column: 3, scope: !2205)
!2212 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2094, file: !2094, line: 108, type: !2188, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2213)
!2213 = !{!2214}
!2214 = !DILocalVariable(name: "__c", arg: 1, scope: !2212, file: !2094, line: 108, type: !641)
!2215 = !DILocation(line: 0, scope: !2212)
!2216 = !DILocation(line: 110, column: 10, scope: !2212)
!2217 = !DILocation(line: 110, column: 3, scope: !2212)
!2218 = distinct !DISubprogram(name: "getline", scope: !2094, file: !2094, line: 118, type: !2219, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2223)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!2221, !642, !2222, !2122}
!2221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2149, line: 193, baseType: !704)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!2223 = !{!2224, !2225, !2226}
!2224 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2218, file: !2094, line: 118, type: !642)
!2225 = !DILocalVariable(name: "__n", arg: 2, scope: !2218, file: !2094, line: 118, type: !2222)
!2226 = !DILocalVariable(name: "__stream", arg: 3, scope: !2218, file: !2094, line: 118, type: !2122)
!2227 = !DILocation(line: 0, scope: !2218)
!2228 = !DILocation(line: 120, column: 10, scope: !2218)
!2229 = !DILocation(line: 120, column: 3, scope: !2218)
!2230 = distinct !DISubprogram(name: "feof_unlocked", scope: !2094, file: !2094, line: 128, type: !2120, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2231)
!2231 = !{!2232}
!2232 = !DILocalVariable(name: "__stream", arg: 1, scope: !2230, file: !2094, line: 128, type: !2122)
!2233 = !DILocation(line: 0, scope: !2230)
!2234 = !DILocation(line: 130, column: 10, scope: !2230)
!2235 = !DILocation(line: 130, column: 3, scope: !2230)
!2236 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2094, file: !2094, line: 135, type: !2120, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2237)
!2237 = !{!2238}
!2238 = !DILocalVariable(name: "__stream", arg: 1, scope: !2236, file: !2094, line: 135, type: !2122)
!2239 = !DILocation(line: 0, scope: !2236)
!2240 = !DILocation(line: 137, column: 10, scope: !2236)
!2241 = !DILocation(line: 137, column: 3, scope: !2236)
!2242 = distinct !DISubprogram(name: "tolower", scope: !2243, file: !2243, line: 207, type: !2188, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2244)
!2243 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2244 = !{!2245}
!2245 = !DILocalVariable(name: "__c", arg: 1, scope: !2242, file: !2243, line: 207, type: !641)
!2246 = !DILocation(line: 0, scope: !2242)
!2247 = !DILocation(line: 209, column: 22, scope: !2242)
!2248 = !DILocation(line: 209, column: 39, scope: !2242)
!2249 = !DILocation(line: 209, column: 38, scope: !2242)
!2250 = !DILocation(line: 209, column: 37, scope: !2242)
!2251 = !DILocation(line: 209, column: 10, scope: !2242)
!2252 = !DILocation(line: 209, column: 3, scope: !2242)
!2253 = distinct !DISubprogram(name: "toupper", scope: !2243, file: !2243, line: 213, type: !2188, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2254)
!2254 = !{!2255}
!2255 = !DILocalVariable(name: "__c", arg: 1, scope: !2253, file: !2243, line: 213, type: !641)
!2256 = !DILocation(line: 0, scope: !2253)
!2257 = !DILocation(line: 215, column: 22, scope: !2253)
!2258 = !DILocation(line: 215, column: 39, scope: !2253)
!2259 = !DILocation(line: 215, column: 38, scope: !2253)
!2260 = !DILocation(line: 215, column: 37, scope: !2253)
!2261 = !DILocation(line: 215, column: 10, scope: !2253)
!2262 = !DILocation(line: 215, column: 3, scope: !2253)
!2263 = distinct !DISubprogram(name: "atoi", scope: !2264, file: !2264, line: 361, type: !2265, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2267)
!2264 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!641, !646}
!2267 = !{!2268}
!2268 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2263, file: !2264, line: 361, type: !646)
!2269 = !DILocation(line: 0, scope: !2263)
!2270 = !DILocation(line: 363, column: 16, scope: !2263)
!2271 = !DILocation(line: 363, column: 10, scope: !2263)
!2272 = !DILocation(line: 363, column: 3, scope: !2263)
!2273 = distinct !DISubprogram(name: "atol", scope: !2264, file: !2264, line: 366, type: !2274, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2276)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!704, !646}
!2276 = !{!2277}
!2277 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2273, file: !2264, line: 366, type: !646)
!2278 = !DILocation(line: 0, scope: !2273)
!2279 = !DILocation(line: 368, column: 10, scope: !2273)
!2280 = !DILocation(line: 368, column: 3, scope: !2273)
!2281 = distinct !DISubprogram(name: "atoll", scope: !2264, file: !2264, line: 373, type: !2282, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2285)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!2284, !646}
!2284 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2285 = !{!2286}
!2286 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2281, file: !2264, line: 373, type: !646)
!2287 = !DILocation(line: 0, scope: !2281)
!2288 = !DILocation(line: 375, column: 10, scope: !2281)
!2289 = !DILocation(line: 375, column: 3, scope: !2281)
!2290 = distinct !DISubprogram(name: "bsearch", scope: !2291, file: !2291, line: 20, type: !2292, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2295)
!2291 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!645, !1456, !1456, !1118, !1118, !2294}
!2294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2264, line: 808, baseType: !1460)
!2295 = !{!2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305}
!2296 = !DILocalVariable(name: "__key", arg: 1, scope: !2290, file: !2291, line: 20, type: !1456)
!2297 = !DILocalVariable(name: "__base", arg: 2, scope: !2290, file: !2291, line: 20, type: !1456)
!2298 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2290, file: !2291, line: 20, type: !1118)
!2299 = !DILocalVariable(name: "__size", arg: 4, scope: !2290, file: !2291, line: 20, type: !1118)
!2300 = !DILocalVariable(name: "__compar", arg: 5, scope: !2290, file: !2291, line: 21, type: !2294)
!2301 = !DILocalVariable(name: "__l", scope: !2290, file: !2291, line: 23, type: !1118)
!2302 = !DILocalVariable(name: "__u", scope: !2290, file: !2291, line: 23, type: !1118)
!2303 = !DILocalVariable(name: "__idx", scope: !2290, file: !2291, line: 23, type: !1118)
!2304 = !DILocalVariable(name: "__p", scope: !2290, file: !2291, line: 24, type: !1456)
!2305 = !DILocalVariable(name: "__comparison", scope: !2290, file: !2291, line: 25, type: !641)
!2306 = !DILocation(line: 0, scope: !2290)
!2307 = !DILocation(line: 29, column: 3, scope: !2290)
!2308 = !DILocation(line: 27, column: 7, scope: !2290)
!2309 = !DILocation(line: 29, column: 14, scope: !2290)
!2310 = !DILocation(line: 31, column: 20, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2290, file: !2291, line: 30, column: 5)
!2312 = !DILocation(line: 31, column: 27, scope: !2311)
!2313 = !DILocation(line: 32, column: 56, scope: !2311)
!2314 = !DILocation(line: 32, column: 47, scope: !2311)
!2315 = !DILocation(line: 33, column: 22, scope: !2311)
!2316 = !DILocation(line: 34, column: 24, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2311, file: !2291, line: 34, column: 11)
!2318 = !DILocation(line: 34, column: 11, scope: !2311)
!2319 = !DILocation(line: 36, column: 29, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2317, file: !2291, line: 36, column: 16)
!2321 = !DILocation(line: 36, column: 16, scope: !2317)
!2322 = !DILocation(line: 37, column: 14, scope: !2320)
!2323 = distinct !{!2323, !2307, !2324}
!2324 = !DILocation(line: 40, column: 5, scope: !2290)
!2325 = !DILocation(line: 43, column: 1, scope: !2290)
!2326 = distinct !DISubprogram(name: "atof", scope: !2327, file: !2327, line: 25, type: !2328, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2331)
!2327 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!2330, !646}
!2330 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2331 = !{!2332}
!2332 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2326, file: !2327, line: 25, type: !646)
!2333 = !DILocation(line: 0, scope: !2326)
!2334 = !DILocation(line: 27, column: 10, scope: !2326)
!2335 = !DILocation(line: 27, column: 3, scope: !2326)
!2336 = distinct !DISubprogram(name: "strtoimax", scope: !2337, file: !2337, line: 324, type: !2338, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2344)
!2337 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!2340, !2097, !2343, !641}
!2340 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2341, line: 101, baseType: !2342)
!2341 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2149, line: 72, baseType: !704)
!2343 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !642)
!2344 = !{!2345, !2346, !2347}
!2345 = !DILocalVariable(name: "nptr", arg: 1, scope: !2336, file: !2337, line: 324, type: !2097)
!2346 = !DILocalVariable(name: "endptr", arg: 2, scope: !2336, file: !2337, line: 324, type: !2343)
!2347 = !DILocalVariable(name: "base", arg: 3, scope: !2336, file: !2337, line: 324, type: !641)
!2348 = !DILocation(line: 0, scope: !2336)
!2349 = !DILocation(line: 327, column: 10, scope: !2336)
!2350 = !DILocation(line: 327, column: 3, scope: !2336)
!2351 = distinct !DISubprogram(name: "strtoumax", scope: !2337, file: !2337, line: 336, type: !2352, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2356)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!2354, !2097, !2343, !641}
!2354 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2341, line: 102, baseType: !2355)
!2355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2149, line: 73, baseType: !702)
!2356 = !{!2357, !2358, !2359}
!2357 = !DILocalVariable(name: "nptr", arg: 1, scope: !2351, file: !2337, line: 336, type: !2097)
!2358 = !DILocalVariable(name: "endptr", arg: 2, scope: !2351, file: !2337, line: 336, type: !2343)
!2359 = !DILocalVariable(name: "base", arg: 3, scope: !2351, file: !2337, line: 336, type: !641)
!2360 = !DILocation(line: 0, scope: !2351)
!2361 = !DILocation(line: 339, column: 10, scope: !2351)
!2362 = !DILocation(line: 339, column: 3, scope: !2351)
!2363 = distinct !DISubprogram(name: "wcstoimax", scope: !2337, file: !2337, line: 348, type: !2364, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2373)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!2340, !2366, !2370, !641}
!2366 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2367)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2369)
!2369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2337, line: 34, baseType: !641)
!2370 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2371)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2373 = !{!2374, !2375, !2376}
!2374 = !DILocalVariable(name: "nptr", arg: 1, scope: !2363, file: !2337, line: 348, type: !2366)
!2375 = !DILocalVariable(name: "endptr", arg: 2, scope: !2363, file: !2337, line: 348, type: !2370)
!2376 = !DILocalVariable(name: "base", arg: 3, scope: !2363, file: !2337, line: 348, type: !641)
!2377 = !DILocation(line: 0, scope: !2363)
!2378 = !DILocation(line: 351, column: 10, scope: !2363)
!2379 = !DILocation(line: 351, column: 3, scope: !2363)
!2380 = distinct !DISubprogram(name: "wcstoumax", scope: !2337, file: !2337, line: 362, type: !2381, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2383)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!2354, !2366, !2370, !641}
!2383 = !{!2384, !2385, !2386}
!2384 = !DILocalVariable(name: "nptr", arg: 1, scope: !2380, file: !2337, line: 362, type: !2366)
!2385 = !DILocalVariable(name: "endptr", arg: 2, scope: !2380, file: !2337, line: 362, type: !2370)
!2386 = !DILocalVariable(name: "base", arg: 3, scope: !2380, file: !2337, line: 362, type: !641)
!2387 = !DILocation(line: 0, scope: !2380)
!2388 = !DILocation(line: 365, column: 10, scope: !2380)
!2389 = !DILocation(line: 365, column: 3, scope: !2380)
!2390 = distinct !DISubprogram(name: "stat", scope: !2391, file: !2391, line: 453, type: !2392, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2429)
!2391 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!641, !646, !2394}
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2396, line: 46, size: 1152, elements: !2397)
!2396 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2397 = !{!2398, !2400, !2402, !2404, !2406, !2408, !2410, !2411, !2412, !2413, !2415, !2417, !2425, !2426, !2427}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2395, file: !2396, line: 48, baseType: !2399, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2149, line: 145, baseType: !702)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2395, file: !2396, line: 53, baseType: !2401, size: 64, offset: 64)
!2401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2149, line: 148, baseType: !702)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2395, file: !2396, line: 61, baseType: !2403, size: 64, offset: 128)
!2403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2149, line: 151, baseType: !702)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2395, file: !2396, line: 62, baseType: !2405, size: 32, offset: 192)
!2405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2149, line: 150, baseType: !7)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2395, file: !2396, line: 64, baseType: !2407, size: 32, offset: 224)
!2407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2149, line: 146, baseType: !7)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2395, file: !2396, line: 65, baseType: !2409, size: 32, offset: 256)
!2409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2149, line: 147, baseType: !7)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2395, file: !2396, line: 67, baseType: !641, size: 32, offset: 288)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2395, file: !2396, line: 69, baseType: !2399, size: 64, offset: 320)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2395, file: !2396, line: 74, baseType: !2148, size: 64, offset: 384)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2395, file: !2396, line: 78, baseType: !2414, size: 64, offset: 448)
!2414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2149, line: 174, baseType: !704)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2395, file: !2396, line: 80, baseType: !2416, size: 64, offset: 512)
!2416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2149, line: 179, baseType: !704)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2395, file: !2396, line: 91, baseType: !2418, size: 128, offset: 576)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2419, line: 10, size: 128, elements: !2420)
!2419 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2420 = !{!2421, !2423}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2418, file: !2419, line: 12, baseType: !2422, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2149, line: 160, baseType: !704)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2418, file: !2419, line: 16, baseType: !2424, size: 64, offset: 64)
!2424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2149, line: 196, baseType: !704)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2395, file: !2396, line: 92, baseType: !2418, size: 128, offset: 704)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2395, file: !2396, line: 93, baseType: !2418, size: 128, offset: 832)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2395, file: !2396, line: 106, baseType: !2428, size: 192, offset: 960)
!2428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2424, size: 192, elements: !722)
!2429 = !{!2430, !2431}
!2430 = !DILocalVariable(name: "__path", arg: 1, scope: !2390, file: !2391, line: 453, type: !646)
!2431 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2390, file: !2391, line: 453, type: !2394)
!2432 = !DILocation(line: 0, scope: !2390)
!2433 = !DILocation(line: 455, column: 10, scope: !2390)
!2434 = !DILocation(line: 455, column: 3, scope: !2390)
!2435 = distinct !DISubprogram(name: "lstat", scope: !2391, file: !2391, line: 460, type: !2392, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2436)
!2436 = !{!2437, !2438}
!2437 = !DILocalVariable(name: "__path", arg: 1, scope: !2435, file: !2391, line: 460, type: !646)
!2438 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2435, file: !2391, line: 460, type: !2394)
!2439 = !DILocation(line: 0, scope: !2435)
!2440 = !DILocation(line: 462, column: 10, scope: !2435)
!2441 = !DILocation(line: 462, column: 3, scope: !2435)
!2442 = distinct !DISubprogram(name: "fstat", scope: !2391, file: !2391, line: 467, type: !2443, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2445)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!641, !641, !2394}
!2445 = !{!2446, !2447}
!2446 = !DILocalVariable(name: "__fd", arg: 1, scope: !2442, file: !2391, line: 467, type: !641)
!2447 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2442, file: !2391, line: 467, type: !2394)
!2448 = !DILocation(line: 0, scope: !2442)
!2449 = !DILocation(line: 469, column: 10, scope: !2442)
!2450 = !DILocation(line: 469, column: 3, scope: !2442)
!2451 = distinct !DISubprogram(name: "fstatat", scope: !2391, file: !2391, line: 474, type: !2452, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2454)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!641, !641, !646, !2394, !641}
!2454 = !{!2455, !2456, !2457, !2458}
!2455 = !DILocalVariable(name: "__fd", arg: 1, scope: !2451, file: !2391, line: 474, type: !641)
!2456 = !DILocalVariable(name: "__filename", arg: 2, scope: !2451, file: !2391, line: 474, type: !646)
!2457 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2451, file: !2391, line: 474, type: !2394)
!2458 = !DILocalVariable(name: "__flag", arg: 4, scope: !2451, file: !2391, line: 474, type: !641)
!2459 = !DILocation(line: 0, scope: !2451)
!2460 = !DILocation(line: 477, column: 10, scope: !2451)
!2461 = !DILocation(line: 477, column: 3, scope: !2451)
!2462 = distinct !DISubprogram(name: "mknod", scope: !2391, file: !2391, line: 483, type: !2463, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2465)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!641, !646, !2405, !2399}
!2465 = !{!2466, !2467, !2468}
!2466 = !DILocalVariable(name: "__path", arg: 1, scope: !2462, file: !2391, line: 483, type: !646)
!2467 = !DILocalVariable(name: "__mode", arg: 2, scope: !2462, file: !2391, line: 483, type: !2405)
!2468 = !DILocalVariable(name: "__dev", arg: 3, scope: !2462, file: !2391, line: 483, type: !2399)
!2469 = !DILocation(line: 0, scope: !2462)
!2470 = !DILocation(line: 485, column: 10, scope: !2462)
!2471 = !DILocation(line: 485, column: 3, scope: !2462)
!2472 = distinct !DISubprogram(name: "mknodat", scope: !2391, file: !2391, line: 491, type: !2473, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2475)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!641, !641, !646, !2405, !2399}
!2475 = !{!2476, !2477, !2478, !2479}
!2476 = !DILocalVariable(name: "__fd", arg: 1, scope: !2472, file: !2391, line: 491, type: !641)
!2477 = !DILocalVariable(name: "__path", arg: 2, scope: !2472, file: !2391, line: 491, type: !646)
!2478 = !DILocalVariable(name: "__mode", arg: 3, scope: !2472, file: !2391, line: 491, type: !2405)
!2479 = !DILocalVariable(name: "__dev", arg: 4, scope: !2472, file: !2391, line: 491, type: !2399)
!2480 = !DILocation(line: 0, scope: !2472)
!2481 = !DILocation(line: 494, column: 10, scope: !2472)
!2482 = !DILocation(line: 494, column: 3, scope: !2472)
!2483 = distinct !DISubprogram(name: "stat64", scope: !2391, file: !2391, line: 502, type: !2484, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2506)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!641, !646, !2486}
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2396, line: 119, size: 1152, elements: !2488)
!2488 = !{!2489, !2490, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2502, !2503, !2504, !2505}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2487, file: !2396, line: 121, baseType: !2399, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2487, file: !2396, line: 123, baseType: !2491, size: 64, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2149, line: 149, baseType: !702)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2487, file: !2396, line: 124, baseType: !2403, size: 64, offset: 128)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2487, file: !2396, line: 125, baseType: !2405, size: 32, offset: 192)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2487, file: !2396, line: 132, baseType: !2407, size: 32, offset: 224)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2487, file: !2396, line: 133, baseType: !2409, size: 32, offset: 256)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2487, file: !2396, line: 135, baseType: !641, size: 32, offset: 288)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2487, file: !2396, line: 136, baseType: !2399, size: 64, offset: 320)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2487, file: !2396, line: 137, baseType: !2148, size: 64, offset: 384)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2487, file: !2396, line: 143, baseType: !2414, size: 64, offset: 448)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2487, file: !2396, line: 144, baseType: !2501, size: 64, offset: 512)
!2501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2149, line: 180, baseType: !704)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2487, file: !2396, line: 152, baseType: !2418, size: 128, offset: 576)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2487, file: !2396, line: 153, baseType: !2418, size: 128, offset: 704)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2487, file: !2396, line: 154, baseType: !2418, size: 128, offset: 832)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2487, file: !2396, line: 164, baseType: !2428, size: 192, offset: 960)
!2506 = !{!2507, !2508}
!2507 = !DILocalVariable(name: "__path", arg: 1, scope: !2483, file: !2391, line: 502, type: !646)
!2508 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2483, file: !2391, line: 502, type: !2486)
!2509 = !DILocation(line: 0, scope: !2483)
!2510 = !DILocation(line: 504, column: 10, scope: !2483)
!2511 = !DILocation(line: 504, column: 3, scope: !2483)
!2512 = distinct !DISubprogram(name: "lstat64", scope: !2391, file: !2391, line: 509, type: !2484, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2513)
!2513 = !{!2514, !2515}
!2514 = !DILocalVariable(name: "__path", arg: 1, scope: !2512, file: !2391, line: 509, type: !646)
!2515 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2512, file: !2391, line: 509, type: !2486)
!2516 = !DILocation(line: 0, scope: !2512)
!2517 = !DILocation(line: 511, column: 10, scope: !2512)
!2518 = !DILocation(line: 511, column: 3, scope: !2512)
!2519 = distinct !DISubprogram(name: "fstat64", scope: !2391, file: !2391, line: 516, type: !2520, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2522)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!641, !641, !2486}
!2522 = !{!2523, !2524}
!2523 = !DILocalVariable(name: "__fd", arg: 1, scope: !2519, file: !2391, line: 516, type: !641)
!2524 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2519, file: !2391, line: 516, type: !2486)
!2525 = !DILocation(line: 0, scope: !2519)
!2526 = !DILocation(line: 518, column: 10, scope: !2519)
!2527 = !DILocation(line: 518, column: 3, scope: !2519)
!2528 = distinct !DISubprogram(name: "fstatat64", scope: !2391, file: !2391, line: 523, type: !2529, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2531)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!641, !641, !646, !2486, !641}
!2531 = !{!2532, !2533, !2534, !2535}
!2532 = !DILocalVariable(name: "__fd", arg: 1, scope: !2528, file: !2391, line: 523, type: !641)
!2533 = !DILocalVariable(name: "__filename", arg: 2, scope: !2528, file: !2391, line: 523, type: !646)
!2534 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2528, file: !2391, line: 523, type: !2486)
!2535 = !DILocalVariable(name: "__flag", arg: 4, scope: !2528, file: !2391, line: 523, type: !641)
!2536 = !DILocation(line: 0, scope: !2528)
!2537 = !DILocation(line: 526, column: 10, scope: !2528)
!2538 = !DILocation(line: 526, column: 3, scope: !2528)
!2539 = distinct !DISubprogram(name: "lower_function_body", scope: !3, file: !3, line: 96, type: !2076, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2540)
!2540 = !{!2541, !2548, !2549, !2550, !2557, !2558, !2559, !2560, !2562, !2565, !2566}
!2541 = !DILocalVariable(name: "data", scope: !2539, file: !3, line: 98, type: !2542)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lower_data", file: !3, line: 70, size: 192, elements: !2543)
!2543 = !{!2544, !2545, !2546, !2547}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2542, file: !3, line: 73, baseType: !648, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "return_statements", scope: !2542, file: !3, line: 77, baseType: !2043, size: 64, offset: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_fallthru", scope: !2542, file: !3, line: 80, baseType: !640, size: 8, offset: 128)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "calls_builtin_setjmp", scope: !2542, file: !3, line: 83, baseType: !640, size: 8, offset: 136)
!2548 = !DILocalVariable(name: "body", scope: !2539, file: !3, line: 99, type: !962)
!2549 = !DILocalVariable(name: "lowered_body", scope: !2539, file: !3, line: 100, type: !962)
!2550 = !DILocalVariable(name: "i", scope: !2539, file: !3, line: 101, type: !2551)
!2551 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !568, line: 265, baseType: !2552)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !568, line: 254, size: 192, elements: !2553)
!2553 = !{!2554, !2555, !2556}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2552, file: !568, line: 257, baseType: !967, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2552, file: !568, line: 263, baseType: !962, size: 64, offset: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2552, file: !568, line: 264, baseType: !1530, size: 64, offset: 128)
!2557 = !DILocalVariable(name: "bind", scope: !2539, file: !3, line: 102, type: !972)
!2558 = !DILocalVariable(name: "t", scope: !2539, file: !3, line: 103, type: !648)
!2559 = !DILocalVariable(name: "x", scope: !2539, file: !3, line: 104, type: !972)
!2560 = !DILocalVariable(name: "t", scope: !2561, file: !3, line: 148, type: !2055)
!2561 = distinct !DILexicalBlock(scope: !2539, file: !3, line: 147, column: 5)
!2562 = !DILocalVariable(name: "disp_label", scope: !2563, file: !3, line: 172, type: !648)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !3, line: 171, column: 5)
!2564 = distinct !DILexicalBlock(scope: !2539, file: !3, line: 170, column: 7)
!2565 = !DILocalVariable(name: "disp_var", scope: !2563, file: !3, line: 172, type: !648)
!2566 = !DILocalVariable(name: "arg", scope: !2563, file: !3, line: 172, type: !648)
!2567 = !DILocation(line: 98, column: 3, scope: !2539)
!2568 = !DILocation(line: 99, column: 34, scope: !2539)
!2569 = !DILocation(line: 99, column: 21, scope: !2539)
!2570 = !DILocation(line: 0, scope: !2539)
!2571 = !DILocation(line: 100, column: 3, scope: !2539)
!2572 = !DILocation(line: 101, column: 3, scope: !2539)
!2573 = !DILocation(line: 108, column: 3, scope: !2539)
!2574 = !DILocation(line: 111, column: 3, scope: !2539)
!2575 = !DILocation(line: 112, column: 16, scope: !2539)
!2576 = !DILocation(line: 112, column: 14, scope: !2539)
!2577 = !DILocation(line: 113, column: 3, scope: !2539)
!2578 = !DILocation(line: 113, column: 32, scope: !2539)
!2579 = !DILocation(line: 114, column: 3, scope: !2539)
!2580 = !DILocation(line: 114, column: 28, scope: !2539)
!2581 = !DILocation(line: 115, column: 3, scope: !2539)
!2582 = !DILocation(line: 115, column: 33, scope: !2539)
!2583 = !DILocation(line: 116, column: 28, scope: !2539)
!2584 = !DILocation(line: 116, column: 8, scope: !2539)
!2585 = !DILocation(line: 116, column: 26, scope: !2539)
!2586 = !DILocation(line: 118, column: 10, scope: !2539)
!2587 = !DILocation(line: 119, column: 16, scope: !2539)
!2588 = !DILocation(line: 120, column: 3, scope: !2539)
!2589 = !DILocation(line: 121, column: 7, scope: !2539)
!2590 = !DILocation(line: 121, column: 18, scope: !2539)
!2591 = !DILocation(line: 122, column: 3, scope: !2539)
!2592 = !DILocation(line: 126, column: 20, scope: !2539)
!2593 = !DILocation(line: 126, column: 43, scope: !2539)
!2594 = !DILocation(line: 126, column: 3, scope: !2539)
!2595 = !DILocation(line: 128, column: 7, scope: !2539)
!2596 = !DILocation(line: 128, column: 17, scope: !2539)
!2597 = !DILocation(line: 133, column: 32, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2539, file: !3, line: 133, column: 7)
!2599 = !DILocation(line: 133, column: 7, scope: !2598)
!2600 = !DILocation(line: 134, column: 7, scope: !2598)
!2601 = !DILocation(line: 134, column: 11, scope: !2598)
!2602 = !DILocation(line: 135, column: 4, scope: !2598)
!2603 = !DILocation(line: 135, column: 29, scope: !2598)
!2604 = !DILocation(line: 136, column: 40, scope: !2598)
!2605 = !DILocation(line: 135, column: 7, scope: !2598)
!2606 = !DILocation(line: 136, column: 46, scope: !2598)
!2607 = !DILocation(line: 133, column: 7, scope: !2539)
!2608 = !DILocation(line: 138, column: 11, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2598, file: !3, line: 137, column: 5)
!2610 = !DILocation(line: 139, column: 31, scope: !2609)
!2611 = !DILocation(line: 139, column: 37, scope: !2609)
!2612 = !DILocation(line: 139, column: 7, scope: !2609)
!2613 = !DILocation(line: 140, column: 28, scope: !2609)
!2614 = !DILocation(line: 140, column: 7, scope: !2609)
!2615 = !DILocation(line: 141, column: 7, scope: !2609)
!2616 = !DILocation(line: 142, column: 5, scope: !2609)
!2617 = !DILocation(line: 0, scope: !2561)
!2618 = !DILocation(line: 146, column: 3, scope: !2539)
!2619 = !DILocation(line: 146, column: 11, scope: !2539)
!2620 = !DILocation(line: 148, column: 7, scope: !2561)
!2621 = !DILocation(line: 152, column: 12, scope: !2561)
!2622 = !DILocation(line: 152, column: 11, scope: !2561)
!2623 = !DILocation(line: 153, column: 7, scope: !2561)
!2624 = !DILocation(line: 158, column: 33, scope: !2561)
!2625 = !DILocation(line: 158, column: 11, scope: !2561)
!2626 = !DILocation(line: 159, column: 7, scope: !2561)
!2627 = !DILocation(line: 164, column: 30, scope: !2561)
!2628 = !DILocation(line: 164, column: 7, scope: !2561)
!2629 = !DILocation(line: 165, column: 7, scope: !2561)
!2630 = !DILocation(line: 166, column: 5, scope: !2539)
!2631 = distinct !{!2631, !2618, !2630}
!2632 = !DILocation(line: 170, column: 12, scope: !2564)
!2633 = !DILocation(line: 170, column: 7, scope: !2564)
!2634 = !DILocation(line: 170, column: 7, scope: !2539)
!2635 = !DILocation(line: 175, column: 45, scope: !2563)
!2636 = !DILocation(line: 175, column: 51, scope: !2563)
!2637 = !DILocation(line: 175, column: 20, scope: !2563)
!2638 = !DILocation(line: 0, scope: !2563)
!2639 = !DILocation(line: 177, column: 7, scope: !2563)
!2640 = !DILocation(line: 177, column: 34, scope: !2563)
!2641 = !DILocation(line: 178, column: 7, scope: !2563)
!2642 = !DILocation(line: 178, column: 13, scope: !2563)
!2643 = !DILocation(line: 178, column: 32, scope: !2563)
!2644 = !DILocation(line: 179, column: 11, scope: !2563)
!2645 = !DILocation(line: 180, column: 7, scope: !2563)
!2646 = !DILocation(line: 184, column: 34, scope: !2563)
!2647 = !DILocation(line: 184, column: 18, scope: !2563)
!2648 = !DILocation(line: 185, column: 37, scope: !2563)
!2649 = !DILocation(line: 185, column: 13, scope: !2563)
!2650 = !DILocation(line: 186, column: 11, scope: !2563)
!2651 = !DILocation(line: 187, column: 11, scope: !2563)
!2652 = !DILocation(line: 188, column: 7, scope: !2563)
!2653 = !DILocation(line: 191, column: 7, scope: !2563)
!2654 = !DILocation(line: 192, column: 11, scope: !2563)
!2655 = !DILocation(line: 193, column: 7, scope: !2563)
!2656 = !DILocation(line: 194, column: 5, scope: !2563)
!2657 = !DILocation(line: 196, column: 3, scope: !2539)
!2658 = !DILocation(line: 198, column: 24, scope: !2539)
!2659 = !DILocation(line: 198, column: 7, scope: !2539)
!2660 = !DILocation(line: 197, column: 3, scope: !2539)
!2661 = !DILocation(line: 198, column: 5, scope: !2539)
!2662 = !DILocation(line: 200, column: 27, scope: !2539)
!2663 = !DILocation(line: 200, column: 3, scope: !2539)
!2664 = !DILocation(line: 201, column: 3, scope: !2539)
!2665 = !DILocation(line: 203, column: 1, scope: !2539)
!2666 = !DILocation(line: 202, column: 3, scope: !2539)
!2667 = distinct !DISubprogram(name: "gimple_check_call_args", scope: !3, file: !3, line: 230, type: !2668, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2670)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!640, !972}
!2670 = !{!2671, !2672, !2673, !2674, !2675, !2676}
!2671 = !DILocalVariable(name: "stmt", arg: 1, scope: !2667, file: !3, line: 230, type: !972)
!2672 = !DILocalVariable(name: "fndecl", scope: !2667, file: !3, line: 232, type: !648)
!2673 = !DILocalVariable(name: "parms", scope: !2667, file: !3, line: 232, type: !648)
!2674 = !DILocalVariable(name: "p", scope: !2667, file: !3, line: 232, type: !648)
!2675 = !DILocalVariable(name: "i", scope: !2667, file: !3, line: 233, type: !7)
!2676 = !DILocalVariable(name: "nargs", scope: !2667, file: !3, line: 233, type: !7)
!2677 = !DILocation(line: 0, scope: !2667)
!2678 = !DILocation(line: 235, column: 11, scope: !2667)
!2679 = !DILocation(line: 238, column: 12, scope: !2667)
!2680 = !DILocation(line: 240, column: 7, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 240, column: 7)
!2682 = !DILocation(line: 240, column: 7, scope: !2667)
!2683 = !DILocation(line: 241, column: 13, scope: !2681)
!2684 = !DILocation(line: 241, column: 5, scope: !2681)
!2685 = !DILocation(line: 242, column: 12, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2681, file: !3, line: 242, column: 12)
!2687 = !DILocation(line: 242, column: 12, scope: !2681)
!2688 = !DILocation(line: 243, column: 13, scope: !2686)
!2689 = !DILocation(line: 243, column: 5, scope: !2686)
!2690 = !DILocation(line: 0, scope: !2681)
!2691 = !DILocation(line: 248, column: 14, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 248, column: 7)
!2693 = !DILocation(line: 248, column: 17, scope: !2692)
!2694 = !DILocation(line: 248, column: 7, scope: !2667)
!2695 = !DILocation(line: 250, column: 12, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 250, column: 7)
!2697 = distinct !DILexicalBlock(scope: !2692, file: !3, line: 249, column: 5)
!2698 = !DILocation(line: 0, scope: !2696)
!2699 = !DILocation(line: 251, column: 7, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2696, file: !3, line: 250, column: 7)
!2701 = !DILocation(line: 257, column: 9, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 257, column: 8)
!2703 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 253, column: 2)
!2704 = !DILocation(line: 250, column: 7, scope: !2696)
!2705 = !DILocation(line: 259, column: 13, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 259, column: 8)
!2707 = !DILocation(line: 259, column: 10, scope: !2706)
!2708 = !DILocation(line: 260, column: 8, scope: !2706)
!2709 = !DILocation(line: 260, column: 11, scope: !2706)
!2710 = !DILocation(line: 260, column: 40, scope: !2706)
!2711 = !DILocation(line: 260, column: 37, scope: !2706)
!2712 = !DILocation(line: 261, column: 8, scope: !2706)
!2713 = !DILocation(line: 261, column: 32, scope: !2706)
!2714 = !DILocation(line: 262, column: 11, scope: !2706)
!2715 = !DILocation(line: 261, column: 12, scope: !2706)
!2716 = !DILocation(line: 259, column: 8, scope: !2703)
!2717 = !DILocation(line: 252, column: 6, scope: !2700)
!2718 = !DILocation(line: 252, column: 14, scope: !2700)
!2719 = !DILocation(line: 250, column: 7, scope: !2700)
!2720 = distinct !{!2720, !2704, !2721}
!2721 = !DILocation(line: 264, column: 2, scope: !2696)
!2722 = !DILocation(line: 266, column: 12, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2692, file: !3, line: 266, column: 12)
!2724 = !DILocation(line: 266, column: 12, scope: !2692)
!2725 = !DILocation(line: 268, column: 7, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 268, column: 7)
!2727 = distinct !DILexicalBlock(scope: !2723, file: !3, line: 267, column: 5)
!2728 = !DILocation(line: 0, scope: !2726)
!2729 = !DILocation(line: 268, column: 32, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2726, file: !3, line: 268, column: 7)
!2731 = !DILocation(line: 272, column: 9, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2733, file: !3, line: 272, column: 8)
!2733 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 269, column: 2)
!2734 = !DILocation(line: 274, column: 8, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2733, file: !3, line: 274, column: 8)
!2736 = !DILocation(line: 274, column: 26, scope: !2735)
!2737 = !DILocation(line: 274, column: 23, scope: !2735)
!2738 = !DILocation(line: 275, column: 8, scope: !2735)
!2739 = !DILocation(line: 275, column: 11, scope: !2735)
!2740 = !DILocation(line: 275, column: 40, scope: !2735)
!2741 = !DILocation(line: 275, column: 37, scope: !2735)
!2742 = !DILocation(line: 276, column: 8, scope: !2735)
!2743 = !DILocation(line: 276, column: 11, scope: !2735)
!2744 = !DILocation(line: 276, column: 38, scope: !2735)
!2745 = !DILocation(line: 277, column: 8, scope: !2735)
!2746 = !DILocation(line: 278, column: 11, scope: !2735)
!2747 = !DILocation(line: 277, column: 12, scope: !2735)
!2748 = !DILocation(line: 274, column: 8, scope: !2733)
!2749 = !DILocation(line: 268, column: 42, scope: !2730)
!2750 = !DILocation(line: 268, column: 50, scope: !2730)
!2751 = !DILocation(line: 268, column: 7, scope: !2730)
!2752 = distinct !{!2752, !2725, !2753}
!2753 = !DILocation(line: 280, column: 2, scope: !2726)
!2754 = !DILocation(line: 284, column: 17, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2756, file: !3, line: 284, column: 11)
!2756 = distinct !DILexicalBlock(scope: !2723, file: !3, line: 283, column: 5)
!2757 = !DILocation(line: 284, column: 11, scope: !2756)
!2758 = !DILocation(line: 287, column: 3, scope: !2667)
!2759 = !DILocation(line: 288, column: 1, scope: !2667)
!2760 = distinct !DISubprogram(name: "gimple_call_num_args", scope: !568, file: !568, line: 2013, type: !2761, scopeLine: 2014, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2764)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!7, !2763}
!2763 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !649, line: 60, baseType: !2060)
!2764 = !{!2765, !2766}
!2765 = !DILocalVariable(name: "gs", arg: 1, scope: !2760, file: !568, line: 2013, type: !2763)
!2766 = !DILocalVariable(name: "num_ops", scope: !2760, file: !568, line: 2015, type: !7)
!2767 = !DILocation(line: 0, scope: !2760)
!2768 = !DILocation(line: 2017, column: 13, scope: !2760)
!2769 = !DILocation(line: 2018, column: 18, scope: !2760)
!2770 = !DILocation(line: 2018, column: 3, scope: !2760)
!2771 = distinct !DISubprogram(name: "gimple_call_fndecl", scope: !568, file: !568, line: 1954, type: !2772, scopeLine: 1955, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2774)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!648, !2763}
!2774 = !{!2775, !2776}
!2775 = !DILocalVariable(name: "gs", arg: 1, scope: !2771, file: !568, line: 1954, type: !2763)
!2776 = !DILocalVariable(name: "addr", scope: !2771, file: !568, line: 1956, type: !648)
!2777 = !DILocation(line: 0, scope: !2771)
!2778 = !DILocation(line: 1956, column: 15, scope: !2771)
!2779 = !DILocation(line: 1957, column: 7, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2771, file: !568, line: 1957, column: 7)
!2781 = !DILocation(line: 1957, column: 24, scope: !2780)
!2782 = !DILocation(line: 1957, column: 7, scope: !2771)
!2783 = !DILocation(line: 1958, column: 12, scope: !2780)
!2784 = !DILocation(line: 1958, column: 5, scope: !2780)
!2785 = !DILocation(line: 1960, column: 1, scope: !2771)
!2786 = distinct !DISubprogram(name: "gimple_call_fn", scope: !568, file: !568, line: 1911, type: !2772, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2787)
!2787 = !{!2788}
!2788 = !DILocalVariable(name: "gs", arg: 1, scope: !2786, file: !568, line: 1911, type: !2763)
!2789 = !DILocation(line: 0, scope: !2786)
!2790 = !DILocation(line: 1914, column: 10, scope: !2786)
!2791 = !DILocation(line: 1914, column: 3, scope: !2786)
!2792 = distinct !DISubprogram(name: "gimple_call_arg", scope: !568, file: !568, line: 2025, type: !2793, scopeLine: 2026, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2795)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!648, !2763, !7}
!2795 = !{!2796, !2797}
!2796 = !DILocalVariable(name: "gs", arg: 1, scope: !2792, file: !568, line: 2025, type: !2763)
!2797 = !DILocalVariable(name: "index", arg: 2, scope: !2792, file: !568, line: 2025, type: !7)
!2798 = !DILocation(line: 0, scope: !2792)
!2799 = !DILocation(line: 2028, column: 31, scope: !2792)
!2800 = !DILocation(line: 2028, column: 10, scope: !2792)
!2801 = !DILocation(line: 2028, column: 3, scope: !2792)
!2802 = distinct !DISubprogram(name: "block_may_fallthru", scope: !3, file: !3, line: 609, type: !2803, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2806)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!640, !2805}
!2805 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !649, line: 59, baseType: !2041)
!2806 = !{!2807, !2808}
!2807 = !DILocalVariable(name: "block", arg: 1, scope: !2802, file: !3, line: 609, type: !2805)
!2808 = !DILocalVariable(name: "stmt", scope: !2802, file: !3, line: 613, type: !2805)
!2809 = !DILocation(line: 633, column: 14, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2802, file: !3, line: 616, column: 5)
!2811 = !DILocation(line: 0, scope: !2802)
!2812 = !DILocation(line: 613, column: 21, scope: !2802)
!2813 = !DILocation(line: 615, column: 11, scope: !2802)
!2814 = !DILocation(line: 615, column: 18, scope: !2802)
!2815 = !DILocation(line: 615, column: 3, scope: !2802)
!2816 = !DILocation(line: 628, column: 14, scope: !2810)
!2817 = !DILocation(line: 628, column: 35, scope: !2810)
!2818 = !DILocation(line: 628, column: 7, scope: !2810)
!2819 = !DILocation(line: 631, column: 31, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2810, file: !3, line: 631, column: 11)
!2821 = !DILocation(line: 631, column: 11, scope: !2820)
!2822 = !DILocation(line: 631, column: 11, scope: !2810)
!2823 = !DILocation(line: 633, column: 34, scope: !2810)
!2824 = !DILocation(line: 0, scope: !2810)
!2825 = !DILocation(line: 636, column: 34, scope: !2810)
!2826 = !DILocation(line: 636, column: 14, scope: !2810)
!2827 = !DILocation(line: 639, column: 14, scope: !2810)
!2828 = !DILocation(line: 639, column: 7, scope: !2810)
!2829 = !DILocation(line: 649, column: 35, scope: !2810)
!2830 = !DILocation(line: 649, column: 15, scope: !2810)
!2831 = !DILocation(line: 650, column: 8, scope: !2810)
!2832 = !DILocation(line: 650, column: 31, scope: !2810)
!2833 = !DILocation(line: 650, column: 11, scope: !2810)
!2834 = !DILocation(line: 649, column: 7, scope: !2810)
!2835 = !DILocation(line: 653, column: 11, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2810, file: !3, line: 653, column: 11)
!2837 = !DILocation(line: 653, column: 46, scope: !2836)
!2838 = !DILocation(line: 653, column: 11, scope: !2810)
!2839 = !DILocation(line: 653, column: 49, scope: !2836)
!2840 = !DILocation(line: 661, column: 15, scope: !2810)
!2841 = !DILocation(line: 661, column: 14, scope: !2810)
!2842 = !DILocation(line: 661, column: 7, scope: !2810)
!2843 = !DILocation(line: 664, column: 34, scope: !2810)
!2844 = !DILocation(line: 664, column: 14, scope: !2810)
!2845 = !DILocation(line: 667, column: 7, scope: !2810)
!2846 = !DILocation(line: 669, column: 1, scope: !2802)
!2847 = distinct !DISubprogram(name: "try_catch_may_fallthru", scope: !3, file: !3, line: 507, type: !2803, scopeLine: 508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2848)
!2848 = !{!2849, !2850}
!2849 = !DILocalVariable(name: "stmt", arg: 1, scope: !2847, file: !3, line: 507, type: !2805)
!2850 = !DILocalVariable(name: "i", scope: !2847, file: !3, line: 509, type: !2851)
!2851 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree_stmt_iterator", file: !2852, line: 35, baseType: !2853)
!2852 = !DIFile(filename: "./tree-iterator.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2852, line: 32, size: 128, elements: !2854)
!2854 = !{!2855, !2856}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2853, file: !2852, line: 33, baseType: !1807, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !2853, file: !2852, line: 34, baseType: !648, size: 64, offset: 64)
!2857 = !DILocation(line: 0, scope: !2847)
!2858 = !DILocation(line: 509, column: 3, scope: !2847)
!2859 = !DILocation(line: 513, column: 27, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 513, column: 7)
!2861 = !DILocation(line: 513, column: 7, scope: !2860)
!2862 = !DILocation(line: 513, column: 7, scope: !2847)
!2863 = !DILocation(line: 516, column: 7, scope: !2847)
!2864 = !DILocation(line: 516, column: 18, scope: !2847)
!2865 = !DILocation(line: 517, column: 11, scope: !2847)
!2866 = !DILocation(line: 517, column: 3, scope: !2847)
!2867 = !DILocation(line: 523, column: 7, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2869, file: !3, line: 523, column: 7)
!2869 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 518, column: 5)
!2870 = !DILocation(line: 523, column: 15, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2868, file: !3, line: 523, column: 7)
!2872 = !DILocation(line: 523, column: 14, scope: !2871)
!2873 = !DILocation(line: 525, column: 28, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !3, line: 525, column: 8)
!2875 = distinct !DILexicalBlock(scope: !2871, file: !3, line: 524, column: 2)
!2876 = !DILocation(line: 525, column: 8, scope: !2874)
!2877 = !DILocation(line: 525, column: 8, scope: !2875)
!2878 = !DILocation(line: 523, column: 30, scope: !2871)
!2879 = !DILocation(line: 523, column: 7, scope: !2871)
!2880 = distinct !{!2880, !2867, !2881}
!2881 = !DILocation(line: 527, column: 2, scope: !2868)
!2882 = !DILocation(line: 540, column: 34, scope: !2869)
!2883 = !DILocation(line: 540, column: 14, scope: !2869)
!2884 = !DILocation(line: 540, column: 7, scope: !2869)
!2885 = !DILocation(line: 549, column: 1, scope: !2847)
!2886 = distinct !DISubprogram(name: "gimple_stmt_may_fallthru", scope: !3, file: !3, line: 679, type: !2668, scopeLine: 680, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2887)
!2887 = !{!2888}
!2888 = !DILocalVariable(name: "stmt", arg: 1, scope: !2886, file: !3, line: 679, type: !972)
!2889 = !DILocation(line: 0, scope: !2886)
!2890 = !DILocation(line: 681, column: 8, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 681, column: 7)
!2892 = !DILocation(line: 681, column: 7, scope: !2886)
!2893 = !DILocation(line: 684, column: 11, scope: !2886)
!2894 = !DILocation(line: 684, column: 3, scope: !2886)
!2895 = !DILocation(line: 704, column: 39, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 685, column: 5)
!2897 = !DILocation(line: 704, column: 14, scope: !2896)
!2898 = !DILocation(line: 704, column: 7, scope: !2896)
!2899 = !DILocation(line: 707, column: 11, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2896, file: !3, line: 707, column: 11)
!2901 = !DILocation(line: 707, column: 34, scope: !2900)
!2902 = !DILocation(line: 707, column: 11, scope: !2896)
!2903 = !DILocation(line: 708, column: 16, scope: !2900)
!2904 = !DILocation(line: 708, column: 9, scope: !2900)
!2905 = !DILocation(line: 719, column: 40, scope: !2896)
!2906 = !DILocation(line: 719, column: 15, scope: !2896)
!2907 = !DILocation(line: 720, column: 8, scope: !2896)
!2908 = !DILocation(line: 720, column: 36, scope: !2896)
!2909 = !DILocation(line: 720, column: 11, scope: !2896)
!2910 = !DILocation(line: 719, column: 7, scope: !2896)
!2911 = !DILocation(line: 724, column: 15, scope: !2896)
!2912 = !DILocation(line: 724, column: 14, scope: !2896)
!2913 = !DILocation(line: 724, column: 7, scope: !2896)
!2914 = !DILocation(line: 727, column: 7, scope: !2896)
!2915 = !DILocation(line: 729, column: 1, scope: !2886)
!2916 = distinct !DISubprogram(name: "gimple_code", scope: !568, file: !568, line: 1052, type: !2917, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2919)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!594, !2763}
!2919 = !{!2920}
!2920 = !DILocalVariable(name: "g", arg: 1, scope: !2916, file: !568, line: 1052, type: !2763)
!2921 = !DILocation(line: 0, scope: !2916)
!2922 = !DILocation(line: 1054, column: 20, scope: !2916)
!2923 = !DILocation(line: 1054, column: 3, scope: !2916)
!2924 = distinct !DISubprogram(name: "gimple_seq_may_fallthru", scope: !3, file: !3, line: 735, type: !2925, scopeLine: 736, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2927)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!640, !962}
!2927 = !{!2928}
!2928 = !DILocalVariable(name: "seq", arg: 1, scope: !2924, file: !3, line: 735, type: !962)
!2929 = !DILocation(line: 0, scope: !2924)
!2930 = !DILocation(line: 737, column: 36, scope: !2924)
!2931 = !DILocation(line: 737, column: 10, scope: !2924)
!2932 = !DILocation(line: 737, column: 3, scope: !2924)
!2933 = distinct !DISubprogram(name: "gimple_bind_body", scope: !568, file: !568, line: 2517, type: !2934, scopeLine: 2518, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2936)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!962, !972}
!2936 = !{!2937}
!2937 = !DILocalVariable(name: "gs", arg: 1, scope: !2933, file: !568, line: 2517, type: !972)
!2938 = !DILocation(line: 0, scope: !2933)
!2939 = !DILocation(line: 2520, column: 26, scope: !2933)
!2940 = !DILocation(line: 2520, column: 3, scope: !2933)
!2941 = distinct !DISubprogram(name: "gimple_try_kind", scope: !568, file: !568, line: 2921, type: !2942, scopeLine: 2922, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2944)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!632, !2763}
!2944 = !{!2945}
!2945 = !DILocalVariable(name: "gs", arg: 1, scope: !2941, file: !568, line: 2921, type: !2763)
!2946 = !DILocation(line: 0, scope: !2941)
!2947 = !DILocation(line: 2924, column: 46, scope: !2941)
!2948 = !DILocation(line: 2924, column: 54, scope: !2941)
!2949 = !DILocation(line: 2924, column: 3, scope: !2941)
!2950 = distinct !DISubprogram(name: "gimple_try_catch_may_fallthru", scope: !3, file: !3, line: 555, type: !2668, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2951)
!2951 = !{!2952, !2953}
!2952 = !DILocalVariable(name: "stmt", arg: 1, scope: !2950, file: !3, line: 555, type: !972)
!2953 = !DILocalVariable(name: "i", scope: !2950, file: !3, line: 557, type: !2551)
!2954 = !DILocation(line: 0, scope: !2950)
!2955 = !DILocation(line: 557, column: 3, scope: !2950)
!2956 = !DILocation(line: 560, column: 3, scope: !2950)
!2957 = !DILocation(line: 564, column: 32, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 564, column: 7)
!2959 = !DILocation(line: 564, column: 7, scope: !2958)
!2960 = !DILocation(line: 564, column: 7, scope: !2950)
!2961 = !DILocation(line: 567, column: 7, scope: !2950)
!2962 = !DILocation(line: 567, column: 18, scope: !2950)
!2963 = !DILocation(line: 568, column: 24, scope: !2950)
!2964 = !DILocation(line: 568, column: 11, scope: !2950)
!2965 = !DILocation(line: 568, column: 3, scope: !2950)
!2966 = !DILocation(line: 574, column: 7, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !3, line: 574, column: 7)
!2968 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 569, column: 5)
!2969 = !DILocation(line: 574, column: 15, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2967, file: !3, line: 574, column: 7)
!2971 = !DILocation(line: 574, column: 14, scope: !2970)
!2972 = !DILocation(line: 576, column: 55, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !3, line: 576, column: 8)
!2974 = distinct !DILexicalBlock(scope: !2970, file: !3, line: 575, column: 2)
!2975 = !DILocation(line: 576, column: 33, scope: !2973)
!2976 = !DILocation(line: 576, column: 8, scope: !2973)
!2977 = !DILocation(line: 576, column: 8, scope: !2974)
!2978 = !DILocation(line: 574, column: 30, scope: !2970)
!2979 = !DILocation(line: 574, column: 7, scope: !2970)
!2980 = distinct !{!2980, !2966, !2981}
!2981 = !DILocation(line: 578, column: 2, scope: !2967)
!2982 = !DILocation(line: 591, column: 65, scope: !2968)
!2983 = !DILocation(line: 591, column: 39, scope: !2968)
!2984 = !DILocation(line: 591, column: 14, scope: !2968)
!2985 = !DILocation(line: 591, column: 7, scope: !2968)
!2986 = !DILocation(line: 600, column: 1, scope: !2950)
!2987 = distinct !DISubprogram(name: "gimple_try_eval", scope: !568, file: !568, line: 2953, type: !2934, scopeLine: 2954, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2988)
!2988 = !{!2989}
!2989 = !DILocalVariable(name: "gs", arg: 1, scope: !2987, file: !568, line: 2953, type: !972)
!2990 = !DILocation(line: 0, scope: !2987)
!2991 = !DILocation(line: 2956, column: 25, scope: !2987)
!2992 = !DILocation(line: 2956, column: 3, scope: !2987)
!2993 = distinct !DISubprogram(name: "gimple_try_cleanup", scope: !568, file: !568, line: 2964, type: !2934, scopeLine: 2965, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2994)
!2994 = !{!2995}
!2995 = !DILocalVariable(name: "gs", arg: 1, scope: !2993, file: !568, line: 2964, type: !972)
!2996 = !DILocation(line: 0, scope: !2993)
!2997 = !DILocation(line: 2967, column: 25, scope: !2993)
!2998 = !DILocation(line: 2967, column: 3, scope: !2993)
!2999 = distinct !DISubprogram(name: "gimple_seq_last_stmt", scope: !568, file: !568, line: 187, type: !3000, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3005)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!972, !3002}
!3002 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !649, line: 67, baseType: !3003)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !964)
!3005 = !{!3006, !3007}
!3006 = !DILocalVariable(name: "s", arg: 1, scope: !2999, file: !568, line: 187, type: !3002)
!3007 = !DILocalVariable(name: "n", scope: !2999, file: !568, line: 189, type: !967)
!3008 = !DILocation(line: 0, scope: !2999)
!3009 = !DILocation(line: 189, column: 23, scope: !2999)
!3010 = !DILocation(line: 190, column: 10, scope: !2999)
!3011 = !DILocation(line: 190, column: 19, scope: !2999)
!3012 = !DILocation(line: 190, column: 3, scope: !2999)
!3013 = distinct !DISubprogram(name: "record_vars_into", scope: !3, file: !3, line: 900, type: !3014, scopeLine: 901, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3016)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{null, !648, !648}
!3016 = !{!3017, !3018, !3019}
!3017 = !DILocalVariable(name: "vars", arg: 1, scope: !3013, file: !3, line: 900, type: !648)
!3018 = !DILocalVariable(name: "fn", arg: 2, scope: !3013, file: !3, line: 900, type: !648)
!3019 = !DILocalVariable(name: "var", scope: !3020, file: !3, line: 907, type: !648)
!3020 = distinct !DILexicalBlock(scope: !3021, file: !3, line: 906, column: 5)
!3021 = distinct !DILexicalBlock(scope: !3022, file: !3, line: 905, column: 3)
!3022 = distinct !DILexicalBlock(scope: !3013, file: !3, line: 905, column: 3)
!3023 = !DILocation(line: 0, scope: !3013)
!3024 = !DILocation(line: 902, column: 13, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3013, file: !3, line: 902, column: 7)
!3026 = !DILocation(line: 902, column: 10, scope: !3025)
!3027 = !DILocation(line: 902, column: 7, scope: !3013)
!3028 = !DILocation(line: 903, column: 16, scope: !3025)
!3029 = !DILocation(line: 903, column: 5, scope: !3025)
!3030 = !DILocation(line: 905, column: 3, scope: !3013)
!3031 = !DILocation(line: 905, column: 3, scope: !3022)
!3032 = !DILocation(line: 0, scope: !3020)
!3033 = !DILocation(line: 911, column: 11, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3020, file: !3, line: 911, column: 11)
!3035 = !DILocation(line: 911, column: 27, scope: !3034)
!3036 = !DILocation(line: 911, column: 11, scope: !3020)
!3037 = !DILocation(line: 915, column: 11, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3020, file: !3, line: 915, column: 11)
!3039 = !DILocation(line: 915, column: 11, scope: !3020)
!3040 = !DILocation(line: 919, column: 27, scope: !3020)
!3041 = !DILocation(line: 919, column: 7, scope: !3020)
!3042 = !DILocation(line: 919, column: 13, scope: !3020)
!3043 = !DILocation(line: 919, column: 25, scope: !3020)
!3044 = !DILocation(line: 921, column: 5, scope: !3021)
!3045 = !DILocation(line: 905, column: 23, scope: !3021)
!3046 = !DILocation(line: 905, column: 3, scope: !3021)
!3047 = distinct !{!3047, !3031, !3048}
!3048 = !DILocation(line: 921, column: 5, scope: !3022)
!3049 = !DILocation(line: 923, column: 13, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3013, file: !3, line: 923, column: 7)
!3051 = !DILocation(line: 923, column: 10, scope: !3050)
!3052 = !DILocation(line: 923, column: 7, scope: !3013)
!3053 = !DILocation(line: 924, column: 5, scope: !3050)
!3054 = !DILocation(line: 925, column: 1, scope: !3013)
!3055 = distinct !DISubprogram(name: "record_vars", scope: !3, file: !3, line: 931, type: !3056, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3058)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{null, !648}
!3058 = !{!3059}
!3059 = !DILocalVariable(name: "vars", arg: 1, scope: !3055, file: !3, line: 931, type: !648)
!3060 = !DILocation(line: 0, scope: !3055)
!3061 = !DILocation(line: 933, column: 27, scope: !3055)
!3062 = !DILocation(line: 933, column: 3, scope: !3055)
!3063 = !DILocation(line: 934, column: 1, scope: !3055)
!3064 = distinct !DISubprogram(name: "gimple_seq_first", scope: !568, file: !568, line: 159, type: !3065, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3067)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!967, !3002}
!3067 = !{!3068}
!3068 = !DILocalVariable(name: "s", arg: 1, scope: !3064, file: !568, line: 159, type: !3002)
!3069 = !DILocation(line: 0, scope: !3064)
!3070 = !DILocation(line: 161, column: 10, scope: !3064)
!3071 = !DILocation(line: 161, column: 17, scope: !3064)
!3072 = !DILocation(line: 161, column: 3, scope: !3064)
!3073 = distinct !DISubprogram(name: "gimple_seq_last", scope: !568, file: !568, line: 178, type: !3065, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3074)
!3074 = !{!3075}
!3075 = !DILocalVariable(name: "s", arg: 1, scope: !3073, file: !568, line: 178, type: !3002)
!3076 = !DILocation(line: 0, scope: !3073)
!3077 = !DILocation(line: 180, column: 10, scope: !3073)
!3078 = !DILocation(line: 180, column: 17, scope: !3073)
!3079 = !DILocation(line: 180, column: 3, scope: !3073)
!3080 = distinct !DISubprogram(name: "gimple_seq_first_stmt", scope: !568, file: !568, line: 168, type: !3000, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3081)
!3081 = !{!3082, !3083}
!3082 = !DILocalVariable(name: "s", arg: 1, scope: !3080, file: !568, line: 168, type: !3002)
!3083 = !DILocalVariable(name: "n", scope: !3080, file: !568, line: 170, type: !967)
!3084 = !DILocation(line: 0, scope: !3080)
!3085 = !DILocation(line: 170, column: 23, scope: !3080)
!3086 = !DILocation(line: 171, column: 10, scope: !3080)
!3087 = !DILocation(line: 171, column: 19, scope: !3080)
!3088 = !DILocation(line: 171, column: 3, scope: !3080)
!3089 = distinct !DISubprogram(name: "VEC_return_statements_t_heap_alloc", scope: !3, file: !3, line: 68, type: !3090, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3092)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!2043, !641}
!3092 = !{!3093}
!3093 = !DILocalVariable(name: "alloc_", arg: 1, scope: !3089, file: !3, line: 68, type: !641)
!3094 = !DILocation(line: 0, scope: !3089)
!3095 = !DILocation(line: 68, column: 1, scope: !3089)
!3096 = distinct !DISubprogram(name: "gsi_start", scope: !568, file: !568, line: 4403, type: !3097, scopeLine: 4404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3099)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{!2551, !962}
!3099 = !{!3100, !3101}
!3100 = !DILocalVariable(name: "seq", arg: 1, scope: !3096, file: !568, line: 4403, type: !962)
!3101 = !DILocalVariable(name: "i", scope: !3096, file: !568, line: 4405, type: !2551)
!3102 = !DILocation(line: 0, scope: !3096)
!3103 = !DILocation(line: 4405, column: 24, scope: !3096)
!3104 = !DILocation(line: 4407, column: 11, scope: !3096)
!3105 = !DILocation(line: 4407, column: 5, scope: !3096)
!3106 = !DILocation(line: 4407, column: 9, scope: !3096)
!3107 = !DILocation(line: 4408, column: 5, scope: !3096)
!3108 = !DILocation(line: 4408, column: 9, scope: !3096)
!3109 = !DILocation(line: 4409, column: 11, scope: !3096)
!3110 = !DILocation(line: 4409, column: 17, scope: !3096)
!3111 = !DILocation(line: 4409, column: 27, scope: !3096)
!3112 = !DILocation(line: 4409, column: 20, scope: !3096)
!3113 = !DILocation(line: 4409, column: 10, scope: !3096)
!3114 = !DILocation(line: 4409, column: 35, scope: !3096)
!3115 = !DILocation(line: 4409, column: 5, scope: !3096)
!3116 = !DILocation(line: 4409, column: 8, scope: !3096)
!3117 = !DILocation(line: 4411, column: 3, scope: !3096)
!3118 = distinct !DISubprogram(name: "lower_gimple_bind", scope: !3, file: !3, line: 452, type: !3119, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3123)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{null, !3121, !3122}
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!3123 = !{!3124, !3125, !3126, !3127, !3128}
!3124 = !DILocalVariable(name: "gsi", arg: 1, scope: !3118, file: !3, line: 452, type: !3121)
!3125 = !DILocalVariable(name: "data", arg: 2, scope: !3118, file: !3, line: 452, type: !3122)
!3126 = !DILocalVariable(name: "old_block", scope: !3118, file: !3, line: 454, type: !648)
!3127 = !DILocalVariable(name: "stmt", scope: !3118, file: !3, line: 455, type: !972)
!3128 = !DILocalVariable(name: "new_block", scope: !3118, file: !3, line: 456, type: !648)
!3129 = !DILocation(line: 0, scope: !3118)
!3130 = !DILocation(line: 454, column: 26, scope: !3118)
!3131 = !DILocation(line: 455, column: 17, scope: !3118)
!3132 = !DILocation(line: 456, column: 20, scope: !3118)
!3133 = !DILocation(line: 458, column: 7, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3118, file: !3, line: 458, column: 7)
!3135 = !DILocation(line: 458, column: 7, scope: !3118)
!3136 = !DILocation(line: 460, column: 21, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !3, line: 460, column: 11)
!3138 = distinct !DILexicalBlock(scope: !3134, file: !3, line: 459, column: 5)
!3139 = !DILocation(line: 460, column: 11, scope: !3138)
!3140 = !DILocation(line: 465, column: 4, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 461, column: 2)
!3142 = !DILocation(line: 471, column: 4, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 469, column: 2)
!3144 = !DILocation(line: 472, column: 33, scope: !3143)
!3145 = !DILocation(line: 477, column: 30, scope: !3143)
!3146 = !DILocation(line: 477, column: 4, scope: !3143)
!3147 = !DILocation(line: 477, column: 28, scope: !3143)
!3148 = !DILocation(line: 478, column: 32, scope: !3143)
!3149 = !DILocation(line: 479, column: 4, scope: !3143)
!3150 = !DILocation(line: 479, column: 32, scope: !3143)
!3151 = !DILocation(line: 480, column: 4, scope: !3143)
!3152 = !DILocation(line: 480, column: 35, scope: !3143)
!3153 = !DILocation(line: 482, column: 16, scope: !3143)
!3154 = !DILocation(line: 486, column: 16, scope: !3118)
!3155 = !DILocation(line: 486, column: 3, scope: !3118)
!3156 = !DILocation(line: 487, column: 19, scope: !3118)
!3157 = !DILocation(line: 487, column: 3, scope: !3118)
!3158 = !DILocation(line: 489, column: 7, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3118, file: !3, line: 489, column: 7)
!3160 = !DILocation(line: 489, column: 7, scope: !3118)
!3161 = !DILocation(line: 491, column: 7, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3159, file: !3, line: 490, column: 5)
!3163 = !DILocation(line: 494, column: 21, scope: !3162)
!3164 = !DILocation(line: 494, column: 4, scope: !3162)
!3165 = !DILocation(line: 494, column: 2, scope: !3162)
!3166 = !DILocation(line: 495, column: 19, scope: !3162)
!3167 = !DILocation(line: 496, column: 5, scope: !3162)
!3168 = !DILocation(line: 499, column: 31, scope: !3118)
!3169 = !DILocation(line: 499, column: 3, scope: !3118)
!3170 = !DILocation(line: 500, column: 3, scope: !3118)
!3171 = !DILocation(line: 501, column: 1, scope: !3118)
!3172 = distinct !DISubprogram(name: "gsi_last", scope: !568, file: !568, line: 4435, type: !3097, scopeLine: 4436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3173)
!3173 = !{!3174, !3175}
!3174 = !DILocalVariable(name: "seq", arg: 1, scope: !3172, file: !568, line: 4435, type: !962)
!3175 = !DILocalVariable(name: "i", scope: !3172, file: !568, line: 4437, type: !2551)
!3176 = !DILocation(line: 0, scope: !3172)
!3177 = !DILocation(line: 4437, column: 24, scope: !3172)
!3178 = !DILocation(line: 4439, column: 11, scope: !3172)
!3179 = !DILocation(line: 4439, column: 5, scope: !3172)
!3180 = !DILocation(line: 4439, column: 9, scope: !3172)
!3181 = !DILocation(line: 4440, column: 5, scope: !3172)
!3182 = !DILocation(line: 4440, column: 9, scope: !3172)
!3183 = !DILocation(line: 4441, column: 11, scope: !3172)
!3184 = !DILocation(line: 4441, column: 17, scope: !3172)
!3185 = !DILocation(line: 4441, column: 27, scope: !3172)
!3186 = !DILocation(line: 4441, column: 20, scope: !3172)
!3187 = !DILocation(line: 4441, column: 10, scope: !3172)
!3188 = !DILocation(line: 4441, column: 35, scope: !3172)
!3189 = !DILocation(line: 4441, column: 5, scope: !3172)
!3190 = !DILocation(line: 4441, column: 8, scope: !3172)
!3191 = !DILocation(line: 4443, column: 3, scope: !3172)
!3192 = distinct !DISubprogram(name: "VEC_return_statements_t_base_length", scope: !3, file: !3, line: 67, type: !3193, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3197)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!7, !3195}
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2048)
!3197 = !{!3198}
!3198 = !DILocalVariable(name: "vec_", arg: 1, scope: !3192, file: !3, line: 67, type: !3195)
!3199 = !DILocation(line: 0, scope: !3192)
!3200 = !DILocation(line: 67, column: 1, scope: !3192)
!3201 = distinct !DISubprogram(name: "gimple_return_retval", scope: !568, file: !568, line: 4253, type: !2772, scopeLine: 4254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3202)
!3202 = !{!3203}
!3203 = !DILocalVariable(name: "gs", arg: 1, scope: !3201, file: !568, line: 4253, type: !2763)
!3204 = !DILocation(line: 0, scope: !3201)
!3205 = !DILocation(line: 4256, column: 10, scope: !3201)
!3206 = !DILocation(line: 4256, column: 3, scope: !3201)
!3207 = distinct !DISubprogram(name: "VEC_return_statements_t_base_last", scope: !3, file: !3, line: 67, type: !3208, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3212)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!3210, !3211}
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!3212 = !{!3213}
!3213 = !DILocalVariable(name: "vec_", arg: 1, scope: !3207, file: !3, line: 67, type: !3211)
!3214 = !DILocation(line: 0, scope: !3207)
!3215 = !DILocation(line: 67, column: 1, scope: !3207)
!3216 = distinct !DISubprogram(name: "gimple_set_location", scope: !568, file: !568, line: 1156, type: !3217, scopeLine: 1157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3219)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{null, !972, !773}
!3219 = !{!3220, !3221}
!3220 = !DILocalVariable(name: "g", arg: 1, scope: !3216, file: !568, line: 1156, type: !972)
!3221 = !DILocalVariable(name: "location", arg: 2, scope: !3216, file: !568, line: 1156, type: !773)
!3222 = !DILocation(line: 0, scope: !3216)
!3223 = !DILocation(line: 1158, column: 13, scope: !3216)
!3224 = !DILocation(line: 1158, column: 22, scope: !3216)
!3225 = !DILocation(line: 1159, column: 1, scope: !3216)
!3226 = distinct !DISubprogram(name: "gimple_set_block", scope: !568, file: !568, line: 1130, type: !3227, scopeLine: 1131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3229)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{null, !972, !648}
!3229 = !{!3230, !3231}
!3230 = !DILocalVariable(name: "g", arg: 1, scope: !3226, file: !568, line: 1130, type: !972)
!3231 = !DILocalVariable(name: "block", arg: 2, scope: !3226, file: !568, line: 1130, type: !648)
!3232 = !DILocation(line: 0, scope: !3226)
!3233 = !DILocation(line: 1132, column: 13, scope: !3226)
!3234 = !DILocation(line: 1132, column: 19, scope: !3226)
!3235 = !DILocation(line: 1133, column: 1, scope: !3226)
!3236 = distinct !DISubprogram(name: "VEC_return_statements_t_base_truncate", scope: !3, file: !3, line: 67, type: !3237, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3239)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{null, !3211, !7}
!3239 = !{!3240, !3241}
!3240 = !DILocalVariable(name: "vec_", arg: 1, scope: !3236, file: !3, line: 67, type: !3211)
!3241 = !DILocalVariable(name: "size_", arg: 2, scope: !3236, file: !3, line: 67, type: !7)
!3242 = !DILocation(line: 0, scope: !3236)
!3243 = !DILocation(line: 67, column: 1, scope: !3236)
!3244 = !DILocation(line: 67, column: 1, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3236, file: !3, line: 67, column: 1)
!3246 = distinct !DISubprogram(name: "gimple_call_set_lhs", scope: !568, file: !568, line: 1898, type: !3227, scopeLine: 1899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3247)
!3247 = !{!3248, !3249}
!3248 = !DILocalVariable(name: "gs", arg: 1, scope: !3246, file: !568, line: 1898, type: !972)
!3249 = !DILocalVariable(name: "lhs", arg: 2, scope: !3246, file: !568, line: 1898, type: !648)
!3250 = !DILocation(line: 0, scope: !3246)
!3251 = !DILocation(line: 1901, column: 3, scope: !3246)
!3252 = !DILocation(line: 1902, column: 7, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3246, file: !568, line: 1902, column: 7)
!3254 = !DILocation(line: 1902, column: 11, scope: !3253)
!3255 = !DILocation(line: 1902, column: 14, scope: !3253)
!3256 = !DILocation(line: 1902, column: 30, scope: !3253)
!3257 = !DILocation(line: 1902, column: 7, scope: !3246)
!3258 = !DILocation(line: 1903, column: 5, scope: !3253)
!3259 = !DILocation(line: 1903, column: 29, scope: !3253)
!3260 = !DILocation(line: 1904, column: 1, scope: !3246)
!3261 = distinct !DISubprogram(name: "VEC_return_statements_t_heap_free", scope: !3, file: !3, line: 68, type: !3262, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3265)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{null, !3264}
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!3265 = !{!3266}
!3266 = !DILocalVariable(name: "vec_", arg: 1, scope: !3261, file: !3, line: 68, type: !3264)
!3267 = !DILocation(line: 0, scope: !3261)
!3268 = !DILocation(line: 68, column: 1, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3261, file: !3, line: 68, column: 1)
!3270 = !DILocation(line: 68, column: 1, scope: !3261)
!3271 = distinct !DISubprogram(name: "gimple_bb", scope: !568, file: !568, line: 1112, type: !3272, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3274)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!936, !2763}
!3274 = !{!3275}
!3275 = !DILocalVariable(name: "g", arg: 1, scope: !3271, file: !568, line: 1112, type: !2763)
!3276 = !DILocation(line: 0, scope: !3271)
!3277 = !DILocation(line: 1114, column: 20, scope: !3271)
!3278 = !DILocation(line: 1114, column: 3, scope: !3271)
!3279 = distinct !DISubprogram(name: "gsi_stmt", scope: !568, file: !568, line: 4501, type: !3280, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3282)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!972, !2551}
!3282 = !{!3283}
!3283 = !DILocalVariable(name: "i", arg: 1, scope: !3279, file: !568, line: 4501, type: !2551)
!3284 = !DILocation(line: 4501, column: 32, scope: !3279)
!3285 = !DILocation(line: 4503, column: 12, scope: !3279)
!3286 = !DILocation(line: 4503, column: 17, scope: !3279)
!3287 = !DILocation(line: 4503, column: 3, scope: !3279)
!3288 = distinct !DISubprogram(name: "gimple_bind_block", scope: !568, file: !568, line: 2559, type: !2772, scopeLine: 2560, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3289)
!3289 = !{!3290}
!3290 = !DILocalVariable(name: "gs", arg: 1, scope: !3288, file: !568, line: 2559, type: !2763)
!3291 = !DILocation(line: 0, scope: !3288)
!3292 = !DILocation(line: 2562, column: 26, scope: !3288)
!3293 = !DILocation(line: 2562, column: 3, scope: !3288)
!3294 = distinct !DISubprogram(name: "gimple_bind_vars", scope: !568, file: !568, line: 2485, type: !2772, scopeLine: 2486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3295)
!3295 = !{!3296}
!3296 = !DILocalVariable(name: "gs", arg: 1, scope: !3294, file: !568, line: 2485, type: !2763)
!3297 = !DILocation(line: 0, scope: !3294)
!3298 = !DILocation(line: 2488, column: 26, scope: !3294)
!3299 = !DILocation(line: 2488, column: 3, scope: !3294)
!3300 = distinct !DISubprogram(name: "lower_sequence", scope: !3, file: !3, line: 296, type: !3301, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3303)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{null, !962, !3122}
!3303 = !{!3304, !3305, !3306}
!3304 = !DILocalVariable(name: "seq", arg: 1, scope: !3300, file: !3, line: 296, type: !962)
!3305 = !DILocalVariable(name: "data", arg: 2, scope: !3300, file: !3, line: 296, type: !3122)
!3306 = !DILocalVariable(name: "gsi", scope: !3300, file: !3, line: 298, type: !2551)
!3307 = !DILocation(line: 0, scope: !3300)
!3308 = !DILocation(line: 298, column: 3, scope: !3300)
!3309 = !DILocation(line: 300, column: 14, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 300, column: 3)
!3311 = !DILocation(line: 300, column: 8, scope: !3310)
!3312 = !DILocation(line: 300, column: 32, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3310, file: !3, line: 300, column: 3)
!3314 = !DILocation(line: 300, column: 31, scope: !3313)
!3315 = !DILocation(line: 300, column: 3, scope: !3310)
!3316 = !DILocation(line: 301, column: 5, scope: !3313)
!3317 = !DILocation(line: 300, column: 3, scope: !3313)
!3318 = distinct !{!3318, !3315, !3319}
!3319 = !DILocation(line: 301, column: 27, scope: !3310)
!3320 = !DILocation(line: 302, column: 1, scope: !3300)
!3321 = distinct !DISubprogram(name: "gsi_end_p", scope: !568, file: !568, line: 4467, type: !3322, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3324)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!640, !2551}
!3324 = !{!3325}
!3325 = !DILocalVariable(name: "i", arg: 1, scope: !3321, file: !568, line: 4467, type: !2551)
!3326 = !DILocation(line: 4467, column: 33, scope: !3321)
!3327 = !DILocation(line: 4469, column: 12, scope: !3321)
!3328 = !DILocation(line: 4469, column: 16, scope: !3321)
!3329 = !DILocation(line: 4469, column: 10, scope: !3321)
!3330 = !DILocation(line: 4469, column: 3, scope: !3321)
!3331 = distinct !DISubprogram(name: "lower_stmt", scope: !3, file: !3, line: 331, type: !3119, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3332)
!3332 = !{!3333, !3334, !3335, !3336, !3339}
!3333 = !DILocalVariable(name: "gsi", arg: 1, scope: !3331, file: !3, line: 331, type: !3121)
!3334 = !DILocalVariable(name: "data", arg: 2, scope: !3331, file: !3, line: 331, type: !3122)
!3335 = !DILocalVariable(name: "stmt", scope: !3331, file: !3, line: 333, type: !972)
!3336 = !DILocalVariable(name: "try_cannot_fallthru", scope: !3337, file: !3, line: 366, type: !640)
!3337 = distinct !DILexicalBlock(scope: !3338, file: !3, line: 365, column: 7)
!3338 = distinct !DILexicalBlock(scope: !3331, file: !3, line: 338, column: 5)
!3339 = !DILocalVariable(name: "decl", scope: !3340, file: !3, line: 413, type: !648)
!3340 = distinct !DILexicalBlock(scope: !3338, file: !3, line: 412, column: 7)
!3341 = !DILocation(line: 0, scope: !3331)
!3342 = !DILocation(line: 333, column: 17, scope: !3331)
!3343 = !DILocation(line: 335, column: 33, scope: !3331)
!3344 = !DILocation(line: 335, column: 3, scope: !3331)
!3345 = !DILocation(line: 337, column: 11, scope: !3331)
!3346 = !DILocation(line: 337, column: 3, scope: !3331)
!3347 = !DILocation(line: 340, column: 7, scope: !3338)
!3348 = !DILocation(line: 342, column: 7, scope: !3338)
!3349 = !DILocation(line: 347, column: 13, scope: !3338)
!3350 = !DILocation(line: 347, column: 29, scope: !3338)
!3351 = !DILocation(line: 348, column: 7, scope: !3338)
!3352 = !DILocation(line: 349, column: 7, scope: !3338)
!3353 = !DILocation(line: 352, column: 17, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3338, file: !3, line: 352, column: 11)
!3355 = !DILocation(line: 352, column: 11, scope: !3354)
!3356 = !DILocation(line: 352, column: 11, scope: !3338)
!3357 = !DILocation(line: 354, column: 4, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3354, file: !3, line: 353, column: 2)
!3359 = !DILocation(line: 356, column: 2, scope: !3358)
!3360 = !DILocation(line: 359, column: 4, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3354, file: !3, line: 358, column: 2)
!3362 = !DILocation(line: 360, column: 26, scope: !3361)
!3363 = !DILocation(line: 367, column: 18, scope: !3337)
!3364 = !DILocation(line: 367, column: 2, scope: !3337)
!3365 = !DILocation(line: 368, column: 30, scope: !3337)
!3366 = !DILocation(line: 0, scope: !3337)
!3367 = !DILocation(line: 369, column: 24, scope: !3337)
!3368 = !DILocation(line: 370, column: 18, scope: !3337)
!3369 = !DILocation(line: 370, column: 2, scope: !3337)
!3370 = !DILocation(line: 372, column: 6, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3337, file: !3, line: 372, column: 6)
!3372 = !DILocation(line: 372, column: 29, scope: !3371)
!3373 = !DILocation(line: 372, column: 6, scope: !3337)
!3374 = !DILocation(line: 374, column: 28, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3371, file: !3, line: 373, column: 4)
!3376 = !DILocation(line: 375, column: 6, scope: !3375)
!3377 = !DILocation(line: 376, column: 6, scope: !3375)
!3378 = !DILocation(line: 382, column: 13, scope: !3338)
!3379 = !DILocation(line: 382, column: 29, scope: !3338)
!3380 = !DILocation(line: 383, column: 23, scope: !3338)
!3381 = !DILocation(line: 383, column: 7, scope: !3338)
!3382 = !DILocation(line: 384, column: 7, scope: !3338)
!3383 = !DILocation(line: 387, column: 13, scope: !3338)
!3384 = !DILocation(line: 387, column: 29, scope: !3338)
!3385 = !DILocation(line: 388, column: 23, scope: !3338)
!3386 = !DILocation(line: 388, column: 7, scope: !3338)
!3387 = !DILocation(line: 389, column: 7, scope: !3338)
!3388 = !DILocation(line: 413, column: 14, scope: !3340)
!3389 = !DILocation(line: 0, scope: !3340)
!3390 = !DILocation(line: 416, column: 6, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 415, column: 6)
!3392 = !DILocation(line: 416, column: 9, scope: !3391)
!3393 = !DILocation(line: 416, column: 36, scope: !3391)
!3394 = !DILocation(line: 417, column: 6, scope: !3391)
!3395 = !DILocation(line: 417, column: 9, scope: !3391)
!3396 = !DILocation(line: 417, column: 35, scope: !3391)
!3397 = !DILocation(line: 415, column: 6, scope: !3340)
!3398 = !DILocation(line: 419, column: 6, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3391, file: !3, line: 418, column: 4)
!3400 = !DILocation(line: 420, column: 12, scope: !3399)
!3401 = !DILocation(line: 420, column: 28, scope: !3399)
!3402 = !DILocation(line: 421, column: 12, scope: !3399)
!3403 = !DILocation(line: 421, column: 33, scope: !3399)
!3404 = !DILocation(line: 422, column: 6, scope: !3399)
!3405 = !DILocation(line: 425, column: 15, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 425, column: 6)
!3407 = !DILocation(line: 425, column: 46, scope: !3406)
!3408 = !DILocation(line: 425, column: 6, scope: !3340)
!3409 = !DILocation(line: 427, column: 12, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3406, file: !3, line: 426, column: 4)
!3411 = !DILocation(line: 427, column: 28, scope: !3410)
!3412 = !DILocation(line: 428, column: 6, scope: !3410)
!3413 = !DILocation(line: 429, column: 6, scope: !3410)
!3414 = !DILocation(line: 436, column: 13, scope: !3338)
!3415 = !DILocation(line: 436, column: 29, scope: !3338)
!3416 = !DILocation(line: 437, column: 7, scope: !3338)
!3417 = !DILocation(line: 438, column: 29, scope: !3338)
!3418 = !DILocation(line: 439, column: 7, scope: !3338)
!3419 = !DILocation(line: 442, column: 7, scope: !3338)
!3420 = !DILocation(line: 443, column: 5, scope: !3338)
!3421 = !DILocation(line: 445, column: 9, scope: !3331)
!3422 = !DILocation(line: 445, column: 25, scope: !3331)
!3423 = !DILocation(line: 446, column: 3, scope: !3331)
!3424 = !DILocation(line: 447, column: 1, scope: !3331)
!3425 = distinct !DISubprogram(name: "gsi_next", scope: !568, file: !568, line: 4485, type: !3426, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3428)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{null, !3121}
!3428 = !{!3429}
!3429 = !DILocalVariable(name: "i", arg: 1, scope: !3425, file: !568, line: 4485, type: !3121)
!3430 = !DILocation(line: 0, scope: !3425)
!3431 = !DILocation(line: 4487, column: 15, scope: !3425)
!3432 = !DILocation(line: 4487, column: 20, scope: !3425)
!3433 = !DILocation(line: 4487, column: 10, scope: !3425)
!3434 = !DILocation(line: 4488, column: 1, scope: !3425)
!3435 = distinct !DISubprogram(name: "lower_gimple_return", scope: !3, file: !3, line: 744, type: !3119, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3436)
!3436 = !{!3437, !3438, !3439, !3440, !3441, !3442, !3443}
!3437 = !DILocalVariable(name: "gsi", arg: 1, scope: !3435, file: !3, line: 744, type: !3121)
!3438 = !DILocalVariable(name: "data", arg: 2, scope: !3435, file: !3, line: 744, type: !3122)
!3439 = !DILocalVariable(name: "stmt", scope: !3435, file: !3, line: 746, type: !972)
!3440 = !DILocalVariable(name: "t", scope: !3435, file: !3, line: 747, type: !972)
!3441 = !DILocalVariable(name: "i", scope: !3435, file: !3, line: 748, type: !641)
!3442 = !DILocalVariable(name: "tmp_rs", scope: !3435, file: !3, line: 749, type: !2055)
!3443 = !DILabel(scope: !3435, name: "found", file: !3, line: 767)
!3444 = !DILocation(line: 0, scope: !3435)
!3445 = !DILocation(line: 746, column: 17, scope: !3435)
!3446 = !DILocation(line: 749, column: 3, scope: !3435)
!3447 = !DILocation(line: 752, column: 12, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3435, file: !3, line: 752, column: 3)
!3449 = !DILocation(line: 0, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3451, file: !3, line: 757, column: 11)
!3451 = distinct !DILexicalBlock(scope: !3452, file: !3, line: 754, column: 5)
!3452 = distinct !DILexicalBlock(scope: !3448, file: !3, line: 752, column: 3)
!3453 = !DILocation(line: 752, column: 8, scope: !3448)
!3454 = !DILocation(line: 0, scope: !3448)
!3455 = !DILocation(line: 753, column: 10, scope: !3452)
!3456 = !DILocation(line: 752, column: 3, scope: !3448)
!3457 = !DILocation(line: 755, column: 17, scope: !3451)
!3458 = !DILocation(line: 755, column: 16, scope: !3451)
!3459 = !DILocation(line: 757, column: 11, scope: !3450)
!3460 = !DILocation(line: 757, column: 71, scope: !3450)
!3461 = !DILocation(line: 757, column: 42, scope: !3450)
!3462 = !DILocation(line: 757, column: 39, scope: !3450)
!3463 = !DILocation(line: 757, column: 11, scope: !3451)
!3464 = !DILocation(line: 752, column: 3, scope: !3452)
!3465 = distinct !{!3465, !3456, !3466}
!3466 = !DILocation(line: 759, column: 5, scope: !3448)
!3467 = !DILocation(line: 762, column: 43, scope: !3435)
!3468 = !DILocation(line: 762, column: 49, scope: !3435)
!3469 = !DILocation(line: 762, column: 18, scope: !3435)
!3470 = !DILocation(line: 762, column: 10, scope: !3435)
!3471 = !DILocation(line: 762, column: 16, scope: !3435)
!3472 = !DILocation(line: 763, column: 15, scope: !3435)
!3473 = !DILocation(line: 764, column: 3, scope: !3435)
!3474 = !DILocation(line: 768, column: 33, scope: !3435)
!3475 = !DILocation(line: 767, column: 2, scope: !3435)
!3476 = !DILocation(line: 768, column: 7, scope: !3435)
!3477 = !DILocation(line: 769, column: 27, scope: !3435)
!3478 = !DILocation(line: 769, column: 3, scope: !3435)
!3479 = !DILocation(line: 770, column: 24, scope: !3435)
!3480 = !DILocation(line: 770, column: 3, scope: !3435)
!3481 = !DILocation(line: 771, column: 3, scope: !3435)
!3482 = !DILocation(line: 772, column: 3, scope: !3435)
!3483 = !DILocation(line: 773, column: 1, scope: !3435)
!3484 = distinct !DISubprogram(name: "gimple_catch_handler", scope: !568, file: !568, line: 2806, type: !2934, scopeLine: 2807, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3485)
!3485 = !{!3486}
!3486 = !DILocalVariable(name: "gs", arg: 1, scope: !3484, file: !568, line: 2806, type: !972)
!3487 = !DILocation(line: 0, scope: !3484)
!3488 = !DILocation(line: 2809, column: 27, scope: !3484)
!3489 = !DILocation(line: 2809, column: 3, scope: !3484)
!3490 = distinct !DISubprogram(name: "gimple_eh_filter_failure", scope: !568, file: !568, line: 2869, type: !2934, scopeLine: 2870, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3491)
!3491 = !{!3492}
!3492 = !DILocalVariable(name: "gs", arg: 1, scope: !3490, file: !568, line: 2869, type: !972)
!3493 = !DILocation(line: 0, scope: !3490)
!3494 = !DILocation(line: 2872, column: 31, scope: !3490)
!3495 = !DILocation(line: 2872, column: 3, scope: !3490)
!3496 = distinct !DISubprogram(name: "lower_builtin_setjmp", scope: !3, file: !3, line: 829, type: !3426, scopeLine: 830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3497)
!3497 = !{!3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506}
!3498 = !DILocalVariable(name: "gsi", arg: 1, scope: !3496, file: !3, line: 829, type: !3121)
!3499 = !DILocalVariable(name: "stmt", scope: !3496, file: !3, line: 831, type: !972)
!3500 = !DILocalVariable(name: "loc", scope: !3496, file: !3, line: 832, type: !773)
!3501 = !DILocalVariable(name: "cont_label", scope: !3496, file: !3, line: 833, type: !648)
!3502 = !DILocalVariable(name: "next_label", scope: !3496, file: !3, line: 834, type: !648)
!3503 = !DILocalVariable(name: "dest", scope: !3496, file: !3, line: 835, type: !648)
!3504 = !DILocalVariable(name: "t", scope: !3496, file: !3, line: 835, type: !648)
!3505 = !DILocalVariable(name: "arg", scope: !3496, file: !3, line: 835, type: !648)
!3506 = !DILocalVariable(name: "g", scope: !3496, file: !3, line: 836, type: !972)
!3507 = !DILocation(line: 0, scope: !3496)
!3508 = !DILocation(line: 831, column: 17, scope: !3496)
!3509 = !DILocation(line: 832, column: 20, scope: !3496)
!3510 = !DILocation(line: 833, column: 21, scope: !3496)
!3511 = !DILocation(line: 834, column: 21, scope: !3496)
!3512 = !DILocation(line: 840, column: 3, scope: !3496)
!3513 = !DILocation(line: 840, column: 29, scope: !3496)
!3514 = !DILocation(line: 842, column: 10, scope: !3496)
!3515 = !DILocation(line: 845, column: 33, scope: !3496)
!3516 = !DILocation(line: 845, column: 9, scope: !3496)
!3517 = !DILocation(line: 846, column: 7, scope: !3496)
!3518 = !DILocation(line: 847, column: 32, scope: !3496)
!3519 = !DILocation(line: 847, column: 7, scope: !3496)
!3520 = !DILocation(line: 848, column: 3, scope: !3496)
!3521 = !DILocation(line: 849, column: 24, scope: !3496)
!3522 = !DILocation(line: 849, column: 3, scope: !3496)
!3523 = !DILocation(line: 850, column: 3, scope: !3496)
!3524 = !DILocation(line: 853, column: 7, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 853, column: 7)
!3526 = !DILocation(line: 853, column: 7, scope: !3496)
!3527 = !DILocation(line: 855, column: 11, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3525, file: !3, line: 854, column: 5)
!3529 = !DILocation(line: 857, column: 7, scope: !3528)
!3530 = !DILocation(line: 858, column: 28, scope: !3528)
!3531 = !DILocation(line: 858, column: 7, scope: !3528)
!3532 = !DILocation(line: 859, column: 7, scope: !3528)
!3533 = !DILocation(line: 860, column: 5, scope: !3528)
!3534 = !DILocation(line: 863, column: 7, scope: !3496)
!3535 = !DILocation(line: 864, column: 3, scope: !3496)
!3536 = !DILocation(line: 867, column: 7, scope: !3496)
!3537 = !DILocation(line: 868, column: 3, scope: !3496)
!3538 = !DILocation(line: 871, column: 33, scope: !3496)
!3539 = !DILocation(line: 871, column: 9, scope: !3496)
!3540 = !DILocation(line: 872, column: 7, scope: !3496)
!3541 = !DILocation(line: 873, column: 7, scope: !3496)
!3542 = !DILocation(line: 874, column: 3, scope: !3496)
!3543 = !DILocation(line: 875, column: 24, scope: !3496)
!3544 = !DILocation(line: 875, column: 3, scope: !3496)
!3545 = !DILocation(line: 876, column: 3, scope: !3496)
!3546 = !DILocation(line: 879, column: 7, scope: !3496)
!3547 = !DILocation(line: 881, column: 11, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3549, file: !3, line: 880, column: 5)
!3549 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 879, column: 7)
!3550 = !DILocation(line: 883, column: 7, scope: !3548)
!3551 = !DILocation(line: 884, column: 28, scope: !3548)
!3552 = !DILocation(line: 884, column: 7, scope: !3548)
!3553 = !DILocation(line: 885, column: 7, scope: !3548)
!3554 = !DILocation(line: 886, column: 5, scope: !3548)
!3555 = !DILocation(line: 889, column: 7, scope: !3496)
!3556 = !DILocation(line: 890, column: 3, scope: !3496)
!3557 = !DILocation(line: 893, column: 3, scope: !3496)
!3558 = !DILocation(line: 894, column: 1, scope: !3496)
!3559 = distinct !DISubprogram(name: "lower_omp_directive", scope: !3, file: !3, line: 309, type: !3119, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3560)
!3560 = !{!3561, !3562, !3563}
!3561 = !DILocalVariable(name: "gsi", arg: 1, scope: !3559, file: !3, line: 309, type: !3121)
!3562 = !DILocalVariable(name: "data", arg: 2, scope: !3559, file: !3, line: 309, type: !3122)
!3563 = !DILocalVariable(name: "stmt", scope: !3559, file: !3, line: 311, type: !972)
!3564 = !DILocation(line: 0, scope: !3559)
!3565 = !DILocation(line: 313, column: 10, scope: !3559)
!3566 = !DILocation(line: 315, column: 19, scope: !3559)
!3567 = !DILocation(line: 315, column: 3, scope: !3559)
!3568 = !DILocation(line: 316, column: 3, scope: !3559)
!3569 = !DILocation(line: 317, column: 31, scope: !3559)
!3570 = !DILocation(line: 317, column: 3, scope: !3559)
!3571 = !DILocation(line: 318, column: 3, scope: !3559)
!3572 = !DILocation(line: 319, column: 3, scope: !3559)
!3573 = !DILocation(line: 320, column: 1, scope: !3559)
!3574 = distinct !DISubprogram(name: "VEC_return_statements_t_base_index", scope: !3, file: !3, line: 67, type: !3575, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3577)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!3210, !3211, !7}
!3577 = !{!3578, !3579}
!3578 = !DILocalVariable(name: "vec_", arg: 1, scope: !3574, file: !3, line: 67, type: !3211)
!3579 = !DILocalVariable(name: "ix_", arg: 2, scope: !3574, file: !3, line: 67, type: !7)
!3580 = !DILocation(line: 0, scope: !3574)
!3581 = !DILocation(line: 67, column: 1, scope: !3574)
!3582 = distinct !DISubprogram(name: "VEC_return_statements_t_heap_safe_push", scope: !3, file: !3, line: 68, type: !3583, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3587)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!3210, !3264, !3585}
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2055)
!3587 = !{!3588, !3589}
!3588 = !DILocalVariable(name: "vec_", arg: 1, scope: !3582, file: !3, line: 68, type: !3264)
!3589 = !DILocalVariable(name: "obj_", arg: 2, scope: !3582, file: !3, line: 68, type: !3585)
!3590 = !DILocation(line: 0, scope: !3582)
!3591 = !DILocation(line: 68, column: 1, scope: !3582)
!3592 = distinct !DISubprogram(name: "gimple_location", scope: !568, file: !568, line: 1139, type: !3593, scopeLine: 1140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3595)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!773, !2763}
!3595 = !{!3596}
!3596 = !DILocalVariable(name: "g", arg: 1, scope: !3592, file: !568, line: 1139, type: !2763)
!3597 = !DILocation(line: 0, scope: !3592)
!3598 = !DILocation(line: 1141, column: 20, scope: !3592)
!3599 = !DILocation(line: 1141, column: 3, scope: !3592)
!3600 = distinct !DISubprogram(name: "gimple_block", scope: !568, file: !568, line: 1121, type: !2772, scopeLine: 1122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3601)
!3601 = !{!3602}
!3602 = !DILocalVariable(name: "g", arg: 1, scope: !3600, file: !568, line: 1121, type: !2763)
!3603 = !DILocation(line: 0, scope: !3600)
!3604 = !DILocation(line: 1123, column: 20, scope: !3600)
!3605 = !DILocation(line: 1123, column: 3, scope: !3600)
!3606 = distinct !DISubprogram(name: "VEC_return_statements_t_heap_reserve", scope: !3, file: !3, line: 68, type: !3607, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3609)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!641, !3264, !641}
!3609 = !{!3610, !3611, !3612}
!3610 = !DILocalVariable(name: "vec_", arg: 1, scope: !3606, file: !3, line: 68, type: !3264)
!3611 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3606, file: !3, line: 68, type: !641)
!3612 = !DILocalVariable(name: "extend", scope: !3606, file: !3, line: 68, type: !641)
!3613 = !DILocation(line: 0, scope: !3606)
!3614 = !DILocation(line: 68, column: 1, scope: !3606)
!3615 = !DILocation(line: 68, column: 1, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3606, file: !3, line: 68, column: 1)
!3617 = distinct !DISubprogram(name: "VEC_return_statements_t_base_quick_push", scope: !3, file: !3, line: 67, type: !3618, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3620)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!3210, !3211, !3585}
!3620 = !{!3621, !3622, !3623}
!3621 = !DILocalVariable(name: "vec_", arg: 1, scope: !3617, file: !3, line: 67, type: !3211)
!3622 = !DILocalVariable(name: "obj_", arg: 2, scope: !3617, file: !3, line: 67, type: !3585)
!3623 = !DILocalVariable(name: "slot_", scope: !3617, file: !3, line: 67, type: !3210)
!3624 = !DILocation(line: 0, scope: !3617)
!3625 = !DILocation(line: 67, column: 1, scope: !3617)
!3626 = !DILocation(line: 67, column: 1, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3617, file: !3, line: 67, column: 1)
!3628 = distinct !DISubprogram(name: "VEC_return_statements_t_base_space", scope: !3, file: !3, line: 67, type: !3629, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3631)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{!641, !3211, !641}
!3631 = !{!3632, !3633}
!3632 = !DILocalVariable(name: "vec_", arg: 1, scope: !3628, file: !3, line: 67, type: !3211)
!3633 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3628, file: !3, line: 67, type: !641)
!3634 = !DILocation(line: 0, scope: !3628)
!3635 = !DILocation(line: 67, column: 1, scope: !3628)
!3636 = distinct !DISubprogram(name: "gimple_call_lhs", scope: !568, file: !568, line: 1878, type: !2772, scopeLine: 1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3637)
!3637 = !{!3638}
!3638 = !DILocalVariable(name: "gs", arg: 1, scope: !3636, file: !568, line: 1878, type: !2763)
!3639 = !DILocation(line: 0, scope: !3636)
!3640 = !DILocation(line: 1881, column: 10, scope: !3636)
!3641 = !DILocation(line: 1881, column: 3, scope: !3636)
!3642 = distinct !DISubprogram(name: "gimple_op", scope: !568, file: !568, line: 1631, type: !2793, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3643)
!3643 = !{!3644, !3645}
!3644 = !DILocalVariable(name: "gs", arg: 1, scope: !3642, file: !568, line: 1631, type: !2763)
!3645 = !DILocalVariable(name: "i", arg: 2, scope: !3642, file: !568, line: 1631, type: !7)
!3646 = !DILocation(line: 0, scope: !3642)
!3647 = !DILocation(line: 1633, column: 7, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3642, file: !568, line: 1633, column: 7)
!3649 = !DILocation(line: 1633, column: 7, scope: !3642)
!3650 = !DILocation(line: 1638, column: 14, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3648, file: !568, line: 1634, column: 5)
!3652 = !DILocation(line: 1638, column: 7, scope: !3651)
!3653 = !DILocation(line: 0, scope: !3648)
!3654 = !DILocation(line: 1642, column: 1, scope: !3642)
!3655 = distinct !DISubprogram(name: "gimple_has_ops", scope: !568, file: !568, line: 1274, type: !3656, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3658)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!640, !2763}
!3658 = !{!3659}
!3659 = !DILocalVariable(name: "g", arg: 1, scope: !3655, file: !568, line: 1274, type: !2763)
!3660 = !DILocation(line: 0, scope: !3655)
!3661 = !DILocation(line: 1276, column: 10, scope: !3655)
!3662 = !DILocation(line: 1276, column: 26, scope: !3655)
!3663 = !DILocation(line: 1276, column: 41, scope: !3655)
!3664 = !DILocation(line: 1276, column: 44, scope: !3655)
!3665 = !DILocation(line: 1276, column: 60, scope: !3655)
!3666 = !DILocation(line: 1276, column: 3, scope: !3655)
!3667 = distinct !DISubprogram(name: "gimple_ops", scope: !568, file: !568, line: 1614, type: !3668, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3670)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!1007, !972}
!3670 = !{!3671, !3672}
!3671 = !DILocalVariable(name: "gs", arg: 1, scope: !3667, file: !568, line: 1614, type: !972)
!3672 = !DILocalVariable(name: "off", scope: !3667, file: !568, line: 1616, type: !1118)
!3673 = !DILocation(line: 0, scope: !3667)
!3674 = !DILocation(line: 1621, column: 28, scope: !3667)
!3675 = !DILocation(line: 1621, column: 9, scope: !3667)
!3676 = !DILocation(line: 1622, column: 3, scope: !3667)
!3677 = !DILocation(line: 1624, column: 20, scope: !3667)
!3678 = !DILocation(line: 1624, column: 32, scope: !3667)
!3679 = !DILocation(line: 1624, column: 10, scope: !3667)
!3680 = !DILocation(line: 1624, column: 3, scope: !3667)
!3681 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !568, file: !568, line: 1073, type: !3682, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3684)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!567, !972}
!3684 = !{!3685}
!3685 = !DILocalVariable(name: "gs", arg: 1, scope: !3681, file: !568, line: 1073, type: !972)
!3686 = !DILocation(line: 0, scope: !3681)
!3687 = !DILocation(line: 1075, column: 24, scope: !3681)
!3688 = !DILocation(line: 1075, column: 10, scope: !3681)
!3689 = !DILocation(line: 1075, column: 3, scope: !3681)
!3690 = distinct !DISubprogram(name: "gss_for_code", scope: !568, file: !568, line: 1061, type: !3691, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3693)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!567, !594}
!3693 = !{!3694}
!3694 = !DILocalVariable(name: "code", arg: 1, scope: !3690, file: !568, line: 1061, type: !594)
!3695 = !DILocation(line: 0, scope: !3690)
!3696 = !DILocation(line: 1066, column: 10, scope: !3690)
!3697 = !DILocation(line: 1066, column: 3, scope: !3690)
!3698 = distinct !DISubprogram(name: "gimple_omp_body", scope: !568, file: !568, line: 3363, type: !2934, scopeLine: 3364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3699)
!3699 = !{!3700}
!3700 = !DILocalVariable(name: "gs", arg: 1, scope: !3698, file: !568, line: 3363, type: !972)
!3701 = !DILocation(line: 0, scope: !3698)
!3702 = !DILocation(line: 3365, column: 18, scope: !3698)
!3703 = !DILocation(line: 3365, column: 3, scope: !3698)
!3704 = distinct !DISubprogram(name: "gimple_omp_set_body", scope: !568, file: !568, line: 3371, type: !3705, scopeLine: 3372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3707)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{null, !972, !962}
!3707 = !{!3708, !3709}
!3708 = !DILocalVariable(name: "gs", arg: 1, scope: !3704, file: !568, line: 3371, type: !972)
!3709 = !DILocalVariable(name: "body", arg: 2, scope: !3704, file: !568, line: 3371, type: !962)
!3710 = !DILocation(line: 0, scope: !3704)
!3711 = !DILocation(line: 3373, column: 11, scope: !3704)
!3712 = !DILocation(line: 3373, column: 16, scope: !3704)
!3713 = !DILocation(line: 3374, column: 1, scope: !3704)
!3714 = distinct !DISubprogram(name: "gimple_set_op", scope: !568, file: !568, line: 1663, type: !3715, scopeLine: 1664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3717)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{null, !972, !7, !648}
!3717 = !{!3718, !3719, !3720}
!3718 = !DILocalVariable(name: "gs", arg: 1, scope: !3714, file: !568, line: 1663, type: !972)
!3719 = !DILocalVariable(name: "i", arg: 2, scope: !3714, file: !568, line: 1663, type: !7)
!3720 = !DILocalVariable(name: "op", arg: 3, scope: !3714, file: !568, line: 1663, type: !648)
!3721 = !DILocation(line: 0, scope: !3714)
!3722 = !DILocation(line: 1665, column: 3, scope: !3714)
!3723 = !DILocation(line: 1671, column: 3, scope: !3714)
!3724 = !DILocation(line: 1671, column: 22, scope: !3714)
!3725 = !DILocation(line: 1672, column: 1, scope: !3714)
!3726 = distinct !DISubprogram(name: "gimple_num_ops", scope: !568, file: !568, line: 1596, type: !2761, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3727)
!3727 = !{!3728}
!3728 = !DILocalVariable(name: "gs", arg: 1, scope: !3726, file: !568, line: 1596, type: !2763)
!3729 = !DILocation(line: 0, scope: !3726)
!3730 = !DILocation(line: 1598, column: 21, scope: !3726)
!3731 = !DILocation(line: 1598, column: 3, scope: !3726)
!3732 = distinct !DISubprogram(name: "tsi_start", scope: !2852, file: !2852, line: 38, type: !3733, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3735)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!2851, !648}
!3735 = !{!3736, !3737}
!3736 = !DILocalVariable(name: "t", arg: 1, scope: !3732, file: !2852, line: 38, type: !648)
!3737 = !DILocalVariable(name: "i", scope: !3732, file: !2852, line: 40, type: !2851)
!3738 = !DILocation(line: 0, scope: !3732)
!3739 = !DILocation(line: 42, column: 11, scope: !3732)
!3740 = !DILocation(line: 45, column: 3, scope: !3732)
!3741 = distinct !DISubprogram(name: "tsi_stmt", scope: !2852, file: !2852, line: 90, type: !3742, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3744)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!648, !2851}
!3744 = !{!3745}
!3745 = !DILocalVariable(name: "i", arg: 1, scope: !3741, file: !2852, line: 90, type: !2851)
!3746 = !DILocation(line: 92, column: 17, scope: !3741)
!3747 = !DILocation(line: 92, column: 3, scope: !3741)
!3748 = distinct !DISubprogram(name: "tsi_end_p", scope: !2852, file: !2852, line: 60, type: !3749, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3751)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!640, !2851}
!3751 = !{!3752}
!3752 = !DILocalVariable(name: "i", arg: 1, scope: !3748, file: !2852, line: 60, type: !2851)
!3753 = !DILocation(line: 62, column: 16, scope: !3748)
!3754 = !DILocation(line: 62, column: 10, scope: !3748)
!3755 = !DILocation(line: 62, column: 3, scope: !3748)
!3756 = distinct !DISubprogram(name: "tsi_next", scope: !2852, file: !2852, line: 72, type: !3757, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3760)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{null, !3759}
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!3760 = !{!3761}
!3761 = !DILocalVariable(name: "i", arg: 1, scope: !3756, file: !2852, line: 72, type: !3759)
!3762 = !DILocation(line: 0, scope: !3756)
!3763 = !DILocation(line: 74, column: 15, scope: !3756)
!3764 = !DILocation(line: 74, column: 20, scope: !3756)
!3765 = !DILocation(line: 74, column: 10, scope: !3756)
!3766 = !DILocation(line: 75, column: 1, scope: !3756)
