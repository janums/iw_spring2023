; ModuleID = 'tree-ssa-loop-ch.bc'
source_filename = "tree-ssa-loop-ch.c"
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
%union.section = type { %struct.unnamed_section }
%struct.unnamed_section = type { %struct.section_common, void (i8*)*, i8*, %union.section* }
%struct.section_common = type { i32 }
%struct.VEC_rtx_gc = type { %struct.VEC_rtx_base }
%struct.VEC_rtx_base = type { i32, i32, [1 x %struct.rtx_def*] }
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.eni_weights_d = type { i32, i32, i32, i32, i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.loop_iterator = type { %struct.VEC_int_heap*, i32 }
%struct.VEC_int_heap = type { %struct.VEC_int_base }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"ch\00", align 1
@pass_ch = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_ch, i32 ()* @copy_loop_headers, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 102, i32 40, i32 0, i32 0, i32 0, i32 37 } }, align 8, !dbg !0
@flag_tree_ch = external dso_local local_unnamed_addr global i32, align 4
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"tree-ssa-loop-ch.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"Duplicating header of the loop %d up to edge %d->%d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Duplication failed.\0A\00", align 1
@warn_strict_overflow = external dso_local local_unnamed_addr global i32, align 4
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@eni_size_weights = external dso_local global %struct.eni_weights_d, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_rhs_class_table = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2086 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2099, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2100, metadata !DIExpression()), !dbg !2101
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2102
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2103
  ret i32 %call, !dbg !2104
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2105 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2109
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2110
  ret i32 %call, !dbg !2111
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2112 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2167, metadata !DIExpression()), !dbg !2168
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2169
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2169
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2169
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2169
  %cmp = icmp uge i8* %0, %1, !dbg !2169
  %conv1 = zext i1 %cmp to i64, !dbg !2169
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2169
  %tobool = icmp eq i64 %expval, 0, !dbg !2169
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2169

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2169
  br label %cond.end, !dbg !2169

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2169
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2169
  %2 = load i8, i8* %0, align 1, !dbg !2169
  %conv3 = zext i8 %2 to i32, !dbg !2169
  br label %cond.end, !dbg !2169

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2169
  ret i32 %cond, !dbg !2170
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2171 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2173, metadata !DIExpression()), !dbg !2174
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2175
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2175
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2175
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2175
  %cmp = icmp uge i8* %0, %1, !dbg !2175
  %conv1 = zext i1 %cmp to i64, !dbg !2175
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2175
  %tobool = icmp eq i64 %expval, 0, !dbg !2175
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2175

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2175
  br label %cond.end, !dbg !2175

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2175
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2175
  %2 = load i8, i8* %0, align 1, !dbg !2175
  %conv3 = zext i8 %2 to i32, !dbg !2175
  br label %cond.end, !dbg !2175

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2175
  ret i32 %cond, !dbg !2176
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2177 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2178
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2178
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2178
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2178
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2178
  %cmp = icmp uge i8* %1, %2, !dbg !2178
  %conv1 = zext i1 %cmp to i64, !dbg !2178
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2178
  %tobool = icmp eq i64 %expval, 0, !dbg !2178
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2178

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2178
  br label %cond.end, !dbg !2178

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2178
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2178
  %3 = load i8, i8* %1, align 1, !dbg !2178
  %conv3 = zext i8 %3 to i32, !dbg !2178
  br label %cond.end, !dbg !2178

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2178
  ret i32 %cond, !dbg !2179
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2180 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2184, metadata !DIExpression()), !dbg !2185
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2186
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2187
  ret i32 %call, !dbg !2188
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2189 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2193, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2194, metadata !DIExpression()), !dbg !2195
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2196
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2196
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2196
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2196
  %cmp = icmp uge i8* %0, %1, !dbg !2196
  %conv1 = zext i1 %cmp to i64, !dbg !2196
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2196
  %tobool = icmp eq i64 %expval, 0, !dbg !2196
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2196

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2196
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2196
  br label %cond.end, !dbg !2196

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2196
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2196
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2196
  store i8 %conv2, i8* %0, align 1, !dbg !2196
  %conv6 = and i32 %__c, 255, !dbg !2196
  br label %cond.end, !dbg !2196

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2196
  ret i32 %cond, !dbg !2197
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2198 {
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

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2205 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2207, metadata !DIExpression()), !dbg !2208
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2209
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2209
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2209
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2209
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2209
  %cmp = icmp uge i8* %1, %2, !dbg !2209
  %conv1 = zext i1 %cmp to i64, !dbg !2209
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2209
  %tobool = icmp eq i64 %expval, 0, !dbg !2209
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2209

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2209
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2209
  br label %cond.end, !dbg !2209

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2209
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2209
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2209
  store i8 %conv4, i8* %1, align 1, !dbg !2209
  %conv6 = and i32 %__c, 255, !dbg !2209
  br label %cond.end, !dbg !2209

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2209
  ret i32 %cond, !dbg !2210
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2211 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2217, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2218, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2219, metadata !DIExpression()), !dbg !2220
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2221
  ret i64 %call, !dbg !2222
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2223 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2225, metadata !DIExpression()), !dbg !2226
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2227
  %0 = load i32, i32* %_flags, align 8, !dbg !2227
  %and = lshr i32 %0, 4, !dbg !2227
  %and.lobit = and i32 %and, 1, !dbg !2227
  ret i32 %and.lobit, !dbg !2228
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2229 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2231, metadata !DIExpression()), !dbg !2232
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2233
  %0 = load i32, i32* %_flags, align 8, !dbg !2233
  %and = lshr i32 %0, 5, !dbg !2233
  %and.lobit = and i32 %and, 1, !dbg !2233
  ret i32 %and.lobit, !dbg !2234
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2235 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2238, metadata !DIExpression()), !dbg !2239
  %__c.off = add i32 %__c, 128, !dbg !2240
  %0 = icmp ult i32 %__c.off, 384, !dbg !2240
  br i1 %0, label %cond.true, label %cond.end, !dbg !2240

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2241
  %1 = load i32*, i32** %call, align 8, !dbg !2242
  %idxprom = sext i32 %__c to i64, !dbg !2243
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2243
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2243
  br label %cond.end, !dbg !2244

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2244
  ret i32 %cond, !dbg !2245
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2246 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2248, metadata !DIExpression()), !dbg !2249
  %__c.off = add i32 %__c, 128, !dbg !2250
  %0 = icmp ult i32 %__c.off, 384, !dbg !2250
  br i1 %0, label %cond.true, label %cond.end, !dbg !2250

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2251
  %1 = load i32*, i32** %call, align 8, !dbg !2252
  %idxprom = sext i32 %__c to i64, !dbg !2253
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2253
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2253
  br label %cond.end, !dbg !2254

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2254
  ret i32 %cond, !dbg !2255
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2256 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2261, metadata !DIExpression()), !dbg !2262
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2263
  %conv = trunc i64 %call to i32, !dbg !2264
  ret i32 %conv, !dbg !2265
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2266 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2270, metadata !DIExpression()), !dbg !2271
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2272
  ret i64 %call, !dbg !2273
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2274 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2279, metadata !DIExpression()), !dbg !2280
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2281
  ret i64 %call, !dbg !2282
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2283 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2289, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2290, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2291, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2292, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2293, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i64 0, metadata !2294, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2295, metadata !DIExpression()), !dbg !2299
  br label %while.cond, !dbg !2300

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2301
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2299
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2295, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2294, metadata !DIExpression()), !dbg !2299
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2302
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2300

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2303
  %div = lshr i64 %add, 1, !dbg !2305
  call void @llvm.dbg.value(metadata i64 %div, metadata !2296, metadata !DIExpression()), !dbg !2299
  %mul = mul i64 %div, %__size, !dbg !2306
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2307
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2297, metadata !DIExpression()), !dbg !2299
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2308
  call void @llvm.dbg.value(metadata i32 %call, metadata !2298, metadata !DIExpression()), !dbg !2299
  %cmp1 = icmp slt i32 %call, 0, !dbg !2309
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2311

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2312
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2314

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2315
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2294, metadata !DIExpression()), !dbg !2299
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2299
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2299
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2295, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2294, metadata !DIExpression()), !dbg !2299
  br label %while.cond, !dbg !2300, !llvm.loop !2316

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2299
  ret i8* %retval.0, !dbg !2318
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2319 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2325, metadata !DIExpression()), !dbg !2326
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2327
  ret double %call, !dbg !2328
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2329 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2338, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2339, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i32 %base, metadata !2340, metadata !DIExpression()), !dbg !2341
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2342
  ret i64 %call, !dbg !2343
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2344 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2350, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2351, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i32 %base, metadata !2352, metadata !DIExpression()), !dbg !2353
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2354
  ret i64 %call, !dbg !2355
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2356 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2367, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2368, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata i32 %base, metadata !2369, metadata !DIExpression()), !dbg !2370
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2371
  ret i64 %call, !dbg !2372
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2373 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2377, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2378, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i32 %base, metadata !2379, metadata !DIExpression()), !dbg !2380
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2381
  ret i64 %call, !dbg !2382
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2383 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2423, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2424, metadata !DIExpression()), !dbg !2425
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2426
  ret i32 %call, !dbg !2427
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2428 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2430, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2431, metadata !DIExpression()), !dbg !2432
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2433
  ret i32 %call, !dbg !2434
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2435 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2439, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2440, metadata !DIExpression()), !dbg !2441
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2442
  ret i32 %call, !dbg !2443
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2444 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2448, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2449, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2450, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2451, metadata !DIExpression()), !dbg !2452
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2453
  ret i32 %call, !dbg !2454
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2455 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2459, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2460, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2461, metadata !DIExpression()), !dbg !2462
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2461, metadata !DIExpression(DW_OP_deref)), !dbg !2462
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2463
  ret i32 %call, !dbg !2464
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2465 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2469, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2470, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2471, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2472, metadata !DIExpression()), !dbg !2473
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2472, metadata !DIExpression(DW_OP_deref)), !dbg !2473
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2474
  ret i32 %call, !dbg !2475
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2476 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2500, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2501, metadata !DIExpression()), !dbg !2502
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2503
  ret i32 %call, !dbg !2504
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2505 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2507, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2508, metadata !DIExpression()), !dbg !2509
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2510
  ret i32 %call, !dbg !2511
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2512 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2516, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2517, metadata !DIExpression()), !dbg !2518
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2519
  ret i32 %call, !dbg !2520
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2521 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2525, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2526, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2527, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2528, metadata !DIExpression()), !dbg !2529
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2530
  ret i32 %call, !dbg !2531
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_ch() #5 !dbg !2532 {
entry:
  %0 = load i32, i32* @flag_tree_ch, align 4, !dbg !2533
  %cmp = icmp ne i32 %0, 0, !dbg !2534
  %conv1 = zext i1 %cmp to i8, !dbg !2533
  ret i8 %conv1, !dbg !2535
}

; Function Attrs: nounwind uwtable
define internal i32 @copy_loop_headers() #5 !dbg !2536 {
entry:
  %li = alloca %struct.loop_iterator, align 8
  %loop = alloca %struct.loop*, align 8
  %limit = alloca i32, align 4
  %bsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %0 = bitcast %struct.loop_iterator* %li to i8*, !dbg !2577
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7, !dbg !2577
  %1 = bitcast %struct.loop** %loop to i8*, !dbg !2578
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2578
  tail call void @loop_optimizer_init(i32 3) #6, !dbg !2579
  %call = tail call fastcc i32 @number_of_loops() #8, !dbg !2580
  %cmp = icmp ult i32 %call, 2, !dbg !2582
  br i1 %cmp, label %if.then, label %if.end, !dbg !2583

if.then:                                          ; preds = %entry
  tail call void @loop_optimizer_finalize() #6, !dbg !2584
  br label %cleanup115, !dbg !2586

if.end:                                           ; preds = %entry
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2587
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !2587
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2587
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 3, !dbg !2587
  %4 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !2587
  %conv = sext i32 %4 to i64, !dbg !2587
  %mul = shl nsw i64 %conv, 3, !dbg !2587
  %call2 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !2587
  %5 = bitcast i8* %call2 to %struct.basic_block_def**, !dbg !2587
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %5, metadata !2548, metadata !DIExpression()), !dbg !2588
  %6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2589
  %cfg4 = getelementptr inbounds %struct.function, %struct.function* %6, i64 0, i32 1, !dbg !2589
  %7 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg4, align 8, !dbg !2589
  %x_n_basic_blocks5 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %7, i64 0, i32 3, !dbg !2589
  %8 = load i32, i32* %x_n_basic_blocks5, align 8, !dbg !2589
  %conv6 = sext i32 %8 to i64, !dbg !2589
  %mul7 = shl nsw i64 %conv6, 3, !dbg !2589
  %call8 = tail call i8* @xmalloc(i64 %mul7) #6, !dbg !2589
  %9 = bitcast i8* %call8 to %struct.basic_block_def**, !dbg !2589
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %9, metadata !2549, metadata !DIExpression()), !dbg !2588
  %10 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2590
  %cfg10 = getelementptr inbounds %struct.function, %struct.function* %10, i64 0, i32 1, !dbg !2590
  %11 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg10, align 8, !dbg !2590
  %x_n_basic_blocks11 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %11, i64 0, i32 3, !dbg !2590
  %12 = load i32, i32* %x_n_basic_blocks11, align 8, !dbg !2590
  call void @llvm.dbg.value(metadata i32 %12, metadata !2551, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2538, metadata !DIExpression(DW_OP_deref)), !dbg !2588
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2544, metadata !DIExpression(DW_OP_deref)), !dbg !2588
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop, i32 0) #8, !dbg !2591
  %13 = bitcast i32* %limit to i8*, !dbg !2592
  %14 = bitcast %struct.gimple_stmt_iterator* %bsi to i8*, !dbg !2593
  %15 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2594
  br label %for.cond, !dbg !2591

for.cond:                                         ; preds = %cleanup, %if.end
  %16 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2595
  call void @llvm.dbg.value(metadata %struct.loop* %16, metadata !2544, metadata !DIExpression()), !dbg !2588
  %tobool = icmp eq %struct.loop* %16, null, !dbg !2591
  br i1 %tobool, label %for.end114, label %for.body, !dbg !2591

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #7, !dbg !2596
  call void @llvm.dbg.value(metadata i32 20, metadata !2552, metadata !DIExpression()), !dbg !2592
  store i32 20, i32* %limit, align 4, !dbg !2597
  call void @llvm.dbg.value(metadata %struct.loop* %16, metadata !2544, metadata !DIExpression()), !dbg !2588
  %header12 = getelementptr inbounds %struct.loop, %struct.loop* %16, i64 0, i32 2, !dbg !2598
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %header12, align 8, !dbg !2598
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %17, metadata !2545, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata %struct.loop* %16, metadata !2544, metadata !DIExpression()), !dbg !2588
  %call13 = call fastcc zeroext i8 @do_while_loop_p(%struct.loop* nonnull %16) #8, !dbg !2599
  %tobool14 = icmp eq i8 %call13, 0, !dbg !2599
  br i1 %tobool14, label %while.cond.preheader, label %cleanup, !dbg !2601

while.cond.preheader:                             ; preds = %for.body
  br label %while.cond, !dbg !2602

while.cond:                                       ; preds = %while.cond.preheader, %cond.end48
  %n_bbs.0 = phi i32 [ %inc, %cond.end48 ], [ 0, %while.cond.preheader ], !dbg !2592
  %exit.0 = phi %struct.edge_def* [ %exit.1, %cond.end48 ], [ null, %while.cond.preheader ], !dbg !2592
  %header.0 = phi %struct.basic_block_def* [ %23, %cond.end48 ], [ %17, %while.cond.preheader ], !dbg !2592
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %header.0, metadata !2545, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata %struct.edge_def* %exit.0, metadata !2546, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32 %n_bbs.0, metadata !2550, metadata !DIExpression()), !dbg !2588
  %18 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2603
  call void @llvm.dbg.value(metadata %struct.loop* %18, metadata !2544, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32* %limit, metadata !2552, metadata !DIExpression(DW_OP_deref)), !dbg !2592
  %call17 = call fastcc zeroext i8 @should_duplicate_loop_header_p(%struct.basic_block_def* %header.0, %struct.loop* %18, i32* nonnull %limit) #8, !dbg !2604
  %tobool18 = icmp eq i8 %call17, 0, !dbg !2602
  br i1 %tobool18, label %while.end, label %while.body, !dbg !2602

while.body:                                       ; preds = %while.cond
  %19 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2605
  call void @llvm.dbg.value(metadata %struct.loop* %19, metadata !2544, metadata !DIExpression()), !dbg !2588
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %header.0, i64 0, i32 1, !dbg !2608
  %20 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2608
  %tobool19 = icmp eq %struct.VEC_edge_gc* %20, null, !dbg !2608
  br i1 %tobool19, label %cond.end, label %cond.true, !dbg !2608

cond.true:                                        ; preds = %while.body
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %20, i64 0, i32 0, !dbg !2608
  br label %cond.end, !dbg !2608

cond.end:                                         ; preds = %while.body, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %while.body ], !dbg !2608
  %call21 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 0) #8, !dbg !2608
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call21, i64 0, i32 1, !dbg !2609
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2609
  %call22 = call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %19, %struct.basic_block_def* %21) #6, !dbg !2610
  %tobool23 = icmp eq i8 %call22, 0, !dbg !2610
  %22 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2611
  %tobool26 = icmp ne %struct.VEC_edge_gc* %22, null, !dbg !2611
  br i1 %tobool23, label %if.else, label %if.then24, !dbg !2612

if.then24:                                        ; preds = %cond.end
  br i1 %tobool26, label %cond.true27, label %cond.end31, !dbg !2613

cond.true27:                                      ; preds = %if.then24
  %base29 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %22, i64 0, i32 0, !dbg !2613
  br label %cond.end31, !dbg !2613

cond.end31:                                       ; preds = %if.then24, %cond.true27
  %cond32 = phi %struct.VEC_edge_base* [ %base29, %cond.true27 ], [ null, %if.then24 ], !dbg !2613
  %call33 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond32, i32 0) #8, !dbg !2613
  call void @llvm.dbg.value(metadata %struct.edge_def* %call33, metadata !2546, metadata !DIExpression()), !dbg !2588
  br label %if.end43, !dbg !2614

if.else:                                          ; preds = %cond.end
  br i1 %tobool26, label %cond.true36, label %cond.end40, !dbg !2615

cond.true36:                                      ; preds = %if.else
  %base38 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %22, i64 0, i32 0, !dbg !2615
  br label %cond.end40, !dbg !2615

cond.end40:                                       ; preds = %if.else, %cond.true36
  %cond41 = phi %struct.VEC_edge_base* [ %base38, %cond.true36 ], [ null, %if.else ], !dbg !2615
  %call42 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond41, i32 1) #8, !dbg !2615
  call void @llvm.dbg.value(metadata %struct.edge_def* %call42, metadata !2546, metadata !DIExpression()), !dbg !2588
  br label %if.end43

if.end43:                                         ; preds = %cond.end40, %cond.end31
  %exit.1 = phi %struct.edge_def* [ %call33, %cond.end31 ], [ %call42, %cond.end40 ], !dbg !2611
  call void @llvm.dbg.value(metadata %struct.edge_def* %exit.1, metadata !2546, metadata !DIExpression()), !dbg !2588
  %inc = add i32 %n_bbs.0, 1, !dbg !2616
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2550, metadata !DIExpression()), !dbg !2588
  %idxprom = zext i32 %n_bbs.0 to i64, !dbg !2617
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %5, i64 %idxprom, !dbg !2617
  store %struct.basic_block_def* %header.0, %struct.basic_block_def** %arrayidx, align 8, !dbg !2618
  %cmp44 = icmp ugt i32 %12, %inc, !dbg !2619
  br i1 %cmp44, label %cond.end48, label %cond.true46, !dbg !2619

cond.true46:                                      ; preds = %if.end43
  call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 190, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2619
  br label %cond.end48, !dbg !2619

cond.end48:                                       ; preds = %if.end43, %cond.true46
  %dest50 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %exit.1, i64 0, i32 1, !dbg !2620
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %dest50, align 8, !dbg !2620
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %23, metadata !2545, metadata !DIExpression()), !dbg !2588
  br label %while.cond, !dbg !2602, !llvm.loop !2621

while.end:                                        ; preds = %while.cond
  %n_bbs.0.lcssa = phi i32 [ %n_bbs.0, %while.cond ], !dbg !2592
  %exit.0.lcssa = phi %struct.edge_def* [ %exit.0, %while.cond ], !dbg !2592
  call void @llvm.dbg.value(metadata i32 %n_bbs.0.lcssa, metadata !2550, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata %struct.edge_def* %exit.0.lcssa, metadata !2546, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32 %n_bbs.0.lcssa, metadata !2550, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata %struct.edge_def* %exit.0.lcssa, metadata !2546, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32 %n_bbs.0.lcssa, metadata !2550, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata %struct.edge_def* %exit.0.lcssa, metadata !2546, metadata !DIExpression()), !dbg !2588
  %tobool51 = icmp eq %struct.edge_def* %exit.0.lcssa, null, !dbg !2623
  br i1 %tobool51, label %cleanup, label %if.end53, !dbg !2625

if.end53:                                         ; preds = %while.end
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2626
  %tobool54 = icmp eq %struct._IO_FILE* %24, null, !dbg !2626
  br i1 %tobool54, label %if.end60, label %land.lhs.true, !dbg !2628

land.lhs.true:                                    ; preds = %if.end53
  %25 = load i32, i32* @dump_flags, align 4, !dbg !2629
  %and = and i32 %25, 8, !dbg !2630
  %tobool55 = icmp eq i32 %and, 0, !dbg !2630
  br i1 %tobool55, label %if.end60, label %if.then56, !dbg !2631

if.then56:                                        ; preds = %land.lhs.true
  %26 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2632
  call void @llvm.dbg.value(metadata %struct.loop* %26, metadata !2544, metadata !DIExpression()), !dbg !2588
  %num = getelementptr inbounds %struct.loop, %struct.loop* %26, i64 0, i32 0, !dbg !2633
  %27 = load i32, i32* %num, align 8, !dbg !2633
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %exit.0.lcssa, i64 0, i32 0, !dbg !2634
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2634
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %28, i64 0, i32 9, !dbg !2635
  %29 = load i32, i32* %index, align 8, !dbg !2635
  %dest57 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %exit.0.lcssa, i64 0, i32 1, !dbg !2636
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %dest57, align 8, !dbg !2636
  %index58 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %30, i64 0, i32 9, !dbg !2637
  %31 = load i32, i32* %index58, align 8, !dbg !2637
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %24, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %27, i32 %29, i32 %31) #6, !dbg !2638
  br label %if.end60, !dbg !2638

if.end60:                                         ; preds = %land.lhs.true, %if.end53, %if.then56
  %dest61 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %exit.0.lcssa, i64 0, i32 1, !dbg !2639
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %dest61, align 8, !dbg !2639
  %call62 = call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %32) #8, !dbg !2641
  %tobool63 = icmp eq i8 %call62, 0, !dbg !2641
  br i1 %tobool63, label %if.then64, label %if.end67, !dbg !2642

if.then64:                                        ; preds = %if.end60
  %call65 = call %struct.basic_block_def* @split_edge(%struct.edge_def* nonnull %exit.0.lcssa) #6, !dbg !2643
  %call66 = call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %call65) #8, !dbg !2644
  call void @llvm.dbg.value(metadata %struct.edge_def* %call66, metadata !2546, metadata !DIExpression()), !dbg !2588
  br label %if.end67, !dbg !2645

if.end67:                                         ; preds = %if.end60, %if.then64
  %exit.2 = phi %struct.edge_def* [ %exit.0.lcssa, %if.end60 ], [ %call66, %if.then64 ], !dbg !2592
  call void @llvm.dbg.value(metadata %struct.edge_def* %exit.2, metadata !2546, metadata !DIExpression()), !dbg !2588
  %33 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2646
  call void @llvm.dbg.value(metadata %struct.loop* %33, metadata !2544, metadata !DIExpression()), !dbg !2588
  %call68 = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %33) #6, !dbg !2647
  call void @llvm.dbg.value(metadata %struct.edge_def* %call68, metadata !2547, metadata !DIExpression()), !dbg !2588
  %call69 = call zeroext i8 @gimple_duplicate_sese_region(%struct.edge_def* %call68, %struct.edge_def* %exit.2, %struct.basic_block_def** %5, i32 %n_bbs.0.lcssa, %struct.basic_block_def** %9) #6, !dbg !2648
  %tobool70 = icmp eq i8 %call69, 0, !dbg !2648
  br i1 %tobool70, label %if.then71, label %if.end73, !dbg !2650

if.then71:                                        ; preds = %if.end67
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2651
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2653
  br label %cleanup, !dbg !2654

if.end73:                                         ; preds = %if.end67
  %35 = load i32, i32* @warn_strict_overflow, align 4, !dbg !2655
  %cmp74 = icmp sgt i32 %35, 0, !dbg !2656
  br i1 %cmp74, label %for.cond77.preheader, label %if.end108, !dbg !2657

for.cond77.preheader:                             ; preds = %if.end73
  %wide.trip.count = zext i32 %n_bbs.0.lcssa to i64, !dbg !2658
  br label %for.cond77, !dbg !2659

for.cond77:                                       ; preds = %for.cond77.preheader, %for.end
  %indvars.iv = phi i64 [ 0, %for.cond77.preheader ], [ %indvars.iv.next, %for.end ], !dbg !2660
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2556, metadata !DIExpression()), !dbg !2661
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !2658
  br i1 %exitcond, label %if.end108.loopexit, label %for.body80, !dbg !2659

for.body80:                                       ; preds = %for.cond77
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #7, !dbg !2662
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %15) #7, !dbg !2663
  %arrayidx82 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %9, i64 %indvars.iv, !dbg !2664
  %36 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx82, align 8, !dbg !2664
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %36) #8, !dbg !2663
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %14, i8* nonnull align 8 %15, i64 24, i1 false), !dbg !2663
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %15) #7, !dbg !2663
  br label %for.cond83, !dbg !2665

for.cond83:                                       ; preds = %for.inc, %for.body80
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !2559, metadata !DIExpression(DW_OP_deref)), !dbg !2593
  %call84 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %bsi) #8, !dbg !2666
  %tobool85 = icmp eq i8 %call84, 0, !dbg !2667
  br i1 %tobool85, label %for.body86, label %for.end, !dbg !2668

for.body86:                                       ; preds = %for.cond83
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !2559, metadata !DIExpression(DW_OP_deref)), !dbg !2593
  %call87 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %bsi) #8, !dbg !2669
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call87, metadata !2569, metadata !DIExpression()), !dbg !2670
  %call88 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call87) #8, !dbg !2671
  %cmp89 = icmp eq i32 %call88, 1, !dbg !2672
  br i1 %cmp89, label %if.then91, label %if.else92, !dbg !2673

if.then91:                                        ; preds = %for.body86
  call fastcc void @gimple_set_no_warning(%union.gimple_statement_d* %call87, i8 zeroext 1) #8, !dbg !2674
  br label %for.inc, !dbg !2674

if.else92:                                        ; preds = %for.body86
  %call93 = call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %call87) #8, !dbg !2675
  %tobool94 = icmp eq i8 %call93, 0, !dbg !2675
  br i1 %tobool94, label %for.inc, label %if.then95, !dbg !2676

if.then95:                                        ; preds = %if.else92
  %call96 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call87) #8, !dbg !2677
  call void @llvm.dbg.value(metadata i32 %call96, metadata !2573, metadata !DIExpression()), !dbg !2678
  %idxprom97 = sext i32 %call96 to i64, !dbg !2679
  %arrayidx98 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %idxprom97, !dbg !2679
  %37 = load i32, i32* %arrayidx98, align 4, !dbg !2679
  %cmp99 = icmp eq i32 %37, 5, !dbg !2681
  br i1 %cmp99, label %if.then101, label %for.inc, !dbg !2682

if.then101:                                       ; preds = %if.then95
  call fastcc void @gimple_set_no_warning(%union.gimple_statement_d* %call87, i8 zeroext 1) #8, !dbg !2683
  br label %for.inc, !dbg !2683

for.inc:                                          ; preds = %if.else92, %if.then91, %if.then95, %if.then101
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !2559, metadata !DIExpression(DW_OP_deref)), !dbg !2593
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %bsi) #8, !dbg !2684
  br label %for.cond83, !dbg !2685, !llvm.loop !2686

for.end:                                          ; preds = %for.cond83
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %14) #7, !dbg !2688
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2689
  br label %for.cond77, !dbg !2690, !llvm.loop !2691

if.end108.loopexit:                               ; preds = %for.cond77
  br label %if.end108, !dbg !2693

if.end108:                                        ; preds = %if.end108.loopexit, %if.end73
  %38 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2693
  call void @llvm.dbg.value(metadata %struct.loop* %38, metadata !2544, metadata !DIExpression()), !dbg !2588
  %call109 = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %38) #6, !dbg !2694
  %call110 = call %struct.basic_block_def* @split_edge(%struct.edge_def* %call109) #6, !dbg !2695
  %39 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2696
  call void @llvm.dbg.value(metadata %struct.loop* %39, metadata !2544, metadata !DIExpression()), !dbg !2588
  %call111 = call %struct.edge_def* @loop_latch_edge(%struct.loop* %39) #6, !dbg !2697
  %call112 = call %struct.basic_block_def* @split_edge(%struct.edge_def* %call111) #6, !dbg !2698
  br label %cleanup, !dbg !2699

cleanup:                                          ; preds = %while.end, %for.body, %if.end108, %if.then71
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #7, !dbg !2699
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2538, metadata !DIExpression(DW_OP_deref)), !dbg !2588
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2544, metadata !DIExpression(DW_OP_deref)), !dbg !2588
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #8, !dbg !2595
  br label %for.cond, !dbg !2595, !llvm.loop !2700

for.end114:                                       ; preds = %for.cond
  call void @free(i8* %call2) #6, !dbg !2702
  call void @free(i8* %call8) #6, !dbg !2703
  call void @loop_optimizer_finalize() #6, !dbg !2704
  br label %cleanup115, !dbg !2705

cleanup115:                                       ; preds = %for.end114, %if.then
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2706
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7, !dbg !2706
  ret i32 0, !dbg !2706
}

declare dso_local void @loop_optimizer_init(i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #0 !dbg !2707 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2708
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !2708
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2708
  %tobool = icmp eq %struct.loops* %1, null, !dbg !2708
  br i1 %tobool, label %return, label %if.end, !dbg !2710

if.end:                                           ; preds = %entry
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !2711
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !2711
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !2711
  br i1 %tobool3, label %cond.end, label %cond.true, !dbg !2711

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !2711
  br label %cond.end, !dbg !2711

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !2711
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #8, !dbg !2711
  br label %return, !dbg !2712

return:                                           ; preds = %entry, %cond.end
  %retval.0 = phi i32 [ %call, %cond.end ], [ 0, %entry ], !dbg !2713
  ret i32 %retval.0, !dbg !2714
}

declare dso_local void @loop_optimizer_finalize() local_unnamed_addr #2

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fel_init(%struct.loop_iterator* %li, %struct.loop** %loop, i32 %flags) unnamed_addr #0 !dbg !2715 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2721, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2722, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i32 0, metadata !2723, metadata !DIExpression()), !dbg !2727
  %idx = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 1, !dbg !2728
  store i32 0, i32* %idx, align 8, !dbg !2729
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2730
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !2730
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2730
  %tobool = icmp eq %struct.loops* %1, null, !dbg !2730
  br i1 %tobool, label %if.then, label %if.end, !dbg !2732

if.then:                                          ; preds = %entry
  %to_visit = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2733
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %to_visit, align 8, !dbg !2735
  store %struct.loop* null, %struct.loop** %loop, align 8, !dbg !2736
  br label %cleanup, !dbg !2737

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @number_of_loops() #8, !dbg !2738
  %call1 = tail call fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %call) #8, !dbg !2738
  %to_visit2 = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2739
  store %struct.VEC_int_heap* %call1, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !2740
  call void @llvm.dbg.value(metadata i32 1, metadata !2726, metadata !DIExpression()), !dbg !2727
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2741
  %x_current_loops35 = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 4, !dbg !2741
  %3 = load %struct.loops*, %struct.loops** %x_current_loops35, align 8, !dbg !2741
  %tree_root = getelementptr inbounds %struct.loops, %struct.loops* %3, i64 0, i32 3, !dbg !2741
  %4 = load %struct.loop*, %struct.loop** %tree_root, align 8, !dbg !2741
  br label %while.cond79, !dbg !2744

while.cond79:                                     ; preds = %if.end, %if.end111
  %5 = phi %struct.loop* [ %4, %if.end ], [ %25, %if.end111 ]
  %6 = phi %struct.loop* [ %4, %if.end ], [ %26, %if.end111 ]
  %7 = phi %struct.loop* [ %4, %if.end ], [ %27, %if.end111 ]
  %8 = phi %struct.loop* [ %4, %if.end ], [ %28, %if.end111 ]
  %9 = phi %struct.loop* [ %4, %if.end ], [ %29, %if.end111 ]
  %10 = phi %struct.loop* [ %4, %if.end ], [ %30, %if.end111 ]
  %11 = phi %struct.loop* [ %4, %if.end ], [ %31, %if.end111 ]
  %12 = phi %struct.loop* [ %4, %if.end ], [ %32, %if.end111 ], !dbg !2746
  call void @llvm.dbg.value(metadata %struct.loop* %12, metadata !2724, metadata !DIExpression()), !dbg !2727
  %num81 = getelementptr inbounds %struct.loop, %struct.loop* %12, i64 0, i32 0, !dbg !2749
  %13 = load i32, i32* %num81, align 8, !dbg !2749
  %cmp82 = icmp slt i32 %13, 1, !dbg !2750
  br i1 %cmp82, label %if.end94, label %if.then83, !dbg !2751

if.then83:                                        ; preds = %while.cond79
  %14 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !2752
  %tobool85 = icmp eq %struct.VEC_int_heap* %14, null, !dbg !2752
  br i1 %tobool85, label %cond.end90, label %cond.true86, !dbg !2752

cond.true86:                                      ; preds = %if.then83
  %base88 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %14, i64 0, i32 0, !dbg !2752
  br label %cond.end90, !dbg !2752

cond.end90:                                       ; preds = %if.then83, %cond.true86
  %cond91 = phi %struct.VEC_int_base* [ %base88, %cond.true86 ], [ null, %if.then83 ], !dbg !2752
  call void @llvm.dbg.value(metadata %struct.loop* %11, metadata !2724, metadata !DIExpression()), !dbg !2727
  %num92 = getelementptr inbounds %struct.loop, %struct.loop* %11, i64 0, i32 0, !dbg !2752
  %15 = load i32, i32* %num92, align 8, !dbg !2752
  %call93 = tail call fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %cond91, i32 %15) #8, !dbg !2752
  br label %if.end94, !dbg !2752

if.end94:                                         ; preds = %while.cond79, %cond.end90
  call void @llvm.dbg.value(metadata %struct.loop* %10, metadata !2724, metadata !DIExpression()), !dbg !2727
  %inner95 = getelementptr inbounds %struct.loop, %struct.loop* %10, i64 0, i32 8, !dbg !2753
  %16 = load %struct.loop*, %struct.loop** %inner95, align 8, !dbg !2753
  %cmp96 = icmp eq %struct.loop* %16, null, !dbg !2755
  br i1 %cmp96, label %while.cond100.preheader, label %if.then97, !dbg !2756

while.cond100.preheader:                          ; preds = %if.end94
  br label %while.cond100, !dbg !2757

if.then97:                                        ; preds = %if.end94
  call void @llvm.dbg.value(metadata %struct.loop* %9, metadata !2724, metadata !DIExpression()), !dbg !2727
  %inner98 = getelementptr inbounds %struct.loop, %struct.loop* %9, i64 0, i32 8, !dbg !2759
  %17 = load %struct.loop*, %struct.loop** %inner98, align 8, !dbg !2759
  br label %if.end111, !dbg !2760

while.cond100:                                    ; preds = %while.cond100.preheader, %while.body104
  %18 = phi %struct.loop* [ %5, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %19 = phi %struct.loop* [ %6, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %20 = phi %struct.loop* [ %7, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %21 = phi %struct.loop* [ %8, %while.cond100.preheader ], [ %call105, %while.body104 ], !dbg !2761
  call void @llvm.dbg.value(metadata %struct.loop* %21, metadata !2724, metadata !DIExpression()), !dbg !2727
  %cmp101 = icmp eq %struct.loop* %21, null, !dbg !2762
  br i1 %cmp101, label %land.end, label %land.rhs, !dbg !2763

land.rhs:                                         ; preds = %while.cond100
  call void @llvm.dbg.value(metadata %struct.loop* %20, metadata !2724, metadata !DIExpression()), !dbg !2727
  %next102 = getelementptr inbounds %struct.loop, %struct.loop* %20, i64 0, i32 9, !dbg !2764
  %22 = load %struct.loop*, %struct.loop** %next102, align 8, !dbg !2764
  %cmp103 = icmp eq %struct.loop* %22, null, !dbg !2765
  br label %land.end

land.end:                                         ; preds = %while.cond100, %land.rhs
  %23 = phi i1 [ false, %while.cond100 ], [ %cmp103, %land.rhs ], !dbg !2766
  call void @llvm.dbg.value(metadata %struct.loop* %19, metadata !2724, metadata !DIExpression()), !dbg !2727
  br i1 %23, label %while.body104, label %while.end106, !dbg !2757

while.body104:                                    ; preds = %land.end
  %call105 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %19) #8, !dbg !2767
  call void @llvm.dbg.value(metadata %struct.loop* %call105, metadata !2724, metadata !DIExpression()), !dbg !2727
  br label %while.cond100, !dbg !2757, !llvm.loop !2768

while.end106:                                     ; preds = %land.end
  %.lcssa4 = phi %struct.loop* [ %18, %land.end ]
  %.lcssa = phi %struct.loop* [ %19, %land.end ]
  %cmp107 = icmp eq %struct.loop* %.lcssa, null, !dbg !2770
  br i1 %cmp107, label %if.end114.loopexit, label %if.end109, !dbg !2772

if.end109:                                        ; preds = %while.end106
  call void @llvm.dbg.value(metadata %struct.loop* %.lcssa4, metadata !2724, metadata !DIExpression()), !dbg !2727
  %next110 = getelementptr inbounds %struct.loop, %struct.loop* %.lcssa4, i64 0, i32 9, !dbg !2773
  %24 = load %struct.loop*, %struct.loop** %next110, align 8, !dbg !2773
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
  br label %while.cond79, !dbg !2744, !llvm.loop !2774

if.end114.loopexit:                               ; preds = %while.end106
  call fastcc void @fel_next(%struct.loop_iterator* %li, %struct.loop** %loop) #8, !dbg !2776
  br label %cleanup, !dbg !2777

cleanup:                                          ; preds = %if.end114.loopexit, %if.then
  ret void, !dbg !2777
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @do_while_loop_p(%struct.loop* %loop) unnamed_addr #5 !dbg !2778 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2782, metadata !DIExpression()), !dbg !2784
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !2785
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !2785
  %call = tail call %union.gimple_statement_d* @last_stmt(%struct.basic_block_def* %0) #6, !dbg !2786
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !2783, metadata !DIExpression()), !dbg !2784
  %tobool = icmp eq %union.gimple_statement_d* %call, null, !dbg !2787
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2789

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %call) #8, !dbg !2790
  %cmp = icmp eq i32 %call1, 4, !dbg !2791
  br i1 %cmp, label %if.end, label %cleanup, !dbg !2792

if.end:                                           ; preds = %land.lhs.true, %entry
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !2793
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !2793
  %call2 = tail call %union.gimple_statement_d* @last_and_only_stmt(%struct.basic_block_def* %1) #6, !dbg !2794
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call2, metadata !2783, metadata !DIExpression()), !dbg !2784
  %tobool3 = icmp eq %union.gimple_statement_d* %call2, null, !dbg !2795
  br i1 %tobool3, label %if.end8, label %land.lhs.true4, !dbg !2797

land.lhs.true4:                                   ; preds = %if.end
  %call5 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* nonnull %call2) #8, !dbg !2798
  %cmp6 = icmp eq i32 %call5, 1, !dbg !2799
  br i1 %cmp6, label %cleanup, label %if.end8, !dbg !2800

if.end8:                                          ; preds = %if.end, %land.lhs.true4
  br label %cleanup, !dbg !2801

cleanup:                                          ; preds = %land.lhs.true, %land.lhs.true4, %if.end8
  %retval.0 = phi i8 [ 1, %if.end8 ], [ 0, %land.lhs.true ], [ 0, %land.lhs.true4 ], !dbg !2784
  ret i8 %retval.0, !dbg !2802
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @should_duplicate_loop_header_p(%struct.basic_block_def* %header, %struct.loop* %loop, i32* %limit) unnamed_addr #5 !dbg !2803 {
entry:
  %bsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %header, metadata !2808, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2809, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i32* %limit, metadata !2810, metadata !DIExpression()), !dbg !2813
  %0 = bitcast %struct.gimple_stmt_iterator* %bsi to i8*, !dbg !2814
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !2814
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %header, i64 0, i32 2, !dbg !2815
  %1 = load i8*, i8** %aux, align 8, !dbg !2815
  %tobool = icmp eq i8* %1, null, !dbg !2817
  br i1 %tobool, label %if.end, label %cleanup, !dbg !2818

if.end:                                           ; preds = %entry
  %call = tail call zeroext i8 @optimize_loop_for_size_p(%struct.loop* %loop) #6, !dbg !2819
  %tobool1 = icmp eq i8 %call, 0, !dbg !2819
  br i1 %tobool1, label %if.end3, label %cleanup, !dbg !2821

if.end3:                                          ; preds = %if.end
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %header, i64 0, i32 1, !dbg !2822
  %2 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2822
  %tobool4 = icmp eq %struct.VEC_edge_gc* %2, null, !dbg !2822
  br i1 %tobool4, label %cond.end, label %cond.true, !dbg !2822

cond.true:                                        ; preds = %if.end3
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %2, i64 0, i32 0, !dbg !2822
  br label %cond.end, !dbg !2822

cond.end:                                         ; preds = %if.end3, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %if.end3 ], !dbg !2822
  %call6 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !2822
  %cmp = icmp eq i32 %call6, 0, !dbg !2822
  br i1 %cmp, label %cond.true7, label %cond.end9, !dbg !2822

cond.true7:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2822
  br label %cond.end9, !dbg !2822

cond.end9:                                        ; preds = %cond.end, %cond.true7
  %call11 = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %header) #8, !dbg !2823
  %tobool12 = icmp eq i8 %call11, 0, !dbg !2823
  br i1 %tobool12, label %if.end14, label %cleanup, !dbg !2825

if.end14:                                         ; preds = %cond.end9
  %3 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2826
  %tobool16 = icmp eq %struct.VEC_edge_gc* %3, null, !dbg !2826
  br i1 %tobool16, label %cond.end21, label %cond.true17, !dbg !2826

cond.true17:                                      ; preds = %if.end14
  %base19 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %3, i64 0, i32 0, !dbg !2826
  br label %cond.end21, !dbg !2826

cond.end21:                                       ; preds = %if.end14, %cond.true17
  %cond22 = phi %struct.VEC_edge_base* [ %base19, %cond.true17 ], [ null, %if.end14 ], !dbg !2826
  %call23 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond22, i32 0) #8, !dbg !2826
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call23, i64 0, i32 1, !dbg !2828
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2828
  %call24 = tail call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %loop, %struct.basic_block_def* %4) #6, !dbg !2829
  %tobool25 = icmp eq i8 %call24, 0, !dbg !2829
  br i1 %tobool25, label %if.end40, label %land.lhs.true, !dbg !2830

land.lhs.true:                                    ; preds = %cond.end21
  %5 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2831
  %tobool27 = icmp eq %struct.VEC_edge_gc* %5, null, !dbg !2831
  br i1 %tobool27, label %cond.end32, label %cond.true28, !dbg !2831

cond.true28:                                      ; preds = %land.lhs.true
  %base30 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %5, i64 0, i32 0, !dbg !2831
  br label %cond.end32, !dbg !2831

cond.end32:                                       ; preds = %land.lhs.true, %cond.true28
  %cond33 = phi %struct.VEC_edge_base* [ %base30, %cond.true28 ], [ null, %land.lhs.true ], !dbg !2831
  %call34 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond33, i32 1) #8, !dbg !2831
  %dest35 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call34, i64 0, i32 1, !dbg !2832
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %dest35, align 8, !dbg !2832
  %call36 = tail call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %loop, %struct.basic_block_def* %6) #6, !dbg !2833
  %tobool38 = icmp eq i8 %call36, 0, !dbg !2833
  br i1 %tobool38, label %if.end40, label %cleanup, !dbg !2834

if.end40:                                         ; preds = %cond.end32, %cond.end21
  %header41 = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !2835
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %header41, align 8, !dbg !2835
  %cmp42 = icmp eq %struct.basic_block_def* %7, %header, !dbg !2837
  br i1 %cmp42, label %if.end48, label %land.lhs.true44, !dbg !2838

land.lhs.true44:                                  ; preds = %if.end40
  %call45 = tail call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %header) #8, !dbg !2839
  %tobool46 = icmp eq i8 %call45, 0, !dbg !2839
  br i1 %tobool46, label %cleanup, label %if.end48, !dbg !2840

if.end48:                                         ; preds = %land.lhs.true44, %if.end40
  %call49 = tail call %union.gimple_statement_d* @last_stmt(%struct.basic_block_def* %header) #6, !dbg !2841
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call49, metadata !2812, metadata !DIExpression()), !dbg !2813
  %call50 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %call49) #8, !dbg !2842
  %cmp51 = icmp eq i32 %call50, 1, !dbg !2844
  br i1 %cmp51, label %if.end54, label %cleanup, !dbg !2845

if.end54:                                         ; preds = %if.end48
  %8 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2846
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #7, !dbg !2846
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %header) #8, !dbg !2846
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %8, i64 24, i1 false), !dbg !2846
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #7, !dbg !2846
  br label %for.cond, !dbg !2848

for.cond:                                         ; preds = %for.inc, %if.end54
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !2811, metadata !DIExpression(DW_OP_deref)), !dbg !2813
  %call55 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %bsi) #8, !dbg !2849
  %tobool56 = icmp eq i8 %call55, 0, !dbg !2851
  br i1 %tobool56, label %for.body, label %cleanup.loopexit, !dbg !2852

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !2811, metadata !DIExpression(DW_OP_deref)), !dbg !2813
  %call57 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %bsi) #8, !dbg !2853
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call57, metadata !2812, metadata !DIExpression()), !dbg !2813
  %call58 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call57) #8, !dbg !2855
  %cmp59 = icmp eq i32 %call58, 4, !dbg !2857
  br i1 %cmp59, label %for.inc, label %if.end62, !dbg !2858

if.end62:                                         ; preds = %for.body
  %call63 = call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %call57) #8, !dbg !2859
  %tobool64 = icmp eq i8 %call63, 0, !dbg !2859
  br i1 %tobool64, label %if.end66, label %for.inc, !dbg !2861

if.end66:                                         ; preds = %if.end62
  %call67 = call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %call57) #8, !dbg !2862
  %tobool68 = icmp eq i8 %call67, 0, !dbg !2862
  br i1 %tobool68, label %if.end70, label %cleanup.loopexit, !dbg !2864

if.end70:                                         ; preds = %if.end66
  %call71 = call i32 @estimate_num_insns(%union.gimple_statement_d* %call57, %struct.eni_weights_d* nonnull @eni_size_weights) #6, !dbg !2865
  %9 = load i32, i32* %limit, align 4, !dbg !2866
  %sub = sub nsw i32 %9, %call71, !dbg !2866
  store i32 %sub, i32* %limit, align 4, !dbg !2866
  %cmp72 = icmp slt i32 %sub, 0, !dbg !2867
  br i1 %cmp72, label %cleanup.loopexit, label %for.inc, !dbg !2869

for.inc:                                          ; preds = %if.end62, %if.end70, %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !2811, metadata !DIExpression(DW_OP_deref)), !dbg !2813
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %bsi) #8, !dbg !2870
  br label %for.cond, !dbg !2871, !llvm.loop !2872

cleanup.loopexit:                                 ; preds = %if.end70, %for.cond, %if.end66
  %retval.0.ph = phi i8 [ 1, %for.cond ], [ 0, %if.end70 ], [ 0, %if.end66 ]
  br label %cleanup, !dbg !2874

cleanup:                                          ; preds = %cleanup.loopexit, %cond.end32, %land.lhs.true44, %if.end48, %cond.end9, %if.end, %entry
  %retval.0 = phi i8 [ 0, %entry ], [ 0, %if.end ], [ 0, %cond.end9 ], [ 0, %cond.end32 ], [ 0, %land.lhs.true44 ], [ 0, %if.end48 ], [ %retval.0.ph, %cleanup.loopexit ], !dbg !2813
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !2874
  ret i8 %retval.0, !dbg !2874
}

declare dso_local zeroext i8 @flow_bb_inside_loop_p(%struct.loop*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2875 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !2881, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2882, metadata !DIExpression()), !dbg !2883
  br label %land.end, !dbg !2884

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2884
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2884
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !2884
  ret %struct.edge_def* %0, !dbg !2884
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2885 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2892, metadata !DIExpression()), !dbg !2893
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !2894
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2894
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !2894
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2894

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !2894
  br label %cond.end, !dbg !2894

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2894
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !2894
  %cmp = icmp eq i32 %call, 1, !dbg !2895
  %conv2 = zext i1 %cmp to i8, !dbg !2894
  ret i8 %conv2, !dbg !2896
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2897 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2901, metadata !DIExpression()), !dbg !2902
  %call = tail call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) #8, !dbg !2903
  %tobool = icmp eq i8 %call, 0, !dbg !2903
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2903

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 655, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2903
  br label %cond.end, !dbg !2903

cond.end:                                         ; preds = %entry, %cond.true
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !2904
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2904
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !2904
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !2904

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !2904
  br label %cond.end5, !dbg !2904

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !2904
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #8, !dbg !2904
  ret %struct.edge_def* %call7, !dbg !2905
}

declare dso_local %struct.basic_block_def* @split_edge(%struct.edge_def*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @loop_preheader_edge(%struct.loop*) local_unnamed_addr #2

declare dso_local zeroext i8 @gimple_duplicate_sese_region(%struct.edge_def*, %struct.edge_def*, %struct.basic_block_def**, i32, %struct.basic_block_def**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2906 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2910, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !2911, metadata !DIExpression()), !dbg !2914
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #8, !dbg !2915
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !2912, metadata !DIExpression()), !dbg !2913
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #8, !dbg !2916
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !2917
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2918
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !2919
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !2920
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !2921
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !2922
  ret void, !dbg !2923
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2924 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2928, metadata !DIExpression()), !dbg !2929
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2930
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2930
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !2931
  %conv1 = zext i1 %cmp to i8, !dbg !2932
  ret i8 %conv1, !dbg !2933
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2934 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2938, metadata !DIExpression()), !dbg !2939
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2940
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2940
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !2941
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2941
  ret %union.gimple_statement_d* %1, !dbg !2942
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2943 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2948, metadata !DIExpression()), !dbg !2949
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !2950
  %bf.load = load i32, i32* %0, align 8, !dbg !2950
  %bf.clear = and i32 %bf.load, 255, !dbg !2950
  ret i32 %bf.clear, !dbg !2951
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_no_warning(%union.gimple_statement_d* %stmt, i8 zeroext %no_warning) unnamed_addr #0 !dbg !2952 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2956, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i8 1, metadata !2957, metadata !DIExpression()), !dbg !2958
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !2959
  %bf.load = load i32, i32* %0, align 8, !dbg !2960
  %bf.set = or i32 %bf.load, 256, !dbg !2960
  store i32 %bf.set, i32* %0, align 8, !dbg !2960
  ret void, !dbg !2961
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2962 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2966, metadata !DIExpression()), !dbg !2967
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !2968
  %cmp = icmp eq i32 %call, 6, !dbg !2969
  %conv1 = zext i1 %cmp to i8, !dbg !2968
  ret i8 %conv1, !dbg !2970
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2971 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2975, metadata !DIExpression()), !dbg !2977
  %call = tail call fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %gs) #8, !dbg !2978
  call void @llvm.dbg.value(metadata i32 %call, metadata !2976, metadata !DIExpression()), !dbg !2977
  %call1 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call) #8, !dbg !2979
  %cmp = icmp eq i32 %call1, 3, !dbg !2981
  br i1 %cmp, label %if.then, label %if.end, !dbg !2982

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) #8, !dbg !2983
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2983
  %bf.load = load i64, i64* %0, align 8, !dbg !2983
  %1 = trunc i64 %bf.load to i32, !dbg !2983
  %bf.cast = and i32 %1, 65535, !dbg !2983
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !2976, metadata !DIExpression()), !dbg !2977
  br label %if.end, !dbg !2984

if.end:                                           ; preds = %if.then, %entry
  %code.0 = phi i32 [ %bf.cast, %if.then ], [ %call, %entry ], !dbg !2977
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !2976, metadata !DIExpression()), !dbg !2977
  ret i32 %code.0, !dbg !2985
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !2986 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2991, metadata !DIExpression()), !dbg !2992
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2993
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2993
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !2994
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !2994
  %2 = load i64, i64* %1, align 8, !dbg !2994
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !2995
  store i64 %2, i64* %3, align 8, !dbg !2995
  ret void, !dbg !2996
}

declare dso_local %struct.edge_def* @loop_latch_edge(%struct.loop*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fel_next(%struct.loop_iterator* %li, %struct.loop** %loop) unnamed_addr #0 !dbg !2997 {
entry:
  %anum = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !3001, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !3002, metadata !DIExpression()), !dbg !3004
  %0 = bitcast i32* %anum to i8*, !dbg !3005
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !3005
  %to_visit = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !3004
  %idx = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 1, !dbg !3004
  br label %while.cond, !dbg !3006

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit, align 8, !dbg !3007
  %tobool = icmp eq %struct.VEC_int_heap* %1, null, !dbg !3007
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3007

cond.true:                                        ; preds = %while.cond
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %1, i64 0, i32 0, !dbg !3007
  br label %cond.end, !dbg !3007

cond.end:                                         ; preds = %while.cond, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %while.cond ], !dbg !3007
  %2 = load i32, i32* %idx, align 8, !dbg !3007
  call void @llvm.dbg.value(metadata i32* %anum, metadata !3003, metadata !DIExpression(DW_OP_deref)), !dbg !3004
  %call = call fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %cond, i32 %2, i32* nonnull %anum) #8, !dbg !3007
  %tobool2 = icmp eq i32 %call, 0, !dbg !3006
  br i1 %tobool2, label %while.end, label %while.body, !dbg !3006

while.body:                                       ; preds = %cond.end
  %3 = load i32, i32* %idx, align 8, !dbg !3008
  %inc = add i32 %3, 1, !dbg !3008
  store i32 %inc, i32* %idx, align 8, !dbg !3008
  %4 = load i32, i32* %anum, align 4, !dbg !3010
  call void @llvm.dbg.value(metadata i32 %4, metadata !3003, metadata !DIExpression()), !dbg !3004
  %call4 = call fastcc %struct.loop* @get_loop(i32 %4) #8, !dbg !3011
  store %struct.loop* %call4, %struct.loop** %loop, align 8, !dbg !3012
  %tobool5 = icmp eq %struct.loop* %call4, null, !dbg !3013
  br i1 %tobool5, label %while.cond, label %cleanup.loopexit, !dbg !3015, !llvm.loop !3016

while.end:                                        ; preds = %cond.end
  call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %to_visit) #8, !dbg !3018
  store %struct.loop* null, %struct.loop** %loop, align 8, !dbg !3019
  br label %cleanup, !dbg !3020

cleanup.loopexit:                                 ; preds = %while.body
  br label %cleanup, !dbg !3020

cleanup:                                          ; preds = %cleanup.loopexit, %while.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !3020
  ret void, !dbg !3020
}

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %vec_) unnamed_addr #0 !dbg !3021 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !3027, metadata !DIExpression()), !dbg !3028
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !3029
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3029

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !3029
  %0 = load i32, i32* %num, align 8, !dbg !3029
  br label %cond.end, !dbg !3029

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3029
  ret i32 %cond, !dbg !3029
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !3030 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !3034, metadata !DIExpression()), !dbg !3035
  %call = tail call i8* @vec_heap_o_reserve_exact(i8* null, i32 %alloc_, i64 8, i64 4) #6, !dbg !3036
  %0 = bitcast i8* %call to %struct.VEC_int_heap*, !dbg !3036
  ret %struct.VEC_int_heap* %0, !dbg !3036
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_iterate(%struct.VEC_loop_p_base* %vec_, i32 %ix_, %struct.loop** %ptr) unnamed_addr #0 !dbg !3037 {
entry:
  unreachable, !dbg !3044
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %vec_, i32 %obj_) unnamed_addr #0 !dbg !3045 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !3050, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !3051, metadata !DIExpression()), !dbg !3053
  %num1 = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !3054
  %0 = load i32, i32* %num1, align 4, !dbg !3054
  %inc = add i32 %0, 1, !dbg !3054
  store i32 %inc, i32* %num1, align 4, !dbg !3054
  %idxprom = zext i32 %0 to i64, !dbg !3054
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3054
  call void @llvm.dbg.value(metadata i32* %arrayidx, metadata !3052, metadata !DIExpression()), !dbg !3053
  store i32 %obj_, i32* %arrayidx, align 4, !dbg !3054
  ret i32* %arrayidx, !dbg !3054
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @loop_outer(%struct.loop* %loop) unnamed_addr #0 !dbg !3055 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3061, metadata !DIExpression()), !dbg !3063
  %superloops = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 7, !dbg !3064
  %0 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !3064
  %tobool = icmp eq %struct.VEC_loop_p_gc* %0, null, !dbg !3064
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3064

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %0, i64 0, i32 0, !dbg !3064
  br label %cond.end, !dbg !3064

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3064
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #8, !dbg !3064
  call void @llvm.dbg.value(metadata i32 %call, metadata !3062, metadata !DIExpression()), !dbg !3063
  %cmp = icmp eq i32 %call, 0, !dbg !3065
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3067

if.end:                                           ; preds = %cond.end
  %1 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !3068
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %1, null, !dbg !3068
  br i1 %tobool3, label %cond.end8, label %cond.true4, !dbg !3068

cond.true4:                                       ; preds = %if.end
  %base6 = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %1, i64 0, i32 0, !dbg !3068
  br label %cond.end8, !dbg !3068

cond.end8:                                        ; preds = %if.end, %cond.true4
  %cond9 = phi %struct.VEC_loop_p_base* [ %base6, %cond.true4 ], [ null, %if.end ], !dbg !3068
  %sub = add i32 %call, -1, !dbg !3068
  %call10 = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond9, i32 %sub) #8, !dbg !3068
  br label %cleanup, !dbg !3069

cleanup:                                          ; preds = %cond.end, %cond.end8
  %retval.0 = phi %struct.loop* [ %call10, %cond.end8 ], [ null, %cond.end ], !dbg !3063
  ret %struct.loop* %retval.0, !dbg !3070
}

declare dso_local i8* @vec_heap_o_reserve_exact(i8*, i32, i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3071 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !3075, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3076, metadata !DIExpression()), !dbg !3077
  br label %land.end, !dbg !3078

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3078
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3078
  %0 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !3078
  ret %struct.loop* %0, !dbg !3078
}

declare dso_local %union.gimple_statement_d* @last_stmt(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @last_and_only_stmt(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local zeroext i8 @optimize_loop_for_size_p(%struct.loop*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !3079 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3083, metadata !DIExpression()), !dbg !3084
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3085
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3085

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3085
  %0 = load i32, i32* %num, align 8, !dbg !3085
  br label %cond.end, !dbg !3085

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3085
  ret i32 %cond, !dbg !3085
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3086 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3088, metadata !DIExpression()), !dbg !3089
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3090
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3090
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3090
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3090

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3090
  br label %cond.end, !dbg !3090

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3090
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !3090
  %cmp = icmp eq i32 %call, 1, !dbg !3091
  %conv2 = zext i1 %cmp to i8, !dbg !3090
  ret i8 %conv2, !dbg !3092
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3093 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3095, metadata !DIExpression()), !dbg !3096
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !3097
  %cmp = icmp eq i32 %call, 2, !dbg !3098
  %conv1 = zext i1 %cmp to i8, !dbg !3097
  ret i8 %conv1, !dbg !3099
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3100 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3102, metadata !DIExpression()), !dbg !3103
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !3104
  %cmp = icmp eq i32 %call, 8, !dbg !3105
  %conv1 = zext i1 %cmp to i8, !dbg !3104
  ret i8 %conv1, !dbg !3106
}

declare dso_local i32 @estimate_num_insns(%union.gimple_statement_d*, %struct.eni_weights_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3107 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3111, metadata !DIExpression()), !dbg !3112
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !3113
  %0 = load i32, i32* %flags, align 8, !dbg !3113
  %and = and i32 %0, 512, !dbg !3114
  %tobool = icmp eq i32 %and, 0, !dbg !3114
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !3115

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !3116
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !3116
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !3117
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !3118

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !3119
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !3119
  br label %cond.end, !dbg !3118

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !3118
  ret %struct.gimple_seq_d* %cond, !dbg !3120
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3121 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3128, metadata !DIExpression()), !dbg !3129
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3130
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3130

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !3131
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !3131
  br label %cond.end, !dbg !3130

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3130
  ret %struct.gimple_seq_node_d* %cond, !dbg !3132
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3133 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3135, metadata !DIExpression()), !dbg !3137
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #8, !dbg !3138
  call void @llvm.dbg.value(metadata i32 %call, metadata !3136, metadata !DIExpression()), !dbg !3137
  switch i32 %call, label %if.else4 [
    i32 6, label %if.then
    i32 1, label %if.then
    i32 8, label %cleanup
  ], !dbg !3139

if.then:                                          ; preds = %entry, %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !3141
  %bf.load = load i32, i32* %0, align 8, !dbg !3141
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !3141
  br label %cleanup, !dbg !3142

if.else4:                                         ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 1446, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3143
  br label %cleanup, !dbg !3145

cleanup:                                          ; preds = %entry, %if.else4, %if.then
  %retval.0 = phi i32 [ %bf.lshr, %if.then ], [ 0, %if.else4 ], [ 59, %entry ], !dbg !3137
  ret i32 %retval.0, !dbg !3146
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 %code) unnamed_addr #0 !dbg !3147 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3151, metadata !DIExpression()), !dbg !3152
  %idxprom = sext i32 %code to i64, !dbg !3153
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimple_rhs_class_table, i64 0, i64 %idxprom, !dbg !3153
  %0 = load i8, i8* %arrayidx, align 1, !dbg !3153
  %conv = zext i8 %0 to i32, !dbg !3154
  ret i32 %conv, !dbg !3155
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3156 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3160, metadata !DIExpression()), !dbg !3161
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #8, !dbg !3162
  ret %union.tree_node* %call, !dbg !3163
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3164 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3168, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i32 1, metadata !3169, metadata !DIExpression()), !dbg !3170
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #8, !dbg !3171
  %tobool = icmp eq i8 %call, 0, !dbg !3171
  br i1 %tobool, label %return, label %if.then, !dbg !3173

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #8, !dbg !3174
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 1, !dbg !3174
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3174
  br label %return, !dbg !3176

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !3177
  ret %union.tree_node* %retval.0, !dbg !3178
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3179 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3181, metadata !DIExpression()), !dbg !3182
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3183
  %cmp = icmp eq i32 %call, 0, !dbg !3184
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !3185

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3186
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3187
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3188
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3189 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3193, metadata !DIExpression()), !dbg !3195
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #8, !dbg !3196
  %idxprom = zext i32 %call to i64, !dbg !3197
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !3197
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3197
  call void @llvm.dbg.value(metadata i64 %0, metadata !3194, metadata !DIExpression()), !dbg !3195
  %cmp = icmp eq i64 %0, 0, !dbg !3198
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3198

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3198
  br label %cond.end, !dbg !3198

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !3199
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !3200
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !3201
  ret %union.tree_node** %2, !dbg !3202
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3203 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3207, metadata !DIExpression()), !dbg !3208
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !3209
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #8, !dbg !3210
  ret i32 %call1, !dbg !3211
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !3212 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3216, metadata !DIExpression()), !dbg !3217
  %idxprom = zext i32 %code to i64, !dbg !3218
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !3218
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3218
  ret i32 %0, !dbg !3219
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %vec_, i32 %ix_, i32* %ptr) unnamed_addr #0 !dbg !3220 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !3226, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3227, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i32* %ptr, metadata !3228, metadata !DIExpression()), !dbg !3229
  %tobool = icmp eq %struct.VEC_int_base* %vec_, null, !dbg !3230
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !3230

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !3230
  %0 = load i32, i32* %num, align 4, !dbg !3230
  %cmp = icmp ugt i32 %0, %ix_, !dbg !3230
  br i1 %cmp, label %if.then, label %if.else, !dbg !3232

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !3233
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3233
  %1 = load i32, i32* %arrayidx, align 4, !dbg !3233
  br label %return, !dbg !3233

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !3235

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ 0, %if.else ], [ %1, %if.then ], !dbg !3237
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !3237
  store i32 %storemerge, i32* %ptr, align 4, !dbg !3237
  ret i32 %retval.0, !dbg !3232
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @get_loop(i32 %num) unnamed_addr #0 !dbg !3238 {
entry:
  call void @llvm.dbg.value(metadata i32 %num, metadata !3242, metadata !DIExpression()), !dbg !3243
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3244
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !3244
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !3244
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !3244
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !3244
  %tobool = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !3244
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3244

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !3244
  br label %cond.end, !dbg !3244

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3244
  %call = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond, i32 %num) #8, !dbg !3244
  ret %struct.loop* %call, !dbg !3245
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %vec_) unnamed_addr #0 !dbg !3246 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !3251, metadata !DIExpression()), !dbg !3252
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !3253
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !3253
  br i1 %tobool, label %if.end, label %if.then, !dbg !3255

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_int_heap* %0 to i8*, !dbg !3255
  tail call void @free(i8* nonnull %1) #6, !dbg !3253
  br label %if.end, !dbg !3253

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %vec_, align 8, !dbg !3255
  ret void, !dbg !3255
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
!llvm.module.flags = !{!2082, !2083, !2084}
!llvm.ident = !{!2085}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_ch", scope: !2, file: !3, line: 266, type: !2056, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !644, globals: !2055, nameTableKind: None)
!3 = !DIFile(filename: "tree-ssa-loop-ch.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !317, !323, !328, !333, !352, !359, !366, !560, !569, !573, !612, !618}
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
!573 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !574, line: 51, baseType: !7, size: 32, elements: !575)
!574 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!575 = !{!576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611}
!576 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!577 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!578 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!579 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!580 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!581 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!582 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!583 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!584 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!585 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!586 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!587 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!588 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!589 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!590 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!591 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!592 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!593 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!594 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!595 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!596 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!597 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!598 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!599 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!600 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!601 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!602 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!603 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!604 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!605 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!606 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!607 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!608 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!609 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!610 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!611 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!612 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_rhs_class", file: !574, line: 80, baseType: !7, size: 32, elements: !613)
!613 = !{!614, !615, !616, !617}
!614 = !DIEnumerator(name: "GIMPLE_INVALID_RHS", value: 0, isUnsigned: true)
!615 = !DIEnumerator(name: "GIMPLE_BINARY_RHS", value: 1, isUnsigned: true)
!616 = !DIEnumerator(name: "GIMPLE_UNARY_RHS", value: 2, isUnsigned: true)
!617 = !DIEnumerator(name: "GIMPLE_SINGLE_RHS", value: 3, isUnsigned: true)
!618 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !574, line: 727, baseType: !7, size: 32, elements: !619)
!619 = !{!620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643}
!620 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!621 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!622 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!623 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!624 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!625 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!626 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!627 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!628 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!629 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!630 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!631 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!632 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!633 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!634 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!635 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!636 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!637 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!638 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!639 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!640 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!641 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!642 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!643 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!644 = !{!645, !646, !647, !648, !651, !652, !654, !2040, !1370, !7, !366, !612, !694, !2053, !718, !1334, !649}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!647 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !650)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !656, line: 111, baseType: !657)
!656 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !318, line: 217, size: 832, elements: !659)
!659 = !{!660, !2007, !2008, !2009, !2010, !2014, !2015, !2016, !2034, !2035, !2036, !2037, !2038, !2039}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !658, file: !318, line: 219, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !318, line: 151, baseType: !663)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !318, line: 151, size: 128, elements: !664)
!664 = !{!665}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !663, file: !318, line: 151, baseType: !666, size: 128)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !318, line: 150, baseType: !667)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !318, line: 150, size: 128, elements: !668)
!668 = !{!669, !670, !671}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !667, file: !318, line: 150, baseType: !7, size: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !667, file: !318, line: 150, baseType: !7, size: 32, offset: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !667, file: !318, line: 150, baseType: !672, size: 64, offset: 64)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, size: 64, elements: !816)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !656, line: 108, baseType: !674)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !318, line: 122, size: 512, elements: !676)
!676 = !{!677, !678, !679, !1999, !2000, !2001, !2002, !2003, !2004, !2005}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !675, file: !318, line: 124, baseType: !657, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !675, file: !318, line: 125, baseType: !657, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !675, file: !318, line: 131, baseType: !680, size: 64, offset: 128)
!680 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !318, line: 128, size: 64, elements: !681)
!681 = !{!682, !1998}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !680, file: !318, line: 129, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !656, line: 66, baseType: !684)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !574, line: 143, size: 192, elements: !686)
!686 = !{!687, !1996, !1997}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !685, file: !574, line: 145, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !656, line: 69, baseType: !689)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !574, line: 136, size: 192, elements: !691)
!691 = !{!692, !1994, !1995}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !690, file: !574, line: 137, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !656, line: 58, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !574, line: 737, size: 768, elements: !696)
!696 = !{!697, !1841, !1851, !1857, !1862, !1867, !1874, !1880, !1886, !1891, !1905, !1910, !1916, !1921, !1931, !1936, !1952, !1959, !1966, !1972, !1977, !1983, !1989}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !695, file: !574, line: 738, baseType: !698, size: 256)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !574, line: 271, size: 256, elements: !699)
!699 = !{!700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !715, !716, !717}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !698, file: !574, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !698, file: !574, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !698, file: !574, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !698, file: !574, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !698, file: !574, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !698, file: !574, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !698, file: !574, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !698, file: !574, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !698, file: !574, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !698, file: !574, line: 312, baseType: !7, size: 32, offset: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !698, file: !574, line: 316, baseType: !711, size: 32, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !712, line: 58, baseType: !713)
!712 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !714, line: 44, baseType: !7)
!714 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!715 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !698, file: !574, line: 319, baseType: !7, size: 32, offset: 96)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !698, file: !574, line: 323, baseType: !657, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !698, file: !574, line: 327, baseType: !718, size: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !656, line: 56, baseType: !719)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !334, line: 3371, size: 1792, elements: !721)
!721 = !{!722, !755, !761, !774, !793, !804, !809, !818, !824, !837, !845, !883, !1091, !1119, !1136, !1137, !1142, !1151, !1157, !1162, !1166, !1170, !1492, !1539, !1545, !1551, !1558, !1571, !1585, !1602, !1614, !1636, !1651, !1823}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !720, file: !334, line: 3372, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !334, line: 360, size: 64, elements: !724)
!724 = !{!725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !723, file: !334, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !723, file: !334, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !723, file: !334, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !723, file: !334, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !723, file: !334, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !723, file: !334, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !723, file: !334, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !723, file: !334, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !723, file: !334, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !723, file: !334, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !723, file: !334, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !723, file: !334, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !723, file: !334, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !723, file: !334, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !723, file: !334, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !723, file: !334, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !723, file: !334, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !723, file: !334, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !723, file: !334, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !723, file: !334, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !723, file: !334, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !723, file: !334, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !723, file: !334, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !723, file: !334, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !723, file: !334, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !723, file: !334, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !723, file: !334, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !723, file: !334, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !723, file: !334, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !723, file: !334, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !720, file: !334, line: 3373, baseType: !756, size: 192)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !334, line: 402, size: 192, elements: !757)
!757 = !{!758, !759, !760}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !756, file: !334, line: 403, baseType: !723, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !756, file: !334, line: 404, baseType: !718, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !756, file: !334, line: 405, baseType: !718, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !720, file: !334, line: 3374, baseType: !762, size: 320)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !334, line: 1384, size: 320, elements: !763)
!763 = !{!764, !765}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !762, file: !334, line: 1385, baseType: !756, size: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !762, file: !334, line: 1386, baseType: !766, size: 128, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !767, line: 58, baseType: !768)
!767 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !767, line: 54, size: 128, elements: !769)
!769 = !{!770, !772}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !768, file: !767, line: 56, baseType: !771, size: 64)
!771 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !768, file: !767, line: 57, baseType: !773, size: 64, offset: 64)
!773 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !720, file: !334, line: 3375, baseType: !775, size: 256)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !334, line: 1397, size: 256, elements: !776)
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !775, file: !334, line: 1398, baseType: !756, size: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !775, file: !334, line: 1399, baseType: !779, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !781, line: 52, size: 256, elements: !782)
!781 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!782 = !{!783, !784, !785, !786, !787, !788, !789}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !780, file: !781, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !780, file: !781, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !780, file: !781, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !780, file: !781, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !780, file: !781, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !780, file: !781, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !780, file: !781, line: 62, baseType: !790, size: 192, offset: 64)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !771, size: 192, elements: !791)
!791 = !{!792}
!792 = !DISubrange(count: 3)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !720, file: !334, line: 3376, baseType: !794, size: 256)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !334, line: 1408, size: 256, elements: !795)
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !794, file: !334, line: 1409, baseType: !756, size: 192)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !794, file: !334, line: 1410, baseType: !798, size: 64, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !800, line: 27, size: 192, elements: !801)
!800 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!801 = !{!802, !803}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !799, file: !800, line: 29, baseType: !766, size: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !799, file: !800, line: 30, baseType: !189, size: 32, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !720, file: !334, line: 3377, baseType: !805, size: 256)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !334, line: 1437, size: 256, elements: !806)
!806 = !{!807, !808}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !805, file: !334, line: 1438, baseType: !756, size: 192)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !805, file: !334, line: 1439, baseType: !718, size: 64, offset: 192)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !720, file: !334, line: 3378, baseType: !810, size: 256)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !334, line: 1418, size: 256, elements: !811)
!811 = !{!812, !813, !814}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !810, file: !334, line: 1419, baseType: !756, size: 192)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !810, file: !334, line: 1420, baseType: !647, size: 32, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !810, file: !334, line: 1421, baseType: !815, size: 8, offset: 224)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !650, size: 8, elements: !816)
!816 = !{!817}
!817 = !DISubrange(count: 1)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !720, file: !334, line: 3379, baseType: !819, size: 320)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !334, line: 1428, size: 320, elements: !820)
!820 = !{!821, !822, !823}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !819, file: !334, line: 1429, baseType: !756, size: 192)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !819, file: !334, line: 1430, baseType: !718, size: 64, offset: 192)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !819, file: !334, line: 1431, baseType: !718, size: 64, offset: 256)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !720, file: !334, line: 3380, baseType: !825, size: 320)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !334, line: 1460, size: 320, elements: !826)
!826 = !{!827, !828}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !825, file: !334, line: 1461, baseType: !756, size: 192)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !825, file: !334, line: 1462, baseType: !829, size: 128, offset: 192)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !830, line: 31, size: 128, elements: !831)
!830 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!831 = !{!832, !835, !836}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !829, file: !830, line: 32, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !646)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !829, file: !830, line: 33, baseType: !7, size: 32, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !829, file: !830, line: 34, baseType: !7, size: 32, offset: 96)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !720, file: !334, line: 3381, baseType: !838, size: 384)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !334, line: 2507, size: 384, elements: !839)
!839 = !{!840, !841, !842, !843, !844}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !838, file: !334, line: 2508, baseType: !756, size: 192)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !838, file: !334, line: 2509, baseType: !711, size: 32, offset: 192)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !838, file: !334, line: 2510, baseType: !7, size: 32, offset: 224)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !838, file: !334, line: 2511, baseType: !718, size: 64, offset: 256)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !838, file: !334, line: 2512, baseType: !718, size: 64, offset: 320)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !720, file: !334, line: 3382, baseType: !846, size: 896)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !334, line: 2652, size: 896, elements: !847)
!847 = !{!848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !846, file: !334, line: 2653, baseType: !838, size: 384)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !846, file: !334, line: 2654, baseType: !718, size: 64, offset: 384)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !846, file: !334, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !846, file: !334, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !846, file: !334, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !846, file: !334, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !846, file: !334, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !846, file: !334, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !846, file: !334, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !846, file: !334, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !846, file: !334, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !846, file: !334, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !846, file: !334, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !846, file: !334, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !846, file: !334, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !846, file: !334, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !846, file: !334, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !846, file: !334, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !846, file: !334, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !846, file: !334, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !846, file: !334, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !846, file: !334, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !846, file: !334, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !846, file: !334, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !846, file: !334, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !846, file: !334, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !846, file: !334, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !846, file: !334, line: 2703, baseType: !7, size: 32, offset: 512)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !846, file: !334, line: 2705, baseType: !718, size: 64, offset: 576)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !846, file: !334, line: 2706, baseType: !718, size: 64, offset: 640)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !846, file: !334, line: 2707, baseType: !718, size: 64, offset: 704)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !846, file: !334, line: 2708, baseType: !718, size: 64, offset: 768)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !846, file: !334, line: 2711, baseType: !881, size: 64, offset: 832)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !334, line: 2711, flags: DIFlagFwdDecl)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !720, file: !334, line: 3383, baseType: !884, size: 960)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !334, line: 2756, size: 960, elements: !885)
!885 = !{!886, !887}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !884, file: !334, line: 2757, baseType: !846, size: 896)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !884, file: !334, line: 2758, baseType: !888, size: 64, offset: 896)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !656, line: 50, baseType: !889)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !891, line: 240, size: 384, elements: !892)
!891 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!892 = !{!893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !890, file: !891, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !890, file: !891, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !890, file: !891, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !890, file: !891, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !890, file: !891, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !890, file: !891, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !890, file: !891, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !890, file: !891, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !890, file: !891, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !890, file: !891, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !890, file: !891, line: 321, baseType: !904, size: 320, offset: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !891, line: 315, size: 320, elements: !905)
!905 = !{!906, !1024, !1026, !1089, !1090}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !904, file: !891, line: 316, baseType: !907, size: 64)
!907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !908, size: 64, elements: !816)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !891, line: 183, baseType: !909)
!909 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !891, line: 166, size: 64, elements: !910)
!910 = !{!911, !912, !913, !914, !915, !923, !924, !936, !939, !999, !1000, !1001, !1014, !1021}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !909, file: !891, line: 168, baseType: !647, size: 32)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !909, file: !891, line: 169, baseType: !7, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !909, file: !891, line: 170, baseType: !652, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !909, file: !891, line: 171, baseType: !888, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !909, file: !891, line: 172, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !656, line: 53, baseType: !917)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !891, line: 359, size: 128, elements: !919)
!919 = !{!920, !921}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !918, file: !891, line: 360, baseType: !647, size: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !918, file: !891, line: 361, baseType: !922, size: 64, offset: 64)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !888, size: 64, elements: !816)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !909, file: !891, line: 173, baseType: !189, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !909, file: !891, line: 174, baseType: !925, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !891, line: 133, baseType: !926)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !891, line: 115, size: 32, elements: !927)
!927 = !{!928, !929, !930, !931, !932, !933, !934, !935}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !926, file: !891, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !926, file: !891, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !926, file: !891, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !926, file: !891, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !926, file: !891, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !926, file: !891, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !926, file: !891, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !926, file: !891, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !909, file: !891, line: 175, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !891, line: 175, flags: DIFlagFwdDecl)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !909, file: !891, line: 176, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !942, line: 75, size: 256, elements: !943)
!942 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!943 = !{!944, !958, !959, !960}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !941, file: !942, line: 76, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !942, line: 68, baseType: !947)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !942, line: 63, size: 320, elements: !948)
!948 = !{!949, !951, !952, !953}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !947, file: !942, line: 64, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !947, file: !942, line: 65, baseType: !950, size: 64, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !947, file: !942, line: 66, baseType: !7, size: 32, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !947, file: !942, line: 67, baseType: !954, size: 128, offset: 192)
!954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !955, size: 128, elements: !956)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !942, line: 29, baseType: !771)
!956 = !{!957}
!957 = !DISubrange(count: 2)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !941, file: !942, line: 77, baseType: !945, size: 64, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !941, file: !942, line: 78, baseType: !7, size: 32, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !941, file: !942, line: 79, baseType: !961, size: 64, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !942, line: 49, baseType: !963)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !942, line: 45, size: 832, elements: !964)
!964 = !{!965, !966, !967}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !963, file: !942, line: 46, baseType: !950, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !963, file: !942, line: 47, baseType: !940, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !963, file: !942, line: 48, baseType: !968, size: 704, offset: 128)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !969, line: 164, size: 704, elements: !970)
!969 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!970 = !{!971, !972, !982, !983, !984, !985, !986, !987, !991, !995, !996, !997, !998}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !968, file: !969, line: 166, baseType: !773, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !968, file: !969, line: 167, baseType: !973, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !969, line: 157, size: 192, elements: !975)
!975 = !{!976, !977, !978}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !974, file: !969, line: 159, baseType: !649, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !974, file: !969, line: 160, baseType: !973, size: 64, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !974, file: !969, line: 161, baseType: !979, size: 32, offset: 128)
!979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !650, size: 32, elements: !980)
!980 = !{!981}
!981 = !DISubrange(count: 4)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !968, file: !969, line: 168, baseType: !649, size: 64, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !968, file: !969, line: 169, baseType: !649, size: 64, offset: 192)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !968, file: !969, line: 170, baseType: !649, size: 64, offset: 256)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !968, file: !969, line: 171, baseType: !773, size: 64, offset: 320)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !968, file: !969, line: 172, baseType: !647, size: 32, offset: 384)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !968, file: !969, line: 176, baseType: !988, size: 64, offset: 448)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{!973, !651, !773}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !968, file: !969, line: 177, baseType: !992, size: 64, offset: 512)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{null, !651, !973}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !968, file: !969, line: 178, baseType: !651, size: 64, offset: 576)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !968, file: !969, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !968, file: !969, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !968, file: !969, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !909, file: !891, line: 177, baseType: !718, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !909, file: !891, line: 178, baseType: !657, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !909, file: !891, line: 179, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !891, line: 150, baseType: !1004)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !891, line: 142, size: 320, elements: !1005)
!1005 = !{!1006, !1007, !1008, !1009, !1012, !1013}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1004, file: !891, line: 144, baseType: !718, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1004, file: !891, line: 145, baseType: !888, size: 64, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1004, file: !891, line: 146, baseType: !888, size: 64, offset: 128)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1004, file: !891, line: 147, baseType: !1010, size: 32, offset: 192)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1011, line: 31, baseType: !647)
!1011 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1004, file: !891, line: 148, baseType: !7, size: 32, offset: 224)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1004, file: !891, line: 149, baseType: !646, size: 8, offset: 256)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !909, file: !891, line: 180, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !891, line: 162, baseType: !1017)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !891, line: 159, size: 128, elements: !1018)
!1018 = !{!1019, !1020}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1017, file: !891, line: 160, baseType: !718, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1017, file: !891, line: 161, baseType: !773, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !909, file: !891, line: 181, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !891, line: 181, flags: DIFlagFwdDecl)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !904, file: !891, line: 317, baseType: !1025, size: 64)
!1025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !773, size: 64, elements: !816)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !904, file: !891, line: 318, baseType: !1027, size: 320)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !891, line: 188, size: 320, elements: !1028)
!1028 = !{!1029, !1031, !1088}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1027, file: !891, line: 190, baseType: !1030, size: 192)
!1030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !908, size: 192, elements: !791)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1027, file: !891, line: 193, baseType: !1032, size: 64, offset: 192)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !891, line: 206, size: 320, elements: !1034)
!1034 = !{!1035, !1073, !1074, !1075, !1087}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1033, file: !891, line: 208, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !656, line: 62, baseType: !1038)
!1038 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1039, line: 538, size: 256, elements: !1040)
!1039 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1040 = !{!1041, !1045, !1051, !1064}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1038, file: !1039, line: 539, baseType: !1042, size: 32)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1039, line: 482, size: 32, elements: !1043)
!1043 = !{!1044}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1042, file: !1039, line: 484, baseType: !7, size: 32)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1038, file: !1039, line: 540, baseType: !1046, size: 192)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1039, line: 488, size: 192, elements: !1047)
!1047 = !{!1048, !1049, !1050}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1046, file: !1039, line: 489, baseType: !1042, size: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1046, file: !1039, line: 492, baseType: !652, size: 64, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1046, file: !1039, line: 496, baseType: !718, size: 64, offset: 128)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1038, file: !1039, line: 541, baseType: !1052, size: 256)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1039, line: 504, size: 256, elements: !1053)
!1053 = !{!1054, !1055, !1062, !1063}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1052, file: !1039, line: 505, baseType: !1042, size: 32)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1052, file: !1039, line: 509, baseType: !1056, size: 64, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1039, line: 501, baseType: !1057)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{null, !1060}
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1052, file: !1039, line: 510, baseType: !1060, size: 64, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1052, file: !1039, line: 513, baseType: !1036, size: 64, offset: 192)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1038, file: !1039, line: 542, baseType: !1065, size: 128)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1039, line: 530, size: 128, elements: !1066)
!1066 = !{!1067, !1068}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1065, file: !1039, line: 531, baseType: !1042, size: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1065, file: !1039, line: 534, baseType: !1069, size: 64, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1039, line: 525, baseType: !1070)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!646, !718, !652, !771, !771}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1033, file: !891, line: 211, baseType: !7, size: 32, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1033, file: !891, line: 214, baseType: !773, size: 64, offset: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1033, file: !891, line: 224, baseType: !1076, size: 64, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !891, line: 202, baseType: !1078)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !891, line: 202, size: 128, elements: !1079)
!1079 = !{!1080}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1078, file: !891, line: 202, baseType: !1081, size: 128)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !891, line: 200, baseType: !1082)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !891, line: 200, size: 128, elements: !1083)
!1083 = !{!1084, !1085, !1086}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1082, file: !891, line: 200, baseType: !7, size: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1082, file: !891, line: 200, baseType: !7, size: 32, offset: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1082, file: !891, line: 200, baseType: !922, size: 64, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1033, file: !891, line: 234, baseType: !1076, size: 64, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1027, file: !891, line: 197, baseType: !773, size: 64, offset: 256)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !904, file: !891, line: 319, baseType: !780, size: 256)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !904, file: !891, line: 320, baseType: !799, size: 192)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !720, file: !334, line: 3384, baseType: !1092, size: 1472)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !334, line: 3114, size: 1472, elements: !1093)
!1093 = !{!1094, !1115, !1116, !1117, !1118}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1092, file: !334, line: 3115, baseType: !1095, size: 1216)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !334, line: 2984, size: 1216, elements: !1096)
!1096 = !{!1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1095, file: !334, line: 2985, baseType: !884, size: 960)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1095, file: !334, line: 2986, baseType: !718, size: 64, offset: 960)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1095, file: !334, line: 2987, baseType: !718, size: 64, offset: 1024)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1095, file: !334, line: 2988, baseType: !718, size: 64, offset: 1088)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1095, file: !334, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1095, file: !334, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1095, file: !334, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1095, file: !334, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1095, file: !334, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1095, file: !334, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1095, file: !334, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1095, file: !334, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1095, file: !334, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1095, file: !334, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1095, file: !334, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1095, file: !334, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1095, file: !334, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1095, file: !334, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1092, file: !334, line: 3117, baseType: !718, size: 64, offset: 1216)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1092, file: !334, line: 3119, baseType: !718, size: 64, offset: 1280)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1092, file: !334, line: 3121, baseType: !718, size: 64, offset: 1344)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1092, file: !334, line: 3123, baseType: !718, size: 64, offset: 1408)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !720, file: !334, line: 3385, baseType: !1120, size: 1088)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !334, line: 2874, size: 1088, elements: !1121)
!1121 = !{!1122, !1123, !1124}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1120, file: !334, line: 2875, baseType: !884, size: 960)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1120, file: !334, line: 2876, baseType: !888, size: 64, offset: 960)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1120, file: !334, line: 2877, baseType: !1125, size: 64, offset: 1024)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1127, line: 172, size: 128, elements: !1128)
!1127 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1128 = !{!1129, !1130, !1131, !1132, !1133, !1134, !1135}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1126, file: !1127, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1126, file: !1127, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1126, file: !1127, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1126, file: !1127, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1126, file: !1127, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1126, file: !1127, line: 195, baseType: !7, size: 32, offset: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1126, file: !1127, line: 199, baseType: !718, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !720, file: !334, line: 3386, baseType: !1095, size: 1216)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !720, file: !334, line: 3387, baseType: !1138, size: 1280)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !334, line: 3093, size: 1280, elements: !1139)
!1139 = !{!1140, !1141}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1138, file: !334, line: 3094, baseType: !1095, size: 1216)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1138, file: !334, line: 3095, baseType: !1125, size: 64, offset: 1216)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !720, file: !334, line: 3388, baseType: !1143, size: 1216)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !334, line: 2824, size: 1216, elements: !1144)
!1144 = !{!1145, !1146, !1147, !1148, !1149, !1150}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1143, file: !334, line: 2825, baseType: !846, size: 896)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1143, file: !334, line: 2827, baseType: !718, size: 64, offset: 896)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1143, file: !334, line: 2828, baseType: !718, size: 64, offset: 960)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1143, file: !334, line: 2829, baseType: !718, size: 64, offset: 1024)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1143, file: !334, line: 2830, baseType: !718, size: 64, offset: 1088)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1143, file: !334, line: 2831, baseType: !718, size: 64, offset: 1152)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !720, file: !334, line: 3389, baseType: !1152, size: 1024)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !334, line: 2850, size: 1024, elements: !1153)
!1153 = !{!1154, !1155, !1156}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1152, file: !334, line: 2851, baseType: !884, size: 960)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1152, file: !334, line: 2852, baseType: !647, size: 32, offset: 960)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1152, file: !334, line: 2853, baseType: !647, size: 32, offset: 992)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !720, file: !334, line: 3390, baseType: !1158, size: 1024)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !334, line: 2857, size: 1024, elements: !1159)
!1159 = !{!1160, !1161}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1158, file: !334, line: 2858, baseType: !884, size: 960)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1158, file: !334, line: 2859, baseType: !1125, size: 64, offset: 960)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !720, file: !334, line: 3391, baseType: !1163, size: 960)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !334, line: 2862, size: 960, elements: !1164)
!1164 = !{!1165}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1163, file: !334, line: 2863, baseType: !884, size: 960)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !720, file: !334, line: 3392, baseType: !1167, size: 1472)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !334, line: 3304, size: 1472, elements: !1168)
!1168 = !{!1169}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1167, file: !334, line: 3305, baseType: !1092, size: 1472)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !720, file: !334, line: 3393, baseType: !1171, size: 1792)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !334, line: 3248, size: 1792, elements: !1172)
!1172 = !{!1173, !1174, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1171, file: !334, line: 3249, baseType: !1092, size: 1472)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1171, file: !334, line: 3251, baseType: !1175, size: 64, offset: 1472)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1177, line: 463, size: 1152, elements: !1178)
!1177 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1178 = !{!1179, !1182, !1212, !1213, !1352, !1415, !1416, !1417, !1418, !1419, !1420, !1444, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1176, file: !1177, line: 464, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1177, line: 464, flags: DIFlagFwdDecl)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1176, file: !1177, line: 467, baseType: !1183, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !318, line: 374, size: 640, elements: !1185)
!1185 = !{!1186, !1187, !1188, !1201, !1202, !1203, !1204, !1205, !1206, !1208, !1210, !1211}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1184, file: !318, line: 377, baseType: !655, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1184, file: !318, line: 378, baseType: !655, size: 64, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1184, file: !318, line: 381, baseType: !1189, size: 64, offset: 128)
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
!1200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, size: 64, elements: !816)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1184, file: !318, line: 384, baseType: !647, size: 32, offset: 192)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1184, file: !318, line: 387, baseType: !647, size: 32, offset: 224)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1184, file: !318, line: 390, baseType: !647, size: 32, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1184, file: !318, line: 394, baseType: !1189, size: 64, offset: 320)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1184, file: !318, line: 396, baseType: !317, size: 32, offset: 384)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1184, file: !318, line: 399, baseType: !1207, size: 64, offset: 416)
!1207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 64, elements: !956)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1184, file: !318, line: 402, baseType: !1209, size: 64, offset: 480)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !956)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1184, file: !318, line: 406, baseType: !647, size: 32, offset: 544)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1184, file: !318, line: 409, baseType: !647, size: 32, offset: 576)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1176, file: !1177, line: 470, baseType: !684, size: 64, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1176, file: !1177, line: 473, baseType: !1214, size: 64, offset: 192)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1127, line: 39, size: 1152, elements: !1216)
!1216 = !{!1217, !1267, !1280, !1293, !1294, !1306, !1307, !1311, !1312, !1313, !1314, !1315}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1215, file: !1127, line: 41, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1219, line: 144, baseType: !1220)
!1219 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1219, line: 100, size: 896, elements: !1222)
!1222 = !{!1223, !1229, !1234, !1239, !1241, !1244, !1245, !1246, !1247, !1248, !1253, !1255, !1256, !1261, !1266}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1221, file: !1219, line: 102, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1219, line: 52, baseType: !1225)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!1228, !1060}
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1219, line: 47, baseType: !7)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1221, file: !1219, line: 105, baseType: !1230, size: 64, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1219, line: 59, baseType: !1231)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!647, !1060, !1060}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1221, file: !1219, line: 108, baseType: !1235, size: 64, offset: 128)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1219, line: 63, baseType: !1236)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{null, !651}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1221, file: !1219, line: 111, baseType: !1240, size: 64, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1221, file: !1219, line: 114, baseType: !1242, size: 64, offset: 256)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1243, line: 46, baseType: !771)
!1243 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1221, file: !1219, line: 117, baseType: !1242, size: 64, offset: 320)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1221, file: !1219, line: 120, baseType: !1242, size: 64, offset: 384)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1221, file: !1219, line: 124, baseType: !7, size: 32, offset: 448)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1221, file: !1219, line: 128, baseType: !7, size: 32, offset: 480)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1221, file: !1219, line: 131, baseType: !1249, size: 64, offset: 512)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1219, line: 75, baseType: !1250)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!651, !1242, !1242}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1221, file: !1219, line: 132, baseType: !1254, size: 64, offset: 576)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1219, line: 78, baseType: !1236)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1221, file: !1219, line: 135, baseType: !651, size: 64, offset: 640)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1221, file: !1219, line: 136, baseType: !1257, size: 64, offset: 704)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1219, line: 82, baseType: !1258)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!651, !651, !1242, !1242}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1221, file: !1219, line: 137, baseType: !1262, size: 64, offset: 768)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1219, line: 83, baseType: !1263)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{null, !651, !651}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1221, file: !1219, line: 141, baseType: !7, size: 32, offset: 832)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1215, file: !1127, line: 48, baseType: !1268, size: 64, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !574, line: 35, baseType: !1270)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !574, line: 35, size: 128, elements: !1271)
!1271 = !{!1272}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1270, file: !574, line: 35, baseType: !1273, size: 128)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !574, line: 33, baseType: !1274)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !574, line: 33, size: 128, elements: !1275)
!1275 = !{!1276, !1277, !1278}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1274, file: !574, line: 33, baseType: !7, size: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1274, file: !574, line: 33, baseType: !7, size: 32, offset: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1274, file: !574, line: 33, baseType: !1279, size: 64, offset: 64)
!1279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !693, size: 64, elements: !816)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1215, file: !1127, line: 51, baseType: !1281, size: 64, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !334, line: 183, baseType: !1283)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !334, line: 183, size: 128, elements: !1284)
!1284 = !{!1285}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1283, file: !334, line: 183, baseType: !1286, size: 128)
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !334, line: 182, baseType: !1287)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !334, line: 182, size: 128, elements: !1288)
!1288 = !{!1289, !1290, !1291}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1287, file: !334, line: 182, baseType: !7, size: 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1287, file: !334, line: 182, baseType: !7, size: 32, offset: 32)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1287, file: !334, line: 182, baseType: !1292, size: 64, offset: 64)
!1292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !718, size: 64, elements: !816)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1215, file: !1127, line: 54, baseType: !718, size: 64, offset: 192)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1215, file: !1127, line: 57, baseType: !1295, size: 128, offset: 256)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1296, line: 31, size: 128, elements: !1297)
!1296 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1297 = !{!1298, !1299, !1300, !1301, !1302, !1303, !1304}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1295, file: !1296, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1295, file: !1296, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1295, file: !1296, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1295, file: !1296, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1295, file: !1296, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1295, file: !1296, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1295, file: !1296, line: 56, baseType: !1305, size: 64, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !656, line: 47, baseType: !940)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1215, file: !1127, line: 60, baseType: !1295, size: 128, offset: 384)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1215, file: !1127, line: 64, baseType: !1308, size: 64, offset: 512)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1310, line: 33, flags: DIFlagFwdDecl)
!1310 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1215, file: !1127, line: 67, baseType: !718, size: 64, offset: 576)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1215, file: !1127, line: 73, baseType: !1218, size: 64, offset: 640)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1215, file: !1127, line: 77, baseType: !1305, size: 64, offset: 704)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1215, file: !1127, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1215, file: !1127, line: 82, baseType: !1316, size: 320, offset: 832)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !1317, line: 62, size: 320, elements: !1318)
!1317 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1318 = !{!1319, !1325, !1326, !1327, !1328, !1335}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1316, file: !1317, line: 63, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !1317, line: 56, size: 128, elements: !1322)
!1322 = !{!1323, !1324}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1321, file: !1317, line: 57, baseType: !1320, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1321, file: !1317, line: 58, baseType: !815, size: 8, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1316, file: !1317, line: 64, baseType: !7, size: 32, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1316, file: !1317, line: 66, baseType: !7, size: 32, offset: 96)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1316, file: !1317, line: 68, baseType: !646, size: 8, offset: 128)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1316, file: !1317, line: 70, baseType: !1329, size: 64, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !1317, line: 37, size: 128, elements: !1331)
!1331 = !{!1332, !1333}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1330, file: !1317, line: 39, baseType: !1329, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1330, file: !1317, line: 40, baseType: !1334, size: 64, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1316, file: !1317, line: 71, baseType: !1336, size: 64, offset: 256)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !1317, line: 45, size: 320, elements: !1338)
!1338 = !{!1339, !1340}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1337, file: !1317, line: 47, baseType: !1336, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1337, file: !1317, line: 48, baseType: !1341, size: 256, offset: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !334, line: 1883, size: 256, elements: !1342)
!1342 = !{!1343, !1345, !1346, !1351}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1341, file: !334, line: 1884, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1341, file: !334, line: 1885, baseType: !1344, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1341, file: !334, line: 1891, baseType: !1347, size: 64, offset: 128)
!1347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1341, file: !334, line: 1891, size: 64, elements: !1348)
!1348 = !{!1349, !1350}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1347, file: !334, line: 1891, baseType: !693, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1347, file: !334, line: 1891, baseType: !718, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1341, file: !334, line: 1892, baseType: !1334, size: 64, offset: 192)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1176, file: !1177, line: 476, baseType: !1353, size: 64, offset: 256)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !561, line: 187, size: 256, elements: !1355)
!1355 = !{!1356, !1357, !1413, !1414}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1354, file: !561, line: 189, baseType: !647, size: 32)
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
!1369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1370, size: 64, elements: !816)
!1370 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !561, line: 84, baseType: !1371)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !561, line: 100, size: 1216, elements: !1373)
!1373 = !{!1374, !1375, !1376, !1377, !1378, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1403, !1411, !1412}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1372, file: !561, line: 102, baseType: !647, size: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !1372, file: !561, line: 105, baseType: !7, size: 32, offset: 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1372, file: !561, line: 108, baseType: !657, size: 64, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !1372, file: !561, line: 111, baseType: !657, size: 64, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !1372, file: !561, line: 114, baseType: !1379, size: 64, offset: 192)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !561, line: 41, size: 64, elements: !1380)
!1380 = !{!1381, !1382}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !1379, file: !561, line: 42, baseType: !560, size: 32)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !1379, file: !561, line: 43, baseType: !7, size: 32, offset: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !1372, file: !561, line: 117, baseType: !7, size: 32, offset: 256)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !1372, file: !561, line: 120, baseType: !7, size: 32, offset: 288)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !1372, file: !561, line: 123, baseType: !1358, size: 64, offset: 320)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1372, file: !561, line: 126, baseType: !1371, size: 64, offset: 384)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1372, file: !561, line: 129, baseType: !1371, size: 64, offset: 448)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1372, file: !561, line: 132, baseType: !651, size: 64, offset: 512)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !1372, file: !561, line: 139, baseType: !718, size: 64, offset: 576)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !1372, file: !561, line: 143, baseType: !766, size: 128, offset: 640)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !1372, file: !561, line: 146, baseType: !766, size: 128, offset: 768)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !1372, file: !561, line: 148, baseType: !646, size: 8, offset: 896)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !1372, file: !561, line: 149, baseType: !646, size: 8, offset: 904)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !1372, file: !561, line: 153, baseType: !569, size: 32, offset: 928)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !1372, file: !561, line: 156, baseType: !1396, size: 64, offset: 960)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !561, line: 48, size: 320, elements: !1398)
!1398 = !{!1399, !1400, !1401, !1402}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1397, file: !561, line: 50, baseType: !693, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1397, file: !561, line: 59, baseType: !766, size: 128, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1397, file: !561, line: 64, baseType: !646, size: 8, offset: 192)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1397, file: !561, line: 67, baseType: !1396, size: 64, offset: 256)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1372, file: !561, line: 159, baseType: !1404, size: 64, offset: 1024)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !561, line: 72, size: 256, elements: !1406)
!1406 = !{!1407, !1408, !1409, !1410}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1405, file: !561, line: 74, baseType: !674, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1405, file: !561, line: 77, baseType: !1404, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1405, file: !561, line: 78, baseType: !1404, size: 64, offset: 128)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1405, file: !561, line: 81, baseType: !1404, size: 64, offset: 192)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !1372, file: !561, line: 162, baseType: !646, size: 8, offset: 1088)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !1372, file: !561, line: 166, baseType: !718, size: 64, offset: 1152)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1354, file: !561, line: 197, baseType: !1218, size: 64, offset: 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1354, file: !561, line: 200, baseType: !1371, size: 64, offset: 192)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1176, file: !1177, line: 479, baseType: !1218, size: 64, offset: 320)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1176, file: !1177, line: 484, baseType: !718, size: 64, offset: 384)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1176, file: !1177, line: 488, baseType: !718, size: 64, offset: 448)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1176, file: !1177, line: 493, baseType: !718, size: 64, offset: 512)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1176, file: !1177, line: 496, baseType: !718, size: 64, offset: 576)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1176, file: !1177, line: 501, baseType: !1421, size: 64, offset: 640)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !329, line: 2355, size: 576, elements: !1423)
!1423 = !{!1424, !1427, !1428, !1429, !1430, !1432, !1433, !1438, !1439, !1440, !1441, !1442, !1443}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1422, file: !329, line: 2356, baseType: !1425, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !329, line: 2356, flags: DIFlagFwdDecl)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1422, file: !329, line: 2357, baseType: !652, size: 64, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1422, file: !329, line: 2358, baseType: !647, size: 32, offset: 128)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1422, file: !329, line: 2359, baseType: !647, size: 32, offset: 160)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1422, file: !329, line: 2360, baseType: !1431, size: 128, offset: 192)
!1431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 128, elements: !980)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1422, file: !329, line: 2364, baseType: !647, size: 32, offset: 320)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1422, file: !329, line: 2367, baseType: !1434, size: 128, offset: 384)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !329, line: 2349, size: 128, elements: !1435)
!1435 = !{!1436, !1437}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1434, file: !329, line: 2351, baseType: !888, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1434, file: !329, line: 2352, baseType: !773, size: 64, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1422, file: !329, line: 2371, baseType: !328, size: 32, offset: 512)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1422, file: !329, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1422, file: !329, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1422, file: !329, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1422, file: !329, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1422, file: !329, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1176, file: !1177, line: 504, baseType: !1445, size: 64, offset: 704)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1177, line: 504, flags: DIFlagFwdDecl)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1176, file: !1177, line: 507, baseType: !1218, size: 64, offset: 768)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1176, file: !1177, line: 510, baseType: !647, size: 32, offset: 832)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1176, file: !1177, line: 513, baseType: !647, size: 32, offset: 864)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1176, file: !1177, line: 516, baseType: !711, size: 32, offset: 896)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1176, file: !1177, line: 519, baseType: !711, size: 32, offset: 928)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1176, file: !1177, line: 522, baseType: !7, size: 32, offset: 960)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1176, file: !1177, line: 523, baseType: !7, size: 32, offset: 992)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1176, file: !1177, line: 528, baseType: !652, size: 64, offset: 1024)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1176, file: !1177, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1176, file: !1177, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1176, file: !1177, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1176, file: !1177, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1176, file: !1177, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1176, file: !1177, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1176, file: !1177, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1176, file: !1177, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1176, file: !1177, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1176, file: !1177, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1176, file: !1177, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1176, file: !1177, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1176, file: !1177, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1176, file: !1177, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1176, file: !1177, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1176, file: !1177, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1171, file: !334, line: 3254, baseType: !718, size: 64, offset: 1536)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1171, file: !334, line: 3257, baseType: !718, size: 64, offset: 1600)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1171, file: !334, line: 3258, baseType: !718, size: 64, offset: 1664)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1171, file: !334, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1171, file: !334, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1171, file: !334, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1171, file: !334, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1171, file: !334, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1171, file: !334, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1171, file: !334, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1171, file: !334, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1171, file: !334, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1171, file: !334, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1171, file: !334, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1171, file: !334, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1171, file: !334, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1171, file: !334, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1171, file: !334, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1171, file: !334, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1171, file: !334, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1171, file: !334, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !720, file: !334, line: 3394, baseType: !1493, size: 1344)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !334, line: 2279, size: 1344, elements: !1494)
!1494 = !{!1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1493, file: !334, line: 2280, baseType: !756, size: 192)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1493, file: !334, line: 2281, baseType: !718, size: 64, offset: 192)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1493, file: !334, line: 2282, baseType: !718, size: 64, offset: 256)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1493, file: !334, line: 2283, baseType: !718, size: 64, offset: 320)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1493, file: !334, line: 2284, baseType: !718, size: 64, offset: 384)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1493, file: !334, line: 2285, baseType: !7, size: 32, offset: 448)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1493, file: !334, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1493, file: !334, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1493, file: !334, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1493, file: !334, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1493, file: !334, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1493, file: !334, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1493, file: !334, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1493, file: !334, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1493, file: !334, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1493, file: !334, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1493, file: !334, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1493, file: !334, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1493, file: !334, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1493, file: !334, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1493, file: !334, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1493, file: !334, line: 2305, baseType: !7, size: 32, offset: 512)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1493, file: !334, line: 2306, baseType: !1010, size: 32, offset: 544)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1493, file: !334, line: 2307, baseType: !718, size: 64, offset: 576)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1493, file: !334, line: 2308, baseType: !718, size: 64, offset: 640)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1493, file: !334, line: 2314, baseType: !1521, size: 64, offset: 704)
!1521 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !334, line: 2309, size: 64, elements: !1522)
!1522 = !{!1523, !1524, !1525}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1521, file: !334, line: 2310, baseType: !647, size: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1521, file: !334, line: 2311, baseType: !652, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1521, file: !334, line: 2312, baseType: !1526, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !334, line: 2277, flags: DIFlagFwdDecl)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1493, file: !334, line: 2315, baseType: !718, size: 64, offset: 768)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1493, file: !334, line: 2316, baseType: !718, size: 64, offset: 832)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1493, file: !334, line: 2317, baseType: !718, size: 64, offset: 896)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1493, file: !334, line: 2318, baseType: !718, size: 64, offset: 960)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1493, file: !334, line: 2319, baseType: !718, size: 64, offset: 1024)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1493, file: !334, line: 2320, baseType: !718, size: 64, offset: 1088)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1493, file: !334, line: 2321, baseType: !718, size: 64, offset: 1152)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1493, file: !334, line: 2322, baseType: !718, size: 64, offset: 1216)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1493, file: !334, line: 2324, baseType: !1537, size: 64, offset: 1280)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !334, line: 2324, flags: DIFlagFwdDecl)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !720, file: !334, line: 3395, baseType: !1540, size: 320)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !334, line: 1469, size: 320, elements: !1541)
!1541 = !{!1542, !1543, !1544}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1540, file: !334, line: 1470, baseType: !756, size: 192)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1540, file: !334, line: 1471, baseType: !718, size: 64, offset: 192)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1540, file: !334, line: 1472, baseType: !718, size: 64, offset: 256)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !720, file: !334, line: 3396, baseType: !1546, size: 320)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !334, line: 1482, size: 320, elements: !1547)
!1547 = !{!1548, !1549, !1550}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1546, file: !334, line: 1483, baseType: !756, size: 192)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1546, file: !334, line: 1484, baseType: !647, size: 32, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1546, file: !334, line: 1485, baseType: !1292, size: 64, offset: 256)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !720, file: !334, line: 3397, baseType: !1552, size: 384)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !334, line: 1829, size: 384, elements: !1553)
!1553 = !{!1554, !1555, !1556, !1557}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1552, file: !334, line: 1830, baseType: !756, size: 192)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1552, file: !334, line: 1831, baseType: !711, size: 32, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1552, file: !334, line: 1832, baseType: !718, size: 64, offset: 256)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1552, file: !334, line: 1835, baseType: !1292, size: 64, offset: 320)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !720, file: !334, line: 3398, baseType: !1559, size: 704)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !334, line: 1898, size: 704, elements: !1560)
!1560 = !{!1561, !1562, !1563, !1564, !1565, !1570}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1559, file: !334, line: 1899, baseType: !756, size: 192)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1559, file: !334, line: 1902, baseType: !718, size: 64, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1559, file: !334, line: 1905, baseType: !693, size: 64, offset: 256)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1559, file: !334, line: 1908, baseType: !7, size: 32, offset: 320)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1559, file: !334, line: 1911, baseType: !1566, size: 64, offset: 384)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1127, line: 117, size: 128, elements: !1568)
!1568 = !{!1569}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1567, file: !1127, line: 120, baseType: !1295, size: 128)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1559, file: !334, line: 1914, baseType: !1341, size: 256, offset: 448)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !720, file: !334, line: 3399, baseType: !1572, size: 704)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !334, line: 2008, size: 704, elements: !1573)
!1573 = !{!1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1572, file: !334, line: 2009, baseType: !756, size: 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1572, file: !334, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1572, file: !334, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1572, file: !334, line: 2014, baseType: !711, size: 32, offset: 224)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1572, file: !334, line: 2016, baseType: !718, size: 64, offset: 256)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1572, file: !334, line: 2017, baseType: !1281, size: 64, offset: 320)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1572, file: !334, line: 2019, baseType: !718, size: 64, offset: 384)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1572, file: !334, line: 2020, baseType: !718, size: 64, offset: 448)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1572, file: !334, line: 2021, baseType: !718, size: 64, offset: 512)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1572, file: !334, line: 2022, baseType: !718, size: 64, offset: 576)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1572, file: !334, line: 2023, baseType: !718, size: 64, offset: 640)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !720, file: !334, line: 3400, baseType: !1586, size: 832)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !334, line: 2430, size: 832, elements: !1587)
!1587 = !{!1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1586, file: !334, line: 2431, baseType: !756, size: 192)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1586, file: !334, line: 2433, baseType: !718, size: 64, offset: 192)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1586, file: !334, line: 2434, baseType: !718, size: 64, offset: 256)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1586, file: !334, line: 2435, baseType: !718, size: 64, offset: 320)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1586, file: !334, line: 2436, baseType: !718, size: 64, offset: 384)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1586, file: !334, line: 2437, baseType: !1281, size: 64, offset: 448)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1586, file: !334, line: 2438, baseType: !718, size: 64, offset: 512)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1586, file: !334, line: 2440, baseType: !718, size: 64, offset: 576)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1586, file: !334, line: 2441, baseType: !718, size: 64, offset: 640)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1586, file: !334, line: 2443, baseType: !1598, size: 128, offset: 704)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !334, line: 182, baseType: !1599)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !334, line: 182, size: 128, elements: !1600)
!1600 = !{!1601}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1599, file: !334, line: 182, baseType: !1286, size: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !720, file: !334, line: 3401, baseType: !1603, size: 320)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !334, line: 3327, size: 320, elements: !1604)
!1604 = !{!1605, !1606, !1613}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1603, file: !334, line: 3329, baseType: !756, size: 192)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1603, file: !334, line: 3330, baseType: !1607, size: 64, offset: 192)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !334, line: 3320, size: 192, elements: !1609)
!1609 = !{!1610, !1611, !1612}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1608, file: !334, line: 3322, baseType: !1607, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1608, file: !334, line: 3323, baseType: !1607, size: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1608, file: !334, line: 3324, baseType: !718, size: 64, offset: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1603, file: !334, line: 3331, baseType: !1607, size: 64, offset: 256)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !720, file: !334, line: 3402, baseType: !1615, size: 256)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !334, line: 1540, size: 256, elements: !1616)
!1616 = !{!1617, !1618}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1615, file: !334, line: 1541, baseType: !756, size: 192)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1615, file: !334, line: 1542, baseType: !1619, size: 64, offset: 192)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !334, line: 1538, baseType: !1621)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !334, line: 1538, size: 192, elements: !1622)
!1622 = !{!1623}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1621, file: !334, line: 1538, baseType: !1624, size: 192)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !334, line: 1537, baseType: !1625)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !334, line: 1537, size: 192, elements: !1626)
!1626 = !{!1627, !1628, !1629}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1625, file: !334, line: 1537, baseType: !7, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1625, file: !334, line: 1537, baseType: !7, size: 32, offset: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1625, file: !334, line: 1537, baseType: !1630, size: 128, offset: 64)
!1630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1631, size: 128, elements: !816)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !334, line: 1535, baseType: !1632)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !334, line: 1532, size: 128, elements: !1633)
!1633 = !{!1634, !1635}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1632, file: !334, line: 1533, baseType: !718, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1632, file: !334, line: 1534, baseType: !718, size: 64, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !720, file: !334, line: 3403, baseType: !1637, size: 512)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !334, line: 1938, size: 512, elements: !1638)
!1638 = !{!1639, !1640, !1641, !1642, !1648, !1649, !1650}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1637, file: !334, line: 1939, baseType: !756, size: 192)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1637, file: !334, line: 1940, baseType: !711, size: 32, offset: 192)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1637, file: !334, line: 1941, baseType: !333, size: 32, offset: 224)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1637, file: !334, line: 1946, baseType: !1643, size: 32, offset: 256)
!1643 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !334, line: 1942, size: 32, elements: !1644)
!1644 = !{!1645, !1646, !1647}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1643, file: !334, line: 1943, baseType: !352, size: 32)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1643, file: !334, line: 1944, baseType: !359, size: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1643, file: !334, line: 1945, baseType: !366, size: 32)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1637, file: !334, line: 1950, baseType: !683, size: 64, offset: 320)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1637, file: !334, line: 1951, baseType: !683, size: 64, offset: 384)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1637, file: !334, line: 1953, baseType: !1292, size: 64, offset: 448)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !720, file: !334, line: 3404, baseType: !1652, size: 1664)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !334, line: 3337, size: 1664, elements: !1653)
!1653 = !{!1654, !1655}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1652, file: !334, line: 3338, baseType: !756, size: 192)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1652, file: !334, line: 3341, baseType: !1656, size: 1472, offset: 192)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1657, line: 410, size: 1472, elements: !1658)
!1657 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1658 = !{!1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1656, file: !1657, line: 412, baseType: !647, size: 32)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1656, file: !1657, line: 413, baseType: !647, size: 32, offset: 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1656, file: !1657, line: 414, baseType: !647, size: 32, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1656, file: !1657, line: 415, baseType: !647, size: 32, offset: 96)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1656, file: !1657, line: 416, baseType: !647, size: 32, offset: 128)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1656, file: !1657, line: 417, baseType: !647, size: 32, offset: 160)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1656, file: !1657, line: 418, baseType: !646, size: 8, offset: 192)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1656, file: !1657, line: 419, baseType: !646, size: 8, offset: 200)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1656, file: !1657, line: 420, baseType: !1668, size: 8, offset: 208)
!1668 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1656, file: !1657, line: 421, baseType: !1668, size: 8, offset: 216)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1656, file: !1657, line: 422, baseType: !1668, size: 8, offset: 224)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1656, file: !1657, line: 423, baseType: !1668, size: 8, offset: 232)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1656, file: !1657, line: 424, baseType: !1668, size: 8, offset: 240)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1656, file: !1657, line: 425, baseType: !1668, size: 8, offset: 248)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1656, file: !1657, line: 426, baseType: !1668, size: 8, offset: 256)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1656, file: !1657, line: 427, baseType: !1668, size: 8, offset: 264)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1656, file: !1657, line: 428, baseType: !1668, size: 8, offset: 272)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1656, file: !1657, line: 429, baseType: !1668, size: 8, offset: 280)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1656, file: !1657, line: 430, baseType: !1668, size: 8, offset: 288)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1656, file: !1657, line: 431, baseType: !1668, size: 8, offset: 296)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1656, file: !1657, line: 432, baseType: !1668, size: 8, offset: 304)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1656, file: !1657, line: 433, baseType: !1668, size: 8, offset: 312)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1656, file: !1657, line: 434, baseType: !1668, size: 8, offset: 320)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1656, file: !1657, line: 435, baseType: !1668, size: 8, offset: 328)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1656, file: !1657, line: 436, baseType: !1668, size: 8, offset: 336)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1656, file: !1657, line: 437, baseType: !1668, size: 8, offset: 344)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1656, file: !1657, line: 438, baseType: !1668, size: 8, offset: 352)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1656, file: !1657, line: 439, baseType: !1668, size: 8, offset: 360)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1656, file: !1657, line: 440, baseType: !1668, size: 8, offset: 368)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1656, file: !1657, line: 441, baseType: !1668, size: 8, offset: 376)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1656, file: !1657, line: 442, baseType: !1668, size: 8, offset: 384)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1656, file: !1657, line: 443, baseType: !1668, size: 8, offset: 392)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1656, file: !1657, line: 444, baseType: !1668, size: 8, offset: 400)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1656, file: !1657, line: 445, baseType: !1668, size: 8, offset: 408)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1656, file: !1657, line: 446, baseType: !1668, size: 8, offset: 416)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1656, file: !1657, line: 447, baseType: !1668, size: 8, offset: 424)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1656, file: !1657, line: 448, baseType: !1668, size: 8, offset: 432)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1656, file: !1657, line: 449, baseType: !1668, size: 8, offset: 440)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1656, file: !1657, line: 450, baseType: !1668, size: 8, offset: 448)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1656, file: !1657, line: 451, baseType: !1668, size: 8, offset: 456)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1656, file: !1657, line: 452, baseType: !1668, size: 8, offset: 464)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1656, file: !1657, line: 453, baseType: !1668, size: 8, offset: 472)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1656, file: !1657, line: 454, baseType: !1668, size: 8, offset: 480)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1656, file: !1657, line: 455, baseType: !1668, size: 8, offset: 488)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1656, file: !1657, line: 456, baseType: !1668, size: 8, offset: 496)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1656, file: !1657, line: 457, baseType: !1668, size: 8, offset: 504)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1656, file: !1657, line: 458, baseType: !1668, size: 8, offset: 512)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1656, file: !1657, line: 459, baseType: !1668, size: 8, offset: 520)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1656, file: !1657, line: 460, baseType: !1668, size: 8, offset: 528)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1656, file: !1657, line: 461, baseType: !1668, size: 8, offset: 536)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1656, file: !1657, line: 462, baseType: !1668, size: 8, offset: 544)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1656, file: !1657, line: 463, baseType: !1668, size: 8, offset: 552)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1656, file: !1657, line: 464, baseType: !1668, size: 8, offset: 560)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1656, file: !1657, line: 465, baseType: !1668, size: 8, offset: 568)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1656, file: !1657, line: 466, baseType: !1668, size: 8, offset: 576)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1656, file: !1657, line: 467, baseType: !1668, size: 8, offset: 584)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1656, file: !1657, line: 468, baseType: !1668, size: 8, offset: 592)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1656, file: !1657, line: 469, baseType: !1668, size: 8, offset: 600)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1656, file: !1657, line: 470, baseType: !1668, size: 8, offset: 608)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1656, file: !1657, line: 471, baseType: !1668, size: 8, offset: 616)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1656, file: !1657, line: 472, baseType: !1668, size: 8, offset: 624)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1656, file: !1657, line: 473, baseType: !1668, size: 8, offset: 632)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1656, file: !1657, line: 474, baseType: !1668, size: 8, offset: 640)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1656, file: !1657, line: 475, baseType: !1668, size: 8, offset: 648)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1656, file: !1657, line: 476, baseType: !1668, size: 8, offset: 656)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1656, file: !1657, line: 477, baseType: !1668, size: 8, offset: 664)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1656, file: !1657, line: 478, baseType: !1668, size: 8, offset: 672)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1656, file: !1657, line: 479, baseType: !1668, size: 8, offset: 680)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1656, file: !1657, line: 480, baseType: !1668, size: 8, offset: 688)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1656, file: !1657, line: 481, baseType: !1668, size: 8, offset: 696)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1656, file: !1657, line: 482, baseType: !1668, size: 8, offset: 704)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1656, file: !1657, line: 483, baseType: !1668, size: 8, offset: 712)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1656, file: !1657, line: 484, baseType: !1668, size: 8, offset: 720)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1656, file: !1657, line: 485, baseType: !1668, size: 8, offset: 728)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1656, file: !1657, line: 486, baseType: !1668, size: 8, offset: 736)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1656, file: !1657, line: 487, baseType: !1668, size: 8, offset: 744)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1656, file: !1657, line: 488, baseType: !1668, size: 8, offset: 752)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1656, file: !1657, line: 489, baseType: !1668, size: 8, offset: 760)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1656, file: !1657, line: 490, baseType: !1668, size: 8, offset: 768)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1656, file: !1657, line: 491, baseType: !1668, size: 8, offset: 776)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1656, file: !1657, line: 492, baseType: !1668, size: 8, offset: 784)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1656, file: !1657, line: 493, baseType: !1668, size: 8, offset: 792)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1656, file: !1657, line: 494, baseType: !1668, size: 8, offset: 800)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1656, file: !1657, line: 495, baseType: !1668, size: 8, offset: 808)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1656, file: !1657, line: 496, baseType: !1668, size: 8, offset: 816)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1656, file: !1657, line: 497, baseType: !1668, size: 8, offset: 824)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1656, file: !1657, line: 498, baseType: !1668, size: 8, offset: 832)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1656, file: !1657, line: 499, baseType: !1668, size: 8, offset: 840)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1656, file: !1657, line: 500, baseType: !1668, size: 8, offset: 848)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1656, file: !1657, line: 501, baseType: !1668, size: 8, offset: 856)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1656, file: !1657, line: 502, baseType: !1668, size: 8, offset: 864)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1656, file: !1657, line: 503, baseType: !1668, size: 8, offset: 872)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1656, file: !1657, line: 504, baseType: !1668, size: 8, offset: 880)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1656, file: !1657, line: 505, baseType: !1668, size: 8, offset: 888)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1656, file: !1657, line: 506, baseType: !1668, size: 8, offset: 896)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1656, file: !1657, line: 507, baseType: !1668, size: 8, offset: 904)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1656, file: !1657, line: 508, baseType: !1668, size: 8, offset: 912)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1656, file: !1657, line: 509, baseType: !1668, size: 8, offset: 920)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1656, file: !1657, line: 510, baseType: !1668, size: 8, offset: 928)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1656, file: !1657, line: 511, baseType: !1668, size: 8, offset: 936)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1656, file: !1657, line: 512, baseType: !1668, size: 8, offset: 944)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1656, file: !1657, line: 513, baseType: !1668, size: 8, offset: 952)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1656, file: !1657, line: 514, baseType: !1668, size: 8, offset: 960)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1656, file: !1657, line: 515, baseType: !1668, size: 8, offset: 968)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1656, file: !1657, line: 516, baseType: !1668, size: 8, offset: 976)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1656, file: !1657, line: 517, baseType: !1668, size: 8, offset: 984)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1656, file: !1657, line: 518, baseType: !1668, size: 8, offset: 992)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1656, file: !1657, line: 519, baseType: !1668, size: 8, offset: 1000)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1656, file: !1657, line: 520, baseType: !1668, size: 8, offset: 1008)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1656, file: !1657, line: 521, baseType: !1668, size: 8, offset: 1016)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1656, file: !1657, line: 522, baseType: !1668, size: 8, offset: 1024)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1656, file: !1657, line: 523, baseType: !1668, size: 8, offset: 1032)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1656, file: !1657, line: 524, baseType: !1668, size: 8, offset: 1040)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1656, file: !1657, line: 525, baseType: !1668, size: 8, offset: 1048)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1656, file: !1657, line: 526, baseType: !1668, size: 8, offset: 1056)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1656, file: !1657, line: 527, baseType: !1668, size: 8, offset: 1064)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1656, file: !1657, line: 528, baseType: !1668, size: 8, offset: 1072)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1656, file: !1657, line: 529, baseType: !1668, size: 8, offset: 1080)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1656, file: !1657, line: 530, baseType: !1668, size: 8, offset: 1088)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1656, file: !1657, line: 531, baseType: !1668, size: 8, offset: 1096)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1656, file: !1657, line: 532, baseType: !1668, size: 8, offset: 1104)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1656, file: !1657, line: 533, baseType: !1668, size: 8, offset: 1112)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1656, file: !1657, line: 534, baseType: !1668, size: 8, offset: 1120)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1656, file: !1657, line: 535, baseType: !1668, size: 8, offset: 1128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1656, file: !1657, line: 536, baseType: !1668, size: 8, offset: 1136)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1656, file: !1657, line: 537, baseType: !1668, size: 8, offset: 1144)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1656, file: !1657, line: 538, baseType: !1668, size: 8, offset: 1152)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1656, file: !1657, line: 539, baseType: !1668, size: 8, offset: 1160)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1656, file: !1657, line: 540, baseType: !1668, size: 8, offset: 1168)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1656, file: !1657, line: 541, baseType: !1668, size: 8, offset: 1176)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1656, file: !1657, line: 542, baseType: !1668, size: 8, offset: 1184)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1656, file: !1657, line: 543, baseType: !1668, size: 8, offset: 1192)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1656, file: !1657, line: 544, baseType: !1668, size: 8, offset: 1200)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1656, file: !1657, line: 545, baseType: !1668, size: 8, offset: 1208)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1656, file: !1657, line: 546, baseType: !1668, size: 8, offset: 1216)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1656, file: !1657, line: 547, baseType: !1668, size: 8, offset: 1224)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1656, file: !1657, line: 548, baseType: !1668, size: 8, offset: 1232)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1656, file: !1657, line: 549, baseType: !1668, size: 8, offset: 1240)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1656, file: !1657, line: 550, baseType: !1668, size: 8, offset: 1248)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1656, file: !1657, line: 551, baseType: !1668, size: 8, offset: 1256)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1656, file: !1657, line: 552, baseType: !1668, size: 8, offset: 1264)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1656, file: !1657, line: 553, baseType: !1668, size: 8, offset: 1272)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1656, file: !1657, line: 554, baseType: !1668, size: 8, offset: 1280)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1656, file: !1657, line: 555, baseType: !1668, size: 8, offset: 1288)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1656, file: !1657, line: 556, baseType: !1668, size: 8, offset: 1296)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1656, file: !1657, line: 557, baseType: !1668, size: 8, offset: 1304)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1656, file: !1657, line: 558, baseType: !1668, size: 8, offset: 1312)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1656, file: !1657, line: 559, baseType: !1668, size: 8, offset: 1320)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1656, file: !1657, line: 560, baseType: !1668, size: 8, offset: 1328)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1656, file: !1657, line: 561, baseType: !1668, size: 8, offset: 1336)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1656, file: !1657, line: 562, baseType: !1668, size: 8, offset: 1344)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1656, file: !1657, line: 563, baseType: !1668, size: 8, offset: 1352)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1656, file: !1657, line: 564, baseType: !1668, size: 8, offset: 1360)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1656, file: !1657, line: 565, baseType: !1668, size: 8, offset: 1368)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1656, file: !1657, line: 566, baseType: !1668, size: 8, offset: 1376)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1656, file: !1657, line: 567, baseType: !1668, size: 8, offset: 1384)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1656, file: !1657, line: 568, baseType: !1668, size: 8, offset: 1392)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1656, file: !1657, line: 569, baseType: !1668, size: 8, offset: 1400)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1656, file: !1657, line: 570, baseType: !1668, size: 8, offset: 1408)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1656, file: !1657, line: 571, baseType: !1668, size: 8, offset: 1416)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1656, file: !1657, line: 572, baseType: !1668, size: 8, offset: 1424)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1656, file: !1657, line: 573, baseType: !1668, size: 8, offset: 1432)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1656, file: !1657, line: 574, baseType: !1668, size: 8, offset: 1440)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !720, file: !334, line: 3405, baseType: !1824, size: 384)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !334, line: 3352, size: 384, elements: !1825)
!1825 = !{!1826, !1827}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1824, file: !334, line: 3353, baseType: !756, size: 192)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1824, file: !334, line: 3356, baseType: !1828, size: 192, offset: 192)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1657, line: 578, size: 192, elements: !1829)
!1829 = !{!1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1828, file: !1657, line: 580, baseType: !647, size: 32)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1828, file: !1657, line: 581, baseType: !647, size: 32, offset: 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1828, file: !1657, line: 582, baseType: !647, size: 32, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1828, file: !1657, line: 583, baseType: !647, size: 32, offset: 96)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1828, file: !1657, line: 584, baseType: !646, size: 8, offset: 128)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1828, file: !1657, line: 585, baseType: !646, size: 8, offset: 136)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1828, file: !1657, line: 586, baseType: !646, size: 8, offset: 144)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1828, file: !1657, line: 587, baseType: !646, size: 8, offset: 152)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1828, file: !1657, line: 588, baseType: !646, size: 8, offset: 160)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1828, file: !1657, line: 589, baseType: !646, size: 8, offset: 168)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1828, file: !1657, line: 590, baseType: !646, size: 8, offset: 176)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !695, file: !574, line: 739, baseType: !1842, size: 448)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !574, line: 350, size: 448, elements: !1843)
!1843 = !{!1844, !1850}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1842, file: !574, line: 353, baseType: !1845, size: 384)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !574, line: 333, size: 384, elements: !1846)
!1846 = !{!1847, !1848, !1849}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1845, file: !574, line: 336, baseType: !698, size: 256)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1845, file: !574, line: 343, baseType: !1329, size: 64, offset: 256)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1845, file: !574, line: 344, baseType: !1336, size: 64, offset: 320)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1842, file: !574, line: 359, baseType: !1292, size: 64, offset: 384)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !695, file: !574, line: 740, baseType: !1852, size: 512)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !574, line: 365, size: 512, elements: !1853)
!1853 = !{!1854, !1855, !1856}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1852, file: !574, line: 368, baseType: !1845, size: 384)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1852, file: !574, line: 373, baseType: !718, size: 64, offset: 384)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1852, file: !574, line: 374, baseType: !718, size: 64, offset: 448)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !695, file: !574, line: 741, baseType: !1858, size: 576)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !574, line: 380, size: 576, elements: !1859)
!1859 = !{!1860, !1861}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1858, file: !574, line: 383, baseType: !1852, size: 512)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1858, file: !574, line: 389, baseType: !1292, size: 64, offset: 512)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !695, file: !574, line: 742, baseType: !1863, size: 320)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !574, line: 395, size: 320, elements: !1864)
!1864 = !{!1865, !1866}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1863, file: !574, line: 397, baseType: !698, size: 256)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1863, file: !574, line: 400, baseType: !683, size: 64, offset: 256)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !695, file: !574, line: 743, baseType: !1868, size: 448)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !574, line: 406, size: 448, elements: !1869)
!1869 = !{!1870, !1871, !1872, !1873}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1868, file: !574, line: 408, baseType: !698, size: 256)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1868, file: !574, line: 412, baseType: !718, size: 64, offset: 256)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1868, file: !574, line: 420, baseType: !718, size: 64, offset: 320)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1868, file: !574, line: 423, baseType: !683, size: 64, offset: 384)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !695, file: !574, line: 744, baseType: !1875, size: 384)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !574, line: 429, size: 384, elements: !1876)
!1876 = !{!1877, !1878, !1879}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1875, file: !574, line: 431, baseType: !698, size: 256)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1875, file: !574, line: 434, baseType: !718, size: 64, offset: 256)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1875, file: !574, line: 437, baseType: !683, size: 64, offset: 320)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !695, file: !574, line: 745, baseType: !1881, size: 384)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !574, line: 443, size: 384, elements: !1882)
!1882 = !{!1883, !1884, !1885}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1881, file: !574, line: 445, baseType: !698, size: 256)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1881, file: !574, line: 449, baseType: !718, size: 64, offset: 256)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1881, file: !574, line: 453, baseType: !683, size: 64, offset: 320)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !695, file: !574, line: 746, baseType: !1887, size: 320)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !574, line: 459, size: 320, elements: !1888)
!1888 = !{!1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1887, file: !574, line: 461, baseType: !698, size: 256)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1887, file: !574, line: 464, baseType: !718, size: 64, offset: 256)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !695, file: !574, line: 747, baseType: !1892, size: 768)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !574, line: 469, size: 768, elements: !1893)
!1893 = !{!1894, !1895, !1896, !1897, !1898}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1892, file: !574, line: 471, baseType: !698, size: 256)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1892, file: !574, line: 474, baseType: !7, size: 32, offset: 256)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1892, file: !574, line: 475, baseType: !7, size: 32, offset: 288)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1892, file: !574, line: 478, baseType: !718, size: 64, offset: 320)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1892, file: !574, line: 481, baseType: !1899, size: 384, offset: 384)
!1899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1900, size: 384, elements: !816)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !334, line: 1917, size: 384, elements: !1901)
!1901 = !{!1902, !1903, !1904}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1900, file: !334, line: 1920, baseType: !1341, size: 256)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1900, file: !334, line: 1921, baseType: !718, size: 64, offset: 256)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1900, file: !334, line: 1922, baseType: !711, size: 32, offset: 320)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !695, file: !574, line: 748, baseType: !1906, size: 320)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !574, line: 487, size: 320, elements: !1907)
!1907 = !{!1908, !1909}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1906, file: !574, line: 490, baseType: !698, size: 256)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1906, file: !574, line: 494, baseType: !647, size: 32, offset: 256)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !695, file: !574, line: 749, baseType: !1911, size: 384)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !574, line: 500, size: 384, elements: !1912)
!1912 = !{!1913, !1914, !1915}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1911, file: !574, line: 502, baseType: !698, size: 256)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1911, file: !574, line: 506, baseType: !683, size: 64, offset: 256)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1911, file: !574, line: 510, baseType: !683, size: 64, offset: 320)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !695, file: !574, line: 750, baseType: !1917, size: 320)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !574, line: 529, size: 320, elements: !1918)
!1918 = !{!1919, !1920}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1917, file: !574, line: 531, baseType: !698, size: 256)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1917, file: !574, line: 540, baseType: !683, size: 64, offset: 256)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !695, file: !574, line: 751, baseType: !1922, size: 704)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !574, line: 546, size: 704, elements: !1923)
!1923 = !{!1924, !1925, !1926, !1927, !1928, !1929, !1930}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1922, file: !574, line: 549, baseType: !1852, size: 512)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1922, file: !574, line: 553, baseType: !652, size: 64, offset: 512)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1922, file: !574, line: 557, baseType: !646, size: 8, offset: 576)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1922, file: !574, line: 558, baseType: !646, size: 8, offset: 584)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1922, file: !574, line: 559, baseType: !646, size: 8, offset: 592)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1922, file: !574, line: 560, baseType: !646, size: 8, offset: 600)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1922, file: !574, line: 566, baseType: !1292, size: 64, offset: 640)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !695, file: !574, line: 752, baseType: !1932, size: 384)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !574, line: 571, size: 384, elements: !1933)
!1933 = !{!1934, !1935}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1932, file: !574, line: 573, baseType: !1863, size: 320)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1932, file: !574, line: 577, baseType: !718, size: 64, offset: 320)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !695, file: !574, line: 753, baseType: !1937, size: 576)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !574, line: 600, size: 576, elements: !1938)
!1938 = !{!1939, !1940, !1941, !1942, !1951}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1937, file: !574, line: 602, baseType: !1863, size: 320)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1937, file: !574, line: 605, baseType: !718, size: 64, offset: 320)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1937, file: !574, line: 609, baseType: !1242, size: 64, offset: 384)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1937, file: !574, line: 612, baseType: !1943, size: 64, offset: 448)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !574, line: 581, size: 320, elements: !1945)
!1945 = !{!1946, !1947, !1948, !1949, !1950}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1944, file: !574, line: 583, baseType: !366, size: 32)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1944, file: !574, line: 586, baseType: !718, size: 64, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1944, file: !574, line: 589, baseType: !718, size: 64, offset: 128)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1944, file: !574, line: 592, baseType: !718, size: 64, offset: 192)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1944, file: !574, line: 595, baseType: !718, size: 64, offset: 256)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1937, file: !574, line: 616, baseType: !683, size: 64, offset: 512)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !695, file: !574, line: 754, baseType: !1953, size: 512)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !574, line: 622, size: 512, elements: !1954)
!1954 = !{!1955, !1956, !1957, !1958}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1953, file: !574, line: 624, baseType: !1863, size: 320)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1953, file: !574, line: 628, baseType: !718, size: 64, offset: 320)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1953, file: !574, line: 632, baseType: !718, size: 64, offset: 384)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1953, file: !574, line: 636, baseType: !718, size: 64, offset: 448)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !695, file: !574, line: 755, baseType: !1960, size: 704)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !574, line: 642, size: 704, elements: !1961)
!1961 = !{!1962, !1963, !1964, !1965}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1960, file: !574, line: 644, baseType: !1953, size: 512)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1960, file: !574, line: 648, baseType: !718, size: 64, offset: 512)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1960, file: !574, line: 652, baseType: !718, size: 64, offset: 576)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1960, file: !574, line: 653, baseType: !718, size: 64, offset: 640)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !695, file: !574, line: 756, baseType: !1967, size: 448)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !574, line: 663, size: 448, elements: !1968)
!1968 = !{!1969, !1970, !1971}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1967, file: !574, line: 665, baseType: !1863, size: 320)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1967, file: !574, line: 668, baseType: !718, size: 64, offset: 320)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1967, file: !574, line: 673, baseType: !718, size: 64, offset: 384)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !695, file: !574, line: 757, baseType: !1973, size: 384)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !574, line: 694, size: 384, elements: !1974)
!1974 = !{!1975, !1976}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1973, file: !574, line: 696, baseType: !1863, size: 320)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1973, file: !574, line: 699, baseType: !718, size: 64, offset: 320)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !695, file: !574, line: 758, baseType: !1978, size: 384)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !574, line: 681, size: 384, elements: !1979)
!1979 = !{!1980, !1981, !1982}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1978, file: !574, line: 683, baseType: !698, size: 256)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1978, file: !574, line: 686, baseType: !718, size: 64, offset: 256)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1978, file: !574, line: 689, baseType: !718, size: 64, offset: 320)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !695, file: !574, line: 759, baseType: !1984, size: 384)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !574, line: 707, size: 384, elements: !1985)
!1985 = !{!1986, !1987, !1988}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1984, file: !574, line: 709, baseType: !698, size: 256)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1984, file: !574, line: 712, baseType: !718, size: 64, offset: 256)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1984, file: !574, line: 712, baseType: !718, size: 64, offset: 320)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !695, file: !574, line: 760, baseType: !1990, size: 320)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !574, line: 718, size: 320, elements: !1991)
!1991 = !{!1992, !1993}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1990, file: !574, line: 720, baseType: !698, size: 256)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1990, file: !574, line: 723, baseType: !718, size: 64, offset: 256)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !690, file: !574, line: 138, baseType: !689, size: 64, offset: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !690, file: !574, line: 139, baseType: !689, size: 64, offset: 128)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !685, file: !574, line: 146, baseType: !688, size: 64, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !685, file: !574, line: 152, baseType: !683, size: 64, offset: 128)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !680, file: !318, line: 130, baseType: !888, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !675, file: !318, line: 134, baseType: !651, size: 64, offset: 192)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !675, file: !318, line: 137, baseType: !718, size: 64, offset: 256)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !675, file: !318, line: 138, baseType: !711, size: 32, offset: 320)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !675, file: !318, line: 142, baseType: !7, size: 32, offset: 352)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !675, file: !318, line: 144, baseType: !647, size: 32, offset: 384)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !675, file: !318, line: 145, baseType: !647, size: 32, offset: 416)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !675, file: !318, line: 146, baseType: !2006, size: 64, offset: 448)
!2006 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !318, line: 119, baseType: !773)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !658, file: !318, line: 220, baseType: !661, size: 64, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !658, file: !318, line: 223, baseType: !651, size: 64, offset: 128)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !658, file: !318, line: 226, baseType: !1371, size: 64, offset: 192)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !658, file: !318, line: 229, baseType: !2011, size: 128, offset: 256)
!2011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2012, size: 128, elements: !956)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !318, line: 229, flags: DIFlagFwdDecl)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !658, file: !318, line: 232, baseType: !657, size: 64, offset: 384)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !658, file: !318, line: 233, baseType: !657, size: 64, offset: 448)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !658, file: !318, line: 238, baseType: !2017, size: 64, offset: 512)
!2017 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !318, line: 235, size: 64, elements: !2018)
!2018 = !{!2019, !2025}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !2017, file: !318, line: 236, baseType: !2020, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !318, line: 273, size: 128, elements: !2022)
!2022 = !{!2023, !2024}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2021, file: !318, line: 275, baseType: !683, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !2021, file: !318, line: 278, baseType: !683, size: 64, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !2017, file: !318, line: 237, baseType: !2026, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !318, line: 259, size: 320, elements: !2028)
!2028 = !{!2029, !2030, !2031, !2032, !2033}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !2027, file: !318, line: 261, baseType: !888, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !2027, file: !318, line: 262, baseType: !888, size: 64, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2027, file: !318, line: 266, baseType: !888, size: 64, offset: 128)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !2027, file: !318, line: 267, baseType: !888, size: 64, offset: 192)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !2027, file: !318, line: 270, baseType: !647, size: 32, offset: 256)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !658, file: !318, line: 241, baseType: !2006, size: 64, offset: 576)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !658, file: !318, line: 244, baseType: !647, size: 32, offset: 640)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !658, file: !318, line: 247, baseType: !647, size: 32, offset: 672)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !658, file: !318, line: 250, baseType: !647, size: 32, offset: 704)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !658, file: !318, line: 253, baseType: !647, size: 32, offset: 736)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !658, file: !318, line: 256, baseType: !647, size: 32, offset: 768)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_heap", file: !2042, line: 32, baseType: !2043)
!2042 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_heap", file: !2042, line: 32, size: 96, elements: !2044)
!2044 = !{!2045}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2043, file: !2042, line: 32, baseType: !2046, size: 96)
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_base", file: !2042, line: 31, baseType: !2047)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_base", file: !2042, line: 31, size: 96, elements: !2048)
!2048 = !{!2049, !2050, !2051}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2047, file: !2042, line: 31, baseType: !7, size: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2047, file: !2042, line: 31, baseType: !7, size: 32, offset: 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2047, file: !2042, line: 31, baseType: !2052, size: 32, offset: 64)
!2052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 32, elements: !816)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !695)
!2055 = !{!0}
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !6, line: 156, size: 640, elements: !2057)
!2057 = !{!2058}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2056, file: !6, line: 158, baseType: !2059, size: 640)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !2060)
!2060 = !{!2061, !2062, !2063, !2067, !2071, !2073, !2074, !2075, !2077, !2078, !2079, !2080, !2081}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2059, file: !6, line: 117, baseType: !5, size: 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2059, file: !6, line: 121, baseType: !652, size: 64, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !2059, file: !6, line: 125, baseType: !2064, size: 64, offset: 128)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!646}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !2059, file: !6, line: 130, baseType: !2068, size: 64, offset: 192)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!7}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !2059, file: !6, line: 133, baseType: !2072, size: 64, offset: 256)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2059, file: !6, line: 136, baseType: !2072, size: 64, offset: 320)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !2059, file: !6, line: 139, baseType: !647, size: 32, offset: 384)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !2059, file: !6, line: 143, baseType: !2076, size: 32, offset: 416)
!2076 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !2059, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !2059, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !2059, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !2059, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !2059, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!2082 = !{i32 2, !"Dwarf Version", i32 4}
!2083 = !{i32 2, !"Debug Info Version", i32 3}
!2084 = !{i32 1, !"wchar_size", i32 4}
!2085 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2086 = distinct !DISubprogram(name: "vprintf", scope: !2087, file: !2087, line: 39, type: !2088, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2098)
!2087 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!647, !2090, !2091}
!2090 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !652)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2093)
!2093 = !{!2094, !2095, !2096, !2097}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2092, file: !3, baseType: !7, size: 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2092, file: !3, baseType: !7, size: 32, offset: 32)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2092, file: !3, baseType: !651, size: 64, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2092, file: !3, baseType: !651, size: 64, offset: 128)
!2098 = !{!2099, !2100}
!2099 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2086, file: !2087, line: 39, type: !2090)
!2100 = !DILocalVariable(name: "__arg", arg: 2, scope: !2086, file: !2087, line: 39, type: !2091)
!2101 = !DILocation(line: 0, scope: !2086)
!2102 = !DILocation(line: 41, column: 20, scope: !2086)
!2103 = !DILocation(line: 41, column: 10, scope: !2086)
!2104 = !DILocation(line: 41, column: 3, scope: !2086)
!2105 = distinct !DISubprogram(name: "getchar", scope: !2087, file: !2087, line: 47, type: !2106, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2108)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!647}
!2108 = !{}
!2109 = !DILocation(line: 49, column: 16, scope: !2105)
!2110 = !DILocation(line: 49, column: 10, scope: !2105)
!2111 = !DILocation(line: 49, column: 3, scope: !2105)
!2112 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2087, file: !2087, line: 56, type: !2113, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2166)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!647, !2115}
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2117, line: 7, baseType: !2118)
!2117 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2119, line: 49, size: 1728, elements: !2120)
!2119 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2120 = !{!2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2136, !2138, !2139, !2140, !2143, !2145, !2146, !2147, !2150, !2152, !2155, !2158, !2159, !2160, !2161, !2162}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2118, file: !2119, line: 51, baseType: !647, size: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2118, file: !2119, line: 54, baseType: !649, size: 64, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2118, file: !2119, line: 55, baseType: !649, size: 64, offset: 128)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2118, file: !2119, line: 56, baseType: !649, size: 64, offset: 192)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2118, file: !2119, line: 57, baseType: !649, size: 64, offset: 256)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2118, file: !2119, line: 58, baseType: !649, size: 64, offset: 320)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2118, file: !2119, line: 59, baseType: !649, size: 64, offset: 384)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2118, file: !2119, line: 60, baseType: !649, size: 64, offset: 448)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2118, file: !2119, line: 61, baseType: !649, size: 64, offset: 512)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2118, file: !2119, line: 64, baseType: !649, size: 64, offset: 576)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2118, file: !2119, line: 65, baseType: !649, size: 64, offset: 640)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2118, file: !2119, line: 66, baseType: !649, size: 64, offset: 704)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2118, file: !2119, line: 68, baseType: !2134, size: 64, offset: 768)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2119, line: 36, flags: DIFlagFwdDecl)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2118, file: !2119, line: 70, baseType: !2137, size: 64, offset: 832)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2118, file: !2119, line: 72, baseType: !647, size: 32, offset: 896)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2118, file: !2119, line: 73, baseType: !647, size: 32, offset: 928)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2118, file: !2119, line: 74, baseType: !2141, size: 64, offset: 960)
!2141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2142, line: 152, baseType: !773)
!2142 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2118, file: !2119, line: 77, baseType: !2144, size: 16, offset: 1024)
!2144 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2118, file: !2119, line: 78, baseType: !1668, size: 8, offset: 1040)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2118, file: !2119, line: 79, baseType: !815, size: 8, offset: 1048)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2118, file: !2119, line: 81, baseType: !2148, size: 64, offset: 1088)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2119, line: 43, baseType: null)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2118, file: !2119, line: 89, baseType: !2151, size: 64, offset: 1152)
!2151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2142, line: 153, baseType: !773)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2118, file: !2119, line: 91, baseType: !2153, size: 64, offset: 1216)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2119, line: 37, flags: DIFlagFwdDecl)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2118, file: !2119, line: 92, baseType: !2156, size: 64, offset: 1280)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2119, line: 38, flags: DIFlagFwdDecl)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2118, file: !2119, line: 93, baseType: !2137, size: 64, offset: 1344)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2118, file: !2119, line: 94, baseType: !651, size: 64, offset: 1408)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2118, file: !2119, line: 95, baseType: !1242, size: 64, offset: 1472)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2118, file: !2119, line: 96, baseType: !647, size: 32, offset: 1536)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2118, file: !2119, line: 98, baseType: !2163, size: 160, offset: 1568)
!2163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !650, size: 160, elements: !2164)
!2164 = !{!2165}
!2165 = !DISubrange(count: 20)
!2166 = !{!2167}
!2167 = !DILocalVariable(name: "__fp", arg: 1, scope: !2112, file: !2087, line: 56, type: !2115)
!2168 = !DILocation(line: 0, scope: !2112)
!2169 = !DILocation(line: 58, column: 10, scope: !2112)
!2170 = !DILocation(line: 58, column: 3, scope: !2112)
!2171 = distinct !DISubprogram(name: "getc_unlocked", scope: !2087, file: !2087, line: 66, type: !2113, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2172)
!2172 = !{!2173}
!2173 = !DILocalVariable(name: "__fp", arg: 1, scope: !2171, file: !2087, line: 66, type: !2115)
!2174 = !DILocation(line: 0, scope: !2171)
!2175 = !DILocation(line: 68, column: 10, scope: !2171)
!2176 = !DILocation(line: 68, column: 3, scope: !2171)
!2177 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2087, file: !2087, line: 73, type: !2106, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2108)
!2178 = !DILocation(line: 75, column: 10, scope: !2177)
!2179 = !DILocation(line: 75, column: 3, scope: !2177)
!2180 = distinct !DISubprogram(name: "putchar", scope: !2087, file: !2087, line: 82, type: !2181, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2183)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!647, !647}
!2183 = !{!2184}
!2184 = !DILocalVariable(name: "__c", arg: 1, scope: !2180, file: !2087, line: 82, type: !647)
!2185 = !DILocation(line: 0, scope: !2180)
!2186 = !DILocation(line: 84, column: 21, scope: !2180)
!2187 = !DILocation(line: 84, column: 10, scope: !2180)
!2188 = !DILocation(line: 84, column: 3, scope: !2180)
!2189 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2087, file: !2087, line: 91, type: !2190, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2192)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!647, !647, !2115}
!2192 = !{!2193, !2194}
!2193 = !DILocalVariable(name: "__c", arg: 1, scope: !2189, file: !2087, line: 91, type: !647)
!2194 = !DILocalVariable(name: "__stream", arg: 2, scope: !2189, file: !2087, line: 91, type: !2115)
!2195 = !DILocation(line: 0, scope: !2189)
!2196 = !DILocation(line: 93, column: 10, scope: !2189)
!2197 = !DILocation(line: 93, column: 3, scope: !2189)
!2198 = distinct !DISubprogram(name: "putc_unlocked", scope: !2087, file: !2087, line: 101, type: !2190, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2199)
!2199 = !{!2200, !2201}
!2200 = !DILocalVariable(name: "__c", arg: 1, scope: !2198, file: !2087, line: 101, type: !647)
!2201 = !DILocalVariable(name: "__stream", arg: 2, scope: !2198, file: !2087, line: 101, type: !2115)
!2202 = !DILocation(line: 0, scope: !2198)
!2203 = !DILocation(line: 103, column: 10, scope: !2198)
!2204 = !DILocation(line: 103, column: 3, scope: !2198)
!2205 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2087, file: !2087, line: 108, type: !2181, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2206)
!2206 = !{!2207}
!2207 = !DILocalVariable(name: "__c", arg: 1, scope: !2205, file: !2087, line: 108, type: !647)
!2208 = !DILocation(line: 0, scope: !2205)
!2209 = !DILocation(line: 110, column: 10, scope: !2205)
!2210 = !DILocation(line: 110, column: 3, scope: !2205)
!2211 = distinct !DISubprogram(name: "getline", scope: !2087, file: !2087, line: 118, type: !2212, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2216)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!2214, !648, !2215, !2115}
!2214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2142, line: 193, baseType: !773)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!2216 = !{!2217, !2218, !2219}
!2217 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2211, file: !2087, line: 118, type: !648)
!2218 = !DILocalVariable(name: "__n", arg: 2, scope: !2211, file: !2087, line: 118, type: !2215)
!2219 = !DILocalVariable(name: "__stream", arg: 3, scope: !2211, file: !2087, line: 118, type: !2115)
!2220 = !DILocation(line: 0, scope: !2211)
!2221 = !DILocation(line: 120, column: 10, scope: !2211)
!2222 = !DILocation(line: 120, column: 3, scope: !2211)
!2223 = distinct !DISubprogram(name: "feof_unlocked", scope: !2087, file: !2087, line: 128, type: !2113, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2224)
!2224 = !{!2225}
!2225 = !DILocalVariable(name: "__stream", arg: 1, scope: !2223, file: !2087, line: 128, type: !2115)
!2226 = !DILocation(line: 0, scope: !2223)
!2227 = !DILocation(line: 130, column: 10, scope: !2223)
!2228 = !DILocation(line: 130, column: 3, scope: !2223)
!2229 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2087, file: !2087, line: 135, type: !2113, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2230)
!2230 = !{!2231}
!2231 = !DILocalVariable(name: "__stream", arg: 1, scope: !2229, file: !2087, line: 135, type: !2115)
!2232 = !DILocation(line: 0, scope: !2229)
!2233 = !DILocation(line: 137, column: 10, scope: !2229)
!2234 = !DILocation(line: 137, column: 3, scope: !2229)
!2235 = distinct !DISubprogram(name: "tolower", scope: !2236, file: !2236, line: 207, type: !2181, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2237)
!2236 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2237 = !{!2238}
!2238 = !DILocalVariable(name: "__c", arg: 1, scope: !2235, file: !2236, line: 207, type: !647)
!2239 = !DILocation(line: 0, scope: !2235)
!2240 = !DILocation(line: 209, column: 22, scope: !2235)
!2241 = !DILocation(line: 209, column: 39, scope: !2235)
!2242 = !DILocation(line: 209, column: 38, scope: !2235)
!2243 = !DILocation(line: 209, column: 37, scope: !2235)
!2244 = !DILocation(line: 209, column: 10, scope: !2235)
!2245 = !DILocation(line: 209, column: 3, scope: !2235)
!2246 = distinct !DISubprogram(name: "toupper", scope: !2236, file: !2236, line: 213, type: !2181, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2247)
!2247 = !{!2248}
!2248 = !DILocalVariable(name: "__c", arg: 1, scope: !2246, file: !2236, line: 213, type: !647)
!2249 = !DILocation(line: 0, scope: !2246)
!2250 = !DILocation(line: 215, column: 22, scope: !2246)
!2251 = !DILocation(line: 215, column: 39, scope: !2246)
!2252 = !DILocation(line: 215, column: 38, scope: !2246)
!2253 = !DILocation(line: 215, column: 37, scope: !2246)
!2254 = !DILocation(line: 215, column: 10, scope: !2246)
!2255 = !DILocation(line: 215, column: 3, scope: !2246)
!2256 = distinct !DISubprogram(name: "atoi", scope: !2257, file: !2257, line: 361, type: !2258, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2260)
!2257 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!647, !652}
!2260 = !{!2261}
!2261 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2256, file: !2257, line: 361, type: !652)
!2262 = !DILocation(line: 0, scope: !2256)
!2263 = !DILocation(line: 363, column: 16, scope: !2256)
!2264 = !DILocation(line: 363, column: 10, scope: !2256)
!2265 = !DILocation(line: 363, column: 3, scope: !2256)
!2266 = distinct !DISubprogram(name: "atol", scope: !2257, file: !2257, line: 366, type: !2267, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2269)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!773, !652}
!2269 = !{!2270}
!2270 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2266, file: !2257, line: 366, type: !652)
!2271 = !DILocation(line: 0, scope: !2266)
!2272 = !DILocation(line: 368, column: 10, scope: !2266)
!2273 = !DILocation(line: 368, column: 3, scope: !2266)
!2274 = distinct !DISubprogram(name: "atoll", scope: !2257, file: !2257, line: 373, type: !2275, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2278)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!2277, !652}
!2277 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2278 = !{!2279}
!2279 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2274, file: !2257, line: 373, type: !652)
!2280 = !DILocation(line: 0, scope: !2274)
!2281 = !DILocation(line: 375, column: 10, scope: !2274)
!2282 = !DILocation(line: 375, column: 3, scope: !2274)
!2283 = distinct !DISubprogram(name: "bsearch", scope: !2284, file: !2284, line: 20, type: !2285, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2288)
!2284 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!651, !1060, !1060, !1242, !1242, !2287}
!2287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2257, line: 808, baseType: !1231)
!2288 = !{!2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298}
!2289 = !DILocalVariable(name: "__key", arg: 1, scope: !2283, file: !2284, line: 20, type: !1060)
!2290 = !DILocalVariable(name: "__base", arg: 2, scope: !2283, file: !2284, line: 20, type: !1060)
!2291 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2283, file: !2284, line: 20, type: !1242)
!2292 = !DILocalVariable(name: "__size", arg: 4, scope: !2283, file: !2284, line: 20, type: !1242)
!2293 = !DILocalVariable(name: "__compar", arg: 5, scope: !2283, file: !2284, line: 21, type: !2287)
!2294 = !DILocalVariable(name: "__l", scope: !2283, file: !2284, line: 23, type: !1242)
!2295 = !DILocalVariable(name: "__u", scope: !2283, file: !2284, line: 23, type: !1242)
!2296 = !DILocalVariable(name: "__idx", scope: !2283, file: !2284, line: 23, type: !1242)
!2297 = !DILocalVariable(name: "__p", scope: !2283, file: !2284, line: 24, type: !1060)
!2298 = !DILocalVariable(name: "__comparison", scope: !2283, file: !2284, line: 25, type: !647)
!2299 = !DILocation(line: 0, scope: !2283)
!2300 = !DILocation(line: 29, column: 3, scope: !2283)
!2301 = !DILocation(line: 27, column: 7, scope: !2283)
!2302 = !DILocation(line: 29, column: 14, scope: !2283)
!2303 = !DILocation(line: 31, column: 20, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2283, file: !2284, line: 30, column: 5)
!2305 = !DILocation(line: 31, column: 27, scope: !2304)
!2306 = !DILocation(line: 32, column: 56, scope: !2304)
!2307 = !DILocation(line: 32, column: 47, scope: !2304)
!2308 = !DILocation(line: 33, column: 22, scope: !2304)
!2309 = !DILocation(line: 34, column: 24, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2304, file: !2284, line: 34, column: 11)
!2311 = !DILocation(line: 34, column: 11, scope: !2304)
!2312 = !DILocation(line: 36, column: 29, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2310, file: !2284, line: 36, column: 16)
!2314 = !DILocation(line: 36, column: 16, scope: !2310)
!2315 = !DILocation(line: 37, column: 14, scope: !2313)
!2316 = distinct !{!2316, !2300, !2317}
!2317 = !DILocation(line: 40, column: 5, scope: !2283)
!2318 = !DILocation(line: 43, column: 1, scope: !2283)
!2319 = distinct !DISubprogram(name: "atof", scope: !2320, file: !2320, line: 25, type: !2321, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2324)
!2320 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!2323, !652}
!2323 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2324 = !{!2325}
!2325 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2319, file: !2320, line: 25, type: !652)
!2326 = !DILocation(line: 0, scope: !2319)
!2327 = !DILocation(line: 27, column: 10, scope: !2319)
!2328 = !DILocation(line: 27, column: 3, scope: !2319)
!2329 = distinct !DISubprogram(name: "strtoimax", scope: !2330, file: !2330, line: 324, type: !2331, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2337)
!2330 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!2333, !2090, !2336, !647}
!2333 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2334, line: 101, baseType: !2335)
!2334 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2142, line: 72, baseType: !773)
!2336 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !648)
!2337 = !{!2338, !2339, !2340}
!2338 = !DILocalVariable(name: "nptr", arg: 1, scope: !2329, file: !2330, line: 324, type: !2090)
!2339 = !DILocalVariable(name: "endptr", arg: 2, scope: !2329, file: !2330, line: 324, type: !2336)
!2340 = !DILocalVariable(name: "base", arg: 3, scope: !2329, file: !2330, line: 324, type: !647)
!2341 = !DILocation(line: 0, scope: !2329)
!2342 = !DILocation(line: 327, column: 10, scope: !2329)
!2343 = !DILocation(line: 327, column: 3, scope: !2329)
!2344 = distinct !DISubprogram(name: "strtoumax", scope: !2330, file: !2330, line: 336, type: !2345, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2349)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!2347, !2090, !2336, !647}
!2347 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2334, line: 102, baseType: !2348)
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2142, line: 73, baseType: !771)
!2349 = !{!2350, !2351, !2352}
!2350 = !DILocalVariable(name: "nptr", arg: 1, scope: !2344, file: !2330, line: 336, type: !2090)
!2351 = !DILocalVariable(name: "endptr", arg: 2, scope: !2344, file: !2330, line: 336, type: !2336)
!2352 = !DILocalVariable(name: "base", arg: 3, scope: !2344, file: !2330, line: 336, type: !647)
!2353 = !DILocation(line: 0, scope: !2344)
!2354 = !DILocation(line: 339, column: 10, scope: !2344)
!2355 = !DILocation(line: 339, column: 3, scope: !2344)
!2356 = distinct !DISubprogram(name: "wcstoimax", scope: !2330, file: !2330, line: 348, type: !2357, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2366)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!2333, !2359, !2363, !647}
!2359 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2360)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2362)
!2362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2330, line: 34, baseType: !647)
!2363 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2364)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2366 = !{!2367, !2368, !2369}
!2367 = !DILocalVariable(name: "nptr", arg: 1, scope: !2356, file: !2330, line: 348, type: !2359)
!2368 = !DILocalVariable(name: "endptr", arg: 2, scope: !2356, file: !2330, line: 348, type: !2363)
!2369 = !DILocalVariable(name: "base", arg: 3, scope: !2356, file: !2330, line: 348, type: !647)
!2370 = !DILocation(line: 0, scope: !2356)
!2371 = !DILocation(line: 351, column: 10, scope: !2356)
!2372 = !DILocation(line: 351, column: 3, scope: !2356)
!2373 = distinct !DISubprogram(name: "wcstoumax", scope: !2330, file: !2330, line: 362, type: !2374, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2376)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!2347, !2359, !2363, !647}
!2376 = !{!2377, !2378, !2379}
!2377 = !DILocalVariable(name: "nptr", arg: 1, scope: !2373, file: !2330, line: 362, type: !2359)
!2378 = !DILocalVariable(name: "endptr", arg: 2, scope: !2373, file: !2330, line: 362, type: !2363)
!2379 = !DILocalVariable(name: "base", arg: 3, scope: !2373, file: !2330, line: 362, type: !647)
!2380 = !DILocation(line: 0, scope: !2373)
!2381 = !DILocation(line: 365, column: 10, scope: !2373)
!2382 = !DILocation(line: 365, column: 3, scope: !2373)
!2383 = distinct !DISubprogram(name: "stat", scope: !2384, file: !2384, line: 453, type: !2385, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2422)
!2384 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!647, !652, !2387}
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2389, line: 46, size: 1152, elements: !2390)
!2389 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2390 = !{!2391, !2393, !2395, !2397, !2399, !2401, !2403, !2404, !2405, !2406, !2408, !2410, !2418, !2419, !2420}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2388, file: !2389, line: 48, baseType: !2392, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2142, line: 145, baseType: !771)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2388, file: !2389, line: 53, baseType: !2394, size: 64, offset: 64)
!2394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2142, line: 148, baseType: !771)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2388, file: !2389, line: 61, baseType: !2396, size: 64, offset: 128)
!2396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2142, line: 151, baseType: !771)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2388, file: !2389, line: 62, baseType: !2398, size: 32, offset: 192)
!2398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2142, line: 150, baseType: !7)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2388, file: !2389, line: 64, baseType: !2400, size: 32, offset: 224)
!2400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2142, line: 146, baseType: !7)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2388, file: !2389, line: 65, baseType: !2402, size: 32, offset: 256)
!2402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2142, line: 147, baseType: !7)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2388, file: !2389, line: 67, baseType: !647, size: 32, offset: 288)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2388, file: !2389, line: 69, baseType: !2392, size: 64, offset: 320)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2388, file: !2389, line: 74, baseType: !2141, size: 64, offset: 384)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2388, file: !2389, line: 78, baseType: !2407, size: 64, offset: 448)
!2407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2142, line: 174, baseType: !773)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2388, file: !2389, line: 80, baseType: !2409, size: 64, offset: 512)
!2409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2142, line: 179, baseType: !773)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2388, file: !2389, line: 91, baseType: !2411, size: 128, offset: 576)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2412, line: 10, size: 128, elements: !2413)
!2412 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2413 = !{!2414, !2416}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2411, file: !2412, line: 12, baseType: !2415, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2142, line: 160, baseType: !773)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2411, file: !2412, line: 16, baseType: !2417, size: 64, offset: 64)
!2417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2142, line: 196, baseType: !773)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2388, file: !2389, line: 92, baseType: !2411, size: 128, offset: 704)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2388, file: !2389, line: 93, baseType: !2411, size: 128, offset: 832)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2388, file: !2389, line: 106, baseType: !2421, size: 192, offset: 960)
!2421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2417, size: 192, elements: !791)
!2422 = !{!2423, !2424}
!2423 = !DILocalVariable(name: "__path", arg: 1, scope: !2383, file: !2384, line: 453, type: !652)
!2424 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2383, file: !2384, line: 453, type: !2387)
!2425 = !DILocation(line: 0, scope: !2383)
!2426 = !DILocation(line: 455, column: 10, scope: !2383)
!2427 = !DILocation(line: 455, column: 3, scope: !2383)
!2428 = distinct !DISubprogram(name: "lstat", scope: !2384, file: !2384, line: 460, type: !2385, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2429)
!2429 = !{!2430, !2431}
!2430 = !DILocalVariable(name: "__path", arg: 1, scope: !2428, file: !2384, line: 460, type: !652)
!2431 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2428, file: !2384, line: 460, type: !2387)
!2432 = !DILocation(line: 0, scope: !2428)
!2433 = !DILocation(line: 462, column: 10, scope: !2428)
!2434 = !DILocation(line: 462, column: 3, scope: !2428)
!2435 = distinct !DISubprogram(name: "fstat", scope: !2384, file: !2384, line: 467, type: !2436, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2438)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!647, !647, !2387}
!2438 = !{!2439, !2440}
!2439 = !DILocalVariable(name: "__fd", arg: 1, scope: !2435, file: !2384, line: 467, type: !647)
!2440 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2435, file: !2384, line: 467, type: !2387)
!2441 = !DILocation(line: 0, scope: !2435)
!2442 = !DILocation(line: 469, column: 10, scope: !2435)
!2443 = !DILocation(line: 469, column: 3, scope: !2435)
!2444 = distinct !DISubprogram(name: "fstatat", scope: !2384, file: !2384, line: 474, type: !2445, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2447)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!647, !647, !652, !2387, !647}
!2447 = !{!2448, !2449, !2450, !2451}
!2448 = !DILocalVariable(name: "__fd", arg: 1, scope: !2444, file: !2384, line: 474, type: !647)
!2449 = !DILocalVariable(name: "__filename", arg: 2, scope: !2444, file: !2384, line: 474, type: !652)
!2450 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2444, file: !2384, line: 474, type: !2387)
!2451 = !DILocalVariable(name: "__flag", arg: 4, scope: !2444, file: !2384, line: 474, type: !647)
!2452 = !DILocation(line: 0, scope: !2444)
!2453 = !DILocation(line: 477, column: 10, scope: !2444)
!2454 = !DILocation(line: 477, column: 3, scope: !2444)
!2455 = distinct !DISubprogram(name: "mknod", scope: !2384, file: !2384, line: 483, type: !2456, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2458)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!647, !652, !2398, !2392}
!2458 = !{!2459, !2460, !2461}
!2459 = !DILocalVariable(name: "__path", arg: 1, scope: !2455, file: !2384, line: 483, type: !652)
!2460 = !DILocalVariable(name: "__mode", arg: 2, scope: !2455, file: !2384, line: 483, type: !2398)
!2461 = !DILocalVariable(name: "__dev", arg: 3, scope: !2455, file: !2384, line: 483, type: !2392)
!2462 = !DILocation(line: 0, scope: !2455)
!2463 = !DILocation(line: 485, column: 10, scope: !2455)
!2464 = !DILocation(line: 485, column: 3, scope: !2455)
!2465 = distinct !DISubprogram(name: "mknodat", scope: !2384, file: !2384, line: 491, type: !2466, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2468)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!647, !647, !652, !2398, !2392}
!2468 = !{!2469, !2470, !2471, !2472}
!2469 = !DILocalVariable(name: "__fd", arg: 1, scope: !2465, file: !2384, line: 491, type: !647)
!2470 = !DILocalVariable(name: "__path", arg: 2, scope: !2465, file: !2384, line: 491, type: !652)
!2471 = !DILocalVariable(name: "__mode", arg: 3, scope: !2465, file: !2384, line: 491, type: !2398)
!2472 = !DILocalVariable(name: "__dev", arg: 4, scope: !2465, file: !2384, line: 491, type: !2392)
!2473 = !DILocation(line: 0, scope: !2465)
!2474 = !DILocation(line: 494, column: 10, scope: !2465)
!2475 = !DILocation(line: 494, column: 3, scope: !2465)
!2476 = distinct !DISubprogram(name: "stat64", scope: !2384, file: !2384, line: 502, type: !2477, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2499)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!647, !652, !2479}
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2389, line: 119, size: 1152, elements: !2481)
!2481 = !{!2482, !2483, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2495, !2496, !2497, !2498}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2480, file: !2389, line: 121, baseType: !2392, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2480, file: !2389, line: 123, baseType: !2484, size: 64, offset: 64)
!2484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2142, line: 149, baseType: !771)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2480, file: !2389, line: 124, baseType: !2396, size: 64, offset: 128)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2480, file: !2389, line: 125, baseType: !2398, size: 32, offset: 192)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2480, file: !2389, line: 132, baseType: !2400, size: 32, offset: 224)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2480, file: !2389, line: 133, baseType: !2402, size: 32, offset: 256)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2480, file: !2389, line: 135, baseType: !647, size: 32, offset: 288)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2480, file: !2389, line: 136, baseType: !2392, size: 64, offset: 320)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2480, file: !2389, line: 137, baseType: !2141, size: 64, offset: 384)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2480, file: !2389, line: 143, baseType: !2407, size: 64, offset: 448)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2480, file: !2389, line: 144, baseType: !2494, size: 64, offset: 512)
!2494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2142, line: 180, baseType: !773)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2480, file: !2389, line: 152, baseType: !2411, size: 128, offset: 576)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2480, file: !2389, line: 153, baseType: !2411, size: 128, offset: 704)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2480, file: !2389, line: 154, baseType: !2411, size: 128, offset: 832)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2480, file: !2389, line: 164, baseType: !2421, size: 192, offset: 960)
!2499 = !{!2500, !2501}
!2500 = !DILocalVariable(name: "__path", arg: 1, scope: !2476, file: !2384, line: 502, type: !652)
!2501 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2476, file: !2384, line: 502, type: !2479)
!2502 = !DILocation(line: 0, scope: !2476)
!2503 = !DILocation(line: 504, column: 10, scope: !2476)
!2504 = !DILocation(line: 504, column: 3, scope: !2476)
!2505 = distinct !DISubprogram(name: "lstat64", scope: !2384, file: !2384, line: 509, type: !2477, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2506)
!2506 = !{!2507, !2508}
!2507 = !DILocalVariable(name: "__path", arg: 1, scope: !2505, file: !2384, line: 509, type: !652)
!2508 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2505, file: !2384, line: 509, type: !2479)
!2509 = !DILocation(line: 0, scope: !2505)
!2510 = !DILocation(line: 511, column: 10, scope: !2505)
!2511 = !DILocation(line: 511, column: 3, scope: !2505)
!2512 = distinct !DISubprogram(name: "fstat64", scope: !2384, file: !2384, line: 516, type: !2513, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2515)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!647, !647, !2479}
!2515 = !{!2516, !2517}
!2516 = !DILocalVariable(name: "__fd", arg: 1, scope: !2512, file: !2384, line: 516, type: !647)
!2517 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2512, file: !2384, line: 516, type: !2479)
!2518 = !DILocation(line: 0, scope: !2512)
!2519 = !DILocation(line: 518, column: 10, scope: !2512)
!2520 = !DILocation(line: 518, column: 3, scope: !2512)
!2521 = distinct !DISubprogram(name: "fstatat64", scope: !2384, file: !2384, line: 523, type: !2522, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2524)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!647, !647, !652, !2479, !647}
!2524 = !{!2525, !2526, !2527, !2528}
!2525 = !DILocalVariable(name: "__fd", arg: 1, scope: !2521, file: !2384, line: 523, type: !647)
!2526 = !DILocalVariable(name: "__filename", arg: 2, scope: !2521, file: !2384, line: 523, type: !652)
!2527 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2521, file: !2384, line: 523, type: !2479)
!2528 = !DILocalVariable(name: "__flag", arg: 4, scope: !2521, file: !2384, line: 523, type: !647)
!2529 = !DILocation(line: 0, scope: !2521)
!2530 = !DILocation(line: 526, column: 10, scope: !2521)
!2531 = !DILocation(line: 526, column: 3, scope: !2521)
!2532 = distinct !DISubprogram(name: "gate_ch", scope: !3, file: !3, line: 261, type: !2065, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2108)
!2533 = !DILocation(line: 263, column: 10, scope: !2532)
!2534 = !DILocation(line: 263, column: 23, scope: !2532)
!2535 = !DILocation(line: 263, column: 3, scope: !2532)
!2536 = distinct !DISubprogram(name: "copy_loop_headers", scope: !3, file: !3, line: 133, type: !2069, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2537)
!2537 = !{!2538, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2556, !2559, !2569, !2573}
!2538 = !DILocalVariable(name: "li", scope: !2536, file: !3, line: 135, type: !2539)
!2539 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_iterator", file: !561, line: 515, baseType: !2540)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !561, line: 508, size: 128, elements: !2541)
!2541 = !{!2542, !2543}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "to_visit", scope: !2540, file: !561, line: 511, baseType: !2040, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2540, file: !561, line: 514, baseType: !7, size: 32, offset: 64)
!2544 = !DILocalVariable(name: "loop", scope: !2536, file: !3, line: 136, type: !1371)
!2545 = !DILocalVariable(name: "header", scope: !2536, file: !3, line: 137, type: !655)
!2546 = !DILocalVariable(name: "exit", scope: !2536, file: !3, line: 138, type: !673)
!2547 = !DILocalVariable(name: "entry", scope: !2536, file: !3, line: 138, type: !673)
!2548 = !DILocalVariable(name: "bbs", scope: !2536, file: !3, line: 139, type: !654)
!2549 = !DILocalVariable(name: "copied_bbs", scope: !2536, file: !3, line: 139, type: !654)
!2550 = !DILocalVariable(name: "n_bbs", scope: !2536, file: !3, line: 140, type: !7)
!2551 = !DILocalVariable(name: "bbs_size", scope: !2536, file: !3, line: 141, type: !7)
!2552 = !DILocalVariable(name: "limit", scope: !2553, file: !3, line: 162, type: !647)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 160, column: 5)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !3, line: 159, column: 3)
!2555 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 159, column: 3)
!2556 = !DILocalVariable(name: "i", scope: !2557, file: !3, line: 224, type: !7)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !3, line: 223, column: 2)
!2558 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 222, column: 11)
!2559 = !DILocalVariable(name: "bsi", scope: !2560, file: !3, line: 228, type: !2563)
!2560 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 227, column: 6)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !3, line: 226, column: 4)
!2562 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 226, column: 4)
!2563 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !574, line: 265, baseType: !2564)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !574, line: 254, size: 192, elements: !2565)
!2565 = !{!2566, !2567, !2568}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2564, file: !574, line: 257, baseType: !688, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2564, file: !574, line: 263, baseType: !683, size: 64, offset: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2564, file: !574, line: 264, baseType: !655, size: 64, offset: 128)
!2569 = !DILocalVariable(name: "stmt", scope: !2570, file: !3, line: 234, type: !693)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !3, line: 233, column: 3)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 230, column: 8)
!2572 = distinct !DILexicalBlock(scope: !2560, file: !3, line: 230, column: 8)
!2573 = !DILocalVariable(name: "rhs_code", scope: !2574, file: !3, line: 239, type: !366)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 238, column: 7)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 237, column: 14)
!2576 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 235, column: 9)
!2577 = !DILocation(line: 135, column: 3, scope: !2536)
!2578 = !DILocation(line: 136, column: 3, scope: !2536)
!2579 = !DILocation(line: 143, column: 3, scope: !2536)
!2580 = !DILocation(line: 145, column: 7, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 145, column: 7)
!2582 = !DILocation(line: 145, column: 26, scope: !2581)
!2583 = !DILocation(line: 145, column: 7, scope: !2536)
!2584 = !DILocation(line: 147, column: 7, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 146, column: 5)
!2586 = !DILocation(line: 148, column: 7, scope: !2585)
!2587 = !DILocation(line: 155, column: 9, scope: !2536)
!2588 = !DILocation(line: 0, scope: !2536)
!2589 = !DILocation(line: 156, column: 16, scope: !2536)
!2590 = !DILocation(line: 157, column: 14, scope: !2536)
!2591 = !DILocation(line: 159, column: 3, scope: !2555)
!2592 = !DILocation(line: 0, scope: !2553)
!2593 = !DILocation(line: 0, scope: !2560)
!2594 = !DILocation(line: 0, scope: !2572)
!2595 = !DILocation(line: 159, column: 3, scope: !2554)
!2596 = !DILocation(line: 162, column: 7, scope: !2553)
!2597 = !DILocation(line: 162, column: 11, scope: !2553)
!2598 = !DILocation(line: 164, column: 22, scope: !2553)
!2599 = !DILocation(line: 170, column: 11, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 170, column: 11)
!2601 = !DILocation(line: 170, column: 11, scope: !2553)
!2602 = !DILocation(line: 181, column: 7, scope: !2553)
!2603 = !DILocation(line: 181, column: 54, scope: !2553)
!2604 = !DILocation(line: 181, column: 14, scope: !2553)
!2605 = !DILocation(line: 185, column: 31, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2607, file: !3, line: 185, column: 8)
!2607 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 182, column: 2)
!2608 = !DILocation(line: 185, column: 37, scope: !2606)
!2609 = !DILocation(line: 185, column: 60, scope: !2606)
!2610 = !DILocation(line: 185, column: 8, scope: !2606)
!2611 = !DILocation(line: 0, scope: !2606)
!2612 = !DILocation(line: 185, column: 8, scope: !2607)
!2613 = !DILocation(line: 186, column: 13, scope: !2606)
!2614 = !DILocation(line: 186, column: 6, scope: !2606)
!2615 = !DILocation(line: 188, column: 13, scope: !2606)
!2616 = !DILocation(line: 189, column: 13, scope: !2607)
!2617 = !DILocation(line: 189, column: 4, scope: !2607)
!2618 = !DILocation(line: 189, column: 17, scope: !2607)
!2619 = !DILocation(line: 190, column: 4, scope: !2607)
!2620 = !DILocation(line: 191, column: 19, scope: !2607)
!2621 = distinct !{!2621, !2602, !2622}
!2622 = !DILocation(line: 192, column: 2, scope: !2553)
!2623 = !DILocation(line: 194, column: 12, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 194, column: 11)
!2625 = !DILocation(line: 194, column: 11, scope: !2553)
!2626 = !DILocation(line: 197, column: 11, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 197, column: 11)
!2628 = !DILocation(line: 197, column: 21, scope: !2627)
!2629 = !DILocation(line: 197, column: 25, scope: !2627)
!2630 = !DILocation(line: 197, column: 36, scope: !2627)
!2631 = !DILocation(line: 197, column: 11, scope: !2553)
!2632 = !DILocation(line: 200, column: 4, scope: !2627)
!2633 = !DILocation(line: 200, column: 10, scope: !2627)
!2634 = !DILocation(line: 200, column: 21, scope: !2627)
!2635 = !DILocation(line: 200, column: 26, scope: !2627)
!2636 = !DILocation(line: 200, column: 39, scope: !2627)
!2637 = !DILocation(line: 200, column: 45, scope: !2627)
!2638 = !DILocation(line: 198, column: 2, scope: !2627)
!2639 = !DILocation(line: 204, column: 33, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 204, column: 11)
!2641 = !DILocation(line: 204, column: 12, scope: !2640)
!2642 = !DILocation(line: 204, column: 11, scope: !2553)
!2643 = !DILocation(line: 205, column: 27, scope: !2640)
!2644 = !DILocation(line: 205, column: 9, scope: !2640)
!2645 = !DILocation(line: 205, column: 2, scope: !2640)
!2646 = !DILocation(line: 207, column: 36, scope: !2553)
!2647 = !DILocation(line: 207, column: 15, scope: !2553)
!2648 = !DILocation(line: 209, column: 12, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 209, column: 11)
!2650 = !DILocation(line: 209, column: 11, scope: !2553)
!2651 = !DILocation(line: 211, column: 13, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 210, column: 2)
!2653 = !DILocation(line: 211, column: 4, scope: !2652)
!2654 = !DILocation(line: 212, column: 4, scope: !2652)
!2655 = !DILocation(line: 222, column: 11, scope: !2558)
!2656 = !DILocation(line: 222, column: 32, scope: !2558)
!2657 = !DILocation(line: 222, column: 11, scope: !2553)
!2658 = !DILocation(line: 226, column: 18, scope: !2561)
!2659 = !DILocation(line: 226, column: 4, scope: !2562)
!2660 = !DILocation(line: 0, scope: !2562)
!2661 = !DILocation(line: 0, scope: !2557)
!2662 = !DILocation(line: 228, column: 8, scope: !2560)
!2663 = !DILocation(line: 230, column: 19, scope: !2572)
!2664 = !DILocation(line: 230, column: 33, scope: !2572)
!2665 = !DILocation(line: 230, column: 13, scope: !2572)
!2666 = !DILocation(line: 231, column: 7, scope: !2571)
!2667 = !DILocation(line: 231, column: 6, scope: !2571)
!2668 = !DILocation(line: 230, column: 8, scope: !2572)
!2669 = !DILocation(line: 234, column: 19, scope: !2570)
!2670 = !DILocation(line: 0, scope: !2570)
!2671 = !DILocation(line: 235, column: 9, scope: !2576)
!2672 = !DILocation(line: 235, column: 28, scope: !2576)
!2673 = !DILocation(line: 235, column: 9, scope: !2570)
!2674 = !DILocation(line: 236, column: 7, scope: !2576)
!2675 = !DILocation(line: 237, column: 14, scope: !2575)
!2676 = !DILocation(line: 237, column: 14, scope: !2576)
!2677 = !DILocation(line: 239, column: 35, scope: !2574)
!2678 = !DILocation(line: 0, scope: !2574)
!2679 = !DILocation(line: 240, column: 13, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 240, column: 13)
!2681 = !DILocation(line: 240, column: 40, scope: !2680)
!2682 = !DILocation(line: 240, column: 13, scope: !2574)
!2683 = !DILocation(line: 241, column: 4, scope: !2680)
!2684 = !DILocation(line: 232, column: 6, scope: !2571)
!2685 = !DILocation(line: 230, column: 8, scope: !2571)
!2686 = distinct !{!2686, !2668, !2687}
!2687 = !DILocation(line: 243, column: 3, scope: !2572)
!2688 = !DILocation(line: 244, column: 6, scope: !2561)
!2689 = !DILocation(line: 226, column: 27, scope: !2561)
!2690 = !DILocation(line: 226, column: 4, scope: !2561)
!2691 = distinct !{!2691, !2659, !2692}
!2692 = !DILocation(line: 244, column: 6, scope: !2562)
!2693 = !DILocation(line: 249, column: 40, scope: !2553)
!2694 = !DILocation(line: 249, column: 19, scope: !2553)
!2695 = !DILocation(line: 249, column: 7, scope: !2553)
!2696 = !DILocation(line: 250, column: 36, scope: !2553)
!2697 = !DILocation(line: 250, column: 19, scope: !2553)
!2698 = !DILocation(line: 250, column: 7, scope: !2553)
!2699 = !DILocation(line: 251, column: 5, scope: !2554)
!2700 = distinct !{!2700, !2591, !2701}
!2701 = !DILocation(line: 251, column: 5, scope: !2555)
!2702 = !DILocation(line: 253, column: 3, scope: !2536)
!2703 = !DILocation(line: 254, column: 3, scope: !2536)
!2704 = !DILocation(line: 256, column: 3, scope: !2536)
!2705 = !DILocation(line: 257, column: 3, scope: !2536)
!2706 = !DILocation(line: 258, column: 1, scope: !2536)
!2707 = distinct !DISubprogram(name: "number_of_loops", scope: !561, file: !561, line: 459, type: !2069, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2108)
!2708 = !DILocation(line: 461, column: 8, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2707, file: !561, line: 461, column: 7)
!2710 = !DILocation(line: 461, column: 7, scope: !2707)
!2711 = !DILocation(line: 464, column: 10, scope: !2707)
!2712 = !DILocation(line: 464, column: 3, scope: !2707)
!2713 = !DILocation(line: 0, scope: !2707)
!2714 = !DILocation(line: 465, column: 1, scope: !2707)
!2715 = distinct !DISubprogram(name: "fel_init", scope: !561, file: !561, line: 535, type: !2716, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2720)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{null, !2718, !2719, !7}
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!2720 = !{!2721, !2722, !2723, !2724, !2725, !2726}
!2721 = !DILocalVariable(name: "li", arg: 1, scope: !2715, file: !561, line: 535, type: !2718)
!2722 = !DILocalVariable(name: "loop", arg: 2, scope: !2715, file: !561, line: 535, type: !2719)
!2723 = !DILocalVariable(name: "flags", arg: 3, scope: !2715, file: !561, line: 535, type: !7)
!2724 = !DILocalVariable(name: "aloop", scope: !2715, file: !561, line: 537, type: !1371)
!2725 = !DILocalVariable(name: "i", scope: !2715, file: !561, line: 538, type: !7)
!2726 = !DILocalVariable(name: "mn", scope: !2715, file: !561, line: 539, type: !647)
!2727 = !DILocation(line: 0, scope: !2715)
!2728 = !DILocation(line: 541, column: 7, scope: !2715)
!2729 = !DILocation(line: 541, column: 11, scope: !2715)
!2730 = !DILocation(line: 542, column: 8, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2715, file: !561, line: 542, column: 7)
!2732 = !DILocation(line: 542, column: 7, scope: !2715)
!2733 = !DILocation(line: 544, column: 11, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2731, file: !561, line: 543, column: 5)
!2735 = !DILocation(line: 544, column: 20, scope: !2734)
!2736 = !DILocation(line: 545, column: 13, scope: !2734)
!2737 = !DILocation(line: 546, column: 7, scope: !2734)
!2738 = !DILocation(line: 549, column: 18, scope: !2715)
!2739 = !DILocation(line: 549, column: 7, scope: !2715)
!2740 = !DILocation(line: 549, column: 16, scope: !2715)
!2741 = !DILocation(line: 0, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !561, line: 560, column: 12)
!2743 = distinct !DILexicalBlock(scope: !2715, file: !561, line: 552, column: 7)
!2744 = !DILocation(line: 590, column: 7, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2742, file: !561, line: 587, column: 5)
!2746 = !DILocation(line: 592, column: 8, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !561, line: 592, column: 8)
!2748 = distinct !DILexicalBlock(scope: !2745, file: !561, line: 591, column: 2)
!2749 = !DILocation(line: 592, column: 15, scope: !2747)
!2750 = !DILocation(line: 592, column: 19, scope: !2747)
!2751 = !DILocation(line: 592, column: 8, scope: !2748)
!2752 = !DILocation(line: 593, column: 6, scope: !2747)
!2753 = !DILocation(line: 595, column: 15, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2748, file: !561, line: 595, column: 8)
!2755 = !DILocation(line: 595, column: 21, scope: !2754)
!2756 = !DILocation(line: 595, column: 8, scope: !2748)
!2757 = !DILocation(line: 599, column: 8, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2754, file: !561, line: 598, column: 6)
!2759 = !DILocation(line: 596, column: 21, scope: !2754)
!2760 = !DILocation(line: 596, column: 6, scope: !2754)
!2761 = !DILocation(line: 599, column: 15, scope: !2758)
!2762 = !DILocation(line: 599, column: 21, scope: !2758)
!2763 = !DILocation(line: 599, column: 29, scope: !2758)
!2764 = !DILocation(line: 599, column: 39, scope: !2758)
!2765 = !DILocation(line: 599, column: 44, scope: !2758)
!2766 = !DILocation(line: 0, scope: !2758)
!2767 = !DILocation(line: 600, column: 11, scope: !2758)
!2768 = distinct !{!2768, !2757, !2769}
!2769 = !DILocation(line: 600, column: 28, scope: !2758)
!2770 = !DILocation(line: 601, column: 18, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2758, file: !561, line: 601, column: 12)
!2772 = !DILocation(line: 601, column: 12, scope: !2758)
!2773 = !DILocation(line: 603, column: 23, scope: !2758)
!2774 = distinct !{!2774, !2744, !2775}
!2775 = !DILocation(line: 605, column: 2, scope: !2745)
!2776 = !DILocation(line: 608, column: 3, scope: !2715)
!2777 = !DILocation(line: 609, column: 1, scope: !2715)
!2778 = distinct !DISubprogram(name: "do_while_loop_p", scope: !3, file: !3, line: 110, type: !2779, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2781)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!646, !1371}
!2781 = !{!2782, !2783}
!2782 = !DILocalVariable(name: "loop", arg: 1, scope: !2778, file: !3, line: 110, type: !1371)
!2783 = !DILocalVariable(name: "stmt", scope: !2778, file: !3, line: 112, type: !693)
!2784 = !DILocation(line: 0, scope: !2778)
!2785 = !DILocation(line: 112, column: 34, scope: !2778)
!2786 = !DILocation(line: 112, column: 17, scope: !2778)
!2787 = !DILocation(line: 115, column: 7, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2778, file: !3, line: 115, column: 7)
!2789 = !DILocation(line: 116, column: 7, scope: !2788)
!2790 = !DILocation(line: 116, column: 10, scope: !2788)
!2791 = !DILocation(line: 116, column: 29, scope: !2788)
!2792 = !DILocation(line: 115, column: 7, scope: !2778)
!2793 = !DILocation(line: 120, column: 36, scope: !2778)
!2794 = !DILocation(line: 120, column: 10, scope: !2778)
!2795 = !DILocation(line: 121, column: 7, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2778, file: !3, line: 121, column: 7)
!2797 = !DILocation(line: 122, column: 7, scope: !2796)
!2798 = !DILocation(line: 122, column: 10, scope: !2796)
!2799 = !DILocation(line: 122, column: 29, scope: !2796)
!2800 = !DILocation(line: 121, column: 7, scope: !2778)
!2801 = !DILocation(line: 125, column: 3, scope: !2778)
!2802 = !DILocation(line: 126, column: 1, scope: !2778)
!2803 = distinct !DISubprogram(name: "should_duplicate_loop_header_p", scope: !3, file: !3, line: 50, type: !2804, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2807)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!646, !655, !1371, !2806}
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!2807 = !{!2808, !2809, !2810, !2811, !2812}
!2808 = !DILocalVariable(name: "header", arg: 1, scope: !2803, file: !3, line: 50, type: !655)
!2809 = !DILocalVariable(name: "loop", arg: 2, scope: !2803, file: !3, line: 50, type: !1371)
!2810 = !DILocalVariable(name: "limit", arg: 3, scope: !2803, file: !3, line: 51, type: !2806)
!2811 = !DILocalVariable(name: "bsi", scope: !2803, file: !3, line: 53, type: !2563)
!2812 = !DILocalVariable(name: "last", scope: !2803, file: !3, line: 54, type: !693)
!2813 = !DILocation(line: 0, scope: !2803)
!2814 = !DILocation(line: 53, column: 3, scope: !2803)
!2815 = !DILocation(line: 58, column: 15, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 58, column: 7)
!2817 = !DILocation(line: 58, column: 7, scope: !2816)
!2818 = !DILocation(line: 58, column: 7, scope: !2803)
!2819 = !DILocation(line: 65, column: 7, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 65, column: 7)
!2821 = !DILocation(line: 65, column: 7, scope: !2803)
!2822 = !DILocation(line: 68, column: 3, scope: !2803)
!2823 = !DILocation(line: 69, column: 7, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 69, column: 7)
!2825 = !DILocation(line: 69, column: 7, scope: !2803)
!2826 = !DILocation(line: 71, column: 36, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 71, column: 7)
!2828 = !DILocation(line: 71, column: 59, scope: !2827)
!2829 = !DILocation(line: 71, column: 7, scope: !2827)
!2830 = !DILocation(line: 72, column: 7, scope: !2827)
!2831 = !DILocation(line: 72, column: 39, scope: !2827)
!2832 = !DILocation(line: 72, column: 62, scope: !2827)
!2833 = !DILocation(line: 72, column: 10, scope: !2827)
!2834 = !DILocation(line: 71, column: 7, scope: !2803)
!2835 = !DILocation(line: 77, column: 23, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 77, column: 7)
!2837 = !DILocation(line: 77, column: 14, scope: !2836)
!2838 = !DILocation(line: 77, column: 30, scope: !2836)
!2839 = !DILocation(line: 77, column: 34, scope: !2836)
!2840 = !DILocation(line: 77, column: 7, scope: !2803)
!2841 = !DILocation(line: 80, column: 10, scope: !2803)
!2842 = !DILocation(line: 81, column: 7, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 81, column: 7)
!2844 = !DILocation(line: 81, column: 26, scope: !2843)
!2845 = !DILocation(line: 81, column: 7, scope: !2803)
!2846 = !DILocation(line: 86, column: 14, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 86, column: 3)
!2848 = !DILocation(line: 86, column: 8, scope: !2847)
!2849 = !DILocation(line: 86, column: 38, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 86, column: 3)
!2851 = !DILocation(line: 86, column: 37, scope: !2850)
!2852 = !DILocation(line: 86, column: 3, scope: !2847)
!2853 = !DILocation(line: 88, column: 14, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 87, column: 5)
!2855 = !DILocation(line: 90, column: 11, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2854, file: !3, line: 90, column: 11)
!2857 = !DILocation(line: 90, column: 30, scope: !2856)
!2858 = !DILocation(line: 90, column: 11, scope: !2854)
!2859 = !DILocation(line: 93, column: 11, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2854, file: !3, line: 93, column: 11)
!2861 = !DILocation(line: 93, column: 11, scope: !2854)
!2862 = !DILocation(line: 96, column: 11, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2854, file: !3, line: 96, column: 11)
!2864 = !DILocation(line: 96, column: 11, scope: !2854)
!2865 = !DILocation(line: 99, column: 17, scope: !2854)
!2866 = !DILocation(line: 99, column: 14, scope: !2854)
!2867 = !DILocation(line: 100, column: 18, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2854, file: !3, line: 100, column: 11)
!2869 = !DILocation(line: 100, column: 11, scope: !2854)
!2870 = !DILocation(line: 86, column: 55, scope: !2850)
!2871 = !DILocation(line: 86, column: 3, scope: !2850)
!2872 = distinct !{!2872, !2852, !2873}
!2873 = !DILocation(line: 102, column: 5, scope: !2847)
!2874 = !DILocation(line: 105, column: 1, scope: !2803)
!2875 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !318, file: !318, line: 150, type: !2876, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2880)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!673, !2878, !7}
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !666)
!2880 = !{!2881, !2882}
!2881 = !DILocalVariable(name: "vec_", arg: 1, scope: !2875, file: !318, line: 150, type: !2878)
!2882 = !DILocalVariable(name: "ix_", arg: 2, scope: !2875, file: !318, line: 150, type: !7)
!2883 = !DILocation(line: 0, scope: !2875)
!2884 = !DILocation(line: 150, column: 1, scope: !2875)
!2885 = distinct !DISubprogram(name: "single_pred_p", scope: !318, file: !318, line: 634, type: !2886, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2891)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!646, !2888}
!2888 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !656, line: 112, baseType: !2889)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!2891 = !{!2892}
!2892 = !DILocalVariable(name: "bb", arg: 1, scope: !2885, file: !318, line: 634, type: !2888)
!2893 = !DILocation(line: 0, scope: !2885)
!2894 = !DILocation(line: 636, column: 10, scope: !2885)
!2895 = !DILocation(line: 636, column: 33, scope: !2885)
!2896 = !DILocation(line: 636, column: 3, scope: !2885)
!2897 = distinct !DISubprogram(name: "single_pred_edge", scope: !318, file: !318, line: 653, type: !2898, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2900)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!673, !2888}
!2900 = !{!2901}
!2901 = !DILocalVariable(name: "bb", arg: 1, scope: !2897, file: !318, line: 653, type: !2888)
!2902 = !DILocation(line: 0, scope: !2897)
!2903 = !DILocation(line: 655, column: 3, scope: !2897)
!2904 = !DILocation(line: 656, column: 10, scope: !2897)
!2905 = !DILocation(line: 656, column: 3, scope: !2897)
!2906 = distinct !DISubprogram(name: "gsi_start_bb", scope: !574, file: !574, line: 4418, type: !2907, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2909)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!2563, !655}
!2909 = !{!2910, !2911, !2912}
!2910 = !DILocalVariable(name: "bb", arg: 1, scope: !2906, file: !574, line: 4418, type: !655)
!2911 = !DILocalVariable(name: "i", scope: !2906, file: !574, line: 4420, type: !2563)
!2912 = !DILocalVariable(name: "seq", scope: !2906, file: !574, line: 4421, type: !683)
!2913 = !DILocation(line: 0, scope: !2906)
!2914 = !DILocation(line: 4420, column: 24, scope: !2906)
!2915 = !DILocation(line: 4423, column: 9, scope: !2906)
!2916 = !DILocation(line: 4424, column: 11, scope: !2906)
!2917 = !DILocation(line: 4424, column: 5, scope: !2906)
!2918 = !DILocation(line: 4424, column: 9, scope: !2906)
!2919 = !DILocation(line: 4425, column: 5, scope: !2906)
!2920 = !DILocation(line: 4425, column: 9, scope: !2906)
!2921 = !DILocation(line: 4426, column: 5, scope: !2906)
!2922 = !DILocation(line: 4426, column: 8, scope: !2906)
!2923 = !DILocation(line: 4429, column: 1, scope: !2906)
!2924 = distinct !DISubprogram(name: "gsi_end_p", scope: !574, file: !574, line: 4467, type: !2925, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2927)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!646, !2563}
!2927 = !{!2928}
!2928 = !DILocalVariable(name: "i", arg: 1, scope: !2924, file: !574, line: 4467, type: !2563)
!2929 = !DILocation(line: 4467, column: 33, scope: !2924)
!2930 = !DILocation(line: 4469, column: 12, scope: !2924)
!2931 = !DILocation(line: 4469, column: 16, scope: !2924)
!2932 = !DILocation(line: 4469, column: 10, scope: !2924)
!2933 = !DILocation(line: 4469, column: 3, scope: !2924)
!2934 = distinct !DISubprogram(name: "gsi_stmt", scope: !574, file: !574, line: 4501, type: !2935, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2937)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!693, !2563}
!2937 = !{!2938}
!2938 = !DILocalVariable(name: "i", arg: 1, scope: !2934, file: !574, line: 4501, type: !2563)
!2939 = !DILocation(line: 4501, column: 32, scope: !2934)
!2940 = !DILocation(line: 4503, column: 12, scope: !2934)
!2941 = !DILocation(line: 4503, column: 17, scope: !2934)
!2942 = !DILocation(line: 4503, column: 3, scope: !2934)
!2943 = distinct !DISubprogram(name: "gimple_code", scope: !574, file: !574, line: 1052, type: !2944, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2947)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!573, !2946}
!2946 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !656, line: 60, baseType: !2053)
!2947 = !{!2948}
!2948 = !DILocalVariable(name: "g", arg: 1, scope: !2943, file: !574, line: 1052, type: !2946)
!2949 = !DILocation(line: 0, scope: !2943)
!2950 = !DILocation(line: 1054, column: 20, scope: !2943)
!2951 = !DILocation(line: 1054, column: 3, scope: !2943)
!2952 = distinct !DISubprogram(name: "gimple_set_no_warning", scope: !574, file: !574, line: 1209, type: !2953, scopeLine: 1210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2955)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{null, !693, !646}
!2955 = !{!2956, !2957}
!2956 = !DILocalVariable(name: "stmt", arg: 1, scope: !2952, file: !574, line: 1209, type: !693)
!2957 = !DILocalVariable(name: "no_warning", arg: 2, scope: !2952, file: !574, line: 1209, type: !646)
!2958 = !DILocation(line: 0, scope: !2952)
!2959 = !DILocation(line: 1211, column: 16, scope: !2952)
!2960 = !DILocation(line: 1211, column: 27, scope: !2952)
!2961 = !DILocation(line: 1212, column: 1, scope: !2952)
!2962 = distinct !DISubprogram(name: "is_gimple_assign", scope: !574, file: !574, line: 1677, type: !2963, scopeLine: 1678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2965)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!646, !2946}
!2965 = !{!2966}
!2966 = !DILocalVariable(name: "gs", arg: 1, scope: !2962, file: !574, line: 1677, type: !2946)
!2967 = !DILocation(line: 0, scope: !2962)
!2968 = !DILocation(line: 1679, column: 10, scope: !2962)
!2969 = !DILocation(line: 1679, column: 27, scope: !2962)
!2970 = !DILocation(line: 1679, column: 3, scope: !2962)
!2971 = distinct !DISubprogram(name: "gimple_assign_rhs_code", scope: !574, file: !574, line: 1815, type: !2972, scopeLine: 1816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2974)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!366, !2946}
!2974 = !{!2975, !2976}
!2975 = !DILocalVariable(name: "gs", arg: 1, scope: !2971, file: !574, line: 1815, type: !2946)
!2976 = !DILocalVariable(name: "code", scope: !2971, file: !574, line: 1817, type: !366)
!2977 = !DILocation(line: 0, scope: !2971)
!2978 = !DILocation(line: 1820, column: 10, scope: !2971)
!2979 = !DILocation(line: 1821, column: 7, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2971, file: !574, line: 1821, column: 7)
!2981 = !DILocation(line: 1821, column: 35, scope: !2980)
!2982 = !DILocation(line: 1821, column: 7, scope: !2971)
!2983 = !DILocation(line: 1822, column: 12, scope: !2980)
!2984 = !DILocation(line: 1822, column: 5, scope: !2980)
!2985 = !DILocation(line: 1824, column: 3, scope: !2971)
!2986 = distinct !DISubprogram(name: "gsi_next", scope: !574, file: !574, line: 4485, type: !2987, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2990)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{null, !2989}
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2990 = !{!2991}
!2991 = !DILocalVariable(name: "i", arg: 1, scope: !2986, file: !574, line: 4485, type: !2989)
!2992 = !DILocation(line: 0, scope: !2986)
!2993 = !DILocation(line: 4487, column: 15, scope: !2986)
!2994 = !DILocation(line: 4487, column: 20, scope: !2986)
!2995 = !DILocation(line: 4487, column: 10, scope: !2986)
!2996 = !DILocation(line: 4488, column: 1, scope: !2986)
!2997 = distinct !DISubprogram(name: "fel_next", scope: !561, file: !561, line: 518, type: !2998, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3000)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{null, !2718, !2719}
!3000 = !{!3001, !3002, !3003}
!3001 = !DILocalVariable(name: "li", arg: 1, scope: !2997, file: !561, line: 518, type: !2718)
!3002 = !DILocalVariable(name: "loop", arg: 2, scope: !2997, file: !561, line: 518, type: !2719)
!3003 = !DILocalVariable(name: "anum", scope: !2997, file: !561, line: 520, type: !647)
!3004 = !DILocation(line: 0, scope: !2997)
!3005 = !DILocation(line: 520, column: 3, scope: !2997)
!3006 = !DILocation(line: 522, column: 3, scope: !2997)
!3007 = !DILocation(line: 522, column: 10, scope: !2997)
!3008 = !DILocation(line: 524, column: 14, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2997, file: !561, line: 523, column: 5)
!3010 = !DILocation(line: 525, column: 25, scope: !3009)
!3011 = !DILocation(line: 525, column: 15, scope: !3009)
!3012 = !DILocation(line: 525, column: 13, scope: !3009)
!3013 = !DILocation(line: 526, column: 11, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3009, file: !561, line: 526, column: 11)
!3015 = !DILocation(line: 526, column: 11, scope: !3009)
!3016 = distinct !{!3016, !3006, !3017}
!3017 = !DILocation(line: 528, column: 5, scope: !2997)
!3018 = !DILocation(line: 530, column: 3, scope: !2997)
!3019 = !DILocation(line: 531, column: 9, scope: !2997)
!3020 = !DILocation(line: 532, column: 1, scope: !2997)
!3021 = distinct !DISubprogram(name: "VEC_loop_p_base_length", scope: !561, file: !561, line: 85, type: !3022, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3026)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!7, !3024}
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1363)
!3026 = !{!3027}
!3027 = !DILocalVariable(name: "vec_", arg: 1, scope: !3021, file: !561, line: 85, type: !3024)
!3028 = !DILocation(line: 0, scope: !3021)
!3029 = !DILocation(line: 85, column: 1, scope: !3021)
!3030 = distinct !DISubprogram(name: "VEC_int_heap_alloc", scope: !2042, file: !2042, line: 32, type: !3031, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3033)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!2040, !647}
!3033 = !{!3034}
!3034 = !DILocalVariable(name: "alloc_", arg: 1, scope: !3030, file: !2042, line: 32, type: !647)
!3035 = !DILocation(line: 0, scope: !3030)
!3036 = !DILocation(line: 32, column: 1, scope: !3030)
!3037 = distinct !DISubprogram(name: "VEC_loop_p_base_iterate", scope: !561, file: !561, line: 85, type: !3038, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3040)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!647, !3024, !7, !2719}
!3040 = !{!3041, !3042, !3043}
!3041 = !DILocalVariable(name: "vec_", arg: 1, scope: !3037, file: !561, line: 85, type: !3024)
!3042 = !DILocalVariable(name: "ix_", arg: 2, scope: !3037, file: !561, line: 85, type: !7)
!3043 = !DILocalVariable(name: "ptr", arg: 3, scope: !3037, file: !561, line: 85, type: !2719)
!3044 = !DILocation(line: 0, scope: !3037)
!3045 = distinct !DISubprogram(name: "VEC_int_base_quick_push", scope: !2042, file: !2042, line: 31, type: !3046, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3049)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!2806, !3048, !647}
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!3049 = !{!3050, !3051, !3052}
!3050 = !DILocalVariable(name: "vec_", arg: 1, scope: !3045, file: !2042, line: 31, type: !3048)
!3051 = !DILocalVariable(name: "obj_", arg: 2, scope: !3045, file: !2042, line: 31, type: !647)
!3052 = !DILocalVariable(name: "slot_", scope: !3045, file: !2042, line: 31, type: !2806)
!3053 = !DILocation(line: 0, scope: !3045)
!3054 = !DILocation(line: 31, column: 1, scope: !3045)
!3055 = distinct !DISubprogram(name: "loop_outer", scope: !561, file: !561, line: 434, type: !3056, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3060)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!1371, !3058}
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1372)
!3060 = !{!3061, !3062}
!3061 = !DILocalVariable(name: "loop", arg: 1, scope: !3055, file: !561, line: 434, type: !3058)
!3062 = !DILocalVariable(name: "n", scope: !3055, file: !561, line: 436, type: !7)
!3063 = !DILocation(line: 0, scope: !3055)
!3064 = !DILocation(line: 436, column: 16, scope: !3055)
!3065 = !DILocation(line: 438, column: 9, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3055, file: !561, line: 438, column: 7)
!3067 = !DILocation(line: 438, column: 7, scope: !3055)
!3068 = !DILocation(line: 441, column: 10, scope: !3055)
!3069 = !DILocation(line: 441, column: 3, scope: !3055)
!3070 = !DILocation(line: 442, column: 1, scope: !3055)
!3071 = distinct !DISubprogram(name: "VEC_loop_p_base_index", scope: !561, file: !561, line: 85, type: !3072, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3074)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!1370, !3024, !7}
!3074 = !{!3075, !3076}
!3075 = !DILocalVariable(name: "vec_", arg: 1, scope: !3071, file: !561, line: 85, type: !3024)
!3076 = !DILocalVariable(name: "ix_", arg: 2, scope: !3071, file: !561, line: 85, type: !7)
!3077 = !DILocation(line: 0, scope: !3071)
!3078 = !DILocation(line: 85, column: 1, scope: !3071)
!3079 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !318, file: !318, line: 150, type: !3080, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3082)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!7, !2878}
!3082 = !{!3083}
!3083 = !DILocalVariable(name: "vec_", arg: 1, scope: !3079, file: !318, line: 150, type: !2878)
!3084 = !DILocation(line: 0, scope: !3079)
!3085 = !DILocation(line: 150, column: 1, scope: !3079)
!3086 = distinct !DISubprogram(name: "single_succ_p", scope: !318, file: !318, line: 626, type: !2886, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3087)
!3087 = !{!3088}
!3088 = !DILocalVariable(name: "bb", arg: 1, scope: !3086, file: !318, line: 626, type: !2888)
!3089 = !DILocation(line: 0, scope: !3086)
!3090 = !DILocation(line: 628, column: 10, scope: !3086)
!3091 = !DILocation(line: 628, column: 33, scope: !3086)
!3092 = !DILocation(line: 628, column: 3, scope: !3086)
!3093 = distinct !DISubprogram(name: "is_gimple_debug", scope: !574, file: !574, line: 3249, type: !2963, scopeLine: 3250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3094)
!3094 = !{!3095}
!3095 = !DILocalVariable(name: "gs", arg: 1, scope: !3093, file: !574, line: 3249, type: !2946)
!3096 = !DILocation(line: 0, scope: !3093)
!3097 = !DILocation(line: 3251, column: 10, scope: !3093)
!3098 = !DILocation(line: 3251, column: 27, scope: !3093)
!3099 = !DILocation(line: 3251, column: 3, scope: !3093)
!3100 = distinct !DISubprogram(name: "is_gimple_call", scope: !574, file: !574, line: 1870, type: !2963, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3101)
!3101 = !{!3102}
!3102 = !DILocalVariable(name: "gs", arg: 1, scope: !3100, file: !574, line: 1870, type: !2946)
!3103 = !DILocation(line: 0, scope: !3100)
!3104 = !DILocation(line: 1872, column: 10, scope: !3100)
!3105 = !DILocation(line: 1872, column: 27, scope: !3100)
!3106 = !DILocation(line: 1872, column: 3, scope: !3100)
!3107 = distinct !DISubprogram(name: "bb_seq", scope: !574, file: !574, line: 237, type: !3108, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3110)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!683, !2888}
!3110 = !{!3111}
!3111 = !DILocalVariable(name: "bb", arg: 1, scope: !3107, file: !574, line: 237, type: !2888)
!3112 = !DILocation(line: 0, scope: !3107)
!3113 = !DILocation(line: 239, column: 17, scope: !3107)
!3114 = !DILocation(line: 239, column: 23, scope: !3107)
!3115 = !DILocation(line: 239, column: 33, scope: !3107)
!3116 = !DILocation(line: 239, column: 43, scope: !3107)
!3117 = !DILocation(line: 239, column: 36, scope: !3107)
!3118 = !DILocation(line: 239, column: 10, scope: !3107)
!3119 = !DILocation(line: 239, column: 68, scope: !3107)
!3120 = !DILocation(line: 239, column: 3, scope: !3107)
!3121 = distinct !DISubprogram(name: "gimple_seq_first", scope: !574, file: !574, line: 159, type: !3122, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3127)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!688, !3124}
!3124 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !656, line: 67, baseType: !3125)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !685)
!3127 = !{!3128}
!3128 = !DILocalVariable(name: "s", arg: 1, scope: !3121, file: !574, line: 159, type: !3124)
!3129 = !DILocation(line: 0, scope: !3121)
!3130 = !DILocation(line: 161, column: 10, scope: !3121)
!3131 = !DILocation(line: 161, column: 17, scope: !3121)
!3132 = !DILocation(line: 161, column: 3, scope: !3121)
!3133 = distinct !DISubprogram(name: "gimple_expr_code", scope: !574, file: !574, line: 1438, type: !2972, scopeLine: 1439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3134)
!3134 = !{!3135, !3136}
!3135 = !DILocalVariable(name: "stmt", arg: 1, scope: !3133, file: !574, line: 1438, type: !2946)
!3136 = !DILocalVariable(name: "code", scope: !3133, file: !574, line: 1440, type: !573)
!3137 = !DILocation(line: 0, scope: !3133)
!3138 = !DILocation(line: 1440, column: 27, scope: !3133)
!3139 = !DILocation(line: 1441, column: 29, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3133, file: !574, line: 1441, column: 7)
!3141 = !DILocation(line: 1442, column: 42, scope: !3140)
!3142 = !DILocation(line: 1442, column: 5, scope: !3140)
!3143 = !DILocation(line: 1446, column: 5, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3140, file: !574, line: 1443, column: 12)
!3145 = !DILocation(line: 1448, column: 5, scope: !3133)
!3146 = !DILocation(line: 1450, column: 1, scope: !3133)
!3147 = distinct !DISubprogram(name: "get_gimple_rhs_class", scope: !574, file: !574, line: 1686, type: !3148, scopeLine: 1687, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3150)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!612, !366}
!3150 = !{!3151}
!3151 = !DILocalVariable(name: "code", arg: 1, scope: !3147, file: !574, line: 1686, type: !366)
!3152 = !DILocation(line: 0, scope: !3147)
!3153 = !DILocation(line: 1688, column: 34, scope: !3147)
!3154 = !DILocation(line: 1688, column: 10, scope: !3147)
!3155 = !DILocation(line: 1688, column: 3, scope: !3147)
!3156 = distinct !DISubprogram(name: "gimple_assign_rhs1", scope: !574, file: !574, line: 1727, type: !3157, scopeLine: 1728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3159)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!718, !2946}
!3159 = !{!3160}
!3160 = !DILocalVariable(name: "gs", arg: 1, scope: !3156, file: !574, line: 1727, type: !2946)
!3161 = !DILocation(line: 0, scope: !3156)
!3162 = !DILocation(line: 1730, column: 10, scope: !3156)
!3163 = !DILocation(line: 1730, column: 3, scope: !3156)
!3164 = distinct !DISubprogram(name: "gimple_op", scope: !574, file: !574, line: 1631, type: !3165, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3167)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!718, !2946, !7}
!3167 = !{!3168, !3169}
!3168 = !DILocalVariable(name: "gs", arg: 1, scope: !3164, file: !574, line: 1631, type: !2946)
!3169 = !DILocalVariable(name: "i", arg: 2, scope: !3164, file: !574, line: 1631, type: !7)
!3170 = !DILocation(line: 0, scope: !3164)
!3171 = !DILocation(line: 1633, column: 7, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3164, file: !574, line: 1633, column: 7)
!3173 = !DILocation(line: 1633, column: 7, scope: !3164)
!3174 = !DILocation(line: 1638, column: 14, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3172, file: !574, line: 1634, column: 5)
!3176 = !DILocation(line: 1638, column: 7, scope: !3175)
!3177 = !DILocation(line: 0, scope: !3172)
!3178 = !DILocation(line: 1642, column: 1, scope: !3164)
!3179 = distinct !DISubprogram(name: "gimple_has_ops", scope: !574, file: !574, line: 1274, type: !2963, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3180)
!3180 = !{!3181}
!3181 = !DILocalVariable(name: "g", arg: 1, scope: !3179, file: !574, line: 1274, type: !2946)
!3182 = !DILocation(line: 0, scope: !3179)
!3183 = !DILocation(line: 1276, column: 10, scope: !3179)
!3184 = !DILocation(line: 1276, column: 26, scope: !3179)
!3185 = !DILocation(line: 1276, column: 41, scope: !3179)
!3186 = !DILocation(line: 1276, column: 44, scope: !3179)
!3187 = !DILocation(line: 1276, column: 60, scope: !3179)
!3188 = !DILocation(line: 1276, column: 3, scope: !3179)
!3189 = distinct !DISubprogram(name: "gimple_ops", scope: !574, file: !574, line: 1614, type: !3190, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3192)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!1334, !693}
!3192 = !{!3193, !3194}
!3193 = !DILocalVariable(name: "gs", arg: 1, scope: !3189, file: !574, line: 1614, type: !693)
!3194 = !DILocalVariable(name: "off", scope: !3189, file: !574, line: 1616, type: !1242)
!3195 = !DILocation(line: 0, scope: !3189)
!3196 = !DILocation(line: 1621, column: 28, scope: !3189)
!3197 = !DILocation(line: 1621, column: 9, scope: !3189)
!3198 = !DILocation(line: 1622, column: 3, scope: !3189)
!3199 = !DILocation(line: 1624, column: 20, scope: !3189)
!3200 = !DILocation(line: 1624, column: 32, scope: !3189)
!3201 = !DILocation(line: 1624, column: 10, scope: !3189)
!3202 = !DILocation(line: 1624, column: 3, scope: !3189)
!3203 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !574, file: !574, line: 1073, type: !3204, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3206)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!618, !693}
!3206 = !{!3207}
!3207 = !DILocalVariable(name: "gs", arg: 1, scope: !3203, file: !574, line: 1073, type: !693)
!3208 = !DILocation(line: 0, scope: !3203)
!3209 = !DILocation(line: 1075, column: 24, scope: !3203)
!3210 = !DILocation(line: 1075, column: 10, scope: !3203)
!3211 = !DILocation(line: 1075, column: 3, scope: !3203)
!3212 = distinct !DISubprogram(name: "gss_for_code", scope: !574, file: !574, line: 1061, type: !3213, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3215)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!618, !573}
!3215 = !{!3216}
!3216 = !DILocalVariable(name: "code", arg: 1, scope: !3212, file: !574, line: 1061, type: !573)
!3217 = !DILocation(line: 0, scope: !3212)
!3218 = !DILocation(line: 1066, column: 10, scope: !3212)
!3219 = !DILocation(line: 1066, column: 3, scope: !3212)
!3220 = distinct !DISubprogram(name: "VEC_int_base_iterate", scope: !2042, file: !2042, line: 31, type: !3221, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3225)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!647, !3223, !7, !2806}
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2046)
!3225 = !{!3226, !3227, !3228}
!3226 = !DILocalVariable(name: "vec_", arg: 1, scope: !3220, file: !2042, line: 31, type: !3223)
!3227 = !DILocalVariable(name: "ix_", arg: 2, scope: !3220, file: !2042, line: 31, type: !7)
!3228 = !DILocalVariable(name: "ptr", arg: 3, scope: !3220, file: !2042, line: 31, type: !2806)
!3229 = !DILocation(line: 0, scope: !3220)
!3230 = !DILocation(line: 31, column: 1, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3220, file: !2042, line: 31, column: 1)
!3232 = !DILocation(line: 31, column: 1, scope: !3220)
!3233 = !DILocation(line: 31, column: 1, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3231, file: !2042, line: 31, column: 1)
!3235 = !DILocation(line: 31, column: 1, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3231, file: !2042, line: 31, column: 1)
!3237 = !DILocation(line: 0, scope: !3231)
!3238 = distinct !DISubprogram(name: "get_loop", scope: !561, file: !561, line: 417, type: !3239, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3241)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!1371, !7}
!3241 = !{!3242}
!3242 = !DILocalVariable(name: "num", arg: 1, scope: !3238, file: !561, line: 417, type: !7)
!3243 = !DILocation(line: 0, scope: !3238)
!3244 = !DILocation(line: 419, column: 10, scope: !3238)
!3245 = !DILocation(line: 419, column: 3, scope: !3238)
!3246 = distinct !DISubprogram(name: "VEC_int_heap_free", scope: !2042, file: !2042, line: 32, type: !3247, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3250)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{null, !3249}
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!3250 = !{!3251}
!3251 = !DILocalVariable(name: "vec_", arg: 1, scope: !3246, file: !2042, line: 32, type: !3249)
!3252 = !DILocation(line: 0, scope: !3246)
!3253 = !DILocation(line: 32, column: 1, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3246, file: !2042, line: 32, column: 1)
!3255 = !DILocation(line: 32, column: 1, scope: !3246)
