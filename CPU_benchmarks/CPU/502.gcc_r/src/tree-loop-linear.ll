; ModuleID = 'tree-loop-linear.bc'
source_filename = "tree-loop-linear.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
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
%struct.param_info = type { i8*, i32, i8, i32, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.loop_iterator = type { %struct.VEC_int_heap*, i32 }
%struct.VEC_int_heap = type { %struct.VEC_int_base }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_tree_heap = type { %struct.VEC_tree_base }
%struct.VEC_gimple_heap = type { %struct.VEC_gimple_base }
%struct.VEC_ddr_p_heap = type { %struct.VEC_ddr_p_base }
%struct.VEC_ddr_p_base = type { i32, i32, [1 x %struct.data_dependence_relation*] }
%struct.data_dependence_relation = type { %struct.data_reference*, %struct.data_reference*, %union.tree_node*, %struct.VEC_subscript_p_heap*, %struct.VEC_loop_p_heap*, %struct.VEC_lambda_vector_heap*, %struct.VEC_lambda_vector_heap*, i32, i8, i8, i8 }
%struct.data_reference = type { %union.gimple_statement_d*, %union.tree_node*, i8*, i8, %struct.innermost_loop_behavior, %struct.indices, %struct.dr_alias, %struct.access_matrix* }
%struct.innermost_loop_behavior = type { %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node* }
%struct.indices = type { %union.tree_node*, %struct.VEC_tree_heap* }
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
%struct.VEC_data_reference_p_heap = type { %struct.VEC_data_reference_p_base }
%struct.VEC_data_reference_p_base = type { i32, i32, [1 x %struct.data_reference*] }
%struct.lambda_trans_matrix_s = type { i32**, i32, i32, i32 }
%struct.lambda_loopnest_s = type { %struct.lambda_loop_s**, i32, i32 }
%struct.lambda_loop_s = type { %struct.lambda_linear_expression_s*, %struct.lambda_linear_expression_s*, %struct.lambda_linear_expression_s*, i32 }
%struct.lambda_linear_expression_s = type { i32*, i32, i32*, i32, %struct.lambda_linear_expression_s* }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_type_symtab, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_type* }
%union.tree_type_symtab = type { i8* }
%struct.lang_type = type opaque

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [67 x i8] c"Won't transform loop. Optimal transform is the identity transform\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Can't transform loop, transform is illegal:\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Before:\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"After:\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Successfully transformed loop.\0A\00", align 1
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@chrec_dont_know = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@compiler_params = external dso_local local_unnamed_addr global %struct.param_info*, align 8
@chrec_known = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"./tree-data-ref.h\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1910 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1923, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1924, metadata !DIExpression()), !dbg !1925
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1926
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1927
  ret i32 %call, !dbg !1928
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1929 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1933
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1934
  ret i32 %call, !dbg !1935
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1936 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1991, metadata !DIExpression()), !dbg !1992
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1993
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1993
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1993
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1993
  %cmp = icmp uge i8* %0, %1, !dbg !1993
  %conv1 = zext i1 %cmp to i64, !dbg !1993
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1993
  %tobool = icmp eq i64 %expval, 0, !dbg !1993
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1993

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1993
  br label %cond.end, !dbg !1993

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1993
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1993
  %2 = load i8, i8* %0, align 1, !dbg !1993
  %conv3 = zext i8 %2 to i32, !dbg !1993
  br label %cond.end, !dbg !1993

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1993
  ret i32 %cond, !dbg !1994
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1995 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1997, metadata !DIExpression()), !dbg !1998
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1999
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1999
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1999
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1999
  %cmp = icmp uge i8* %0, %1, !dbg !1999
  %conv1 = zext i1 %cmp to i64, !dbg !1999
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1999
  %tobool = icmp eq i64 %expval, 0, !dbg !1999
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1999

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1999
  br label %cond.end, !dbg !1999

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1999
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1999
  %2 = load i8, i8* %0, align 1, !dbg !1999
  %conv3 = zext i8 %2 to i32, !dbg !1999
  br label %cond.end, !dbg !1999

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1999
  ret i32 %cond, !dbg !2000
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2001 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2002
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2002
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2002
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2002
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2002
  %cmp = icmp uge i8* %1, %2, !dbg !2002
  %conv1 = zext i1 %cmp to i64, !dbg !2002
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2002
  %tobool = icmp eq i64 %expval, 0, !dbg !2002
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2002

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2002
  br label %cond.end, !dbg !2002

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2002
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2002
  %3 = load i8, i8* %1, align 1, !dbg !2002
  %conv3 = zext i8 %3 to i32, !dbg !2002
  br label %cond.end, !dbg !2002

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2002
  ret i32 %cond, !dbg !2003
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2004 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2008, metadata !DIExpression()), !dbg !2009
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2010
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2011
  ret i32 %call, !dbg !2012
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2013 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2017, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2018, metadata !DIExpression()), !dbg !2019
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2020
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2020
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2020
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2020
  %cmp = icmp uge i8* %0, %1, !dbg !2020
  %conv1 = zext i1 %cmp to i64, !dbg !2020
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2020
  %tobool = icmp eq i64 %expval, 0, !dbg !2020
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2020

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2020
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2020
  br label %cond.end, !dbg !2020

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2020
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2020
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2020
  store i8 %conv2, i8* %0, align 1, !dbg !2020
  %conv6 = and i32 %__c, 255, !dbg !2020
  br label %cond.end, !dbg !2020

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2020
  ret i32 %cond, !dbg !2021
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2022 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2024, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2025, metadata !DIExpression()), !dbg !2026
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2027
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2027
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2027
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2027
  %cmp = icmp uge i8* %0, %1, !dbg !2027
  %conv1 = zext i1 %cmp to i64, !dbg !2027
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2027
  %tobool = icmp eq i64 %expval, 0, !dbg !2027
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2027

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2027
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2027
  br label %cond.end, !dbg !2027

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2027
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2027
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2027
  store i8 %conv2, i8* %0, align 1, !dbg !2027
  %conv6 = and i32 %__c, 255, !dbg !2027
  br label %cond.end, !dbg !2027

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2027
  ret i32 %cond, !dbg !2028
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2029 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2031, metadata !DIExpression()), !dbg !2032
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2033
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2033
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2033
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2033
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2033
  %cmp = icmp uge i8* %1, %2, !dbg !2033
  %conv1 = zext i1 %cmp to i64, !dbg !2033
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2033
  %tobool = icmp eq i64 %expval, 0, !dbg !2033
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2033

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2033
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2033
  br label %cond.end, !dbg !2033

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2033
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2033
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2033
  store i8 %conv4, i8* %1, align 1, !dbg !2033
  %conv6 = and i32 %__c, 255, !dbg !2033
  br label %cond.end, !dbg !2033

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2033
  ret i32 %cond, !dbg !2034
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2035 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2041, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2042, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2043, metadata !DIExpression()), !dbg !2044
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2045
  ret i64 %call, !dbg !2046
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2047 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2049, metadata !DIExpression()), !dbg !2050
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2051
  %0 = load i32, i32* %_flags, align 8, !dbg !2051
  %and = lshr i32 %0, 4, !dbg !2051
  %and.lobit = and i32 %and, 1, !dbg !2051
  ret i32 %and.lobit, !dbg !2052
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2053 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2055, metadata !DIExpression()), !dbg !2056
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2057
  %0 = load i32, i32* %_flags, align 8, !dbg !2057
  %and = lshr i32 %0, 5, !dbg !2057
  %and.lobit = and i32 %and, 1, !dbg !2057
  ret i32 %and.lobit, !dbg !2058
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2059 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2062, metadata !DIExpression()), !dbg !2063
  %__c.off = add i32 %__c, 128, !dbg !2064
  %0 = icmp ult i32 %__c.off, 384, !dbg !2064
  br i1 %0, label %cond.true, label %cond.end, !dbg !2064

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2065
  %1 = load i32*, i32** %call, align 8, !dbg !2066
  %idxprom = sext i32 %__c to i64, !dbg !2067
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2067
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2067
  br label %cond.end, !dbg !2068

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2068
  ret i32 %cond, !dbg !2069
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2070 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2072, metadata !DIExpression()), !dbg !2073
  %__c.off = add i32 %__c, 128, !dbg !2074
  %0 = icmp ult i32 %__c.off, 384, !dbg !2074
  br i1 %0, label %cond.true, label %cond.end, !dbg !2074

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2075
  %1 = load i32*, i32** %call, align 8, !dbg !2076
  %idxprom = sext i32 %__c to i64, !dbg !2077
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2077
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2077
  br label %cond.end, !dbg !2078

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2078
  ret i32 %cond, !dbg !2079
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2080 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2085, metadata !DIExpression()), !dbg !2086
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2087
  %conv = trunc i64 %call to i32, !dbg !2088
  ret i32 %conv, !dbg !2089
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2090 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2094, metadata !DIExpression()), !dbg !2095
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2096
  ret i64 %call, !dbg !2097
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2098 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2103, metadata !DIExpression()), !dbg !2104
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2105
  ret i64 %call, !dbg !2106
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2107 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2113, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2114, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2115, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2116, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2117, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 0, metadata !2118, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2119, metadata !DIExpression()), !dbg !2123
  br label %while.cond, !dbg !2124

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2125
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2123
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2119, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2118, metadata !DIExpression()), !dbg !2123
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2126
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2124

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2127
  %div = lshr i64 %add, 1, !dbg !2129
  call void @llvm.dbg.value(metadata i64 %div, metadata !2120, metadata !DIExpression()), !dbg !2123
  %mul = mul i64 %div, %__size, !dbg !2130
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2131
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2121, metadata !DIExpression()), !dbg !2123
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2132
  call void @llvm.dbg.value(metadata i32 %call, metadata !2122, metadata !DIExpression()), !dbg !2123
  %cmp1 = icmp slt i32 %call, 0, !dbg !2133
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2135

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2136
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2138

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2139
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2118, metadata !DIExpression()), !dbg !2123
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2123
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2123
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2119, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2118, metadata !DIExpression()), !dbg !2123
  br label %while.cond, !dbg !2124, !llvm.loop !2140

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2123
  ret i8* %retval.0, !dbg !2142
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2143 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2149, metadata !DIExpression()), !dbg !2150
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2151
  ret double %call, !dbg !2152
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2153 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2162, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2163, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i32 %base, metadata !2164, metadata !DIExpression()), !dbg !2165
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2166
  ret i64 %call, !dbg !2167
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2168 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2174, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2175, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i32 %base, metadata !2176, metadata !DIExpression()), !dbg !2177
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2178
  ret i64 %call, !dbg !2179
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2180 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2191, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2192, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i32 %base, metadata !2193, metadata !DIExpression()), !dbg !2194
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2195
  ret i64 %call, !dbg !2196
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2197 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2201, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2202, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i32 %base, metadata !2203, metadata !DIExpression()), !dbg !2204
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2205
  ret i64 %call, !dbg !2206
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2207 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2247, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2248, metadata !DIExpression()), !dbg !2249
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2250
  ret i32 %call, !dbg !2251
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2252 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2254, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2255, metadata !DIExpression()), !dbg !2256
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2257
  ret i32 %call, !dbg !2258
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2259 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2263, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2264, metadata !DIExpression()), !dbg !2265
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2266
  ret i32 %call, !dbg !2267
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2268 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2272, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2273, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2274, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2275, metadata !DIExpression()), !dbg !2276
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2277
  ret i32 %call, !dbg !2278
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2279 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2283, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2284, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2285, metadata !DIExpression()), !dbg !2286
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2285, metadata !DIExpression(DW_OP_deref)), !dbg !2286
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2287
  ret i32 %call, !dbg !2288
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2289 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2293, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2294, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2295, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2296, metadata !DIExpression()), !dbg !2297
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2296, metadata !DIExpression(DW_OP_deref)), !dbg !2297
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2298
  ret i32 %call, !dbg !2299
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2300 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2324, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2325, metadata !DIExpression()), !dbg !2326
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2327
  ret i32 %call, !dbg !2328
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2329 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2331, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2332, metadata !DIExpression()), !dbg !2333
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2334
  ret i32 %call, !dbg !2335
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2336 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2340, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2341, metadata !DIExpression()), !dbg !2342
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2343
  ret i32 %call, !dbg !2344
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2345 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2349, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2350, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2351, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2352, metadata !DIExpression()), !dbg !2353
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2354
  ret i32 %call, !dbg !2355
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @perfect_loop_nest_depth(%struct.loop* %loop_nest) local_unnamed_addr #4 !dbg !2356 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop_nest, metadata !2360, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i32 1, metadata !2362, metadata !DIExpression()), !dbg !2363
  %inner = getelementptr inbounds %struct.loop, %struct.loop* %loop_nest, i64 0, i32 8, !dbg !2364
  %0 = load %struct.loop*, %struct.loop** %inner, align 8, !dbg !2364
  %tobool = icmp eq %struct.loop* %0, null, !dbg !2366
  br i1 %tobool, label %cleanup, label %lor.lhs.false, !dbg !2367

lor.lhs.false:                                    ; preds = %entry
  %call = tail call %struct.edge_def* @single_exit(%struct.loop* %loop_nest) #6, !dbg !2368
  %tobool1 = icmp eq %struct.edge_def* %call, null, !dbg !2368
  br i1 %tobool1, label %cleanup, label %if.end, !dbg !2369

if.end:                                           ; preds = %lor.lhs.false
  br label %for.cond, !dbg !2370

for.cond:                                         ; preds = %if.end9, %if.end
  %depth.0 = phi i32 [ 1, %if.end ], [ %inc, %if.end9 ], !dbg !2363
  %loop_nest.pn = phi %struct.loop* [ %loop_nest, %if.end ], [ %temp.0, %if.end9 ]
  %temp.0.in = getelementptr inbounds %struct.loop, %struct.loop* %loop_nest.pn, i64 0, i32 8, !dbg !2372
  %temp.0 = load %struct.loop*, %struct.loop** %temp.0.in, align 8, !dbg !2372
  call void @llvm.dbg.value(metadata %struct.loop* %temp.0, metadata !2361, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i32 %depth.0, metadata !2362, metadata !DIExpression()), !dbg !2363
  %tobool3 = icmp eq %struct.loop* %temp.0, null, !dbg !2373
  br i1 %tobool3, label %cleanup.loopexit, label %for.body, !dbg !2373

for.body:                                         ; preds = %for.cond
  %next = getelementptr inbounds %struct.loop, %struct.loop* %temp.0, i64 0, i32 9, !dbg !2374
  %1 = load %struct.loop*, %struct.loop** %next, align 8, !dbg !2374
  %tobool4 = icmp eq %struct.loop* %1, null, !dbg !2378
  br i1 %tobool4, label %lor.lhs.false5, label %cleanup.loopexit, !dbg !2379

lor.lhs.false5:                                   ; preds = %for.body
  %call6 = tail call %struct.edge_def* @single_exit(%struct.loop* nonnull %temp.0) #6, !dbg !2380
  %tobool7 = icmp eq %struct.edge_def* %call6, null, !dbg !2380
  br i1 %tobool7, label %cleanup.loopexit, label %if.end9, !dbg !2381

if.end9:                                          ; preds = %lor.lhs.false5
  %inc = add i32 %depth.0, 1, !dbg !2382
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2362, metadata !DIExpression()), !dbg !2363
  br label %for.cond, !dbg !2383, !llvm.loop !2384

cleanup.loopexit:                                 ; preds = %for.cond, %for.body, %lor.lhs.false5
  %retval.0.ph = phi i32 [ %depth.0, %for.cond ], [ 0, %for.body ], [ 0, %lor.lhs.false5 ]
  br label %cleanup, !dbg !2386

cleanup:                                          ; preds = %cleanup.loopexit, %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %retval.0.ph, %cleanup.loopexit ], !dbg !2363
  ret i32 %retval.0, !dbg !2386
}

declare dso_local %struct.edge_def* @single_exit(%struct.loop*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @linear_transform_loops() local_unnamed_addr #4 !dbg !2387 {
entry:
  %li = alloca %struct.loop_iterator, align 8
  %oldivs = alloca %struct.VEC_tree_heap*, align 8
  %invariants = alloca %struct.VEC_tree_heap*, align 8
  %lambda_parameters = alloca %struct.VEC_tree_heap*, align 8
  %remove_ivs = alloca %struct.VEC_gimple_heap*, align 8
  %loop_nest = alloca %struct.loop*, align 8
  %oldiv_stmt = alloca %union.gimple_statement_d*, align 8
  %dependence_relations = alloca %struct.VEC_ddr_p_heap*, align 8
  %datarefs = alloca %struct.VEC_data_reference_p_heap*, align 8
  %lambda_obstack = alloca %struct.obstack, align 8
  %nest = alloca %struct.VEC_loop_p_heap*, align 8
  call void @llvm.dbg.value(metadata i8 0, metadata !2391, metadata !DIExpression()), !dbg !2453
  %0 = bitcast %struct.loop_iterator* %li to i8*, !dbg !2454
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7, !dbg !2454
  %1 = bitcast %struct.VEC_tree_heap** %oldivs to i8*, !dbg !2455
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2455
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* null, metadata !2398, metadata !DIExpression()), !dbg !2453
  store %struct.VEC_tree_heap* null, %struct.VEC_tree_heap** %oldivs, align 8, !dbg !2456
  %2 = bitcast %struct.VEC_tree_heap** %invariants to i8*, !dbg !2457
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7, !dbg !2457
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* null, metadata !2399, metadata !DIExpression()), !dbg !2453
  store %struct.VEC_tree_heap* null, %struct.VEC_tree_heap** %invariants, align 8, !dbg !2458
  %3 = bitcast %struct.VEC_tree_heap** %lambda_parameters to i8*, !dbg !2459
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7, !dbg !2459
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* null, metadata !2400, metadata !DIExpression()), !dbg !2453
  store %struct.VEC_tree_heap* null, %struct.VEC_tree_heap** %lambda_parameters, align 8, !dbg !2460
  %4 = bitcast %struct.VEC_gimple_heap** %remove_ivs to i8*, !dbg !2461
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #7, !dbg !2461
  %call = tail call fastcc %struct.VEC_gimple_heap* @VEC_gimple_heap_alloc(i32 3) #8, !dbg !2462
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %call, metadata !2401, metadata !DIExpression()), !dbg !2453
  store %struct.VEC_gimple_heap* %call, %struct.VEC_gimple_heap** %remove_ivs, align 8, !dbg !2463
  %5 = bitcast %struct.loop** %loop_nest to i8*, !dbg !2464
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7, !dbg !2464
  %6 = bitcast %union.gimple_statement_d** %oldiv_stmt to i8*, !dbg !2465
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #7, !dbg !2465
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2392, metadata !DIExpression(DW_OP_deref)), !dbg !2453
  call void @llvm.dbg.value(metadata %struct.loop** %loop_nest, metadata !2402, metadata !DIExpression(DW_OP_deref)), !dbg !2453
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop_nest, i32 0) #8, !dbg !2466
  %7 = bitcast %struct.VEC_ddr_p_heap** %dependence_relations to i8*, !dbg !2467
  %8 = bitcast %struct.VEC_data_reference_p_heap** %datarefs to i8*, !dbg !2467
  %9 = bitcast %struct.obstack* %lambda_obstack to i8*, !dbg !2467
  %10 = bitcast %struct.VEC_loop_p_heap** %nest to i8*, !dbg !2467
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %lambda_obstack, i64 0, i32 1, !dbg !2467
  %11 = bitcast %struct._obstack_chunk** %chunk to i64*, !dbg !2467
  %temp = getelementptr inbounds %struct.obstack, %struct.obstack* %lambda_obstack, i64 0, i32 5, !dbg !2467
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %lambda_obstack, i64 0, i32 4, !dbg !2467
  %12 = bitcast i8** %chunk_limit to i64*, !dbg !2467
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %lambda_obstack, i64 0, i32 2, !dbg !2467
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %lambda_obstack, i64 0, i32 3, !dbg !2467
  br label %for.cond, !dbg !2466

for.cond:                                         ; preds = %cleanup, %entry
  %modified.0 = phi i8 [ 0, %entry ], [ %modified.2, %cleanup ], !dbg !2468
  call void @llvm.dbg.value(metadata i8 %modified.0, metadata !2391, metadata !DIExpression()), !dbg !2453
  %13 = load %struct.loop*, %struct.loop** %loop_nest, align 8, !dbg !2469
  call void @llvm.dbg.value(metadata %struct.loop* %13, metadata !2402, metadata !DIExpression()), !dbg !2453
  %tobool = icmp eq %struct.loop* %13, null, !dbg !2466
  br i1 %tobool, label %for.cond97.preheader, label %for.body, !dbg !2466

for.cond97.preheader:                             ; preds = %for.cond
  %modified.0.lcssa = phi i8 [ %modified.0, %for.cond ], !dbg !2468
  call void @llvm.dbg.value(metadata i8 %modified.0.lcssa, metadata !2391, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i8 %modified.0.lcssa, metadata !2391, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i8 %modified.0.lcssa, metadata !2391, metadata !DIExpression()), !dbg !2453
  br label %for.cond97, !dbg !2470

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 0, metadata !2405, metadata !DIExpression()), !dbg !2467
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #7, !dbg !2472
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #7, !dbg !2473
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %9) #7, !dbg !2474
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #7, !dbg !2475
  call void @llvm.dbg.value(metadata %struct.loop* %13, metadata !2402, metadata !DIExpression()), !dbg !2453
  %call1 = call i32 @perfect_loop_nest_depth(%struct.loop* nonnull %13) #8, !dbg !2476
  call void @llvm.dbg.value(metadata i32 %call1, metadata !2405, metadata !DIExpression()), !dbg !2467
  %cmp = icmp eq i32 %call1, 0, !dbg !2477
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2479

if.end:                                           ; preds = %for.body
  %call2 = call fastcc %struct.VEC_loop_p_heap* @VEC_loop_p_heap_alloc(i32 3) #8, !dbg !2480
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_heap* %call2, metadata !2451, metadata !DIExpression()), !dbg !2467
  store %struct.VEC_loop_p_heap* %call2, %struct.VEC_loop_p_heap** %nest, align 8, !dbg !2481
  br label %for.cond3, !dbg !2482

for.cond3:                                        ; preds = %for.body5, %if.end
  %loop.0.in = phi %struct.loop** [ %loop_nest, %if.end ], [ %inner, %for.body5 ]
  %loop.0 = load %struct.loop*, %struct.loop** %loop.0.in, align 8, !dbg !2484
  call void @llvm.dbg.value(metadata %struct.loop* %loop.0, metadata !2450, metadata !DIExpression()), !dbg !2467
  %tobool4 = icmp eq %struct.loop* %loop.0, null, !dbg !2485
  br i1 %tobool4, label %for.end, label %for.body5, !dbg !2485

for.body5:                                        ; preds = %for.cond3
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_heap** %nest, metadata !2451, metadata !DIExpression(DW_OP_deref)), !dbg !2467
  %call6 = call fastcc %struct.loop** @VEC_loop_p_heap_safe_push(%struct.VEC_loop_p_heap** nonnull %nest, %struct.loop* nonnull %loop.0) #8, !dbg !2486
  %inner = getelementptr inbounds %struct.loop, %struct.loop* %loop.0, i64 0, i32 8, !dbg !2488
  br label %for.cond3, !dbg !2489, !llvm.loop !2490

for.end:                                          ; preds = %for.cond3
  call void @llvm.dbg.value(metadata %struct.obstack* %lambda_obstack, metadata !2449, metadata !DIExpression(DW_OP_deref)), !dbg !2467
  %call7 = call i32 @_obstack_begin(%struct.obstack* nonnull %lambda_obstack, i32 0, i32 0, i8* (i64)* nonnull @xmalloc, void (i8*)* nonnull @free) #6, !dbg !2492
  %14 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %oldivs, align 8, !dbg !2493
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %14, metadata !2398, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %14, metadata !2398, metadata !DIExpression()), !dbg !2453
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %14, i64 0, i32 0, !dbg !2493
  call fastcc void @VEC_tree_base_truncate(%struct.VEC_tree_base* %base, i32 0) #8, !dbg !2493
  %15 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %invariants, align 8, !dbg !2494
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %15, metadata !2399, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %15, metadata !2399, metadata !DIExpression()), !dbg !2453
  %base11 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %15, i64 0, i32 0, !dbg !2494
  call fastcc void @VEC_tree_base_truncate(%struct.VEC_tree_base* %base11, i32 0) #8, !dbg !2494
  %16 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %lambda_parameters, align 8, !dbg !2495
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %16, metadata !2400, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %16, metadata !2400, metadata !DIExpression()), !dbg !2453
  %base17 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %16, i64 0, i32 0, !dbg !2495
  call fastcc void @VEC_tree_base_truncate(%struct.VEC_tree_base* %base17, i32 0) #8, !dbg !2495
  %call21 = call fastcc %struct.VEC_data_reference_p_heap* @VEC_data_reference_p_heap_alloc(i32 10) #8, !dbg !2496
  call void @llvm.dbg.value(metadata %struct.VEC_data_reference_p_heap* %call21, metadata !2410, metadata !DIExpression()), !dbg !2467
  store %struct.VEC_data_reference_p_heap* %call21, %struct.VEC_data_reference_p_heap** %datarefs, align 8, !dbg !2497
  %call22 = call fastcc %struct.VEC_ddr_p_heap* @VEC_ddr_p_heap_alloc(i32 100) #8, !dbg !2498
  call void @llvm.dbg.value(metadata %struct.VEC_ddr_p_heap* %call22, metadata !2409, metadata !DIExpression()), !dbg !2467
  store %struct.VEC_ddr_p_heap* %call22, %struct.VEC_ddr_p_heap** %dependence_relations, align 8, !dbg !2499
  %17 = load %struct.loop*, %struct.loop** %loop_nest, align 8, !dbg !2500
  call void @llvm.dbg.value(metadata %struct.loop* %17, metadata !2402, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata %struct.VEC_ddr_p_heap** %dependence_relations, metadata !2409, metadata !DIExpression(DW_OP_deref)), !dbg !2467
  call void @llvm.dbg.value(metadata %struct.VEC_data_reference_p_heap** %datarefs, metadata !2410, metadata !DIExpression(DW_OP_deref)), !dbg !2467
  %call23 = call zeroext i8 @compute_data_dependences_for_loop(%struct.loop* %17, i8 zeroext 1, %struct.VEC_data_reference_p_heap** nonnull %datarefs, %struct.VEC_ddr_p_heap** nonnull %dependence_relations) #6, !dbg !2502
  %tobool24 = icmp eq i8 %call23, 0, !dbg !2502
  br i1 %tobool24, label %free_and_continue, label %if.end26, !dbg !2503

if.end26:                                         ; preds = %for.end
  %18 = load %struct.VEC_data_reference_p_heap*, %struct.VEC_data_reference_p_heap** %datarefs, align 8, !dbg !2504
  call void @llvm.dbg.value(metadata %struct.VEC_data_reference_p_heap* %18, metadata !2410, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %lambda_parameters, metadata !2400, metadata !DIExpression(DW_OP_deref)), !dbg !2453
  call void @lambda_collect_parameters(%struct.VEC_data_reference_p_heap* %18, %struct.VEC_tree_heap** nonnull %lambda_parameters) #6, !dbg !2505
  %19 = load %struct.VEC_data_reference_p_heap*, %struct.VEC_data_reference_p_heap** %datarefs, align 8, !dbg !2506
  call void @llvm.dbg.value(metadata %struct.VEC_data_reference_p_heap* %19, metadata !2410, metadata !DIExpression()), !dbg !2467
  %20 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %lambda_parameters, align 8, !dbg !2508
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %20, metadata !2400, metadata !DIExpression()), !dbg !2453
  %21 = load %struct.VEC_loop_p_heap*, %struct.VEC_loop_p_heap** %nest, align 8, !dbg !2509
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_heap* %21, metadata !2451, metadata !DIExpression()), !dbg !2467
  %call27 = call zeroext i8 @lambda_compute_access_matrices(%struct.VEC_data_reference_p_heap* %19, %struct.VEC_tree_heap* %20, %struct.VEC_loop_p_heap* %21) #6, !dbg !2510
  %tobool28 = icmp eq i8 %call27, 0, !dbg !2510
  br i1 %tobool28, label %free_and_continue, label %if.end30, !dbg !2511

if.end30:                                         ; preds = %if.end26
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2512
  %tobool31 = icmp eq %struct._IO_FILE* %22, null, !dbg !2512
  br i1 %tobool31, label %if.end34, label %land.lhs.true, !dbg !2514

land.lhs.true:                                    ; preds = %if.end30
  %23 = load i32, i32* @dump_flags, align 4, !dbg !2515
  %and = and i32 %23, 8, !dbg !2516
  %tobool32 = icmp eq i32 %and, 0, !dbg !2516
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !2517

if.then33:                                        ; preds = %land.lhs.true
  %24 = load %struct.VEC_ddr_p_heap*, %struct.VEC_ddr_p_heap** %dependence_relations, align 8, !dbg !2518
  call void @llvm.dbg.value(metadata %struct.VEC_ddr_p_heap* %24, metadata !2409, metadata !DIExpression()), !dbg !2467
  call void @dump_ddrs(%struct._IO_FILE* nonnull %22, %struct.VEC_ddr_p_heap* %24) #6, !dbg !2519
  br label %if.end34, !dbg !2519

if.end34:                                         ; preds = %land.lhs.true, %if.end30, %if.then33
  %call35 = call %struct.lambda_trans_matrix_s* @lambda_trans_matrix_new(i32 %call1, i32 %call1) #6, !dbg !2520
  call void @llvm.dbg.value(metadata %struct.lambda_trans_matrix_s* %call35, metadata !2438, metadata !DIExpression()), !dbg !2467
  %matrix = getelementptr inbounds %struct.lambda_trans_matrix_s, %struct.lambda_trans_matrix_s* %call35, i64 0, i32 0, !dbg !2521
  %25 = load i32**, i32*** %matrix, align 8, !dbg !2521
  call void @lambda_matrix_id(i32** %25, i32 %call1) #6, !dbg !2522
  %26 = load %struct.VEC_ddr_p_heap*, %struct.VEC_ddr_p_heap** %dependence_relations, align 8, !dbg !2523
  call void @llvm.dbg.value(metadata %struct.VEC_ddr_p_heap* %26, metadata !2409, metadata !DIExpression()), !dbg !2467
  %27 = load %struct.VEC_data_reference_p_heap*, %struct.VEC_data_reference_p_heap** %datarefs, align 8, !dbg !2524
  call void @llvm.dbg.value(metadata %struct.VEC_data_reference_p_heap* %27, metadata !2410, metadata !DIExpression()), !dbg !2467
  %28 = load %struct.loop*, %struct.loop** %loop_nest, align 8, !dbg !2525
  call void @llvm.dbg.value(metadata %struct.loop* %28, metadata !2402, metadata !DIExpression()), !dbg !2453
  %call36 = call fastcc %struct.lambda_trans_matrix_s* @try_interchange_loops(%struct.lambda_trans_matrix_s* %call35, i32 %call1, %struct.VEC_ddr_p_heap* %26, %struct.VEC_data_reference_p_heap* %27, %struct.loop* %28) #8, !dbg !2526
  call void @llvm.dbg.value(metadata %struct.lambda_trans_matrix_s* %call36, metadata !2438, metadata !DIExpression()), !dbg !2467
  %call37 = call zeroext i8 @lambda_trans_matrix_id_p(%struct.lambda_trans_matrix_s* %call36) #6, !dbg !2527
  %tobool38 = icmp eq i8 %call37, 0, !dbg !2527
  br i1 %tobool38, label %if.end44, label %if.then39, !dbg !2529

if.then39:                                        ; preds = %if.end34
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2530
  %tobool40 = icmp eq %struct._IO_FILE* %29, null, !dbg !2530
  br i1 %tobool40, label %free_and_continue, label %if.then41, !dbg !2533

if.then41:                                        ; preds = %if.then39
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %29, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0)) #6, !dbg !2534
  br label %free_and_continue, !dbg !2534

if.end44:                                         ; preds = %if.end34
  %30 = load %struct.VEC_ddr_p_heap*, %struct.VEC_ddr_p_heap** %dependence_relations, align 8, !dbg !2535
  call void @llvm.dbg.value(metadata %struct.VEC_ddr_p_heap* %30, metadata !2409, metadata !DIExpression()), !dbg !2467
  %call45 = call zeroext i8 @lambda_transform_legal_p(%struct.lambda_trans_matrix_s* %call36, i32 %call1, %struct.VEC_ddr_p_heap* %30) #6, !dbg !2537
  %tobool46 = icmp eq i8 %call45, 0, !dbg !2537
  br i1 %tobool46, label %if.then47, label %if.end52, !dbg !2538

if.then47:                                        ; preds = %if.end44
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2539
  %tobool48 = icmp eq %struct._IO_FILE* %31, null, !dbg !2539
  br i1 %tobool48, label %free_and_continue, label %if.then49, !dbg !2542

if.then49:                                        ; preds = %if.then47
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %31, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2543
  br label %free_and_continue, !dbg !2543

if.end52:                                         ; preds = %if.end44
  %32 = load %struct.loop*, %struct.loop** %loop_nest, align 8, !dbg !2544
  call void @llvm.dbg.value(metadata %struct.loop* %32, metadata !2402, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %oldivs, metadata !2398, metadata !DIExpression(DW_OP_deref)), !dbg !2453
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %invariants, metadata !2399, metadata !DIExpression(DW_OP_deref)), !dbg !2453
  call void @llvm.dbg.value(metadata %struct.obstack* %lambda_obstack, metadata !2449, metadata !DIExpression(DW_OP_deref)), !dbg !2467
  %call53 = call %struct.lambda_loopnest_s* @gcc_loopnest_to_lambda_loopnest(%struct.loop* %32, %struct.VEC_tree_heap** nonnull %oldivs, %struct.VEC_tree_heap** nonnull %invariants, %struct.obstack* nonnull %lambda_obstack) #6, !dbg !2545
  call void @llvm.dbg.value(metadata %struct.lambda_loopnest_s* %call53, metadata !2411, metadata !DIExpression()), !dbg !2467
  %tobool54 = icmp eq %struct.lambda_loopnest_s* %call53, null, !dbg !2546
  br i1 %tobool54, label %free_and_continue, label %if.end56, !dbg !2548

if.end56:                                         ; preds = %if.end52
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2549
  %tobool57 = icmp eq %struct._IO_FILE* %33, null, !dbg !2549
  br i1 %tobool57, label %if.end60, label %if.then58, !dbg !2551

if.then58:                                        ; preds = %if.end56
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2552
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2554
  call void @print_lambda_loopnest(%struct._IO_FILE* %34, %struct.lambda_loopnest_s* nonnull %call53, i8 signext 105) #6, !dbg !2555
  br label %if.end60, !dbg !2556

if.end60:                                         ; preds = %if.end56, %if.then58
  call void @llvm.dbg.value(metadata %struct.obstack* %lambda_obstack, metadata !2449, metadata !DIExpression(DW_OP_deref)), !dbg !2467
  %call61 = call %struct.lambda_loopnest_s* @lambda_loopnest_transform(%struct.lambda_loopnest_s* nonnull %call53, %struct.lambda_trans_matrix_s* %call36, %struct.obstack* nonnull %lambda_obstack) #6, !dbg !2557
  call void @llvm.dbg.value(metadata %struct.lambda_loopnest_s* %call61, metadata !2437, metadata !DIExpression()), !dbg !2467
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2558
  %tobool62 = icmp eq %struct._IO_FILE* %35, null, !dbg !2558
  br i1 %tobool62, label %if.end65, label %if.then63, !dbg !2560

if.then63:                                        ; preds = %if.end60
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !2561
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2563
  call void @print_lambda_loopnest(%struct._IO_FILE* %36, %struct.lambda_loopnest_s* %call61, i8 signext 117) #6, !dbg !2564
  br label %if.end65, !dbg !2565

if.end65:                                         ; preds = %if.end60, %if.then63
  %37 = load %struct.loop*, %struct.loop** %loop_nest, align 8, !dbg !2566
  call void @llvm.dbg.value(metadata %struct.loop* %37, metadata !2402, metadata !DIExpression()), !dbg !2453
  %38 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %oldivs, align 8, !dbg !2567
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %38, metadata !2398, metadata !DIExpression()), !dbg !2453
  %39 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %invariants, align 8, !dbg !2568
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %39, metadata !2399, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap** %remove_ivs, metadata !2401, metadata !DIExpression(DW_OP_deref)), !dbg !2453
  call void @llvm.dbg.value(metadata %struct.obstack* %lambda_obstack, metadata !2449, metadata !DIExpression(DW_OP_deref)), !dbg !2467
  call void @lambda_loopnest_to_gcc_loopnest(%struct.loop* %37, %struct.VEC_tree_heap* %38, %struct.VEC_tree_heap* %39, %struct.VEC_gimple_heap** nonnull %remove_ivs, %struct.lambda_loopnest_s* %call61, %struct.lambda_trans_matrix_s* %call36, %struct.obstack* nonnull %lambda_obstack) #6, !dbg !2569
  call void @llvm.dbg.value(metadata i8 1, metadata !2391, metadata !DIExpression()), !dbg !2453
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2570
  %tobool66 = icmp eq %struct._IO_FILE* %40, null, !dbg !2570
  br i1 %tobool66, label %free_and_continue, label %if.then67, !dbg !2572

if.then67:                                        ; preds = %if.end65
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2573
  br label %free_and_continue, !dbg !2573

free_and_continue:                                ; preds = %if.then39, %if.end65, %if.end52, %if.then47, %if.end26, %for.end, %if.then67, %if.then49, %if.then41
  %modified.1 = phi i8 [ %modified.0, %for.end ], [ %modified.0, %if.end26 ], [ %modified.0, %if.then41 ], [ %modified.0, %if.then39 ], [ %modified.0, %if.then49 ], [ %modified.0, %if.then47 ], [ %modified.0, %if.end52 ], [ 1, %if.then67 ], [ 1, %if.end65 ], !dbg !2453
  call void @llvm.dbg.value(metadata i8 %modified.1, metadata !2391, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.label(metadata !2452), !dbg !2574
  %41 = load i64, i64* %11, align 8, !dbg !2575
  %sub.ptr.sub = sub i64 0, %41, !dbg !2575
  store i64 %sub.ptr.sub, i64* %temp, align 8, !dbg !2575
  %cmp71 = icmp sgt i64 %sub.ptr.sub, 0, !dbg !2575
  %42 = inttoptr i64 %41 to i8*, !dbg !2575
  br i1 %cmp71, label %land.lhs.true72, label %cond.false81, !dbg !2575

land.lhs.true72:                                  ; preds = %free_and_continue
  %43 = load i64, i64* %12, align 8, !dbg !2575
  %sub.ptr.sub76 = sub i64 %43, %41, !dbg !2575
  %cmp77 = icmp sgt i64 %sub.ptr.sub76, %sub.ptr.sub, !dbg !2575
  br i1 %cmp77, label %cond.true78, label %cond.false81, !dbg !2575

cond.true78:                                      ; preds = %land.lhs.true72
  %add.ptr = getelementptr inbounds i8, i8* %42, i64 %sub.ptr.sub, !dbg !2575
  store i8* %add.ptr, i8** %object_base, align 8, !dbg !2575
  store i8* %add.ptr, i8** %next_free, align 8, !dbg !2575
  br label %cond.end85, !dbg !2575

cond.false81:                                     ; preds = %land.lhs.true72, %free_and_continue
  %add.ptr84 = getelementptr inbounds i8, i8* %42, i64 %sub.ptr.sub, !dbg !2575
  call void @llvm.dbg.value(metadata %struct.obstack* %lambda_obstack, metadata !2449, metadata !DIExpression(DW_OP_deref)), !dbg !2467
  call void @obstack_free(%struct.obstack* nonnull %lambda_obstack, i8* %add.ptr84) #6, !dbg !2575
  br label %cond.end85, !dbg !2575

cond.end85:                                       ; preds = %cond.false81, %cond.true78
  %44 = load %struct.VEC_ddr_p_heap*, %struct.VEC_ddr_p_heap** %dependence_relations, align 8, !dbg !2576
  call void @llvm.dbg.value(metadata %struct.VEC_ddr_p_heap* %44, metadata !2409, metadata !DIExpression()), !dbg !2467
  call void @free_dependence_relations(%struct.VEC_ddr_p_heap* %44) #6, !dbg !2577
  %45 = load %struct.VEC_data_reference_p_heap*, %struct.VEC_data_reference_p_heap** %datarefs, align 8, !dbg !2578
  call void @llvm.dbg.value(metadata %struct.VEC_data_reference_p_heap* %45, metadata !2410, metadata !DIExpression()), !dbg !2467
  call void @free_data_refs(%struct.VEC_data_reference_p_heap* %45) #6, !dbg !2579
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_heap** %nest, metadata !2451, metadata !DIExpression(DW_OP_deref)), !dbg !2467
  call fastcc void @VEC_loop_p_heap_free(%struct.VEC_loop_p_heap** nonnull %nest) #8, !dbg !2580
  br label %cleanup, !dbg !2581

cleanup:                                          ; preds = %for.body, %cond.end85
  %modified.2 = phi i8 [ %modified.1, %cond.end85 ], [ %modified.0, %for.body ], !dbg !2468
  call void @llvm.dbg.value(metadata i8 %modified.2, metadata !2391, metadata !DIExpression()), !dbg !2453
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #7, !dbg !2581
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %9) #7, !dbg !2581
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #7, !dbg !2581
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #7, !dbg !2581
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2392, metadata !DIExpression(DW_OP_deref)), !dbg !2453
  call void @llvm.dbg.value(metadata %struct.loop** %loop_nest, metadata !2402, metadata !DIExpression(DW_OP_deref)), !dbg !2453
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop_nest) #8, !dbg !2469
  br label %for.cond, !dbg !2469, !llvm.loop !2582

for.cond97:                                       ; preds = %for.cond97.preheader, %for.body106
  %i.0 = phi i32 [ %inc, %for.body106 ], [ 0, %for.cond97.preheader ], !dbg !2584
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2404, metadata !DIExpression()), !dbg !2453
  %46 = load %struct.VEC_gimple_heap*, %struct.VEC_gimple_heap** %remove_ivs, align 8, !dbg !2585
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %46, metadata !2401, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap* %46, metadata !2401, metadata !DIExpression()), !dbg !2453
  %base100 = getelementptr inbounds %struct.VEC_gimple_heap, %struct.VEC_gimple_heap* %46, i64 0, i32 0, !dbg !2585
  call void @llvm.dbg.value(metadata %union.gimple_statement_d** %oldiv_stmt, metadata !2403, metadata !DIExpression(DW_OP_deref)), !dbg !2453
  %call104 = call fastcc i32 @VEC_gimple_base_iterate(%struct.VEC_gimple_base* %base100, i32 %i.0, %union.gimple_statement_d** nonnull %oldiv_stmt) #8, !dbg !2585
  %tobool105 = icmp eq i32 %call104, 0, !dbg !2470
  br i1 %tobool105, label %for.end108, label %for.body106, !dbg !2470

for.body106:                                      ; preds = %for.cond97
  %47 = load %union.gimple_statement_d*, %union.gimple_statement_d** %oldiv_stmt, align 8, !dbg !2587
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %47, metadata !2403, metadata !DIExpression()), !dbg !2453
  call void @remove_iv(%union.gimple_statement_d* %47) #6, !dbg !2588
  %inc = add i32 %i.0, 1, !dbg !2589
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2404, metadata !DIExpression()), !dbg !2453
  br label %for.cond97, !dbg !2590, !llvm.loop !2591

for.end108:                                       ; preds = %for.cond97
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %oldivs, metadata !2398, metadata !DIExpression(DW_OP_deref)), !dbg !2453
  call fastcc void @VEC_tree_heap_free(%struct.VEC_tree_heap** nonnull %oldivs) #8, !dbg !2593
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %invariants, metadata !2399, metadata !DIExpression(DW_OP_deref)), !dbg !2453
  call fastcc void @VEC_tree_heap_free(%struct.VEC_tree_heap** nonnull %invariants) #8, !dbg !2594
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap** %remove_ivs, metadata !2401, metadata !DIExpression(DW_OP_deref)), !dbg !2453
  call fastcc void @VEC_gimple_heap_free(%struct.VEC_gimple_heap** nonnull %remove_ivs) #8, !dbg !2595
  call void @scev_reset() #6, !dbg !2596
  %tobool109 = icmp eq i8 %modified.0.lcssa, 0, !dbg !2597
  br i1 %tobool109, label %if.end111, label %if.then110, !dbg !2599

if.then110:                                       ; preds = %for.end108
  call void @rewrite_into_loop_closed_ssa(%struct.bitmap_head_def* null, i32 8192) #6, !dbg !2600
  br label %if.end111, !dbg !2600

if.end111:                                        ; preds = %for.end108, %if.then110
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #7, !dbg !2601
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7, !dbg !2601
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #7, !dbg !2601
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7, !dbg !2601
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7, !dbg !2601
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2601
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7, !dbg !2601
  ret void, !dbg !2601
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_gimple_heap* @VEC_gimple_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !2602 {
entry:
  call void @llvm.dbg.value(metadata i32 3, metadata !2606, metadata !DIExpression()), !dbg !2607
  %call = tail call i8* @vec_heap_p_reserve_exact(i8* null, i32 3) #6, !dbg !2608
  %0 = bitcast i8* %call to %struct.VEC_gimple_heap*, !dbg !2608
  ret %struct.VEC_gimple_heap* %0, !dbg !2608
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fel_init(%struct.loop_iterator* %li, %struct.loop** %loop, i32 %flags) unnamed_addr #0 !dbg !2609 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2615, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2616, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i32 0, metadata !2617, metadata !DIExpression()), !dbg !2621
  %idx = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 1, !dbg !2622
  store i32 0, i32* %idx, align 8, !dbg !2623
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2624
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !2624
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2624
  %tobool = icmp eq %struct.loops* %1, null, !dbg !2624
  br i1 %tobool, label %if.then, label %if.end, !dbg !2626

if.then:                                          ; preds = %entry
  %to_visit = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2627
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %to_visit, align 8, !dbg !2629
  store %struct.loop* null, %struct.loop** %loop, align 8, !dbg !2630
  br label %cleanup, !dbg !2631

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @number_of_loops() #8, !dbg !2632
  %call1 = tail call fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %call) #8, !dbg !2632
  %to_visit2 = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2633
  store %struct.VEC_int_heap* %call1, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !2634
  call void @llvm.dbg.value(metadata i32 1, metadata !2620, metadata !DIExpression()), !dbg !2621
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2635
  %x_current_loops35 = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 4, !dbg !2635
  %3 = load %struct.loops*, %struct.loops** %x_current_loops35, align 8, !dbg !2635
  %tree_root = getelementptr inbounds %struct.loops, %struct.loops* %3, i64 0, i32 3, !dbg !2635
  %4 = load %struct.loop*, %struct.loop** %tree_root, align 8, !dbg !2635
  br label %while.cond79, !dbg !2638

while.cond79:                                     ; preds = %if.end, %if.end111
  %5 = phi %struct.loop* [ %4, %if.end ], [ %25, %if.end111 ]
  %6 = phi %struct.loop* [ %4, %if.end ], [ %26, %if.end111 ]
  %7 = phi %struct.loop* [ %4, %if.end ], [ %27, %if.end111 ]
  %8 = phi %struct.loop* [ %4, %if.end ], [ %28, %if.end111 ]
  %9 = phi %struct.loop* [ %4, %if.end ], [ %29, %if.end111 ]
  %10 = phi %struct.loop* [ %4, %if.end ], [ %30, %if.end111 ]
  %11 = phi %struct.loop* [ %4, %if.end ], [ %31, %if.end111 ]
  %12 = phi %struct.loop* [ %4, %if.end ], [ %32, %if.end111 ], !dbg !2640
  call void @llvm.dbg.value(metadata %struct.loop* %12, metadata !2618, metadata !DIExpression()), !dbg !2621
  %num81 = getelementptr inbounds %struct.loop, %struct.loop* %12, i64 0, i32 0, !dbg !2643
  %13 = load i32, i32* %num81, align 8, !dbg !2643
  %cmp82 = icmp slt i32 %13, 1, !dbg !2644
  br i1 %cmp82, label %if.end94, label %if.then83, !dbg !2645

if.then83:                                        ; preds = %while.cond79
  %14 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !2646
  %tobool85 = icmp eq %struct.VEC_int_heap* %14, null, !dbg !2646
  br i1 %tobool85, label %cond.end90, label %cond.true86, !dbg !2646

cond.true86:                                      ; preds = %if.then83
  %base88 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %14, i64 0, i32 0, !dbg !2646
  br label %cond.end90, !dbg !2646

cond.end90:                                       ; preds = %if.then83, %cond.true86
  %cond91 = phi %struct.VEC_int_base* [ %base88, %cond.true86 ], [ null, %if.then83 ], !dbg !2646
  call void @llvm.dbg.value(metadata %struct.loop* %11, metadata !2618, metadata !DIExpression()), !dbg !2621
  %num92 = getelementptr inbounds %struct.loop, %struct.loop* %11, i64 0, i32 0, !dbg !2646
  %15 = load i32, i32* %num92, align 8, !dbg !2646
  %call93 = tail call fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %cond91, i32 %15) #8, !dbg !2646
  br label %if.end94, !dbg !2646

if.end94:                                         ; preds = %while.cond79, %cond.end90
  call void @llvm.dbg.value(metadata %struct.loop* %10, metadata !2618, metadata !DIExpression()), !dbg !2621
  %inner95 = getelementptr inbounds %struct.loop, %struct.loop* %10, i64 0, i32 8, !dbg !2647
  %16 = load %struct.loop*, %struct.loop** %inner95, align 8, !dbg !2647
  %cmp96 = icmp eq %struct.loop* %16, null, !dbg !2649
  br i1 %cmp96, label %while.cond100.preheader, label %if.then97, !dbg !2650

while.cond100.preheader:                          ; preds = %if.end94
  br label %while.cond100, !dbg !2651

if.then97:                                        ; preds = %if.end94
  call void @llvm.dbg.value(metadata %struct.loop* %9, metadata !2618, metadata !DIExpression()), !dbg !2621
  %inner98 = getelementptr inbounds %struct.loop, %struct.loop* %9, i64 0, i32 8, !dbg !2653
  %17 = load %struct.loop*, %struct.loop** %inner98, align 8, !dbg !2653
  br label %if.end111, !dbg !2654

while.cond100:                                    ; preds = %while.cond100.preheader, %while.body104
  %18 = phi %struct.loop* [ %5, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %19 = phi %struct.loop* [ %6, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %20 = phi %struct.loop* [ %7, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %21 = phi %struct.loop* [ %8, %while.cond100.preheader ], [ %call105, %while.body104 ], !dbg !2655
  call void @llvm.dbg.value(metadata %struct.loop* %21, metadata !2618, metadata !DIExpression()), !dbg !2621
  %cmp101 = icmp eq %struct.loop* %21, null, !dbg !2656
  br i1 %cmp101, label %land.end, label %land.rhs, !dbg !2657

land.rhs:                                         ; preds = %while.cond100
  call void @llvm.dbg.value(metadata %struct.loop* %20, metadata !2618, metadata !DIExpression()), !dbg !2621
  %next102 = getelementptr inbounds %struct.loop, %struct.loop* %20, i64 0, i32 9, !dbg !2658
  %22 = load %struct.loop*, %struct.loop** %next102, align 8, !dbg !2658
  %cmp103 = icmp eq %struct.loop* %22, null, !dbg !2659
  br label %land.end

land.end:                                         ; preds = %while.cond100, %land.rhs
  %23 = phi i1 [ false, %while.cond100 ], [ %cmp103, %land.rhs ], !dbg !2660
  call void @llvm.dbg.value(metadata %struct.loop* %19, metadata !2618, metadata !DIExpression()), !dbg !2621
  br i1 %23, label %while.body104, label %while.end106, !dbg !2651

while.body104:                                    ; preds = %land.end
  %call105 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %19) #8, !dbg !2661
  call void @llvm.dbg.value(metadata %struct.loop* %call105, metadata !2618, metadata !DIExpression()), !dbg !2621
  br label %while.cond100, !dbg !2651, !llvm.loop !2662

while.end106:                                     ; preds = %land.end
  %.lcssa4 = phi %struct.loop* [ %18, %land.end ]
  %.lcssa = phi %struct.loop* [ %19, %land.end ]
  %cmp107 = icmp eq %struct.loop* %.lcssa, null, !dbg !2664
  br i1 %cmp107, label %if.end114.loopexit, label %if.end109, !dbg !2666

if.end109:                                        ; preds = %while.end106
  call void @llvm.dbg.value(metadata %struct.loop* %.lcssa4, metadata !2618, metadata !DIExpression()), !dbg !2621
  %next110 = getelementptr inbounds %struct.loop, %struct.loop* %.lcssa4, i64 0, i32 9, !dbg !2667
  %24 = load %struct.loop*, %struct.loop** %next110, align 8, !dbg !2667
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
  br label %while.cond79, !dbg !2638, !llvm.loop !2668

if.end114.loopexit:                               ; preds = %while.end106
  call fastcc void @fel_next(%struct.loop_iterator* %li, %struct.loop** %loop) #8, !dbg !2670
  br label %cleanup, !dbg !2671

cleanup:                                          ; preds = %if.end114.loopexit, %if.then
  ret void, !dbg !2671
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_loop_p_heap* @VEC_loop_p_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !2672 {
entry:
  call void @llvm.dbg.value(metadata i32 3, metadata !2676, metadata !DIExpression()), !dbg !2677
  %call = tail call i8* @vec_heap_p_reserve_exact(i8* null, i32 3) #6, !dbg !2678
  %0 = bitcast i8* %call to %struct.VEC_loop_p_heap*, !dbg !2678
  ret %struct.VEC_loop_p_heap* %0, !dbg !2678
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop** @VEC_loop_p_heap_safe_push(%struct.VEC_loop_p_heap** %vec_, %struct.loop* %obj_) unnamed_addr #0 !dbg !2679 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_heap** %vec_, metadata !2684, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata %struct.loop* %obj_, metadata !2685, metadata !DIExpression()), !dbg !2686
  %call = tail call fastcc i32 @VEC_loop_p_heap_reserve(%struct.VEC_loop_p_heap** %vec_, i32 1) #8, !dbg !2687
  %0 = load %struct.VEC_loop_p_heap*, %struct.VEC_loop_p_heap** %vec_, align 8, !dbg !2687
  %tobool = icmp eq %struct.VEC_loop_p_heap* %0, null, !dbg !2687
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2687

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_heap, %struct.VEC_loop_p_heap* %0, i64 0, i32 0, !dbg !2687
  br label %cond.end, !dbg !2687

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2687
  %call1 = tail call fastcc %struct.loop** @VEC_loop_p_base_quick_push(%struct.VEC_loop_p_base* %cond, %struct.loop* %obj_) #8, !dbg !2687
  ret %struct.loop** %call1, !dbg !2687
}

declare dso_local i32 @_obstack_begin(%struct.obstack*, i32, i32, i8* (i64)*, void (i8*)*) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local void @free(i8*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_tree_base_truncate(%struct.VEC_tree_base* %vec_, i32 %size_) unnamed_addr #0 !dbg !2688 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2693, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i32 0, metadata !2694, metadata !DIExpression()), !dbg !2695
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !2696
  br label %cond.true, !dbg !2696

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !2696

cond.false:                                       ; No predecessors!
  br label %cond.end, !dbg !2696

cond.end:                                         ; preds = %cond.false, %cond.true
  br i1 %tobool, label %if.end, label %if.then, !dbg !2696

if.then:                                          ; preds = %cond.end
  %num3 = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !2697
  store i32 0, i32* %num3, align 8, !dbg !2697
  br label %if.end, !dbg !2697

if.end:                                           ; preds = %cond.end, %if.then
  ret void, !dbg !2696
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_data_reference_p_heap* @VEC_data_reference_p_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !2699 {
entry:
  call void @llvm.dbg.value(metadata i32 10, metadata !2703, metadata !DIExpression()), !dbg !2704
  %call = tail call i8* @vec_heap_p_reserve_exact(i8* null, i32 10) #6, !dbg !2705
  %0 = bitcast i8* %call to %struct.VEC_data_reference_p_heap*, !dbg !2705
  ret %struct.VEC_data_reference_p_heap* %0, !dbg !2705
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_ddr_p_heap* @VEC_ddr_p_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !2706 {
entry:
  call void @llvm.dbg.value(metadata i32 100, metadata !2710, metadata !DIExpression()), !dbg !2711
  %call = tail call i8* @vec_heap_p_reserve_exact(i8* null, i32 100) #6, !dbg !2712
  %0 = bitcast i8* %call to %struct.VEC_ddr_p_heap*, !dbg !2712
  ret %struct.VEC_ddr_p_heap* %0, !dbg !2712
}

declare dso_local zeroext i8 @compute_data_dependences_for_loop(%struct.loop*, i8 zeroext, %struct.VEC_data_reference_p_heap**, %struct.VEC_ddr_p_heap**) local_unnamed_addr #1

declare dso_local void @lambda_collect_parameters(%struct.VEC_data_reference_p_heap*, %struct.VEC_tree_heap**) local_unnamed_addr #1

declare dso_local zeroext i8 @lambda_compute_access_matrices(%struct.VEC_data_reference_p_heap*, %struct.VEC_tree_heap*, %struct.VEC_loop_p_heap*) local_unnamed_addr #1

declare dso_local void @dump_ddrs(%struct._IO_FILE*, %struct.VEC_ddr_p_heap*) local_unnamed_addr #1

declare dso_local %struct.lambda_trans_matrix_s* @lambda_trans_matrix_new(i32, i32) local_unnamed_addr #1

declare dso_local void @lambda_matrix_id(i32**, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct.lambda_trans_matrix_s* @try_interchange_loops(%struct.lambda_trans_matrix_s* %trans, i32 %depth, %struct.VEC_ddr_p_heap* %dependence_relations, %struct.VEC_data_reference_p_heap* %datarefs, %struct.loop* %first_loop) unnamed_addr #4 !dbg !2713 {
entry:
  %dependence_steps_i = alloca i32, align 4
  %dependence_steps_j = alloca i32, align 4
  %access_strides_i = alloca %struct.double_int, align 8
  %access_strides_j = alloca %struct.double_int, align 8
  %small = alloca %struct.double_int, align 8
  %large = alloca %struct.double_int, align 8
  %nb_iter = alloca %struct.double_int, align 8
  %l1_cache_size = alloca %struct.double_int, align 8
  %l2_cache_size = alloca %struct.double_int, align 8
  %nb_deps_not_carried_by_i = alloca i32, align 4
  %nb_deps_not_carried_by_j = alloca i32, align 4
  %tmp = alloca %struct.double_int, align 8
  %tmp14 = alloca %struct.double_int, align 8
  call void @llvm.dbg.value(metadata %struct.lambda_trans_matrix_s* %trans, metadata !2717, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i32 %depth, metadata !2718, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata %struct.VEC_ddr_p_heap* %dependence_relations, metadata !2719, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata %struct.VEC_data_reference_p_heap* %datarefs, metadata !2720, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata %struct.loop* %first_loop, metadata !2721, metadata !DIExpression()), !dbg !2738
  %0 = bitcast i32* %dependence_steps_i to i8*, !dbg !2739
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2739
  %1 = bitcast i32* %dependence_steps_j to i8*, !dbg !2739
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #7, !dbg !2739
  %2 = bitcast %struct.double_int* %access_strides_i to i8*, !dbg !2740
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !2740
  %3 = bitcast %struct.double_int* %access_strides_j to i8*, !dbg !2740
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7, !dbg !2740
  %4 = bitcast %struct.double_int* %small to i8*, !dbg !2741
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #7, !dbg !2741
  %5 = bitcast %struct.double_int* %large to i8*, !dbg !2741
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #7, !dbg !2741
  %6 = bitcast %struct.double_int* %nb_iter to i8*, !dbg !2741
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #7, !dbg !2741
  %7 = bitcast %struct.double_int* %l1_cache_size to i8*, !dbg !2742
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #7, !dbg !2742
  %8 = bitcast %struct.double_int* %l2_cache_size to i8*, !dbg !2742
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #7, !dbg !2742
  %9 = bitcast i32* %nb_deps_not_carried_by_i to i8*, !dbg !2743
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #7, !dbg !2743
  %10 = bitcast i32* %nb_deps_not_carried_by_j to i8*, !dbg !2743
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #7, !dbg !2743
  %base = getelementptr inbounds %struct.VEC_ddr_p_heap, %struct.VEC_ddr_p_heap* %dependence_relations, i64 0, i32 0, !dbg !2744
  %call = tail call fastcc i32 @VEC_ddr_p_base_length(%struct.VEC_ddr_p_base* %base) #8, !dbg !2744
  %cmp1 = icmp eq i32 %call, 0, !dbg !2746
  br i1 %cmp1, label %cleanup, label %if.end, !dbg !2747

if.end:                                           ; preds = %entry
  %call8 = tail call fastcc %struct.data_dependence_relation* @VEC_ddr_p_base_index(%struct.VEC_ddr_p_base* %base, i32 0) #8, !dbg !2748
  call void @llvm.dbg.value(metadata %struct.data_dependence_relation* %call8, metadata !2737, metadata !DIExpression()), !dbg !2738
  %cmp9 = icmp eq %struct.data_dependence_relation* %call8, null, !dbg !2749
  br i1 %cmp9, label %cleanup, label %lor.lhs.false, !dbg !2751

lor.lhs.false:                                    ; preds = %if.end
  %are_dependent = getelementptr inbounds %struct.data_dependence_relation, %struct.data_dependence_relation* %call8, i64 0, i32 2, !dbg !2752
  %11 = load %union.tree_node*, %union.tree_node** %are_dependent, align 8, !dbg !2752
  %12 = load %union.tree_node*, %union.tree_node** @chrec_dont_know, align 8, !dbg !2753
  %cmp10 = icmp eq %union.tree_node* %11, %12, !dbg !2754
  br i1 %cmp10, label %cleanup, label %if.end12, !dbg !2755

if.end12:                                         ; preds = %lor.lhs.false
  %13 = bitcast %struct.double_int* %tmp to i8*, !dbg !2756
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #7, !dbg !2756
  %14 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !2757
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %14, i64 99, i32 1, !dbg !2757
  %15 = load i32, i32* %value, align 8, !dbg !2757
  %mul = shl nsw i32 %15, 10, !dbg !2758
  %conv = sext i32 %mul to i64, !dbg !2757
  %call13 = tail call fastcc { i64, i64 } @uhwi_to_double_int(i64 %conv) #8, !dbg !2756
  %16 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 0, !dbg !2756
  %17 = extractvalue { i64, i64 } %call13, 0, !dbg !2756
  store i64 %17, i64* %16, align 8, !dbg !2756
  %18 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 1, !dbg !2756
  store i64 0, i64* %18, align 8, !dbg !2756
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* nonnull align 8 %13, i64 16, i1 false), !dbg !2756
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #7, !dbg !2756
  %19 = bitcast %struct.double_int* %tmp14 to i8*, !dbg !2759
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %19) #7, !dbg !2759
  %20 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !2760
  %value16 = getelementptr inbounds %struct.param_info, %struct.param_info* %20, i64 101, i32 1, !dbg !2760
  %21 = load i32, i32* %value16, align 8, !dbg !2760
  %mul17 = shl nsw i32 %21, 10, !dbg !2761
  %conv18 = sext i32 %mul17 to i64, !dbg !2760
  %call19 = tail call fastcc { i64, i64 } @uhwi_to_double_int(i64 %conv18) #8, !dbg !2759
  %22 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp14, i64 0, i32 0, !dbg !2759
  %23 = extractvalue { i64, i64 } %call19, 0, !dbg !2759
  store i64 %23, i64* %22, align 8, !dbg !2759
  %24 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp14, i64 0, i32 1, !dbg !2759
  store i64 0, i64* %24, align 8, !dbg !2759
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %8, i8* nonnull align 8 %19, i64 16, i1 false), !dbg !2759
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %19) #7, !dbg !2759
  %25 = getelementptr inbounds %struct.double_int, %struct.double_int* %access_strides_i, i64 0, i32 0, !dbg !2762
  %26 = getelementptr inbounds %struct.double_int, %struct.double_int* %access_strides_i, i64 0, i32 1, !dbg !2762
  %27 = getelementptr inbounds %struct.double_int, %struct.double_int* %access_strides_j, i64 0, i32 0, !dbg !2762
  %28 = getelementptr inbounds %struct.double_int, %struct.double_int* %access_strides_j, i64 0, i32 1, !dbg !2762
  %29 = getelementptr inbounds %struct.double_int, %struct.double_int* %small, i64 0, i32 0, !dbg !2768
  %30 = getelementptr inbounds %struct.double_int, %struct.double_int* %small, i64 0, i32 1, !dbg !2768
  %31 = getelementptr inbounds %struct.double_int, %struct.double_int* %l2_cache_size, i64 0, i32 0, !dbg !2768
  %32 = load i64, i64* %31, align 8, !dbg !2768
  %33 = getelementptr inbounds %struct.double_int, %struct.double_int* %l2_cache_size, i64 0, i32 1, !dbg !2768
  %34 = load i64, i64* %33, align 8, !dbg !2768
  %35 = getelementptr inbounds %struct.double_int, %struct.double_int* %large, i64 0, i32 0, !dbg !2770
  %36 = getelementptr inbounds %struct.double_int, %struct.double_int* %large, i64 0, i32 1, !dbg !2770
  %37 = getelementptr inbounds %struct.double_int, %struct.double_int* %nb_iter, i64 0, i32 0, !dbg !2770
  %38 = getelementptr inbounds %struct.double_int, %struct.double_int* %nb_iter, i64 0, i32 1, !dbg !2770
  %39 = getelementptr inbounds %struct.double_int, %struct.double_int* %l1_cache_size, i64 0, i32 0, !dbg !2770
  %40 = load i64, i64* %39, align 8, !dbg !2770
  %41 = getelementptr inbounds %struct.double_int, %struct.double_int* %l1_cache_size, i64 0, i32 1, !dbg !2770
  %42 = load i64, i64* %41, align 8, !dbg !2770
  %matrix = getelementptr inbounds %struct.lambda_trans_matrix_s, %struct.lambda_trans_matrix_s* %trans, i64 0, i32 0, !dbg !2772
  br label %for.cond, !dbg !2775

for.cond:                                         ; preds = %for.inc89, %if.end12
  %first_loop.pn = phi %struct.loop* [ %first_loop, %if.end12 ], [ %loop_j.0, %for.inc89 ]
  %loop_j.0.in = getelementptr inbounds %struct.loop, %struct.loop* %first_loop.pn, i64 0, i32 8, !dbg !2776
  %loop_j.0 = load %struct.loop*, %struct.loop** %loop_j.0.in, align 8, !dbg !2776
  call void @llvm.dbg.value(metadata %struct.loop* %loop_j.0, metadata !2724, metadata !DIExpression()), !dbg !2738
  %tobool20 = icmp eq %struct.loop* %loop_j.0, null, !dbg !2777
  br i1 %tobool20, label %cleanup.loopexit, label %for.cond21.preheader, !dbg !2777

for.cond21.preheader:                             ; preds = %for.cond
  br label %for.cond21, !dbg !2778

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc
  %loop_i.0 = phi %struct.loop* [ %61, %for.inc ], [ %first_loop, %for.cond21.preheader ], !dbg !2779
  call void @llvm.dbg.value(metadata %struct.loop* %loop_i.0, metadata !2723, metadata !DIExpression()), !dbg !2738
  %call22 = call fastcc i32 @loop_depth(%struct.loop* %loop_i.0) #8, !dbg !2780
  %call23 = call fastcc i32 @loop_depth(%struct.loop* nonnull %loop_j.0) #8, !dbg !2781
  %cmp24 = icmp ult i32 %call22, %call23, !dbg !2782
  br i1 %cmp24, label %for.body26, label %for.inc89, !dbg !2778

for.body26:                                       ; preds = %for.cond21
  call void @llvm.dbg.value(metadata i32* %dependence_steps_i, metadata !2725, metadata !DIExpression(DW_OP_deref)), !dbg !2738
  call void @llvm.dbg.value(metadata %struct.double_int* %access_strides_i, metadata !2727, metadata !DIExpression(DW_OP_deref)), !dbg !2738
  call void @llvm.dbg.value(metadata i32* %nb_deps_not_carried_by_i, metadata !2735, metadata !DIExpression(DW_OP_deref)), !dbg !2738
  call fastcc void @gather_interchange_stats(%struct.VEC_ddr_p_heap* %dependence_relations, %struct.VEC_data_reference_p_heap* %datarefs, %struct.loop* %loop_i.0, %struct.loop* %first_loop, i32* nonnull %dependence_steps_i, i32* nonnull %nb_deps_not_carried_by_i, %struct.double_int* nonnull %access_strides_i) #8, !dbg !2783
  call void @llvm.dbg.value(metadata i32* %dependence_steps_j, metadata !2726, metadata !DIExpression(DW_OP_deref)), !dbg !2738
  call void @llvm.dbg.value(metadata %struct.double_int* %access_strides_j, metadata !2728, metadata !DIExpression(DW_OP_deref)), !dbg !2738
  call void @llvm.dbg.value(metadata i32* %nb_deps_not_carried_by_j, metadata !2736, metadata !DIExpression(DW_OP_deref)), !dbg !2738
  call fastcc void @gather_interchange_stats(%struct.VEC_ddr_p_heap* %dependence_relations, %struct.VEC_data_reference_p_heap* %datarefs, %struct.loop* nonnull %loop_j.0, %struct.loop* %first_loop, i32* nonnull %dependence_steps_j, i32* nonnull %nb_deps_not_carried_by_j, %struct.double_int* nonnull %access_strides_j) #8, !dbg !2784
  %43 = load i64, i64* %25, align 8, !dbg !2785
  %44 = load i64, i64* %26, align 8, !dbg !2785
  %45 = load i64, i64* %27, align 8, !dbg !2785
  %46 = load i64, i64* %28, align 8, !dbg !2785
  %call27 = call i32 @double_int_ucmp(i64 %43, i64 %44, i64 %45, i64 %46) #6, !dbg !2785
  call void @llvm.dbg.value(metadata i32 %call27, metadata !2734, metadata !DIExpression()), !dbg !2738
  %cmp28 = icmp slt i32 %call27, 0, !dbg !2786
  br i1 %cmp28, label %cond.true30, label %cond.false31, !dbg !2787

cond.true30:                                      ; preds = %for.body26
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !2788
  br label %cond.end32, !dbg !2787

cond.false31:                                     ; preds = %for.body26
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* nonnull align 8 %3, i64 16, i1 false), !dbg !2789
  br label %cond.end32, !dbg !2787

cond.end32:                                       ; preds = %cond.false31, %cond.true30
  br i1 %cmp28, label %cond.true35, label %cond.false36, !dbg !2790

cond.true35:                                      ; preds = %cond.end32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* nonnull align 8 %3, i64 16, i1 false), !dbg !2791
  br label %cond.end37, !dbg !2790

cond.false36:                                     ; preds = %cond.end32
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !2792
  br label %cond.end37, !dbg !2790

cond.end37:                                       ; preds = %cond.false36, %cond.true35
  %47 = load i64, i64* %29, align 8, !dbg !2793
  %48 = load i64, i64* %30, align 8, !dbg !2793
  %call38 = call i32 @double_int_ucmp(i64 %47, i64 %48, i64 %32, i64 %34) #6, !dbg !2793
  %cmp39 = icmp sgt i32 %call38, 0, !dbg !2794
  br i1 %cmp39, label %for.inc, label %if.end42, !dbg !2795

if.end42:                                         ; preds = %cond.end37
  br i1 %cmp28, label %cond.true45, label %cond.false48, !dbg !2796

cond.true45:                                      ; preds = %if.end42
  call void @llvm.dbg.value(metadata %struct.double_int* %nb_iter, metadata !2731, metadata !DIExpression(DW_OP_deref)), !dbg !2738
  %call46 = call zeroext i8 @estimated_loop_iterations(%struct.loop* nonnull %loop_j.0, i8 zeroext 0, %struct.double_int* nonnull %nb_iter) #6, !dbg !2797
  br label %cond.end51, !dbg !2796

cond.false48:                                     ; preds = %if.end42
  call void @llvm.dbg.value(metadata %struct.double_int* %nb_iter, metadata !2731, metadata !DIExpression(DW_OP_deref)), !dbg !2738
  %call49 = call zeroext i8 @estimated_loop_iterations(%struct.loop* %loop_i.0, i8 zeroext 0, %struct.double_int* nonnull %nb_iter) #6, !dbg !2798
  br label %cond.end51, !dbg !2796

cond.end51:                                       ; preds = %cond.false48, %cond.true45
  %cond52.in = phi i8 [ %call46, %cond.true45 ], [ %call49, %cond.false48 ]
  call void @llvm.dbg.value(metadata i8 %cond52.in, metadata !2722, metadata !DIExpression()), !dbg !2738
  %tobool55 = icmp eq i8 %cond52.in, 0, !dbg !2799
  br i1 %tobool55, label %if.end61, label %land.lhs.true, !dbg !2800

land.lhs.true:                                    ; preds = %cond.end51
  %49 = load i64, i64* %35, align 8, !dbg !2801
  %50 = load i64, i64* %36, align 8, !dbg !2801
  %51 = load i64, i64* %37, align 8, !dbg !2801
  %52 = load i64, i64* %38, align 8, !dbg !2801
  %call56 = call { i64, i64 } @double_int_mul(i64 %49, i64 %50, i64 %51, i64 %52) #6, !dbg !2801
  %53 = extractvalue { i64, i64 } %call56, 0, !dbg !2801
  %54 = extractvalue { i64, i64 } %call56, 1, !dbg !2801
  %call57 = call i32 @double_int_ucmp(i64 %53, i64 %54, i64 %40, i64 %42) #6, !dbg !2802
  %cmp58 = icmp slt i32 %call57, 0, !dbg !2803
  br i1 %cmp58, label %for.inc, label %if.end61, !dbg !2804

if.end61:                                         ; preds = %cond.end51, %land.lhs.true
  %55 = load i32, i32* %dependence_steps_i, align 4, !dbg !2805
  call void @llvm.dbg.value(metadata i32 %55, metadata !2725, metadata !DIExpression()), !dbg !2738
  %56 = load i32, i32* %dependence_steps_j, align 4, !dbg !2806
  call void @llvm.dbg.value(metadata i32 %56, metadata !2726, metadata !DIExpression()), !dbg !2738
  %cmp62 = icmp ult i32 %55, %56, !dbg !2807
  br i1 %cmp62, label %if.then70, label %lor.lhs.false64, !dbg !2808

lor.lhs.false64:                                  ; preds = %if.end61
  %57 = load i32, i32* %nb_deps_not_carried_by_i, align 4, !dbg !2809
  call void @llvm.dbg.value(metadata i32 %57, metadata !2735, metadata !DIExpression()), !dbg !2738
  %58 = load i32, i32* %nb_deps_not_carried_by_j, align 4, !dbg !2810
  call void @llvm.dbg.value(metadata i32 %58, metadata !2736, metadata !DIExpression()), !dbg !2738
  %cmp65 = icmp ugt i32 %57, %58, !dbg !2811
  %or.cond = or i1 %cmp65, %cmp28, !dbg !2812
  br i1 %or.cond, label %if.then70, label %for.inc, !dbg !2812

if.then70:                                        ; preds = %lor.lhs.false64, %if.end61
  %59 = load i32**, i32*** %matrix, align 8, !dbg !2813
  %call71 = call fastcc i32 @loop_depth(%struct.loop* %loop_i.0) #8, !dbg !2814
  %call72 = call fastcc i32 @loop_depth(%struct.loop* %first_loop) #8, !dbg !2815
  %sub = sub i32 %call71, %call72, !dbg !2816
  %call73 = call fastcc i32 @loop_depth(%struct.loop* nonnull %loop_j.0) #8, !dbg !2817
  %call74 = call fastcc i32 @loop_depth(%struct.loop* %first_loop) #8, !dbg !2818
  %sub75 = sub i32 %call73, %call74, !dbg !2819
  call void @lambda_matrix_row_exchange(i32** %59, i32 %sub, i32 %sub75) #6, !dbg !2820
  %call76 = call zeroext i8 @lambda_transform_legal_p(%struct.lambda_trans_matrix_s* %trans, i32 %depth, %struct.VEC_ddr_p_heap* %dependence_relations) #6, !dbg !2821
  %tobool77 = icmp eq i8 %call76, 0, !dbg !2821
  br i1 %tobool77, label %if.then78, label %for.inc, !dbg !2823

if.then78:                                        ; preds = %if.then70
  %60 = load i32**, i32*** %matrix, align 8, !dbg !2824
  %call80 = call fastcc i32 @loop_depth(%struct.loop* %loop_i.0) #8, !dbg !2825
  %call81 = call fastcc i32 @loop_depth(%struct.loop* %first_loop) #8, !dbg !2826
  %sub82 = sub i32 %call80, %call81, !dbg !2827
  %call83 = call fastcc i32 @loop_depth(%struct.loop* nonnull %loop_j.0) #8, !dbg !2828
  %call84 = call fastcc i32 @loop_depth(%struct.loop* %first_loop) #8, !dbg !2829
  %sub85 = sub i32 %call83, %call84, !dbg !2830
  call void @lambda_matrix_row_exchange(i32** %60, i32 %sub82, i32 %sub85) #6, !dbg !2831
  br label %for.inc, !dbg !2831

for.inc:                                          ; preds = %if.then70, %lor.lhs.false64, %if.then78, %land.lhs.true, %cond.end37
  %inner88 = getelementptr inbounds %struct.loop, %struct.loop* %loop_i.0, i64 0, i32 8, !dbg !2832
  %61 = load %struct.loop*, %struct.loop** %inner88, align 8, !dbg !2832
  call void @llvm.dbg.value(metadata %struct.loop* %61, metadata !2723, metadata !DIExpression()), !dbg !2738
  br label %for.cond21, !dbg !2833, !llvm.loop !2834

for.inc89:                                        ; preds = %for.cond21
  br label %for.cond, !dbg !2836, !llvm.loop !2837

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !2839

cleanup:                                          ; preds = %cleanup.loopexit, %if.end, %lor.lhs.false, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #7, !dbg !2839
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #7, !dbg !2839
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #7, !dbg !2839
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #7, !dbg !2839
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #7, !dbg !2839
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #7, !dbg !2839
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #7, !dbg !2839
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7, !dbg !2839
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !2839
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #7, !dbg !2839
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2839
  ret %struct.lambda_trans_matrix_s* %trans, !dbg !2839
}

declare dso_local zeroext i8 @lambda_trans_matrix_id_p(%struct.lambda_trans_matrix_s*) local_unnamed_addr #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

declare dso_local zeroext i8 @lambda_transform_legal_p(%struct.lambda_trans_matrix_s*, i32, %struct.VEC_ddr_p_heap*) local_unnamed_addr #1

declare dso_local %struct.lambda_loopnest_s* @gcc_loopnest_to_lambda_loopnest(%struct.loop*, %struct.VEC_tree_heap**, %struct.VEC_tree_heap**, %struct.obstack*) local_unnamed_addr #1

declare dso_local void @print_lambda_loopnest(%struct._IO_FILE*, %struct.lambda_loopnest_s*, i8 signext) local_unnamed_addr #1

declare dso_local %struct.lambda_loopnest_s* @lambda_loopnest_transform(%struct.lambda_loopnest_s*, %struct.lambda_trans_matrix_s*, %struct.obstack*) local_unnamed_addr #1

declare dso_local void @lambda_loopnest_to_gcc_loopnest(%struct.loop*, %struct.VEC_tree_heap*, %struct.VEC_tree_heap*, %struct.VEC_gimple_heap**, %struct.lambda_loopnest_s*, %struct.lambda_trans_matrix_s*, %struct.obstack*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #5

declare dso_local void @obstack_free(%struct.obstack*, i8*) local_unnamed_addr #1

declare dso_local void @free_dependence_relations(%struct.VEC_ddr_p_heap*) local_unnamed_addr #1

declare dso_local void @free_data_refs(%struct.VEC_data_reference_p_heap*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_loop_p_heap_free(%struct.VEC_loop_p_heap** %vec_) unnamed_addr #0 !dbg !2840 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_heap** %vec_, metadata !2844, metadata !DIExpression()), !dbg !2845
  %0 = load %struct.VEC_loop_p_heap*, %struct.VEC_loop_p_heap** %vec_, align 8, !dbg !2846
  %tobool = icmp eq %struct.VEC_loop_p_heap* %0, null, !dbg !2846
  br i1 %tobool, label %if.end, label %if.then, !dbg !2848

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_loop_p_heap* %0 to i8*, !dbg !2848
  tail call void @free(i8* nonnull %1) #6, !dbg !2846
  br label %if.end, !dbg !2846

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_loop_p_heap* null, %struct.VEC_loop_p_heap** %vec_, align 8, !dbg !2848
  ret void, !dbg !2848
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fel_next(%struct.loop_iterator* %li, %struct.loop** %loop) unnamed_addr #0 !dbg !2849 {
entry:
  %anum = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2853, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2854, metadata !DIExpression()), !dbg !2856
  %0 = bitcast i32* %anum to i8*, !dbg !2857
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2857
  %to_visit = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2856
  %idx = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 1, !dbg !2856
  br label %while.cond, !dbg !2858

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit, align 8, !dbg !2859
  %tobool = icmp eq %struct.VEC_int_heap* %1, null, !dbg !2859
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2859

cond.true:                                        ; preds = %while.cond
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %1, i64 0, i32 0, !dbg !2859
  br label %cond.end, !dbg !2859

cond.end:                                         ; preds = %while.cond, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %while.cond ], !dbg !2859
  %2 = load i32, i32* %idx, align 8, !dbg !2859
  call void @llvm.dbg.value(metadata i32* %anum, metadata !2855, metadata !DIExpression(DW_OP_deref)), !dbg !2856
  %call = call fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %cond, i32 %2, i32* nonnull %anum) #8, !dbg !2859
  %tobool2 = icmp eq i32 %call, 0, !dbg !2858
  br i1 %tobool2, label %while.end, label %while.body, !dbg !2858

while.body:                                       ; preds = %cond.end
  %3 = load i32, i32* %idx, align 8, !dbg !2860
  %inc = add i32 %3, 1, !dbg !2860
  store i32 %inc, i32* %idx, align 8, !dbg !2860
  %4 = load i32, i32* %anum, align 4, !dbg !2862
  call void @llvm.dbg.value(metadata i32 %4, metadata !2855, metadata !DIExpression()), !dbg !2856
  %call4 = call fastcc %struct.loop* @get_loop(i32 %4) #8, !dbg !2863
  store %struct.loop* %call4, %struct.loop** %loop, align 8, !dbg !2864
  %tobool5 = icmp eq %struct.loop* %call4, null, !dbg !2865
  br i1 %tobool5, label %while.cond, label %cleanup.loopexit, !dbg !2867, !llvm.loop !2868

while.end:                                        ; preds = %cond.end
  call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %to_visit) #8, !dbg !2870
  store %struct.loop* null, %struct.loop** %loop, align 8, !dbg !2871
  br label %cleanup, !dbg !2872

cleanup.loopexit:                                 ; preds = %while.body
  br label %cleanup, !dbg !2872

cleanup:                                          ; preds = %cleanup.loopexit, %while.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2872
  ret void, !dbg !2872
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_gimple_base_iterate(%struct.VEC_gimple_base* %vec_, i32 %ix_, %union.gimple_statement_d** %ptr) unnamed_addr #0 !dbg !2873 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_base* %vec_, metadata !2880, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2881, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata %union.gimple_statement_d** %ptr, metadata !2882, metadata !DIExpression()), !dbg !2883
  %tobool = icmp eq %struct.VEC_gimple_base* %vec_, null, !dbg !2884
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !2884

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 0, !dbg !2884
  %0 = load i32, i32* %num, align 8, !dbg !2884
  %cmp = icmp ugt i32 %0, %ix_, !dbg !2884
  br i1 %cmp, label %if.then, label %if.else, !dbg !2886

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !2887
  %arrayidx = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2887
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %arrayidx, align 8, !dbg !2887
  br label %return, !dbg !2887

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !2889

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %union.gimple_statement_d* [ null, %if.else ], [ %1, %if.then ], !dbg !2891
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !2891
  store %union.gimple_statement_d* %storemerge, %union.gimple_statement_d** %ptr, align 8, !dbg !2891
  ret i32 %retval.0, !dbg !2886
}

declare dso_local void @remove_iv(%union.gimple_statement_d*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_tree_heap_free(%struct.VEC_tree_heap** %vec_) unnamed_addr #0 !dbg !2892 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !2897, metadata !DIExpression()), !dbg !2898
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !2899
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !2899
  br i1 %tobool, label %if.end, label %if.then, !dbg !2901

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_tree_heap* %0 to i8*, !dbg !2901
  tail call void @free(i8* nonnull %1) #6, !dbg !2899
  br label %if.end, !dbg !2899

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_tree_heap* null, %struct.VEC_tree_heap** %vec_, align 8, !dbg !2901
  ret void, !dbg !2901
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_gimple_heap_free(%struct.VEC_gimple_heap** %vec_) unnamed_addr #0 !dbg !2902 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_heap** %vec_, metadata !2907, metadata !DIExpression()), !dbg !2908
  %0 = load %struct.VEC_gimple_heap*, %struct.VEC_gimple_heap** %vec_, align 8, !dbg !2909
  %tobool = icmp eq %struct.VEC_gimple_heap* %0, null, !dbg !2909
  br i1 %tobool, label %if.end, label %if.then, !dbg !2911

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_gimple_heap* %0 to i8*, !dbg !2911
  tail call void @free(i8* nonnull %1) #6, !dbg !2909
  br label %if.end, !dbg !2909

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_gimple_heap* null, %struct.VEC_gimple_heap** %vec_, align 8, !dbg !2911
  ret void, !dbg !2911
}

declare dso_local void @scev_reset() local_unnamed_addr #1

declare dso_local void @rewrite_into_loop_closed_ssa(%struct.bitmap_head_def*, i32) local_unnamed_addr #1

declare dso_local i8* @vec_heap_p_reserve_exact(i8*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !2912 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !2916, metadata !DIExpression()), !dbg !2917
  %call = tail call i8* @vec_heap_o_reserve_exact(i8* null, i32 %alloc_, i64 8, i64 4) #6, !dbg !2918
  %0 = bitcast i8* %call to %struct.VEC_int_heap*, !dbg !2918
  ret %struct.VEC_int_heap* %0, !dbg !2918
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #0 !dbg !2919 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2922
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !2922
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2922
  %tobool = icmp eq %struct.loops* %1, null, !dbg !2922
  br i1 %tobool, label %return, label %if.end, !dbg !2924

if.end:                                           ; preds = %entry
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !2925
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !2925
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !2925
  br i1 %tobool3, label %cond.end, label %cond.true, !dbg !2925

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !2925
  br label %cond.end, !dbg !2925

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !2925
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #8, !dbg !2925
  br label %return, !dbg !2926

return:                                           ; preds = %entry, %cond.end
  %retval.0 = phi i32 [ %call, %cond.end ], [ 0, %entry ], !dbg !2927
  ret i32 %retval.0, !dbg !2928
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_iterate(%struct.VEC_loop_p_base* %vec_, i32 %ix_, %struct.loop** %ptr) unnamed_addr #0 !dbg !2929 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !2935, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2936, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata %struct.loop** %ptr, metadata !2937, metadata !DIExpression()), !dbg !2938
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !2939
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !2939

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !2939
  %0 = load i32, i32* %num, align 8, !dbg !2939
  %cmp = icmp ugt i32 %0, %ix_, !dbg !2939
  br i1 %cmp, label %if.then, label %if.else, !dbg !2941

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !2942
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2942
  %1 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !2942
  br label %return, !dbg !2942

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !2944

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.loop* [ null, %if.else ], [ %1, %if.then ], !dbg !2946
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !2946
  store %struct.loop* %storemerge, %struct.loop** %ptr, align 8, !dbg !2946
  ret i32 %retval.0, !dbg !2941
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %vec_, i32 %obj_) unnamed_addr #0 !dbg !2947 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !2952, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !2953, metadata !DIExpression()), !dbg !2955
  %num1 = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !2956
  %0 = load i32, i32* %num1, align 4, !dbg !2956
  %inc = add i32 %0, 1, !dbg !2956
  store i32 %inc, i32* %num1, align 4, !dbg !2956
  %idxprom = zext i32 %0 to i64, !dbg !2956
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2956
  call void @llvm.dbg.value(metadata i32* %arrayidx, metadata !2954, metadata !DIExpression()), !dbg !2955
  store i32 %obj_, i32* %arrayidx, align 4, !dbg !2956
  ret i32* %arrayidx, !dbg !2956
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @loop_outer(%struct.loop* %loop) unnamed_addr #0 !dbg !2957 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2963, metadata !DIExpression()), !dbg !2965
  %superloops = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 7, !dbg !2966
  %0 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !2966
  %tobool = icmp eq %struct.VEC_loop_p_gc* %0, null, !dbg !2966
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2966

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %0, i64 0, i32 0, !dbg !2966
  br label %cond.end, !dbg !2966

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2966
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #8, !dbg !2966
  call void @llvm.dbg.value(metadata i32 %call, metadata !2964, metadata !DIExpression()), !dbg !2965
  %cmp = icmp eq i32 %call, 0, !dbg !2967
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2969

if.end:                                           ; preds = %cond.end
  %1 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !2970
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %1, null, !dbg !2970
  br i1 %tobool3, label %cond.end8, label %cond.true4, !dbg !2970

cond.true4:                                       ; preds = %if.end
  %base6 = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %1, i64 0, i32 0, !dbg !2970
  br label %cond.end8, !dbg !2970

cond.end8:                                        ; preds = %if.end, %cond.true4
  %cond9 = phi %struct.VEC_loop_p_base* [ %base6, %cond.true4 ], [ null, %if.end ], !dbg !2970
  %sub = add i32 %call, -1, !dbg !2970
  %call10 = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond9, i32 %sub) #8, !dbg !2970
  br label %cleanup, !dbg !2971

cleanup:                                          ; preds = %cond.end, %cond.end8
  %retval.0 = phi %struct.loop* [ %call10, %cond.end8 ], [ null, %cond.end ], !dbg !2965
  ret %struct.loop* %retval.0, !dbg !2972
}

declare dso_local i8* @vec_heap_o_reserve_exact(i8*, i32, i64, i64) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %vec_) unnamed_addr #0 !dbg !2973 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !2977, metadata !DIExpression()), !dbg !2978
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !2979
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2979

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !2979
  %0 = load i32, i32* %num, align 8, !dbg !2979
  br label %cond.end, !dbg !2979

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2979
  ret i32 %cond, !dbg !2979
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2980 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !2984, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2985, metadata !DIExpression()), !dbg !2986
  br label %land.end, !dbg !2987

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2987
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2987
  %0 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !2987
  ret %struct.loop* %0, !dbg !2987
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_heap_reserve(%struct.VEC_loop_p_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !2988 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_heap** %vec_, metadata !2992, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i32 1, metadata !2993, metadata !DIExpression()), !dbg !2995
  %0 = load %struct.VEC_loop_p_heap*, %struct.VEC_loop_p_heap** %vec_, align 8, !dbg !2996
  %tobool = icmp eq %struct.VEC_loop_p_heap* %0, null, !dbg !2996
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2996

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_heap, %struct.VEC_loop_p_heap* %0, i64 0, i32 0, !dbg !2996
  br label %cond.end, !dbg !2996

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2996
  %call = tail call fastcc i32 @VEC_loop_p_base_space(%struct.VEC_loop_p_base* %cond, i32 1) #8, !dbg !2996
  %tobool1 = icmp eq i32 %call, 0, !dbg !2996
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !2996
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !2994, metadata !DIExpression()), !dbg !2995
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2996

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_loop_p_heap** %vec_ to i8**, !dbg !2997
  %2 = load i8*, i8** %1, align 8, !dbg !2997
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %2, i32 1) #6, !dbg !2997
  store i8* %call3, i8** %1, align 8, !dbg !2997
  br label %if.end, !dbg !2997

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !2996
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop** @VEC_loop_p_base_quick_push(%struct.VEC_loop_p_base* %vec_, %struct.loop* %obj_) unnamed_addr #0 !dbg !2999 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !3004, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata %struct.loop* %obj_, metadata !3005, metadata !DIExpression()), !dbg !3007
  %num1 = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !3008
  %0 = load i32, i32* %num1, align 8, !dbg !3008
  %inc = add i32 %0, 1, !dbg !3008
  store i32 %inc, i32* %num1, align 8, !dbg !3008
  %idxprom = zext i32 %0 to i64, !dbg !3008
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3008
  call void @llvm.dbg.value(metadata %struct.loop** %arrayidx, metadata !3006, metadata !DIExpression()), !dbg !3007
  store %struct.loop* %obj_, %struct.loop** %arrayidx, align 8, !dbg !3008
  ret %struct.loop** %arrayidx, !dbg !3008
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_space(%struct.VEC_loop_p_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3009 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !3013, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i32 1, metadata !3014, metadata !DIExpression()), !dbg !3015
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !3016
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3016

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 1, !dbg !3016
  %0 = load i32, i32* %alloc, align 4, !dbg !3016
  %num = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !3016
  %1 = load i32, i32* %num, align 8, !dbg !3016
  %cmp1 = icmp ne i32 %0, %1, !dbg !3016
  %phitmp = zext i1 %cmp1 to i32, !dbg !3016
  br label %cond.end, !dbg !3016

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3016

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !3016
}

declare dso_local i8* @vec_heap_p_reserve(i8*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_ddr_p_base_length(%struct.VEC_ddr_p_base* %vec_) unnamed_addr #0 !dbg !3017 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ddr_p_base* %vec_, metadata !3023, metadata !DIExpression()), !dbg !3024
  %tobool = icmp eq %struct.VEC_ddr_p_base* %vec_, null, !dbg !3025
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3025

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_ddr_p_base, %struct.VEC_ddr_p_base* %vec_, i64 0, i32 0, !dbg !3025
  %0 = load i32, i32* %num, align 8, !dbg !3025
  br label %cond.end, !dbg !3025

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3025
  ret i32 %cond, !dbg !3025
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.data_dependence_relation* @VEC_ddr_p_base_index(%struct.VEC_ddr_p_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3026 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ddr_p_base* %vec_, metadata !3030, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i32 0, metadata !3031, metadata !DIExpression()), !dbg !3032
  br label %land.end, !dbg !3033

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %arrayidx = getelementptr inbounds %struct.VEC_ddr_p_base, %struct.VEC_ddr_p_base* %vec_, i64 0, i32 2, i64 0, !dbg !3033
  %0 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %arrayidx, align 8, !dbg !3033
  ret %struct.data_dependence_relation* %0, !dbg !3033
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i64, i64 } @uhwi_to_double_int(i64 %cst) unnamed_addr #0 !dbg !3034 {
entry:
  call void @llvm.dbg.value(metadata i64 %cst, metadata !3038, metadata !DIExpression()), !dbg !3040
  %0 = insertvalue { i64, i64 } undef, i64 %cst, 0, !dbg !3041
  %1 = insertvalue { i64, i64 } %0, i64 0, 1, !dbg !3041
  ret { i64, i64 } %1, !dbg !3041
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @loop_depth(%struct.loop* %loop) unnamed_addr #0 !dbg !3042 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3046, metadata !DIExpression()), !dbg !3047
  %superloops = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 7, !dbg !3048
  %0 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !3048
  %tobool = icmp eq %struct.VEC_loop_p_gc* %0, null, !dbg !3048
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3048

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %0, i64 0, i32 0, !dbg !3048
  br label %cond.end, !dbg !3048

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3048
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #8, !dbg !3048
  ret i32 %call, !dbg !3049
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gather_interchange_stats(%struct.VEC_ddr_p_heap* %dependence_relations, %struct.VEC_data_reference_p_heap* %datarefs, %struct.loop* %loop, %struct.loop* %first_loop, i32* %dependence_steps, i32* %nb_deps_not_carried_by_loop, %struct.double_int* %access_strides) unnamed_addr #4 !dbg !3050 {
entry:
  %ddr = alloca %struct.data_dependence_relation*, align 8
  %dr = alloca %struct.data_reference*, align 8
  %tmp = alloca %struct.double_int, align 8
  %dstride = alloca %struct.double_int, align 8
  %tmp102 = alloca %struct.double_int, align 8
  %tmp107 = alloca %struct.double_int, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_ddr_p_heap* %dependence_relations, metadata !3056, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata %struct.VEC_data_reference_p_heap* %datarefs, metadata !3057, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3058, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata %struct.loop* %first_loop, metadata !3059, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i32* %dependence_steps, metadata !3060, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i32* %nb_deps_not_carried_by_loop, metadata !3061, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata %struct.double_int* %access_strides, metadata !3062, metadata !DIExpression()), !dbg !3089
  %0 = bitcast %struct.data_dependence_relation** %ddr to i8*, !dbg !3090
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3090
  %1 = bitcast %struct.data_reference** %dr to i8*, !dbg !3091
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3091
  store i32 0, i32* %dependence_steps, align 4, !dbg !3092
  store i32 0, i32* %nb_deps_not_carried_by_loop, align 4, !dbg !3093
  %2 = bitcast %struct.double_int* %tmp to i8*, !dbg !3094
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !3094
  %call = tail call fastcc { i64, i64 } @shwi_to_double_int(i64 0) #8, !dbg !3094
  %3 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 0, !dbg !3094
  %4 = extractvalue { i64, i64 } %call, 0, !dbg !3094
  store i64 %4, i64* %3, align 8, !dbg !3094
  %5 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp, i64 0, i32 1, !dbg !3094
  %6 = extractvalue { i64, i64 } %call, 1, !dbg !3094
  store i64 %6, i64* %5, align 8, !dbg !3094
  %7 = bitcast %struct.double_int* %access_strides to i8*, !dbg !3094
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !3094
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !3094
  call void @llvm.dbg.value(metadata i32 0, metadata !3063, metadata !DIExpression()), !dbg !3089
  %base = getelementptr inbounds %struct.VEC_ddr_p_heap, %struct.VEC_ddr_p_heap* %dependence_relations, i64 0, i32 0, !dbg !3095
  br label %for.cond, !dbg !3096

for.cond:                                         ; preds = %for.inc48, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc49, %for.inc48 ], !dbg !3097
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3063, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata %struct.data_dependence_relation** %ddr, metadata !3065, metadata !DIExpression(DW_OP_deref)), !dbg !3089
  %call1 = call fastcc i32 @VEC_ddr_p_base_iterate(%struct.VEC_ddr_p_base* %base, i32 %i.0, %struct.data_dependence_relation** nonnull %ddr) #8, !dbg !3098
  %tobool2 = icmp eq i32 %call1, 0, !dbg !3099
  br i1 %tobool2, label %for.cond51.preheader, label %for.body, !dbg !3099

for.cond51.preheader:                             ; preds = %for.cond
  %base54 = getelementptr inbounds %struct.VEC_data_reference_p_heap, %struct.VEC_data_reference_p_heap* %datarefs, i64 0, i32 0, !dbg !3100
  %inner = getelementptr inbounds %struct.loop, %struct.loop* %first_loop, i64 0, i32 8, !dbg !3101
  %num81 = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 0, !dbg !3102
  %8 = bitcast %struct.double_int* %dstride to i8*, !dbg !3102
  %9 = bitcast %struct.double_int* %tmp102 to i8*, !dbg !3102
  %10 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp102, i64 0, i32 0, !dbg !3102
  %11 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp102, i64 0, i32 1, !dbg !3102
  %12 = bitcast %struct.double_int* %tmp107 to i8*, !dbg !3102
  %13 = getelementptr inbounds %struct.double_int, %struct.double_int* %access_strides, i64 0, i32 0, !dbg !3102
  %14 = getelementptr inbounds %struct.double_int, %struct.double_int* %access_strides, i64 0, i32 1, !dbg !3102
  %15 = getelementptr inbounds %struct.double_int, %struct.double_int* %dstride, i64 0, i32 0, !dbg !3102
  %16 = getelementptr inbounds %struct.double_int, %struct.double_int* %dstride, i64 0, i32 1, !dbg !3102
  %17 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp107, i64 0, i32 0, !dbg !3102
  %18 = getelementptr inbounds %struct.double_int, %struct.double_int* %tmp107, i64 0, i32 1, !dbg !3102
  br label %for.cond51, !dbg !3103

for.body:                                         ; preds = %for.cond
  %19 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %ddr, align 8, !dbg !3104
  call void @llvm.dbg.value(metadata %struct.data_dependence_relation* %19, metadata !3065, metadata !DIExpression()), !dbg !3089
  %are_dependent = getelementptr inbounds %struct.data_dependence_relation, %struct.data_dependence_relation* %19, i64 0, i32 2, !dbg !3104
  %20 = load %union.tree_node*, %union.tree_node** %are_dependent, align 8, !dbg !3104
  %21 = load %union.tree_node*, %union.tree_node** @chrec_dont_know, align 8, !dbg !3106
  %cmp = icmp eq %union.tree_node* %20, %21, !dbg !3107
  br i1 %cmp, label %for.inc48, label %lor.lhs.false, !dbg !3108

lor.lhs.false:                                    ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.data_dependence_relation* %19, metadata !3065, metadata !DIExpression()), !dbg !3089
  %22 = load %union.tree_node*, %union.tree_node** @chrec_known, align 8, !dbg !3109
  %cmp4 = icmp eq %union.tree_node* %20, %22, !dbg !3110
  br i1 %cmp4, label %for.inc48, label %lor.lhs.false5, !dbg !3111

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata %struct.data_dependence_relation* %19, metadata !3065, metadata !DIExpression()), !dbg !3089
  %dist_vects = getelementptr inbounds %struct.data_dependence_relation, %struct.data_dependence_relation* %19, i64 0, i32 6, !dbg !3112
  %23 = load %struct.VEC_lambda_vector_heap*, %struct.VEC_lambda_vector_heap** %dist_vects, align 8, !dbg !3112
  %tobool6 = icmp eq %struct.VEC_lambda_vector_heap* %23, null, !dbg !3112
  br i1 %tobool6, label %cond.end11, label %cond.true7, !dbg !3112

cond.true7:                                       ; preds = %lor.lhs.false5
  call void @llvm.dbg.value(metadata %struct.data_dependence_relation* %19, metadata !3065, metadata !DIExpression()), !dbg !3089
  %base9 = getelementptr inbounds %struct.VEC_lambda_vector_heap, %struct.VEC_lambda_vector_heap* %23, i64 0, i32 0, !dbg !3112
  br label %cond.end11, !dbg !3112

cond.end11:                                       ; preds = %lor.lhs.false5, %cond.true7
  %cond12 = phi %struct.VEC_lambda_vector_base* [ %base9, %cond.true7 ], [ null, %lor.lhs.false5 ], !dbg !3112
  %call13 = call fastcc i32 @VEC_lambda_vector_base_length(%struct.VEC_lambda_vector_base* %cond12) #8, !dbg !3112
  %cmp14 = icmp eq i32 %call13, 0, !dbg !3113
  br i1 %cmp14, label %for.inc48, label %for.cond15.preheader, !dbg !3114

for.cond15.preheader:                             ; preds = %cond.end11
  br label %for.cond15, !dbg !3115

for.cond15:                                       ; preds = %for.cond15.preheader, %for.inc
  %j.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond15.preheader ], !dbg !3116
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !3064, metadata !DIExpression()), !dbg !3089
  %24 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %ddr, align 8, !dbg !3117
  call void @llvm.dbg.value(metadata %struct.data_dependence_relation* %24, metadata !3065, metadata !DIExpression()), !dbg !3089
  %dist_vects16 = getelementptr inbounds %struct.data_dependence_relation, %struct.data_dependence_relation* %24, i64 0, i32 6, !dbg !3117
  %25 = load %struct.VEC_lambda_vector_heap*, %struct.VEC_lambda_vector_heap** %dist_vects16, align 8, !dbg !3117
  %tobool17 = icmp eq %struct.VEC_lambda_vector_heap* %25, null, !dbg !3117
  br i1 %tobool17, label %cond.end22, label %cond.true18, !dbg !3117

cond.true18:                                      ; preds = %for.cond15
  call void @llvm.dbg.value(metadata %struct.data_dependence_relation* %24, metadata !3065, metadata !DIExpression()), !dbg !3089
  %base20 = getelementptr inbounds %struct.VEC_lambda_vector_heap, %struct.VEC_lambda_vector_heap* %25, i64 0, i32 0, !dbg !3117
  br label %cond.end22, !dbg !3117

cond.end22:                                       ; preds = %for.cond15, %cond.true18
  %cond23 = phi %struct.VEC_lambda_vector_base* [ %base20, %cond.true18 ], [ null, %for.cond15 ], !dbg !3117
  %call24 = call fastcc i32 @VEC_lambda_vector_base_length(%struct.VEC_lambda_vector_base* %cond23) #8, !dbg !3117
  %cmp25 = icmp ult i32 %j.0, %call24, !dbg !3118
  br i1 %cmp25, label %for.body26, label %for.inc48.loopexit, !dbg !3115

for.body26:                                       ; preds = %cond.end22
  %26 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %ddr, align 8, !dbg !3119
  call void @llvm.dbg.value(metadata %struct.data_dependence_relation* %26, metadata !3065, metadata !DIExpression()), !dbg !3089
  %dist_vects27 = getelementptr inbounds %struct.data_dependence_relation, %struct.data_dependence_relation* %26, i64 0, i32 6, !dbg !3119
  %27 = load %struct.VEC_lambda_vector_heap*, %struct.VEC_lambda_vector_heap** %dist_vects27, align 8, !dbg !3119
  %tobool28 = icmp eq %struct.VEC_lambda_vector_heap* %27, null, !dbg !3119
  br i1 %tobool28, label %cond.end33, label %cond.true29, !dbg !3119

cond.true29:                                      ; preds = %for.body26
  call void @llvm.dbg.value(metadata %struct.data_dependence_relation* %26, metadata !3065, metadata !DIExpression()), !dbg !3089
  %base31 = getelementptr inbounds %struct.VEC_lambda_vector_heap, %struct.VEC_lambda_vector_heap* %27, i64 0, i32 0, !dbg !3119
  br label %cond.end33, !dbg !3119

cond.end33:                                       ; preds = %for.body26, %cond.true29
  %cond34 = phi %struct.VEC_lambda_vector_base* [ %base31, %cond.true29 ], [ null, %for.body26 ], !dbg !3119
  %call35 = call fastcc i32* @VEC_lambda_vector_base_index(%struct.VEC_lambda_vector_base* %cond34, i32 %j.0) #8, !dbg !3119
  %call36 = call fastcc i32 @loop_depth(%struct.loop* %loop) #8, !dbg !3120
  %call37 = call fastcc i32 @loop_depth(%struct.loop* %first_loop) #8, !dbg !3121
  %sub = sub i32 %call36, %call37, !dbg !3122
  %idxprom = zext i32 %sub to i64, !dbg !3119
  %arrayidx = getelementptr inbounds i32, i32* %call35, i64 %idxprom, !dbg !3119
  %28 = load i32, i32* %arrayidx, align 4, !dbg !3119
  call void @llvm.dbg.value(metadata i32 %28, metadata !3067, metadata !DIExpression()), !dbg !3123
  %cmp38 = icmp eq i32 %28, 0, !dbg !3124
  br i1 %cmp38, label %if.then39, label %if.else, !dbg !3126

if.then39:                                        ; preds = %cond.end33
  %29 = load i32, i32* %nb_deps_not_carried_by_loop, align 4, !dbg !3127
  %add = add i32 %29, 1, !dbg !3127
  store i32 %add, i32* %nb_deps_not_carried_by_loop, align 4, !dbg !3127
  br label %for.inc, !dbg !3128

if.else:                                          ; preds = %cond.end33
  %cmp40 = icmp slt i32 %28, 0, !dbg !3129
  br i1 %cmp40, label %if.then41, label %if.else44, !dbg !3131

if.then41:                                        ; preds = %if.else
  %30 = load i32, i32* %dependence_steps, align 4, !dbg !3132
  %add43 = sub i32 %30, %28, !dbg !3132
  store i32 %add43, i32* %dependence_steps, align 4, !dbg !3132
  br label %for.inc, !dbg !3133

if.else44:                                        ; preds = %if.else
  %31 = load i32, i32* %dependence_steps, align 4, !dbg !3134
  %add45 = add i32 %31, %28, !dbg !3134
  store i32 %add45, i32* %dependence_steps, align 4, !dbg !3134
  br label %for.inc

for.inc:                                          ; preds = %if.then39, %if.else44, %if.then41
  %inc = add i32 %j.0, 1, !dbg !3135
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3064, metadata !DIExpression()), !dbg !3089
  br label %for.cond15, !dbg !3136, !llvm.loop !3137

for.inc48.loopexit:                               ; preds = %cond.end22
  br label %for.inc48, !dbg !3139

for.inc48:                                        ; preds = %for.inc48.loopexit, %for.body, %lor.lhs.false, %cond.end11
  %inc49 = add i32 %i.0, 1, !dbg !3139
  call void @llvm.dbg.value(metadata i32 %inc49, metadata !3063, metadata !DIExpression()), !dbg !3089
  br label %for.cond, !dbg !3140, !llvm.loop !3141

for.cond51:                                       ; preds = %for.cond51.preheader, %cleanup116
  %i.1 = phi i32 [ %inc124, %cleanup116 ], [ 0, %for.cond51.preheader ], !dbg !3143
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !3063, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata %struct.data_reference** %dr, metadata !3066, metadata !DIExpression(DW_OP_deref)), !dbg !3089
  %call58 = call fastcc i32 @VEC_data_reference_p_base_iterate(%struct.VEC_data_reference_p_base* %base54, i32 %i.1, %struct.data_reference** nonnull %dr) #8, !dbg !3144
  %tobool59 = icmp eq i32 %call58, 0, !dbg !3103
  br i1 %tobool59, label %for.end125, label %for.body60, !dbg !3103

for.body60:                                       ; preds = %for.cond51
  %32 = load %struct.data_reference*, %struct.data_reference** %dr, align 8, !dbg !3145
  call void @llvm.dbg.value(metadata %struct.data_reference* %32, metadata !3066, metadata !DIExpression()), !dbg !3089
  %ref61 = getelementptr inbounds %struct.data_reference, %struct.data_reference* %32, i64 0, i32 1, !dbg !3145
  %33 = load %union.tree_node*, %union.tree_node** %ref61, align 8, !dbg !3145
  call void @llvm.dbg.value(metadata %union.tree_node* %33, metadata !3078, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata %struct.data_reference* %32, metadata !3066, metadata !DIExpression()), !dbg !3089
  %stmt62 = getelementptr inbounds %struct.data_reference, %struct.data_reference* %32, i64 0, i32 0, !dbg !3146
  %34 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt62, align 8, !dbg !3146
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %34, metadata !3079, metadata !DIExpression()), !dbg !3101
  %call63 = call fastcc %struct.loop* @loop_containing_stmt(%union.gimple_statement_d* %34) #8, !dbg !3147
  call void @llvm.dbg.value(metadata %struct.loop* %call63, metadata !3080, metadata !DIExpression()), !dbg !3101
  %35 = load %struct.loop*, %struct.loop** %inner, align 8, !dbg !3148
  call void @llvm.dbg.value(metadata %struct.loop* %35, metadata !3081, metadata !DIExpression()), !dbg !3101
  %cmp64 = icmp eq %struct.loop* %35, %call63, !dbg !3149
  br i1 %cmp64, label %if.end68, label %land.lhs.true, !dbg !3151

land.lhs.true:                                    ; preds = %for.body60
  %call65 = call zeroext i8 @flow_loop_nested_p(%struct.loop* %35, %struct.loop* %call63) #6, !dbg !3152
  %tobool66 = icmp eq i8 %call65, 0, !dbg !3152
  br i1 %tobool66, label %cleanup116, label %if.end68, !dbg !3153

if.end68:                                         ; preds = %land.lhs.true, %for.body60
  call void @llvm.dbg.value(metadata i32 0, metadata !3074, metadata !DIExpression()), !dbg !3101
  br label %for.cond69, !dbg !3154

for.cond69:                                       ; preds = %cleanup, %if.end68
  %it.0 = phi i32 [ 0, %if.end68 ], [ %inc113, %cleanup ], !dbg !3155
  %.in = phi %union.tree_node* [ %33, %if.end68 ], [ %61, %cleanup ]
  %ref.0 = phi %union.tree_node* [ %33, %if.end68 ], [ %61, %cleanup ], !dbg !3101
  call void @llvm.dbg.value(metadata %union.tree_node* %ref.0, metadata !3078, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i32 %it.0, metadata !3074, metadata !DIExpression()), !dbg !3101
  %36 = load %struct.data_reference*, %struct.data_reference** %dr, align 8, !dbg !3156
  call void @llvm.dbg.value(metadata %struct.data_reference* %36, metadata !3066, metadata !DIExpression()), !dbg !3089
  %access_fns = getelementptr inbounds %struct.data_reference, %struct.data_reference* %36, i64 0, i32 5, i32 1, !dbg !3156
  %37 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %access_fns, align 8, !dbg !3156
  %tobool70 = icmp eq %struct.VEC_tree_heap* %37, null, !dbg !3156
  br i1 %tobool70, label %cond.end76, label %cond.true71, !dbg !3156

cond.true71:                                      ; preds = %for.cond69
  call void @llvm.dbg.value(metadata %struct.data_reference* %36, metadata !3066, metadata !DIExpression()), !dbg !3089
  %base74 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %37, i64 0, i32 0, !dbg !3156
  br label %cond.end76, !dbg !3156

cond.end76:                                       ; preds = %for.cond69, %cond.true71
  %cond77 = phi %struct.VEC_tree_base* [ %base74, %cond.true71 ], [ null, %for.cond69 ], !dbg !3156
  %call78 = call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond77) #8, !dbg !3156
  %cmp79 = icmp ult i32 %it.0, %call78, !dbg !3157
  br i1 %cmp79, label %for.body80, label %cleanup116.loopexit, !dbg !3158

for.body80:                                       ; preds = %cond.end76
  %38 = load %struct.data_reference*, %struct.data_reference** %dr, align 8, !dbg !3159
  call void @llvm.dbg.value(metadata %struct.data_reference* %38, metadata !3066, metadata !DIExpression()), !dbg !3089
  %access_matrix = getelementptr inbounds %struct.data_reference, %struct.data_reference* %38, i64 0, i32 7, !dbg !3159
  %39 = load %struct.access_matrix*, %struct.access_matrix** %access_matrix, align 8, !dbg !3159
  %40 = load i32, i32* %num81, align 8, !dbg !3160
  %call82 = call fastcc i32 @am_vector_index_for_loop(%struct.access_matrix* %39, i32 %40) #8, !dbg !3161
  call void @llvm.dbg.value(metadata i32 %call82, metadata !3082, metadata !DIExpression()), !dbg !3102
  %41 = load %struct.data_reference*, %struct.data_reference** %dr, align 8, !dbg !3162
  call void @llvm.dbg.value(metadata %struct.data_reference* %41, metadata !3066, metadata !DIExpression()), !dbg !3089
  %access_matrix83 = getelementptr inbounds %struct.data_reference, %struct.data_reference* %41, i64 0, i32 7, !dbg !3162
  %42 = load %struct.access_matrix*, %struct.access_matrix** %access_matrix83, align 8, !dbg !3162
  %matrix = getelementptr inbounds %struct.access_matrix, %struct.access_matrix* %42, i64 0, i32 3, !dbg !3162
  %43 = load %struct.VEC_lambda_vector_gc*, %struct.VEC_lambda_vector_gc** %matrix, align 8, !dbg !3162
  %tobool84 = icmp eq %struct.VEC_lambda_vector_gc* %43, null, !dbg !3162
  br i1 %tobool84, label %cond.end90, label %cond.true85, !dbg !3162

cond.true85:                                      ; preds = %for.body80
  call void @llvm.dbg.value(metadata %struct.data_reference* %41, metadata !3066, metadata !DIExpression()), !dbg !3089
  %base88 = getelementptr inbounds %struct.VEC_lambda_vector_gc, %struct.VEC_lambda_vector_gc* %43, i64 0, i32 0, !dbg !3162
  br label %cond.end90, !dbg !3162

cond.end90:                                       ; preds = %for.body80, %cond.true85
  %cond91 = phi %struct.VEC_lambda_vector_base* [ %base88, %cond.true85 ], [ null, %for.body80 ], !dbg !3162
  %call92 = call fastcc i32* @VEC_lambda_vector_base_index(%struct.VEC_lambda_vector_base* %cond91, i32 %it.0) #8, !dbg !3162
  %idxprom93 = sext i32 %call82 to i64, !dbg !3162
  %arrayidx94 = getelementptr inbounds i32, i32* %call92, i64 %idxprom93, !dbg !3162
  %44 = load i32, i32* %arrayidx94, align 4, !dbg !3162
  call void @llvm.dbg.value(metadata i32 %44, metadata !3086, metadata !DIExpression()), !dbg !3102
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %ref.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3163
  %45 = bitcast %union.tree_node** %type to %struct.tree_type**, !dbg !3163
  %46 = load %struct.tree_type*, %struct.tree_type** %45, align 8, !dbg !3163
  %size = getelementptr inbounds %struct.tree_type, %struct.tree_type* %46, i64 0, i32 2, !dbg !3163
  %47 = load %union.tree_node*, %union.tree_node** %size, align 8, !dbg !3163
  call void @llvm.dbg.value(metadata %union.tree_node* %47, metadata !3087, metadata !DIExpression()), !dbg !3102
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #7, !dbg !3164
  %cmp96 = icmp eq %union.tree_node* %47, null, !dbg !3165
  br i1 %cmp96, label %cleanup, label %lor.lhs.false97, !dbg !3167

lor.lhs.false97:                                  ; preds = %cond.end90
  %48 = getelementptr inbounds %union.tree_node, %union.tree_node* %47, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3168
  %bf.load = load i64, i64* %48, align 8, !dbg !3168
  %bf.cast2 = and i64 %bf.load, 65535, !dbg !3169
  %cmp99 = icmp eq i64 %bf.cast2, 23, !dbg !3169
  br i1 %cmp99, label %if.end101, label %cleanup, !dbg !3170

if.end101:                                        ; preds = %lor.lhs.false97
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #7, !dbg !3171
  %call103 = call { i64, i64 } @tree_to_double_int(%union.tree_node* nonnull %47) #6, !dbg !3172
  %49 = extractvalue { i64, i64 } %call103, 0, !dbg !3172
  %50 = extractvalue { i64, i64 } %call103, 1, !dbg !3172
  %conv = sext i32 %44 to i64, !dbg !3173
  %call105 = call fastcc { i64, i64 } @shwi_to_double_int(i64 %conv) #8, !dbg !3174
  %51 = extractvalue { i64, i64 } %call105, 0, !dbg !3174
  %52 = extractvalue { i64, i64 } %call105, 1, !dbg !3174
  %call106 = call { i64, i64 } @double_int_mul(i64 %49, i64 %50, i64 %51, i64 %52) #6, !dbg !3171
  %53 = extractvalue { i64, i64 } %call106, 0, !dbg !3171
  store i64 %53, i64* %10, align 8, !dbg !3171
  %54 = extractvalue { i64, i64 } %call106, 1, !dbg !3171
  store i64 %54, i64* %11, align 8, !dbg !3171
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %8, i8* nonnull align 8 %9, i64 16, i1 false), !dbg !3171
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #7, !dbg !3171
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #7, !dbg !3175
  %55 = load i64, i64* %13, align 8, !dbg !3175
  %56 = load i64, i64* %14, align 8, !dbg !3175
  %57 = load i64, i64* %15, align 8, !dbg !3175
  %58 = load i64, i64* %16, align 8, !dbg !3175
  %call108 = call { i64, i64 } @double_int_add(i64 %55, i64 %56, i64 %57, i64 %58) #6, !dbg !3175
  %59 = extractvalue { i64, i64 } %call108, 0, !dbg !3175
  store i64 %59, i64* %17, align 8, !dbg !3175
  %60 = extractvalue { i64, i64 } %call108, 1, !dbg !3175
  store i64 %60, i64* %18, align 8, !dbg !3175
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* nonnull align 8 %12, i64 16, i1 false), !dbg !3175
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #7, !dbg !3175
  br label %cleanup, !dbg !3176

cleanup:                                          ; preds = %lor.lhs.false97, %cond.end90, %if.end101
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #7, !dbg !3176
  %inc113 = add i32 %it.0, 1, !dbg !3177
  call void @llvm.dbg.value(metadata i32 %inc113, metadata !3074, metadata !DIExpression()), !dbg !3101
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %.in, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3178
  %61 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !3178
  call void @llvm.dbg.value(metadata %union.tree_node* %61, metadata !3078, metadata !DIExpression()), !dbg !3101
  br label %for.cond69, !dbg !3179, !llvm.loop !3180

cleanup116.loopexit:                              ; preds = %cond.end76
  br label %cleanup116, !dbg !3182

cleanup116:                                       ; preds = %cleanup116.loopexit, %land.lhs.true
  %inc124 = add i32 %i.1, 1, !dbg !3182
  call void @llvm.dbg.value(metadata i32 %inc124, metadata !3063, metadata !DIExpression()), !dbg !3089
  br label %for.cond51, !dbg !3183, !llvm.loop !3184

for.end125:                                       ; preds = %for.cond51
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3186
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3186
  ret void, !dbg !3186
}

declare dso_local i32 @double_int_ucmp(i64, i64, i64, i64) local_unnamed_addr #1

declare dso_local zeroext i8 @estimated_loop_iterations(%struct.loop*, i8 zeroext, %struct.double_int*) local_unnamed_addr #1

declare dso_local { i64, i64 } @double_int_mul(i64, i64, i64, i64) local_unnamed_addr #1

declare dso_local void @lambda_matrix_row_exchange(i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i64, i64 } @shwi_to_double_int(i64 %cst) unnamed_addr #0 !dbg !3187 {
entry:
  call void @llvm.dbg.value(metadata i64 %cst, metadata !3191, metadata !DIExpression()), !dbg !3193
  %cst.lobit = ashr i64 %cst, 63, !dbg !3194
  %0 = insertvalue { i64, i64 } undef, i64 %cst, 0, !dbg !3195
  %1 = insertvalue { i64, i64 } %0, i64 %cst.lobit, 1, !dbg !3195
  ret { i64, i64 } %1, !dbg !3195
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_ddr_p_base_iterate(%struct.VEC_ddr_p_base* %vec_, i32 %ix_, %struct.data_dependence_relation** %ptr) unnamed_addr #0 !dbg !3196 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_ddr_p_base* %vec_, metadata !3201, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3202, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata %struct.data_dependence_relation** %ptr, metadata !3203, metadata !DIExpression()), !dbg !3204
  %tobool = icmp eq %struct.VEC_ddr_p_base* %vec_, null, !dbg !3205
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !3205

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_ddr_p_base, %struct.VEC_ddr_p_base* %vec_, i64 0, i32 0, !dbg !3205
  %0 = load i32, i32* %num, align 8, !dbg !3205
  %cmp = icmp ugt i32 %0, %ix_, !dbg !3205
  br i1 %cmp, label %if.then, label %if.else, !dbg !3207

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !3208
  %arrayidx = getelementptr inbounds %struct.VEC_ddr_p_base, %struct.VEC_ddr_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3208
  %1 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %arrayidx, align 8, !dbg !3208
  br label %return, !dbg !3208

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !3210

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.data_dependence_relation* [ null, %if.else ], [ %1, %if.then ], !dbg !3212
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !3212
  store %struct.data_dependence_relation* %storemerge, %struct.data_dependence_relation** %ptr, align 8, !dbg !3212
  ret i32 %retval.0, !dbg !3207
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_lambda_vector_base_length(%struct.VEC_lambda_vector_base* %vec_) unnamed_addr #0 !dbg !3213 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_lambda_vector_base* %vec_, metadata !3219, metadata !DIExpression()), !dbg !3220
  %tobool = icmp eq %struct.VEC_lambda_vector_base* %vec_, null, !dbg !3221
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3221

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_lambda_vector_base, %struct.VEC_lambda_vector_base* %vec_, i64 0, i32 0, !dbg !3221
  %0 = load i32, i32* %num, align 8, !dbg !3221
  br label %cond.end, !dbg !3221

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3221
  ret i32 %cond, !dbg !3221
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_lambda_vector_base_index(%struct.VEC_lambda_vector_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3222 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_lambda_vector_base* %vec_, metadata !3226, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3227, metadata !DIExpression()), !dbg !3228
  br label %land.end, !dbg !3229

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3229
  %arrayidx = getelementptr inbounds %struct.VEC_lambda_vector_base, %struct.VEC_lambda_vector_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3229
  %0 = load i32*, i32** %arrayidx, align 8, !dbg !3229
  ret i32* %0, !dbg !3229
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_data_reference_p_base_iterate(%struct.VEC_data_reference_p_base* %vec_, i32 %ix_, %struct.data_reference** %ptr) unnamed_addr #0 !dbg !3230 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_data_reference_p_base* %vec_, metadata !3237, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3238, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata %struct.data_reference** %ptr, metadata !3239, metadata !DIExpression()), !dbg !3240
  %tobool = icmp eq %struct.VEC_data_reference_p_base* %vec_, null, !dbg !3241
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !3241

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_data_reference_p_base, %struct.VEC_data_reference_p_base* %vec_, i64 0, i32 0, !dbg !3241
  %0 = load i32, i32* %num, align 8, !dbg !3241
  %cmp = icmp ugt i32 %0, %ix_, !dbg !3241
  br i1 %cmp, label %if.then, label %if.else, !dbg !3243

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !3244
  %arrayidx = getelementptr inbounds %struct.VEC_data_reference_p_base, %struct.VEC_data_reference_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3244
  %1 = load %struct.data_reference*, %struct.data_reference** %arrayidx, align 8, !dbg !3244
  br label %return, !dbg !3244

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !3246

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.data_reference* [ null, %if.else ], [ %1, %if.then ], !dbg !3248
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !3248
  store %struct.data_reference* %storemerge, %struct.data_reference** %ptr, align 8, !dbg !3248
  ret i32 %retval.0, !dbg !3243
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @loop_containing_stmt(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3249 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3254, metadata !DIExpression()), !dbg !3256
  %call = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %stmt) #8, !dbg !3257
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !3255, metadata !DIExpression()), !dbg !3256
  %tobool = icmp eq %struct.basic_block_def* %call, null, !dbg !3258
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3260

if.end:                                           ; preds = %entry
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 3, !dbg !3261
  %0 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !3261
  br label %cleanup, !dbg !3262

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.loop* [ %0, %if.end ], [ null, %entry ], !dbg !3256
  ret %struct.loop* %retval.0, !dbg !3263
}

declare dso_local zeroext i8 @flow_loop_nested_p(%struct.loop*, %struct.loop*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %vec_) unnamed_addr #0 !dbg !3264 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3270, metadata !DIExpression()), !dbg !3271
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !3272
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3272

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !3272
  %0 = load i32, i32* %num, align 8, !dbg !3272
  br label %cond.end, !dbg !3272

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3272
  ret i32 %cond, !dbg !3272
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @am_vector_index_for_loop(%struct.access_matrix* %access_matrix, i32 %loop_num) unnamed_addr #0 !dbg !3273 {
entry:
  %l = alloca %struct.loop*, align 8
  call void @llvm.dbg.value(metadata %struct.access_matrix* %access_matrix, metadata !3277, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i32 %loop_num, metadata !3278, metadata !DIExpression()), !dbg !3281
  %0 = bitcast %struct.loop** %l to i8*, !dbg !3282
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3282
  call void @llvm.dbg.value(metadata i32 0, metadata !3279, metadata !DIExpression()), !dbg !3281
  %loop_nest = getelementptr inbounds %struct.access_matrix, %struct.access_matrix* %access_matrix, i64 0, i32 0, !dbg !3283
  br label %for.cond, !dbg !3286

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !3287
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3279, metadata !DIExpression()), !dbg !3281
  %1 = load %struct.VEC_loop_p_heap*, %struct.VEC_loop_p_heap** %loop_nest, align 8, !dbg !3288
  %tobool = icmp eq %struct.VEC_loop_p_heap* %1, null, !dbg !3288
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3288

cond.true:                                        ; preds = %for.cond
  %base = getelementptr inbounds %struct.VEC_loop_p_heap, %struct.VEC_loop_p_heap* %1, i64 0, i32 0, !dbg !3288
  br label %cond.end, !dbg !3288

cond.end:                                         ; preds = %for.cond, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %for.cond ], !dbg !3288
  call void @llvm.dbg.value(metadata %struct.loop** %l, metadata !3280, metadata !DIExpression(DW_OP_deref)), !dbg !3281
  %call = call fastcc i32 @VEC_loop_p_base_iterate(%struct.VEC_loop_p_base* %cond, i32 %i.0, %struct.loop** nonnull %l) #8, !dbg !3288
  %tobool2 = icmp eq i32 %call, 0, !dbg !3289
  br i1 %tobool2, label %for.end, label %for.body, !dbg !3289

for.body:                                         ; preds = %cond.end
  %2 = load %struct.loop*, %struct.loop** %l, align 8, !dbg !3290
  call void @llvm.dbg.value(metadata %struct.loop* %2, metadata !3280, metadata !DIExpression()), !dbg !3281
  %num = getelementptr inbounds %struct.loop, %struct.loop* %2, i64 0, i32 0, !dbg !3292
  %3 = load i32, i32* %num, align 8, !dbg !3292
  %cmp = icmp eq i32 %3, %loop_num, !dbg !3293
  br i1 %cmp, label %cleanup.loopexit, label %for.inc, !dbg !3294

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0, 1, !dbg !3295
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3279, metadata !DIExpression()), !dbg !3281
  br label %for.cond, !dbg !3296, !llvm.loop !3297

for.end:                                          ; preds = %cond.end
  call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 157, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3299
  br label %cleanup, !dbg !3300

cleanup.loopexit:                                 ; preds = %for.body
  %i.0.lcssa3 = phi i32 [ %i.0, %for.body ], !dbg !3287
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa3, metadata !3279, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa3, metadata !3279, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa3, metadata !3279, metadata !DIExpression()), !dbg !3281
  br label %cleanup, !dbg !3301

cleanup:                                          ; preds = %cleanup.loopexit, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ %i.0.lcssa3, %cleanup.loopexit ], !dbg !3281
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3301
  ret i32 %retval.0, !dbg !3301
}

declare dso_local { i64, i64 } @tree_to_double_int(%union.tree_node*) local_unnamed_addr #1

declare dso_local { i64, i64 } @double_int_add(i64, i64, i64, i64) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3302 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3309, metadata !DIExpression()), !dbg !3310
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !3311
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3311
  ret %struct.basic_block_def* %0, !dbg !3312
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %vec_, i32 %ix_, i32* %ptr) unnamed_addr #0 !dbg !3313 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !3319, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3320, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.value(metadata i32* %ptr, metadata !3321, metadata !DIExpression()), !dbg !3322
  %tobool = icmp eq %struct.VEC_int_base* %vec_, null, !dbg !3323
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !3323

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !3323
  %0 = load i32, i32* %num, align 4, !dbg !3323
  %cmp = icmp ugt i32 %0, %ix_, !dbg !3323
  br i1 %cmp, label %if.then, label %if.else, !dbg !3325

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !3326
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3326
  %1 = load i32, i32* %arrayidx, align 4, !dbg !3326
  br label %return, !dbg !3326

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !3328

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ 0, %if.else ], [ %1, %if.then ], !dbg !3330
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !3330
  store i32 %storemerge, i32* %ptr, align 4, !dbg !3330
  ret i32 %retval.0, !dbg !3325
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @get_loop(i32 %num) unnamed_addr #0 !dbg !3331 {
entry:
  call void @llvm.dbg.value(metadata i32 %num, metadata !3335, metadata !DIExpression()), !dbg !3336
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3337
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !3337
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !3337
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !3337
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !3337
  %tobool = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !3337
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3337

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !3337
  br label %cond.end, !dbg !3337

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3337
  %call = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond, i32 %num) #8, !dbg !3337
  ret %struct.loop* %call, !dbg !3338
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %vec_) unnamed_addr #0 !dbg !3339 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !3344, metadata !DIExpression()), !dbg !3345
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !3346
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !3346
  br i1 %tobool, label %if.end, label %if.then, !dbg !3348

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_int_heap* %0 to i8*, !dbg !3348
  tail call void @free(i8* nonnull %1) #6, !dbg !3346
  br label %if.end, !dbg !3346

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %vec_, align 8, !dbg !3348
  ret void, !dbg !3348
}

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
!llvm.module.flags = !{!1906, !1907, !1908}
!llvm.ident = !{!1909}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !388, nameTableKind: None)
!1 = !DIFile(filename: "tree-loop-linear.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !132, !138, !143, !148, !167, !174, !181, !375, !384}
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
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !133, line: 363, baseType: !5, size: 32, elements: !134)
!133 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!134 = !{!135, !136, !137}
!135 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!136 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!137 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !133, line: 355, baseType: !5, size: 32, elements: !139)
!139 = !{!140, !141, !142}
!140 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!141 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!142 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !144, line: 474, baseType: !5, size: 32, elements: !145)
!144 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!145 = !{!146, !147}
!146 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!147 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !149, line: 280, baseType: !5, size: 32, elements: !150)
!149 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166}
!151 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!152 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!153 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!154 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!155 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!156 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!157 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!158 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!159 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!160 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!161 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!162 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!163 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!164 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!165 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!166 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !149, line: 1817, baseType: !5, size: 32, elements: !168)
!168 = !{!169, !170, !171, !172, !173}
!169 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!170 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!171 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!172 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!173 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !149, line: 1805, baseType: !5, size: 32, elements: !175)
!175 = !{!176, !177, !178, !179, !180}
!176 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!177 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!178 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!179 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!180 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !149, line: 39, baseType: !5, size: 32, elements: !182)
!182 = !{!183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374}
!183 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!184 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!185 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!186 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!187 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!188 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!189 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!190 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!191 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!192 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!193 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!194 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!195 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!196 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!197 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!198 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!199 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!200 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!201 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!202 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!203 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!204 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!205 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!206 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!207 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!208 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!209 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!210 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!211 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!212 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!213 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!214 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!215 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!216 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!217 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!218 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!219 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!220 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!221 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!222 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!223 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!224 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!225 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!226 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!227 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!228 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!229 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!230 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!231 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!232 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!233 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!234 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!235 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!236 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!237 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!238 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!239 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!240 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!241 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!242 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!243 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!244 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!245 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!246 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!247 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!248 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!249 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!250 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!251 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!252 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!253 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!254 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!255 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!256 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!257 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!258 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!259 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!260 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!261 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!262 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!263 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!264 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!265 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!266 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!267 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!268 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!269 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!270 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!271 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!272 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!273 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!274 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!275 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!276 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!277 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!278 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!279 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!280 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!281 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!282 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!283 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!284 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!285 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!286 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!287 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!288 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!289 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!290 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!291 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!292 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!293 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!294 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!295 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!296 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!297 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!298 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!299 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!300 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!301 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!302 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!303 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!304 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!305 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!306 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!307 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!308 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!309 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!310 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!311 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!312 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!313 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!314 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!315 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!316 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!317 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!318 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!319 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!320 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!321 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!322 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!323 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!324 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!325 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!326 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!327 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!328 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!329 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!330 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!331 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!332 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!333 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!334 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!335 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!336 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!337 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!338 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!339 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!340 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!341 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!342 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!343 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!344 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!345 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!346 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!347 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!348 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!349 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!350 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!351 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!352 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!353 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!354 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!355 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!356 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!357 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!358 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!359 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!360 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!361 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!362 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!363 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!364 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!365 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!366 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!367 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!368 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!369 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!370 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!371 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!372 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!373 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!374 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!375 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lpt_dec", file: !376, line: 31, baseType: !5, size: 32, elements: !377)
!376 = !DIFile(filename: "./cfgloop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!377 = !{!378, !379, !380, !381, !382, !383}
!378 = !DIEnumerator(name: "LPT_NONE", value: 0, isUnsigned: true)
!379 = !DIEnumerator(name: "LPT_PEEL_COMPLETELY", value: 1, isUnsigned: true)
!380 = !DIEnumerator(name: "LPT_PEEL_SIMPLE", value: 2, isUnsigned: true)
!381 = !DIEnumerator(name: "LPT_UNROLL_CONSTANT", value: 3, isUnsigned: true)
!382 = !DIEnumerator(name: "LPT_UNROLL_RUNTIME", value: 4, isUnsigned: true)
!383 = !DIEnumerator(name: "LPT_UNROLL_STUPID", value: 5, isUnsigned: true)
!384 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "loop_estimation", file: !376, line: 91, baseType: !5, size: 32, elements: !385)
!385 = !{!386, !387}
!386 = !DIEnumerator(name: "EST_NOT_COMPUTED", value: 0, isUnsigned: true)
!387 = !DIEnumerator(name: "EST_AVAILABLE", value: 1, isUnsigned: true)
!388 = !{!389, !390, !391, !392, !395, !396, !398, !402, !393, !405, !407, !1761, !1038, !1774, !5, !1779, !1846, !601, !181, !556, !1858, !1792, !420}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!391 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!395, !401}
!401 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !395}
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !406, line: 35, baseType: !401)
!406 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_heap", file: !409, line: 34, baseType: !410)
!409 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_heap", file: !409, line: 34, size: 128, elements: !411)
!411 = !{!412}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !410, file: !409, line: 34, baseType: !413, size: 128)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !409, line: 33, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !409, line: 33, size: 128, elements: !415)
!415 = !{!416, !417, !418}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !414, file: !409, line: 33, baseType: !5, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !414, file: !409, line: 33, baseType: !5, size: 32, offset: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !414, file: !409, line: 33, baseType: !419, size: 64, offset: 64)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 64, elements: !521)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !421, line: 58, baseType: !422)
!421 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !409, line: 737, size: 768, elements: !424)
!424 = !{!425, !1608, !1618, !1624, !1629, !1634, !1641, !1647, !1653, !1658, !1672, !1677, !1683, !1688, !1698, !1703, !1719, !1726, !1733, !1739, !1744, !1750, !1756}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !423, file: !409, line: 738, baseType: !426, size: 256)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !409, line: 271, size: 256, elements: !427)
!427 = !{!428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !443, !444, !1607}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !426, file: !409, line: 274, baseType: !5, size: 8, flags: DIFlagBitField, extraData: i64 0)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !426, file: !409, line: 277, baseType: !5, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !426, file: !409, line: 281, baseType: !5, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !426, file: !409, line: 284, baseType: !5, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !426, file: !409, line: 291, baseType: !5, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !426, file: !409, line: 295, baseType: !5, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !426, file: !409, line: 298, baseType: !5, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !426, file: !409, line: 301, baseType: !5, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !426, file: !409, line: 307, baseType: !5, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !426, file: !409, line: 312, baseType: !5, size: 32, offset: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !426, file: !409, line: 316, baseType: !439, size: 32, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !440, line: 58, baseType: !441)
!440 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !442, line: 44, baseType: !5)
!442 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!443 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !426, file: !409, line: 319, baseType: !5, size: 32, offset: 96)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !426, file: !409, line: 323, baseType: !445, size: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !133, line: 217, size: 832, elements: !447)
!447 = !{!448, !1574, !1575, !1576, !1577, !1581, !1582, !1583, !1601, !1602, !1603, !1604, !1605, !1606}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !446, file: !133, line: 219, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !133, line: 151, baseType: !451)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !133, line: 151, size: 128, elements: !452)
!452 = !{!453}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !451, file: !133, line: 151, baseType: !454, size: 128)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !133, line: 150, baseType: !455)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !133, line: 150, size: 128, elements: !456)
!456 = !{!457, !458, !459}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !455, file: !133, line: 150, baseType: !5, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !455, file: !133, line: 150, baseType: !5, size: 32, offset: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !455, file: !133, line: 150, baseType: !460, size: 64, offset: 64)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 64, elements: !521)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !421, line: 108, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !133, line: 122, size: 512, elements: !464)
!464 = !{!465, !466, !467, !1566, !1567, !1568, !1569, !1570, !1571, !1572}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !463, file: !133, line: 124, baseType: !445, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !463, file: !133, line: 125, baseType: !445, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !463, file: !133, line: 131, baseType: !468, size: 64, offset: 128)
!468 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !133, line: 128, size: 64, elements: !469)
!469 = !{!470, !485}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !468, file: !133, line: 129, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !421, line: 66, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !409, line: 143, size: 192, elements: !474)
!474 = !{!475, !483, !484}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !473, file: !409, line: 145, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !421, line: 69, baseType: !477)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !409, line: 136, size: 192, elements: !479)
!479 = !{!480, !481, !482}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !478, file: !409, line: 137, baseType: !420, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !478, file: !409, line: 138, baseType: !477, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !478, file: !409, line: 139, baseType: !477, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !473, file: !409, line: 146, baseType: !476, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !473, file: !409, line: 152, baseType: !471, size: 64, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !468, file: !133, line: 130, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !421, line: 50, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !489, line: 240, size: 384, elements: !490)
!489 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!490 = !{!491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !488, file: !489, line: 242, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !488, file: !489, line: 245, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !488, file: !489, line: 252, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !488, file: !489, line: 257, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !488, file: !489, line: 265, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !488, file: !489, line: 277, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !488, file: !489, line: 291, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !488, file: !489, line: 298, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !488, file: !489, line: 305, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !488, file: !489, line: 310, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !488, file: !489, line: 321, baseType: !502, size: 320, offset: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !489, line: 315, size: 320, elements: !503)
!503 = !{!504, !1533, !1535, !1564, !1565}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !502, file: !489, line: 316, baseType: !505, size: 64)
!505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !506, size: 64, elements: !521)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !489, line: 183, baseType: !507)
!507 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !489, line: 166, size: 64, elements: !508)
!508 = !{!509, !510, !511, !512, !513, !523, !524, !536, !539, !600, !1511, !1512, !1523, !1530}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !507, file: !489, line: 168, baseType: !391, size: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !507, file: !489, line: 169, baseType: !5, size: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !507, file: !489, line: 170, baseType: !396, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !507, file: !489, line: 171, baseType: !486, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !507, file: !489, line: 172, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !421, line: 53, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !489, line: 359, size: 128, elements: !517)
!517 = !{!518, !519}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !516, file: !489, line: 360, baseType: !391, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !516, file: !489, line: 361, baseType: !520, size: 64, offset: 64)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 64, elements: !521)
!521 = !{!522}
!522 = !DISubrange(count: 1)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !507, file: !489, line: 173, baseType: !3, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !507, file: !489, line: 174, baseType: !525, size: 32)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !489, line: 133, baseType: !526)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !489, line: 115, size: 32, elements: !527)
!527 = !{!528, !529, !530, !531, !532, !533, !534, !535}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !526, file: !489, line: 118, baseType: !5, size: 8, flags: DIFlagBitField, extraData: i64 0)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !526, file: !489, line: 120, baseType: !5, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !526, file: !489, line: 121, baseType: !5, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !526, file: !489, line: 123, baseType: !5, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !526, file: !489, line: 125, baseType: !5, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !526, file: !489, line: 127, baseType: !5, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !526, file: !489, line: 130, baseType: !5, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !526, file: !489, line: 132, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !507, file: !489, line: 175, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !489, line: 175, flags: DIFlagFwdDecl)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !507, file: !489, line: 176, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !542, line: 75, size: 256, elements: !543)
!542 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!543 = !{!544, !559, !560, !561}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !541, file: !542, line: 76, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !542, line: 68, baseType: !547)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !542, line: 63, size: 320, elements: !548)
!548 = !{!549, !551, !552, !553}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !547, file: !542, line: 64, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !547, file: !542, line: 65, baseType: !550, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !547, file: !542, line: 66, baseType: !5, size: 32, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !547, file: !542, line: 67, baseType: !554, size: 128, offset: 192)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !555, size: 128, elements: !557)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !542, line: 29, baseType: !556)
!556 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!557 = !{!558}
!558 = !DISubrange(count: 2)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !541, file: !542, line: 77, baseType: !545, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !541, file: !542, line: 78, baseType: !5, size: 32, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !541, file: !542, line: 79, baseType: !562, size: 64, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !542, line: 49, baseType: !564)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !542, line: 45, size: 832, elements: !565)
!565 = !{!566, !567, !568}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !564, file: !542, line: 46, baseType: !550, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !564, file: !542, line: 47, baseType: !540, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !564, file: !542, line: 48, baseType: !569, size: 704, offset: 128)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !570, line: 164, size: 704, elements: !571)
!570 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!571 = !{!572, !573, !583, !584, !585, !586, !587, !588, !592, !596, !597, !598, !599}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !569, file: !570, line: 166, baseType: !401, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !569, file: !570, line: 167, baseType: !574, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !570, line: 157, size: 192, elements: !576)
!576 = !{!577, !578, !579}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !575, file: !570, line: 159, baseType: !393, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !575, file: !570, line: 160, baseType: !574, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !575, file: !570, line: 161, baseType: !580, size: 32, offset: 128)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 32, elements: !581)
!581 = !{!582}
!582 = !DISubrange(count: 4)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !569, file: !570, line: 168, baseType: !393, size: 64, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !569, file: !570, line: 169, baseType: !393, size: 64, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !569, file: !570, line: 170, baseType: !393, size: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !569, file: !570, line: 171, baseType: !401, size: 64, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !569, file: !570, line: 172, baseType: !391, size: 32, offset: 384)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !569, file: !570, line: 176, baseType: !589, size: 64, offset: 448)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!574, !395, !401}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !569, file: !570, line: 177, baseType: !593, size: 64, offset: 512)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !395, !574}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !569, file: !570, line: 178, baseType: !395, size: 64, offset: 576)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !569, file: !570, line: 179, baseType: !5, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !569, file: !570, line: 180, baseType: !5, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !569, file: !570, line: 184, baseType: !5, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !507, file: !489, line: 177, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !421, line: 56, baseType: !602)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !149, line: 3371, size: 1792, elements: !604)
!604 = !{!605, !638, !644, !655, !674, !685, !690, !697, !703, !716, !724, !762, !767, !795, !812, !813, !818, !827, !833, !838, !842, !846, !1160, !1209, !1215, !1221, !1228, !1241, !1255, !1272, !1284, !1306, !1321, !1493}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !603, file: !149, line: 3372, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !149, line: 360, size: 64, elements: !607)
!607 = !{!608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !606, file: !149, line: 361, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !606, file: !149, line: 363, baseType: !5, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !606, file: !149, line: 364, baseType: !5, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !606, file: !149, line: 365, baseType: !5, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !606, file: !149, line: 366, baseType: !5, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !606, file: !149, line: 367, baseType: !5, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !606, file: !149, line: 368, baseType: !5, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !606, file: !149, line: 369, baseType: !5, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !606, file: !149, line: 370, baseType: !5, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !606, file: !149, line: 372, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !606, file: !149, line: 373, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !606, file: !149, line: 374, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !606, file: !149, line: 375, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !606, file: !149, line: 376, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !606, file: !149, line: 377, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !606, file: !149, line: 378, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !606, file: !149, line: 379, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !606, file: !149, line: 381, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !606, file: !149, line: 382, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !606, file: !149, line: 383, baseType: !5, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !606, file: !149, line: 384, baseType: !5, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !606, file: !149, line: 385, baseType: !5, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !606, file: !149, line: 386, baseType: !5, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !606, file: !149, line: 387, baseType: !5, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !606, file: !149, line: 388, baseType: !5, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !606, file: !149, line: 390, baseType: !5, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !606, file: !149, line: 391, baseType: !5, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !606, file: !149, line: 392, baseType: !5, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !606, file: !149, line: 394, baseType: !5, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !606, file: !149, line: 399, baseType: !5, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !603, file: !149, line: 3373, baseType: !639, size: 192)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !149, line: 402, size: 192, elements: !640)
!640 = !{!641, !642, !643}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !639, file: !149, line: 403, baseType: !606, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !639, file: !149, line: 404, baseType: !601, size: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !639, file: !149, line: 405, baseType: !601, size: 64, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !603, file: !149, line: 3374, baseType: !645, size: 320)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !149, line: 1384, size: 320, elements: !646)
!646 = !{!647, !648}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !645, file: !149, line: 1385, baseType: !639, size: 192)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !645, file: !149, line: 1386, baseType: !649, size: 128, offset: 192)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !650, line: 58, baseType: !651)
!650 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !650, line: 54, size: 128, elements: !652)
!652 = !{!653, !654}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !651, file: !650, line: 56, baseType: !556, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !651, file: !650, line: 57, baseType: !401, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !603, file: !149, line: 3375, baseType: !656, size: 256)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !149, line: 1397, size: 256, elements: !657)
!657 = !{!658, !659}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !656, file: !149, line: 1398, baseType: !639, size: 192)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !656, file: !149, line: 1399, baseType: !660, size: 64, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !662, line: 52, size: 256, elements: !663)
!662 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!663 = !{!664, !665, !666, !667, !668, !669, !670}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !661, file: !662, line: 56, baseType: !5, size: 2, flags: DIFlagBitField, extraData: i64 0)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !661, file: !662, line: 57, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !661, file: !662, line: 58, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !661, file: !662, line: 59, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !661, file: !662, line: 60, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !661, file: !662, line: 61, baseType: !5, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !661, file: !662, line: 62, baseType: !671, size: 192, offset: 64)
!671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 192, elements: !672)
!672 = !{!673}
!673 = !DISubrange(count: 3)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !603, file: !149, line: 3376, baseType: !675, size: 256)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !149, line: 1408, size: 256, elements: !676)
!676 = !{!677, !678}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !675, file: !149, line: 1409, baseType: !639, size: 192)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !675, file: !149, line: 1410, baseType: !679, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !681, line: 27, size: 192, elements: !682)
!681 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!682 = !{!683, !684}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !680, file: !681, line: 29, baseType: !649, size: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !680, file: !681, line: 30, baseType: !3, size: 32, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !603, file: !149, line: 3377, baseType: !686, size: 256)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !149, line: 1437, size: 256, elements: !687)
!687 = !{!688, !689}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !686, file: !149, line: 1438, baseType: !639, size: 192)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !686, file: !149, line: 1439, baseType: !601, size: 64, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !603, file: !149, line: 3378, baseType: !691, size: 256)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !149, line: 1418, size: 256, elements: !692)
!692 = !{!693, !694, !695}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !691, file: !149, line: 1419, baseType: !639, size: 192)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !691, file: !149, line: 1420, baseType: !391, size: 32, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !691, file: !149, line: 1421, baseType: !696, size: 8, offset: 224)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 8, elements: !521)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !603, file: !149, line: 3379, baseType: !698, size: 320)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !149, line: 1428, size: 320, elements: !699)
!699 = !{!700, !701, !702}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !698, file: !149, line: 1429, baseType: !639, size: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !698, file: !149, line: 1430, baseType: !601, size: 64, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !698, file: !149, line: 1431, baseType: !601, size: 64, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !603, file: !149, line: 3380, baseType: !704, size: 320)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !149, line: 1460, size: 320, elements: !705)
!705 = !{!706, !707}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !704, file: !149, line: 1461, baseType: !639, size: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !704, file: !149, line: 1462, baseType: !708, size: 128, offset: 192)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !709, line: 31, size: 128, elements: !710)
!709 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!710 = !{!711, !714, !715}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !708, file: !709, line: 32, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !708, file: !709, line: 33, baseType: !5, size: 32, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !708, file: !709, line: 34, baseType: !5, size: 32, offset: 96)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !603, file: !149, line: 3381, baseType: !717, size: 384)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !149, line: 2507, size: 384, elements: !718)
!718 = !{!719, !720, !721, !722, !723}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !717, file: !149, line: 2508, baseType: !639, size: 192)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !717, file: !149, line: 2509, baseType: !439, size: 32, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !717, file: !149, line: 2510, baseType: !5, size: 32, offset: 224)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !717, file: !149, line: 2511, baseType: !601, size: 64, offset: 256)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !717, file: !149, line: 2512, baseType: !601, size: 64, offset: 320)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !603, file: !149, line: 3382, baseType: !725, size: 896)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !149, line: 2652, size: 896, elements: !726)
!726 = !{!727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !725, file: !149, line: 2653, baseType: !717, size: 384)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !725, file: !149, line: 2654, baseType: !601, size: 64, offset: 384)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !725, file: !149, line: 2656, baseType: !5, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !725, file: !149, line: 2658, baseType: !5, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !725, file: !149, line: 2659, baseType: !5, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !725, file: !149, line: 2660, baseType: !5, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !725, file: !149, line: 2661, baseType: !5, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !725, file: !149, line: 2662, baseType: !5, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !725, file: !149, line: 2663, baseType: !5, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !725, file: !149, line: 2664, baseType: !5, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !725, file: !149, line: 2666, baseType: !5, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !725, file: !149, line: 2667, baseType: !5, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !725, file: !149, line: 2668, baseType: !5, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !725, file: !149, line: 2669, baseType: !5, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !725, file: !149, line: 2670, baseType: !5, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !725, file: !149, line: 2671, baseType: !5, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !725, file: !149, line: 2672, baseType: !5, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !725, file: !149, line: 2673, baseType: !5, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !725, file: !149, line: 2674, baseType: !5, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !725, file: !149, line: 2678, baseType: !5, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !725, file: !149, line: 2682, baseType: !5, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !725, file: !149, line: 2685, baseType: !5, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !725, file: !149, line: 2688, baseType: !5, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !725, file: !149, line: 2690, baseType: !5, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !725, file: !149, line: 2692, baseType: !5, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !725, file: !149, line: 2695, baseType: !5, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !725, file: !149, line: 2698, baseType: !5, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !725, file: !149, line: 2703, baseType: !5, size: 32, offset: 512)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !725, file: !149, line: 2705, baseType: !601, size: 64, offset: 576)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !725, file: !149, line: 2706, baseType: !601, size: 64, offset: 640)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !725, file: !149, line: 2707, baseType: !601, size: 64, offset: 704)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !725, file: !149, line: 2708, baseType: !601, size: 64, offset: 768)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !725, file: !149, line: 2711, baseType: !760, size: 64, offset: 832)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !149, line: 2711, flags: DIFlagFwdDecl)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !603, file: !149, line: 3383, baseType: !763, size: 960)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !149, line: 2756, size: 960, elements: !764)
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !763, file: !149, line: 2757, baseType: !725, size: 896)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !763, file: !149, line: 2758, baseType: !486, size: 64, offset: 896)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !603, file: !149, line: 3384, baseType: !768, size: 1472)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !149, line: 3114, size: 1472, elements: !769)
!769 = !{!770, !791, !792, !793, !794}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !768, file: !149, line: 3115, baseType: !771, size: 1216)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !149, line: 2984, size: 1216, elements: !772)
!772 = !{!773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !771, file: !149, line: 2985, baseType: !763, size: 960)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !771, file: !149, line: 2986, baseType: !601, size: 64, offset: 960)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !771, file: !149, line: 2987, baseType: !601, size: 64, offset: 1024)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !771, file: !149, line: 2988, baseType: !601, size: 64, offset: 1088)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !771, file: !149, line: 2991, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !771, file: !149, line: 2992, baseType: !5, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !771, file: !149, line: 2993, baseType: !5, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !771, file: !149, line: 2994, baseType: !5, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !771, file: !149, line: 2995, baseType: !5, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !771, file: !149, line: 2996, baseType: !5, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !771, file: !149, line: 2998, baseType: !5, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !771, file: !149, line: 3000, baseType: !5, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !771, file: !149, line: 3002, baseType: !5, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !771, file: !149, line: 3003, baseType: !5, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !771, file: !149, line: 3004, baseType: !5, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !771, file: !149, line: 3005, baseType: !5, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !771, file: !149, line: 3007, baseType: !5, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !771, file: !149, line: 3010, baseType: !5, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !768, file: !149, line: 3117, baseType: !601, size: 64, offset: 1216)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !768, file: !149, line: 3119, baseType: !601, size: 64, offset: 1280)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !768, file: !149, line: 3121, baseType: !601, size: 64, offset: 1344)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !768, file: !149, line: 3123, baseType: !601, size: 64, offset: 1408)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !603, file: !149, line: 3385, baseType: !796, size: 1088)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !149, line: 2874, size: 1088, elements: !797)
!797 = !{!798, !799, !800}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !796, file: !149, line: 2875, baseType: !763, size: 960)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !796, file: !149, line: 2876, baseType: !486, size: 64, offset: 960)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !796, file: !149, line: 2877, baseType: !801, size: 64, offset: 1024)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !803, line: 172, size: 128, elements: !804)
!803 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!804 = !{!805, !806, !807, !808, !809, !810, !811}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !802, file: !803, line: 174, baseType: !5, size: 1, flags: DIFlagBitField, extraData: i64 0)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !802, file: !803, line: 178, baseType: !5, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !802, file: !803, line: 183, baseType: !5, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !802, file: !803, line: 187, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !802, file: !803, line: 192, baseType: !5, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !802, file: !803, line: 195, baseType: !5, size: 32, offset: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !802, file: !803, line: 199, baseType: !601, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !603, file: !149, line: 3386, baseType: !771, size: 1216)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !603, file: !149, line: 3387, baseType: !814, size: 1280)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !149, line: 3093, size: 1280, elements: !815)
!815 = !{!816, !817}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !814, file: !149, line: 3094, baseType: !771, size: 1216)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !814, file: !149, line: 3095, baseType: !801, size: 64, offset: 1216)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !603, file: !149, line: 3388, baseType: !819, size: 1216)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !149, line: 2824, size: 1216, elements: !820)
!820 = !{!821, !822, !823, !824, !825, !826}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !819, file: !149, line: 2825, baseType: !725, size: 896)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !819, file: !149, line: 2827, baseType: !601, size: 64, offset: 896)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !819, file: !149, line: 2828, baseType: !601, size: 64, offset: 960)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !819, file: !149, line: 2829, baseType: !601, size: 64, offset: 1024)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !819, file: !149, line: 2830, baseType: !601, size: 64, offset: 1088)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !819, file: !149, line: 2831, baseType: !601, size: 64, offset: 1152)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !603, file: !149, line: 3389, baseType: !828, size: 1024)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !149, line: 2850, size: 1024, elements: !829)
!829 = !{!830, !831, !832}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !828, file: !149, line: 2851, baseType: !763, size: 960)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !828, file: !149, line: 2852, baseType: !391, size: 32, offset: 960)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !828, file: !149, line: 2853, baseType: !391, size: 32, offset: 992)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !603, file: !149, line: 3390, baseType: !834, size: 1024)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !149, line: 2857, size: 1024, elements: !835)
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !834, file: !149, line: 2858, baseType: !763, size: 960)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !834, file: !149, line: 2859, baseType: !801, size: 64, offset: 960)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !603, file: !149, line: 3391, baseType: !839, size: 960)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !149, line: 2862, size: 960, elements: !840)
!840 = !{!841}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !839, file: !149, line: 2863, baseType: !763, size: 960)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !603, file: !149, line: 3392, baseType: !843, size: 1472)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !149, line: 3304, size: 1472, elements: !844)
!844 = !{!845}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !843, file: !149, line: 3305, baseType: !768, size: 1472)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !603, file: !149, line: 3393, baseType: !847, size: 1792)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !149, line: 3248, size: 1792, elements: !848)
!848 = !{!849, !850, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !847, file: !149, line: 3249, baseType: !768, size: 1472)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !847, file: !149, line: 3251, baseType: !851, size: 64, offset: 1472)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !853, line: 463, size: 1152, elements: !854)
!853 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!854 = !{!855, !858, !889, !890, !1020, !1083, !1084, !1085, !1086, !1087, !1088, !1112, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !852, file: !853, line: 464, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !853, line: 464, flags: DIFlagFwdDecl)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !852, file: !853, line: 467, baseType: !859, size: 64, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !133, line: 374, size: 640, elements: !861)
!861 = !{!862, !864, !865, !878, !879, !880, !881, !882, !883, !885, !887, !888}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !860, file: !133, line: 377, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !421, line: 111, baseType: !445)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !860, file: !133, line: 378, baseType: !863, size: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !860, file: !133, line: 381, baseType: !866, size: 64, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !133, line: 282, baseType: !868)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !133, line: 282, size: 128, elements: !869)
!869 = !{!870}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !868, file: !133, line: 282, baseType: !871, size: 128)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !133, line: 281, baseType: !872)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !133, line: 281, size: 128, elements: !873)
!873 = !{!874, !875, !876}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !872, file: !133, line: 281, baseType: !5, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !872, file: !133, line: 281, baseType: !5, size: 32, offset: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !872, file: !133, line: 281, baseType: !877, size: 64, offset: 64)
!877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !863, size: 64, elements: !521)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !860, file: !133, line: 384, baseType: !391, size: 32, offset: 192)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !860, file: !133, line: 387, baseType: !391, size: 32, offset: 224)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !860, file: !133, line: 390, baseType: !391, size: 32, offset: 256)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !860, file: !133, line: 394, baseType: !866, size: 64, offset: 320)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !860, file: !133, line: 396, baseType: !132, size: 32, offset: 384)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !860, file: !133, line: 399, baseType: !884, size: 64, offset: 416)
!884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 64, elements: !557)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !860, file: !133, line: 402, baseType: !886, size: 64, offset: 480)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !557)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !860, file: !133, line: 406, baseType: !391, size: 32, offset: 544)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !860, file: !133, line: 409, baseType: !391, size: 32, offset: 576)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !852, file: !853, line: 470, baseType: !472, size: 64, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !852, file: !853, line: 473, baseType: !891, size: 64, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !803, line: 39, size: 1152, elements: !893)
!893 = !{!894, !942, !948, !961, !962, !974, !975, !979, !980, !981, !982, !983}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !892, file: !803, line: 41, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !896, line: 144, baseType: !897)
!896 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !896, line: 100, size: 896, elements: !899)
!899 = !{!900, !908, !913, !915, !917, !919, !920, !921, !922, !923, !928, !930, !931, !936, !941}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !898, file: !896, line: 102, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !896, line: 52, baseType: !902)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{!905, !906}
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !896, line: 47, baseType: !5)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !898, file: !896, line: 105, baseType: !909, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !896, line: 59, baseType: !910)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!391, !906, !906}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !898, file: !896, line: 108, baseType: !914, size: 64, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !896, line: 63, baseType: !402)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !898, file: !896, line: 111, baseType: !916, size: 64, offset: 192)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !898, file: !896, line: 114, baseType: !918, size: 64, offset: 256)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !406, line: 46, baseType: !556)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !898, file: !896, line: 117, baseType: !918, size: 64, offset: 320)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !898, file: !896, line: 120, baseType: !918, size: 64, offset: 384)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !898, file: !896, line: 124, baseType: !5, size: 32, offset: 448)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !898, file: !896, line: 128, baseType: !5, size: 32, offset: 480)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !898, file: !896, line: 131, baseType: !924, size: 64, offset: 512)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !896, line: 75, baseType: !925)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DISubroutineType(types: !927)
!927 = !{!395, !918, !918}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !898, file: !896, line: 132, baseType: !929, size: 64, offset: 576)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !896, line: 78, baseType: !402)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !898, file: !896, line: 135, baseType: !395, size: 64, offset: 640)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !898, file: !896, line: 136, baseType: !932, size: 64, offset: 704)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !896, line: 82, baseType: !933)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{!395, !395, !918, !918}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !898, file: !896, line: 137, baseType: !937, size: 64, offset: 768)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !896, line: 83, baseType: !938)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{null, !395, !395}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !898, file: !896, line: 141, baseType: !5, size: 32, offset: 832)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !892, file: !803, line: 48, baseType: !943, size: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !409, line: 35, baseType: !945)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !409, line: 35, size: 128, elements: !946)
!946 = !{!947}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !945, file: !409, line: 35, baseType: !413, size: 128)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !892, file: !803, line: 51, baseType: !949, size: 64, offset: 128)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !149, line: 183, baseType: !951)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !149, line: 183, size: 128, elements: !952)
!952 = !{!953}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !951, file: !149, line: 183, baseType: !954, size: 128)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !149, line: 182, baseType: !955)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !149, line: 182, size: 128, elements: !956)
!956 = !{!957, !958, !959}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !955, file: !149, line: 182, baseType: !5, size: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !955, file: !149, line: 182, baseType: !5, size: 32, offset: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !955, file: !149, line: 182, baseType: !960, size: 64, offset: 64)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 64, elements: !521)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !892, file: !803, line: 54, baseType: !601, size: 64, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !892, file: !803, line: 57, baseType: !963, size: 128, offset: 256)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !964, line: 31, size: 128, elements: !965)
!964 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!965 = !{!966, !967, !968, !969, !970, !971, !972}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !963, file: !964, line: 35, baseType: !5, size: 1, flags: DIFlagBitField, extraData: i64 0)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !963, file: !964, line: 39, baseType: !5, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !963, file: !964, line: 42, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !963, file: !964, line: 46, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !963, file: !964, line: 50, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !963, file: !964, line: 53, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !963, file: !964, line: 56, baseType: !973, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !421, line: 47, baseType: !540)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !892, file: !803, line: 60, baseType: !963, size: 128, offset: 384)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !892, file: !803, line: 64, baseType: !976, size: 64, offset: 512)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !978, line: 33, flags: DIFlagFwdDecl)
!978 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!979 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !892, file: !803, line: 67, baseType: !601, size: 64, offset: 576)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !892, file: !803, line: 73, baseType: !895, size: 64, offset: 640)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !892, file: !803, line: 77, baseType: !973, size: 64, offset: 704)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !892, file: !803, line: 80, baseType: !5, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !892, file: !803, line: 82, baseType: !984, size: 320, offset: 832)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !985, line: 62, size: 320, elements: !986)
!985 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!986 = !{!987, !993, !994, !995, !996, !1003}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !984, file: !985, line: 63, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !985, line: 56, size: 128, elements: !990)
!990 = !{!991, !992}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !989, file: !985, line: 57, baseType: !988, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !989, file: !985, line: 58, baseType: !696, size: 8, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !984, file: !985, line: 64, baseType: !5, size: 32, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !984, file: !985, line: 66, baseType: !5, size: 32, offset: 96)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !984, file: !985, line: 68, baseType: !390, size: 8, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !984, file: !985, line: 70, baseType: !997, size: 64, offset: 192)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !985, line: 37, size: 128, elements: !999)
!999 = !{!1000, !1001}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !998, file: !985, line: 39, baseType: !997, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !998, file: !985, line: 40, baseType: !1002, size: 64, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !984, file: !985, line: 71, baseType: !1004, size: 64, offset: 256)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !985, line: 45, size: 320, elements: !1006)
!1006 = !{!1007, !1008}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1005, file: !985, line: 47, baseType: !1004, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1005, file: !985, line: 48, baseType: !1009, size: 256, offset: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !149, line: 1883, size: 256, elements: !1010)
!1010 = !{!1011, !1013, !1014, !1019}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1009, file: !149, line: 1884, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1009, file: !149, line: 1885, baseType: !1012, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1009, file: !149, line: 1891, baseType: !1015, size: 64, offset: 128)
!1015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1009, file: !149, line: 1891, size: 64, elements: !1016)
!1016 = !{!1017, !1018}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1015, file: !149, line: 1891, baseType: !420, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1015, file: !149, line: 1891, baseType: !601, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1009, file: !149, line: 1892, baseType: !1002, size: 64, offset: 192)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !852, file: !853, line: 476, baseType: !1021, size: 64, offset: 256)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !376, line: 187, size: 256, elements: !1023)
!1023 = !{!1024, !1025, !1081, !1082}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1022, file: !376, line: 189, baseType: !391, size: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1022, file: !376, line: 192, baseType: !1026, size: 64, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !376, line: 87, baseType: !1028)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !376, line: 87, size: 128, elements: !1029)
!1029 = !{!1030}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1028, file: !376, line: 87, baseType: !1031, size: 128)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !376, line: 85, baseType: !1032)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !376, line: 85, size: 128, elements: !1033)
!1033 = !{!1034, !1035, !1036}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1032, file: !376, line: 85, baseType: !5, size: 32)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1032, file: !376, line: 85, baseType: !5, size: 32, offset: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1032, file: !376, line: 85, baseType: !1037, size: 64, offset: 64)
!1037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1038, size: 64, elements: !521)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !376, line: 84, baseType: !1039)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !376, line: 100, size: 1216, elements: !1041)
!1041 = !{!1042, !1043, !1044, !1045, !1046, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1071, !1079, !1080}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1040, file: !376, line: 102, baseType: !391, size: 32)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !1040, file: !376, line: 105, baseType: !5, size: 32, offset: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1040, file: !376, line: 108, baseType: !445, size: 64, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !1040, file: !376, line: 111, baseType: !445, size: 64, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !1040, file: !376, line: 114, baseType: !1047, size: 64, offset: 192)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !376, line: 41, size: 64, elements: !1048)
!1048 = !{!1049, !1050}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !1047, file: !376, line: 42, baseType: !375, size: 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !1047, file: !376, line: 43, baseType: !5, size: 32, offset: 32)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !1040, file: !376, line: 117, baseType: !5, size: 32, offset: 256)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !1040, file: !376, line: 120, baseType: !5, size: 32, offset: 288)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !1040, file: !376, line: 123, baseType: !1026, size: 64, offset: 320)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1040, file: !376, line: 126, baseType: !1039, size: 64, offset: 384)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1040, file: !376, line: 129, baseType: !1039, size: 64, offset: 448)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1040, file: !376, line: 132, baseType: !395, size: 64, offset: 512)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !1040, file: !376, line: 139, baseType: !601, size: 64, offset: 576)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !1040, file: !376, line: 143, baseType: !649, size: 128, offset: 640)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !1040, file: !376, line: 146, baseType: !649, size: 128, offset: 768)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !1040, file: !376, line: 148, baseType: !390, size: 8, offset: 896)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !1040, file: !376, line: 149, baseType: !390, size: 8, offset: 904)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !1040, file: !376, line: 153, baseType: !384, size: 32, offset: 928)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !1040, file: !376, line: 156, baseType: !1064, size: 64, offset: 960)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !376, line: 48, size: 320, elements: !1066)
!1066 = !{!1067, !1068, !1069, !1070}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1065, file: !376, line: 50, baseType: !420, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1065, file: !376, line: 59, baseType: !649, size: 128, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1065, file: !376, line: 64, baseType: !390, size: 8, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1065, file: !376, line: 67, baseType: !1064, size: 64, offset: 256)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1040, file: !376, line: 159, baseType: !1072, size: 64, offset: 1024)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !376, line: 72, size: 256, elements: !1074)
!1074 = !{!1075, !1076, !1077, !1078}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1073, file: !376, line: 74, baseType: !462, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1073, file: !376, line: 77, baseType: !1072, size: 64, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1073, file: !376, line: 78, baseType: !1072, size: 64, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1073, file: !376, line: 81, baseType: !1072, size: 64, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !1040, file: !376, line: 162, baseType: !390, size: 8, offset: 1088)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !1040, file: !376, line: 166, baseType: !601, size: 64, offset: 1152)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1022, file: !376, line: 197, baseType: !895, size: 64, offset: 128)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1022, file: !376, line: 200, baseType: !1039, size: 64, offset: 192)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !852, file: !853, line: 479, baseType: !895, size: 64, offset: 320)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !852, file: !853, line: 484, baseType: !601, size: 64, offset: 384)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !852, file: !853, line: 488, baseType: !601, size: 64, offset: 448)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !852, file: !853, line: 493, baseType: !601, size: 64, offset: 512)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !852, file: !853, line: 496, baseType: !601, size: 64, offset: 576)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !852, file: !853, line: 501, baseType: !1089, size: 64, offset: 640)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !144, line: 2355, size: 576, elements: !1091)
!1091 = !{!1092, !1095, !1096, !1097, !1098, !1100, !1101, !1106, !1107, !1108, !1109, !1110, !1111}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1090, file: !144, line: 2356, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !144, line: 2356, flags: DIFlagFwdDecl)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1090, file: !144, line: 2357, baseType: !396, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1090, file: !144, line: 2358, baseType: !391, size: 32, offset: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1090, file: !144, line: 2359, baseType: !391, size: 32, offset: 160)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1090, file: !144, line: 2360, baseType: !1099, size: 128, offset: 192)
!1099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 128, elements: !581)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1090, file: !144, line: 2364, baseType: !391, size: 32, offset: 320)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1090, file: !144, line: 2367, baseType: !1102, size: 128, offset: 384)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !144, line: 2349, size: 128, elements: !1103)
!1103 = !{!1104, !1105}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1102, file: !144, line: 2351, baseType: !486, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1102, file: !144, line: 2352, baseType: !401, size: 64, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1090, file: !144, line: 2371, baseType: !143, size: 32, offset: 512)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1090, file: !144, line: 2374, baseType: !5, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1090, file: !144, line: 2377, baseType: !5, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1090, file: !144, line: 2381, baseType: !5, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1090, file: !144, line: 2392, baseType: !5, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1090, file: !144, line: 2396, baseType: !5, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !852, file: !853, line: 504, baseType: !1113, size: 64, offset: 704)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !853, line: 504, flags: DIFlagFwdDecl)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !852, file: !853, line: 507, baseType: !895, size: 64, offset: 768)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !852, file: !853, line: 510, baseType: !391, size: 32, offset: 832)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !852, file: !853, line: 513, baseType: !391, size: 32, offset: 864)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !852, file: !853, line: 516, baseType: !439, size: 32, offset: 896)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !852, file: !853, line: 519, baseType: !439, size: 32, offset: 928)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !852, file: !853, line: 522, baseType: !5, size: 32, offset: 960)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !852, file: !853, line: 523, baseType: !5, size: 32, offset: 992)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !852, file: !853, line: 528, baseType: !396, size: 64, offset: 1024)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !852, file: !853, line: 535, baseType: !5, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !852, file: !853, line: 539, baseType: !5, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !852, file: !853, line: 543, baseType: !5, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !852, file: !853, line: 546, baseType: !5, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !852, file: !853, line: 550, baseType: !5, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !852, file: !853, line: 554, baseType: !5, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !852, file: !853, line: 559, baseType: !5, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !852, file: !853, line: 562, baseType: !5, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !852, file: !853, line: 571, baseType: !5, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !852, file: !853, line: 573, baseType: !5, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !852, file: !853, line: 574, baseType: !5, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !852, file: !853, line: 581, baseType: !5, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !852, file: !853, line: 585, baseType: !5, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !852, file: !853, line: 588, baseType: !5, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !852, file: !853, line: 592, baseType: !5, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !852, file: !853, line: 598, baseType: !5, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !847, file: !149, line: 3254, baseType: !601, size: 64, offset: 1536)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !847, file: !149, line: 3257, baseType: !601, size: 64, offset: 1600)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !847, file: !149, line: 3258, baseType: !601, size: 64, offset: 1664)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !847, file: !149, line: 3264, baseType: !5, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !847, file: !149, line: 3265, baseType: !5, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !847, file: !149, line: 3267, baseType: !5, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !847, file: !149, line: 3268, baseType: !5, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !847, file: !149, line: 3269, baseType: !5, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !847, file: !149, line: 3271, baseType: !5, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !847, file: !149, line: 3272, baseType: !5, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !847, file: !149, line: 3273, baseType: !5, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !847, file: !149, line: 3274, baseType: !5, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !847, file: !149, line: 3275, baseType: !5, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !847, file: !149, line: 3276, baseType: !5, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !847, file: !149, line: 3277, baseType: !5, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !847, file: !149, line: 3279, baseType: !5, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !847, file: !149, line: 3280, baseType: !5, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !847, file: !149, line: 3281, baseType: !5, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !847, file: !149, line: 3282, baseType: !5, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !847, file: !149, line: 3283, baseType: !5, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !847, file: !149, line: 3284, baseType: !5, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !603, file: !149, line: 3394, baseType: !1161, size: 1344)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !149, line: 2279, size: 1344, elements: !1162)
!1162 = !{!1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1188, !1189, !1190, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1161, file: !149, line: 2280, baseType: !639, size: 192)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1161, file: !149, line: 2281, baseType: !601, size: 64, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1161, file: !149, line: 2282, baseType: !601, size: 64, offset: 256)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1161, file: !149, line: 2283, baseType: !601, size: 64, offset: 320)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1161, file: !149, line: 2284, baseType: !601, size: 64, offset: 384)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1161, file: !149, line: 2285, baseType: !5, size: 32, offset: 448)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1161, file: !149, line: 2287, baseType: !5, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1161, file: !149, line: 2288, baseType: !5, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1161, file: !149, line: 2289, baseType: !5, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1161, file: !149, line: 2290, baseType: !5, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1161, file: !149, line: 2291, baseType: !5, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1161, file: !149, line: 2292, baseType: !5, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1161, file: !149, line: 2294, baseType: !5, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1161, file: !149, line: 2296, baseType: !5, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1161, file: !149, line: 2297, baseType: !5, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1161, file: !149, line: 2298, baseType: !5, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1161, file: !149, line: 2299, baseType: !5, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1161, file: !149, line: 2300, baseType: !5, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1161, file: !149, line: 2301, baseType: !5, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1161, file: !149, line: 2302, baseType: !5, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1161, file: !149, line: 2303, baseType: !5, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1161, file: !149, line: 2305, baseType: !5, size: 32, offset: 512)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1161, file: !149, line: 2306, baseType: !1186, size: 32, offset: 544)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1187, line: 31, baseType: !391)
!1187 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1161, file: !149, line: 2307, baseType: !601, size: 64, offset: 576)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1161, file: !149, line: 2308, baseType: !601, size: 64, offset: 640)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1161, file: !149, line: 2314, baseType: !1191, size: 64, offset: 704)
!1191 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !149, line: 2309, size: 64, elements: !1192)
!1192 = !{!1193, !1194, !1195}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1191, file: !149, line: 2310, baseType: !391, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1191, file: !149, line: 2311, baseType: !396, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1191, file: !149, line: 2312, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !149, line: 2277, flags: DIFlagFwdDecl)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1161, file: !149, line: 2315, baseType: !601, size: 64, offset: 768)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1161, file: !149, line: 2316, baseType: !601, size: 64, offset: 832)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1161, file: !149, line: 2317, baseType: !601, size: 64, offset: 896)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1161, file: !149, line: 2318, baseType: !601, size: 64, offset: 960)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1161, file: !149, line: 2319, baseType: !601, size: 64, offset: 1024)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1161, file: !149, line: 2320, baseType: !601, size: 64, offset: 1088)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1161, file: !149, line: 2321, baseType: !601, size: 64, offset: 1152)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1161, file: !149, line: 2322, baseType: !601, size: 64, offset: 1216)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1161, file: !149, line: 2324, baseType: !1207, size: 64, offset: 1280)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !149, line: 2324, flags: DIFlagFwdDecl)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !603, file: !149, line: 3395, baseType: !1210, size: 320)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !149, line: 1469, size: 320, elements: !1211)
!1211 = !{!1212, !1213, !1214}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1210, file: !149, line: 1470, baseType: !639, size: 192)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1210, file: !149, line: 1471, baseType: !601, size: 64, offset: 192)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1210, file: !149, line: 1472, baseType: !601, size: 64, offset: 256)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !603, file: !149, line: 3396, baseType: !1216, size: 320)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !149, line: 1482, size: 320, elements: !1217)
!1217 = !{!1218, !1219, !1220}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1216, file: !149, line: 1483, baseType: !639, size: 192)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1216, file: !149, line: 1484, baseType: !391, size: 32, offset: 192)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1216, file: !149, line: 1485, baseType: !960, size: 64, offset: 256)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !603, file: !149, line: 3397, baseType: !1222, size: 384)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !149, line: 1829, size: 384, elements: !1223)
!1223 = !{!1224, !1225, !1226, !1227}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1222, file: !149, line: 1830, baseType: !639, size: 192)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1222, file: !149, line: 1831, baseType: !439, size: 32, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1222, file: !149, line: 1832, baseType: !601, size: 64, offset: 256)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1222, file: !149, line: 1835, baseType: !960, size: 64, offset: 320)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !603, file: !149, line: 3398, baseType: !1229, size: 704)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !149, line: 1898, size: 704, elements: !1230)
!1230 = !{!1231, !1232, !1233, !1234, !1235, !1240}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1229, file: !149, line: 1899, baseType: !639, size: 192)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1229, file: !149, line: 1902, baseType: !601, size: 64, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1229, file: !149, line: 1905, baseType: !420, size: 64, offset: 256)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1229, file: !149, line: 1908, baseType: !5, size: 32, offset: 320)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1229, file: !149, line: 1911, baseType: !1236, size: 64, offset: 384)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !803, line: 117, size: 128, elements: !1238)
!1238 = !{!1239}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1237, file: !803, line: 120, baseType: !963, size: 128)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1229, file: !149, line: 1914, baseType: !1009, size: 256, offset: 448)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !603, file: !149, line: 3399, baseType: !1242, size: 704)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !149, line: 2008, size: 704, elements: !1243)
!1243 = !{!1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1242, file: !149, line: 2009, baseType: !639, size: 192)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1242, file: !149, line: 2011, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1242, file: !149, line: 2012, baseType: !5, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1242, file: !149, line: 2014, baseType: !439, size: 32, offset: 224)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1242, file: !149, line: 2016, baseType: !601, size: 64, offset: 256)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1242, file: !149, line: 2017, baseType: !949, size: 64, offset: 320)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1242, file: !149, line: 2019, baseType: !601, size: 64, offset: 384)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1242, file: !149, line: 2020, baseType: !601, size: 64, offset: 448)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1242, file: !149, line: 2021, baseType: !601, size: 64, offset: 512)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1242, file: !149, line: 2022, baseType: !601, size: 64, offset: 576)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1242, file: !149, line: 2023, baseType: !601, size: 64, offset: 640)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !603, file: !149, line: 3400, baseType: !1256, size: 832)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !149, line: 2430, size: 832, elements: !1257)
!1257 = !{!1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1256, file: !149, line: 2431, baseType: !639, size: 192)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1256, file: !149, line: 2433, baseType: !601, size: 64, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1256, file: !149, line: 2434, baseType: !601, size: 64, offset: 256)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1256, file: !149, line: 2435, baseType: !601, size: 64, offset: 320)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1256, file: !149, line: 2436, baseType: !601, size: 64, offset: 384)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1256, file: !149, line: 2437, baseType: !949, size: 64, offset: 448)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1256, file: !149, line: 2438, baseType: !601, size: 64, offset: 512)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1256, file: !149, line: 2440, baseType: !601, size: 64, offset: 576)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1256, file: !149, line: 2441, baseType: !601, size: 64, offset: 640)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1256, file: !149, line: 2443, baseType: !1268, size: 128, offset: 704)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !149, line: 182, baseType: !1269)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !149, line: 182, size: 128, elements: !1270)
!1270 = !{!1271}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1269, file: !149, line: 182, baseType: !954, size: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !603, file: !149, line: 3401, baseType: !1273, size: 320)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !149, line: 3327, size: 320, elements: !1274)
!1274 = !{!1275, !1276, !1283}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1273, file: !149, line: 3329, baseType: !639, size: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1273, file: !149, line: 3330, baseType: !1277, size: 64, offset: 192)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !149, line: 3320, size: 192, elements: !1279)
!1279 = !{!1280, !1281, !1282}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1278, file: !149, line: 3322, baseType: !1277, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1278, file: !149, line: 3323, baseType: !1277, size: 64, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1278, file: !149, line: 3324, baseType: !601, size: 64, offset: 128)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1273, file: !149, line: 3331, baseType: !1277, size: 64, offset: 256)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !603, file: !149, line: 3402, baseType: !1285, size: 256)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !149, line: 1540, size: 256, elements: !1286)
!1286 = !{!1287, !1288}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1285, file: !149, line: 1541, baseType: !639, size: 192)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1285, file: !149, line: 1542, baseType: !1289, size: 64, offset: 192)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !149, line: 1538, baseType: !1291)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !149, line: 1538, size: 192, elements: !1292)
!1292 = !{!1293}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1291, file: !149, line: 1538, baseType: !1294, size: 192)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !149, line: 1537, baseType: !1295)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !149, line: 1537, size: 192, elements: !1296)
!1296 = !{!1297, !1298, !1299}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1295, file: !149, line: 1537, baseType: !5, size: 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1295, file: !149, line: 1537, baseType: !5, size: 32, offset: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1295, file: !149, line: 1537, baseType: !1300, size: 128, offset: 64)
!1300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1301, size: 128, elements: !521)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !149, line: 1535, baseType: !1302)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !149, line: 1532, size: 128, elements: !1303)
!1303 = !{!1304, !1305}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1302, file: !149, line: 1533, baseType: !601, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1302, file: !149, line: 1534, baseType: !601, size: 64, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !603, file: !149, line: 3403, baseType: !1307, size: 512)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !149, line: 1938, size: 512, elements: !1308)
!1308 = !{!1309, !1310, !1311, !1312, !1318, !1319, !1320}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1307, file: !149, line: 1939, baseType: !639, size: 192)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1307, file: !149, line: 1940, baseType: !439, size: 32, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1307, file: !149, line: 1941, baseType: !148, size: 32, offset: 224)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1307, file: !149, line: 1946, baseType: !1313, size: 32, offset: 256)
!1313 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !149, line: 1942, size: 32, elements: !1314)
!1314 = !{!1315, !1316, !1317}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1313, file: !149, line: 1943, baseType: !167, size: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1313, file: !149, line: 1944, baseType: !174, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1313, file: !149, line: 1945, baseType: !181, size: 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1307, file: !149, line: 1950, baseType: !471, size: 64, offset: 320)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1307, file: !149, line: 1951, baseType: !471, size: 64, offset: 384)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1307, file: !149, line: 1953, baseType: !960, size: 64, offset: 448)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !603, file: !149, line: 3404, baseType: !1322, size: 1664)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !149, line: 3337, size: 1664, elements: !1323)
!1323 = !{!1324, !1325}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1322, file: !149, line: 3338, baseType: !639, size: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1322, file: !149, line: 3341, baseType: !1326, size: 1472, offset: 192)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1327, line: 410, size: 1472, elements: !1328)
!1327 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1328 = !{!1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1326, file: !1327, line: 412, baseType: !391, size: 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1326, file: !1327, line: 413, baseType: !391, size: 32, offset: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1326, file: !1327, line: 414, baseType: !391, size: 32, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1326, file: !1327, line: 415, baseType: !391, size: 32, offset: 96)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1326, file: !1327, line: 416, baseType: !391, size: 32, offset: 128)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1326, file: !1327, line: 417, baseType: !391, size: 32, offset: 160)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1326, file: !1327, line: 418, baseType: !390, size: 8, offset: 192)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1326, file: !1327, line: 419, baseType: !390, size: 8, offset: 200)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1326, file: !1327, line: 420, baseType: !1338, size: 8, offset: 208)
!1338 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1326, file: !1327, line: 421, baseType: !1338, size: 8, offset: 216)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1326, file: !1327, line: 422, baseType: !1338, size: 8, offset: 224)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1326, file: !1327, line: 423, baseType: !1338, size: 8, offset: 232)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1326, file: !1327, line: 424, baseType: !1338, size: 8, offset: 240)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1326, file: !1327, line: 425, baseType: !1338, size: 8, offset: 248)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1326, file: !1327, line: 426, baseType: !1338, size: 8, offset: 256)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1326, file: !1327, line: 427, baseType: !1338, size: 8, offset: 264)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1326, file: !1327, line: 428, baseType: !1338, size: 8, offset: 272)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1326, file: !1327, line: 429, baseType: !1338, size: 8, offset: 280)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1326, file: !1327, line: 430, baseType: !1338, size: 8, offset: 288)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1326, file: !1327, line: 431, baseType: !1338, size: 8, offset: 296)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1326, file: !1327, line: 432, baseType: !1338, size: 8, offset: 304)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1326, file: !1327, line: 433, baseType: !1338, size: 8, offset: 312)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1326, file: !1327, line: 434, baseType: !1338, size: 8, offset: 320)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1326, file: !1327, line: 435, baseType: !1338, size: 8, offset: 328)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1326, file: !1327, line: 436, baseType: !1338, size: 8, offset: 336)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1326, file: !1327, line: 437, baseType: !1338, size: 8, offset: 344)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1326, file: !1327, line: 438, baseType: !1338, size: 8, offset: 352)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1326, file: !1327, line: 439, baseType: !1338, size: 8, offset: 360)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1326, file: !1327, line: 440, baseType: !1338, size: 8, offset: 368)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1326, file: !1327, line: 441, baseType: !1338, size: 8, offset: 376)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1326, file: !1327, line: 442, baseType: !1338, size: 8, offset: 384)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1326, file: !1327, line: 443, baseType: !1338, size: 8, offset: 392)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1326, file: !1327, line: 444, baseType: !1338, size: 8, offset: 400)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1326, file: !1327, line: 445, baseType: !1338, size: 8, offset: 408)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1326, file: !1327, line: 446, baseType: !1338, size: 8, offset: 416)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1326, file: !1327, line: 447, baseType: !1338, size: 8, offset: 424)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1326, file: !1327, line: 448, baseType: !1338, size: 8, offset: 432)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1326, file: !1327, line: 449, baseType: !1338, size: 8, offset: 440)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1326, file: !1327, line: 450, baseType: !1338, size: 8, offset: 448)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1326, file: !1327, line: 451, baseType: !1338, size: 8, offset: 456)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1326, file: !1327, line: 452, baseType: !1338, size: 8, offset: 464)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1326, file: !1327, line: 453, baseType: !1338, size: 8, offset: 472)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1326, file: !1327, line: 454, baseType: !1338, size: 8, offset: 480)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1326, file: !1327, line: 455, baseType: !1338, size: 8, offset: 488)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1326, file: !1327, line: 456, baseType: !1338, size: 8, offset: 496)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1326, file: !1327, line: 457, baseType: !1338, size: 8, offset: 504)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1326, file: !1327, line: 458, baseType: !1338, size: 8, offset: 512)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1326, file: !1327, line: 459, baseType: !1338, size: 8, offset: 520)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1326, file: !1327, line: 460, baseType: !1338, size: 8, offset: 528)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1326, file: !1327, line: 461, baseType: !1338, size: 8, offset: 536)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1326, file: !1327, line: 462, baseType: !1338, size: 8, offset: 544)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1326, file: !1327, line: 463, baseType: !1338, size: 8, offset: 552)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1326, file: !1327, line: 464, baseType: !1338, size: 8, offset: 560)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1326, file: !1327, line: 465, baseType: !1338, size: 8, offset: 568)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1326, file: !1327, line: 466, baseType: !1338, size: 8, offset: 576)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1326, file: !1327, line: 467, baseType: !1338, size: 8, offset: 584)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1326, file: !1327, line: 468, baseType: !1338, size: 8, offset: 592)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1326, file: !1327, line: 469, baseType: !1338, size: 8, offset: 600)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1326, file: !1327, line: 470, baseType: !1338, size: 8, offset: 608)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1326, file: !1327, line: 471, baseType: !1338, size: 8, offset: 616)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1326, file: !1327, line: 472, baseType: !1338, size: 8, offset: 624)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1326, file: !1327, line: 473, baseType: !1338, size: 8, offset: 632)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1326, file: !1327, line: 474, baseType: !1338, size: 8, offset: 640)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1326, file: !1327, line: 475, baseType: !1338, size: 8, offset: 648)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1326, file: !1327, line: 476, baseType: !1338, size: 8, offset: 656)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1326, file: !1327, line: 477, baseType: !1338, size: 8, offset: 664)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1326, file: !1327, line: 478, baseType: !1338, size: 8, offset: 672)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1326, file: !1327, line: 479, baseType: !1338, size: 8, offset: 680)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1326, file: !1327, line: 480, baseType: !1338, size: 8, offset: 688)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1326, file: !1327, line: 481, baseType: !1338, size: 8, offset: 696)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1326, file: !1327, line: 482, baseType: !1338, size: 8, offset: 704)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1326, file: !1327, line: 483, baseType: !1338, size: 8, offset: 712)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1326, file: !1327, line: 484, baseType: !1338, size: 8, offset: 720)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1326, file: !1327, line: 485, baseType: !1338, size: 8, offset: 728)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1326, file: !1327, line: 486, baseType: !1338, size: 8, offset: 736)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1326, file: !1327, line: 487, baseType: !1338, size: 8, offset: 744)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1326, file: !1327, line: 488, baseType: !1338, size: 8, offset: 752)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1326, file: !1327, line: 489, baseType: !1338, size: 8, offset: 760)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1326, file: !1327, line: 490, baseType: !1338, size: 8, offset: 768)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1326, file: !1327, line: 491, baseType: !1338, size: 8, offset: 776)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1326, file: !1327, line: 492, baseType: !1338, size: 8, offset: 784)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1326, file: !1327, line: 493, baseType: !1338, size: 8, offset: 792)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1326, file: !1327, line: 494, baseType: !1338, size: 8, offset: 800)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1326, file: !1327, line: 495, baseType: !1338, size: 8, offset: 808)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1326, file: !1327, line: 496, baseType: !1338, size: 8, offset: 816)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1326, file: !1327, line: 497, baseType: !1338, size: 8, offset: 824)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1326, file: !1327, line: 498, baseType: !1338, size: 8, offset: 832)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1326, file: !1327, line: 499, baseType: !1338, size: 8, offset: 840)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1326, file: !1327, line: 500, baseType: !1338, size: 8, offset: 848)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1326, file: !1327, line: 501, baseType: !1338, size: 8, offset: 856)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1326, file: !1327, line: 502, baseType: !1338, size: 8, offset: 864)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1326, file: !1327, line: 503, baseType: !1338, size: 8, offset: 872)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1326, file: !1327, line: 504, baseType: !1338, size: 8, offset: 880)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1326, file: !1327, line: 505, baseType: !1338, size: 8, offset: 888)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1326, file: !1327, line: 506, baseType: !1338, size: 8, offset: 896)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1326, file: !1327, line: 507, baseType: !1338, size: 8, offset: 904)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1326, file: !1327, line: 508, baseType: !1338, size: 8, offset: 912)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1326, file: !1327, line: 509, baseType: !1338, size: 8, offset: 920)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1326, file: !1327, line: 510, baseType: !1338, size: 8, offset: 928)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1326, file: !1327, line: 511, baseType: !1338, size: 8, offset: 936)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1326, file: !1327, line: 512, baseType: !1338, size: 8, offset: 944)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1326, file: !1327, line: 513, baseType: !1338, size: 8, offset: 952)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1326, file: !1327, line: 514, baseType: !1338, size: 8, offset: 960)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1326, file: !1327, line: 515, baseType: !1338, size: 8, offset: 968)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1326, file: !1327, line: 516, baseType: !1338, size: 8, offset: 976)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1326, file: !1327, line: 517, baseType: !1338, size: 8, offset: 984)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1326, file: !1327, line: 518, baseType: !1338, size: 8, offset: 992)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1326, file: !1327, line: 519, baseType: !1338, size: 8, offset: 1000)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1326, file: !1327, line: 520, baseType: !1338, size: 8, offset: 1008)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1326, file: !1327, line: 521, baseType: !1338, size: 8, offset: 1016)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1326, file: !1327, line: 522, baseType: !1338, size: 8, offset: 1024)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1326, file: !1327, line: 523, baseType: !1338, size: 8, offset: 1032)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1326, file: !1327, line: 524, baseType: !1338, size: 8, offset: 1040)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1326, file: !1327, line: 525, baseType: !1338, size: 8, offset: 1048)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1326, file: !1327, line: 526, baseType: !1338, size: 8, offset: 1056)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1326, file: !1327, line: 527, baseType: !1338, size: 8, offset: 1064)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1326, file: !1327, line: 528, baseType: !1338, size: 8, offset: 1072)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1326, file: !1327, line: 529, baseType: !1338, size: 8, offset: 1080)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1326, file: !1327, line: 530, baseType: !1338, size: 8, offset: 1088)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1326, file: !1327, line: 531, baseType: !1338, size: 8, offset: 1096)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1326, file: !1327, line: 532, baseType: !1338, size: 8, offset: 1104)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1326, file: !1327, line: 533, baseType: !1338, size: 8, offset: 1112)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1326, file: !1327, line: 534, baseType: !1338, size: 8, offset: 1120)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1326, file: !1327, line: 535, baseType: !1338, size: 8, offset: 1128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1326, file: !1327, line: 536, baseType: !1338, size: 8, offset: 1136)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1326, file: !1327, line: 537, baseType: !1338, size: 8, offset: 1144)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1326, file: !1327, line: 538, baseType: !1338, size: 8, offset: 1152)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1326, file: !1327, line: 539, baseType: !1338, size: 8, offset: 1160)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1326, file: !1327, line: 540, baseType: !1338, size: 8, offset: 1168)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1326, file: !1327, line: 541, baseType: !1338, size: 8, offset: 1176)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1326, file: !1327, line: 542, baseType: !1338, size: 8, offset: 1184)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1326, file: !1327, line: 543, baseType: !1338, size: 8, offset: 1192)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1326, file: !1327, line: 544, baseType: !1338, size: 8, offset: 1200)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1326, file: !1327, line: 545, baseType: !1338, size: 8, offset: 1208)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1326, file: !1327, line: 546, baseType: !1338, size: 8, offset: 1216)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1326, file: !1327, line: 547, baseType: !1338, size: 8, offset: 1224)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1326, file: !1327, line: 548, baseType: !1338, size: 8, offset: 1232)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1326, file: !1327, line: 549, baseType: !1338, size: 8, offset: 1240)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1326, file: !1327, line: 550, baseType: !1338, size: 8, offset: 1248)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1326, file: !1327, line: 551, baseType: !1338, size: 8, offset: 1256)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1326, file: !1327, line: 552, baseType: !1338, size: 8, offset: 1264)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1326, file: !1327, line: 553, baseType: !1338, size: 8, offset: 1272)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1326, file: !1327, line: 554, baseType: !1338, size: 8, offset: 1280)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1326, file: !1327, line: 555, baseType: !1338, size: 8, offset: 1288)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1326, file: !1327, line: 556, baseType: !1338, size: 8, offset: 1296)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1326, file: !1327, line: 557, baseType: !1338, size: 8, offset: 1304)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1326, file: !1327, line: 558, baseType: !1338, size: 8, offset: 1312)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1326, file: !1327, line: 559, baseType: !1338, size: 8, offset: 1320)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1326, file: !1327, line: 560, baseType: !1338, size: 8, offset: 1328)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1326, file: !1327, line: 561, baseType: !1338, size: 8, offset: 1336)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1326, file: !1327, line: 562, baseType: !1338, size: 8, offset: 1344)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1326, file: !1327, line: 563, baseType: !1338, size: 8, offset: 1352)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1326, file: !1327, line: 564, baseType: !1338, size: 8, offset: 1360)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1326, file: !1327, line: 565, baseType: !1338, size: 8, offset: 1368)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1326, file: !1327, line: 566, baseType: !1338, size: 8, offset: 1376)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1326, file: !1327, line: 567, baseType: !1338, size: 8, offset: 1384)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1326, file: !1327, line: 568, baseType: !1338, size: 8, offset: 1392)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1326, file: !1327, line: 569, baseType: !1338, size: 8, offset: 1400)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1326, file: !1327, line: 570, baseType: !1338, size: 8, offset: 1408)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1326, file: !1327, line: 571, baseType: !1338, size: 8, offset: 1416)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1326, file: !1327, line: 572, baseType: !1338, size: 8, offset: 1424)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1326, file: !1327, line: 573, baseType: !1338, size: 8, offset: 1432)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1326, file: !1327, line: 574, baseType: !1338, size: 8, offset: 1440)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !603, file: !149, line: 3405, baseType: !1494, size: 384)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !149, line: 3352, size: 384, elements: !1495)
!1495 = !{!1496, !1497}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1494, file: !149, line: 3353, baseType: !639, size: 192)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1494, file: !149, line: 3356, baseType: !1498, size: 192, offset: 192)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1327, line: 578, size: 192, elements: !1499)
!1499 = !{!1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1498, file: !1327, line: 580, baseType: !391, size: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1498, file: !1327, line: 581, baseType: !391, size: 32, offset: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1498, file: !1327, line: 582, baseType: !391, size: 32, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1498, file: !1327, line: 583, baseType: !391, size: 32, offset: 96)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1498, file: !1327, line: 584, baseType: !390, size: 8, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1498, file: !1327, line: 585, baseType: !390, size: 8, offset: 136)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1498, file: !1327, line: 586, baseType: !390, size: 8, offset: 144)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1498, file: !1327, line: 587, baseType: !390, size: 8, offset: 152)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1498, file: !1327, line: 588, baseType: !390, size: 8, offset: 160)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1498, file: !1327, line: 589, baseType: !390, size: 8, offset: 168)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1498, file: !1327, line: 590, baseType: !390, size: 8, offset: 176)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !507, file: !489, line: 178, baseType: !445, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !507, file: !489, line: 179, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !489, line: 150, baseType: !1515)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !489, line: 142, size: 320, elements: !1516)
!1516 = !{!1517, !1518, !1519, !1520, !1521, !1522}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1515, file: !489, line: 144, baseType: !601, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1515, file: !489, line: 145, baseType: !486, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1515, file: !489, line: 146, baseType: !486, size: 64, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1515, file: !489, line: 147, baseType: !1186, size: 32, offset: 192)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1515, file: !489, line: 148, baseType: !5, size: 32, offset: 224)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1515, file: !489, line: 149, baseType: !390, size: 8, offset: 256)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !507, file: !489, line: 180, baseType: !1524, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !489, line: 162, baseType: !1526)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !489, line: 159, size: 128, elements: !1527)
!1527 = !{!1528, !1529}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1526, file: !489, line: 160, baseType: !601, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1526, file: !489, line: 161, baseType: !401, size: 64, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !507, file: !489, line: 181, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !489, line: 181, flags: DIFlagFwdDecl)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !502, file: !489, line: 317, baseType: !1534, size: 64)
!1534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 64, elements: !521)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !502, file: !489, line: 318, baseType: !1536, size: 320)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !489, line: 188, size: 320, elements: !1537)
!1537 = !{!1538, !1540, !1563}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1536, file: !489, line: 190, baseType: !1539, size: 192)
!1539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !506, size: 192, elements: !672)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1536, file: !489, line: 193, baseType: !1541, size: 64, offset: 192)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !489, line: 206, size: 320, elements: !1543)
!1543 = !{!1544, !1548, !1549, !1550, !1562}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1542, file: !489, line: 208, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !421, line: 62, baseType: !1547)
!1547 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !421, line: 61, flags: DIFlagFwdDecl)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1542, file: !489, line: 211, baseType: !5, size: 32, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1542, file: !489, line: 214, baseType: !401, size: 64, offset: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1542, file: !489, line: 224, baseType: !1551, size: 64, offset: 192)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !489, line: 202, baseType: !1553)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !489, line: 202, size: 128, elements: !1554)
!1554 = !{!1555}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1553, file: !489, line: 202, baseType: !1556, size: 128)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !489, line: 200, baseType: !1557)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !489, line: 200, size: 128, elements: !1558)
!1558 = !{!1559, !1560, !1561}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1557, file: !489, line: 200, baseType: !5, size: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1557, file: !489, line: 200, baseType: !5, size: 32, offset: 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1557, file: !489, line: 200, baseType: !520, size: 64, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1542, file: !489, line: 234, baseType: !1551, size: 64, offset: 256)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1536, file: !489, line: 197, baseType: !401, size: 64, offset: 256)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !502, file: !489, line: 319, baseType: !661, size: 256)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !502, file: !489, line: 320, baseType: !680, size: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !463, file: !133, line: 134, baseType: !395, size: 64, offset: 192)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !463, file: !133, line: 137, baseType: !601, size: 64, offset: 256)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !463, file: !133, line: 138, baseType: !439, size: 32, offset: 320)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !463, file: !133, line: 142, baseType: !5, size: 32, offset: 352)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !463, file: !133, line: 144, baseType: !391, size: 32, offset: 384)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !463, file: !133, line: 145, baseType: !391, size: 32, offset: 416)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !463, file: !133, line: 146, baseType: !1573, size: 64, offset: 448)
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !133, line: 119, baseType: !401)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !446, file: !133, line: 220, baseType: !449, size: 64, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !446, file: !133, line: 223, baseType: !395, size: 64, offset: 128)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !446, file: !133, line: 226, baseType: !1039, size: 64, offset: 192)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !446, file: !133, line: 229, baseType: !1578, size: 128, offset: 256)
!1578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1579, size: 128, elements: !557)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !133, line: 229, flags: DIFlagFwdDecl)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !446, file: !133, line: 232, baseType: !445, size: 64, offset: 384)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !446, file: !133, line: 233, baseType: !445, size: 64, offset: 448)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !446, file: !133, line: 238, baseType: !1584, size: 64, offset: 512)
!1584 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !133, line: 235, size: 64, elements: !1585)
!1585 = !{!1586, !1592}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1584, file: !133, line: 236, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !133, line: 273, size: 128, elements: !1589)
!1589 = !{!1590, !1591}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1588, file: !133, line: 275, baseType: !471, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1588, file: !133, line: 278, baseType: !471, size: 64, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1584, file: !133, line: 237, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !133, line: 259, size: 320, elements: !1595)
!1595 = !{!1596, !1597, !1598, !1599, !1600}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1594, file: !133, line: 261, baseType: !486, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1594, file: !133, line: 262, baseType: !486, size: 64, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1594, file: !133, line: 266, baseType: !486, size: 64, offset: 128)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1594, file: !133, line: 267, baseType: !486, size: 64, offset: 192)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1594, file: !133, line: 270, baseType: !391, size: 32, offset: 256)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !446, file: !133, line: 241, baseType: !1573, size: 64, offset: 576)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !446, file: !133, line: 244, baseType: !391, size: 32, offset: 640)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !446, file: !133, line: 247, baseType: !391, size: 32, offset: 672)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !446, file: !133, line: 250, baseType: !391, size: 32, offset: 704)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !446, file: !133, line: 253, baseType: !391, size: 32, offset: 736)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !446, file: !133, line: 256, baseType: !391, size: 32, offset: 768)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !426, file: !409, line: 327, baseType: !601, size: 64, offset: 192)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !423, file: !409, line: 739, baseType: !1609, size: 448)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !409, line: 350, size: 448, elements: !1610)
!1610 = !{!1611, !1617}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1609, file: !409, line: 353, baseType: !1612, size: 384)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !409, line: 333, size: 384, elements: !1613)
!1613 = !{!1614, !1615, !1616}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1612, file: !409, line: 336, baseType: !426, size: 256)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1612, file: !409, line: 343, baseType: !997, size: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1612, file: !409, line: 344, baseType: !1004, size: 64, offset: 320)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1609, file: !409, line: 359, baseType: !960, size: 64, offset: 384)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !423, file: !409, line: 740, baseType: !1619, size: 512)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !409, line: 365, size: 512, elements: !1620)
!1620 = !{!1621, !1622, !1623}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1619, file: !409, line: 368, baseType: !1612, size: 384)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1619, file: !409, line: 373, baseType: !601, size: 64, offset: 384)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1619, file: !409, line: 374, baseType: !601, size: 64, offset: 448)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !423, file: !409, line: 741, baseType: !1625, size: 576)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !409, line: 380, size: 576, elements: !1626)
!1626 = !{!1627, !1628}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1625, file: !409, line: 383, baseType: !1619, size: 512)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1625, file: !409, line: 389, baseType: !960, size: 64, offset: 512)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !423, file: !409, line: 742, baseType: !1630, size: 320)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !409, line: 395, size: 320, elements: !1631)
!1631 = !{!1632, !1633}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1630, file: !409, line: 397, baseType: !426, size: 256)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1630, file: !409, line: 400, baseType: !471, size: 64, offset: 256)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !423, file: !409, line: 743, baseType: !1635, size: 448)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !409, line: 406, size: 448, elements: !1636)
!1636 = !{!1637, !1638, !1639, !1640}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1635, file: !409, line: 408, baseType: !426, size: 256)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1635, file: !409, line: 412, baseType: !601, size: 64, offset: 256)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1635, file: !409, line: 420, baseType: !601, size: 64, offset: 320)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1635, file: !409, line: 423, baseType: !471, size: 64, offset: 384)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !423, file: !409, line: 744, baseType: !1642, size: 384)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !409, line: 429, size: 384, elements: !1643)
!1643 = !{!1644, !1645, !1646}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1642, file: !409, line: 431, baseType: !426, size: 256)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1642, file: !409, line: 434, baseType: !601, size: 64, offset: 256)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1642, file: !409, line: 437, baseType: !471, size: 64, offset: 320)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !423, file: !409, line: 745, baseType: !1648, size: 384)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !409, line: 443, size: 384, elements: !1649)
!1649 = !{!1650, !1651, !1652}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1648, file: !409, line: 445, baseType: !426, size: 256)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1648, file: !409, line: 449, baseType: !601, size: 64, offset: 256)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1648, file: !409, line: 453, baseType: !471, size: 64, offset: 320)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !423, file: !409, line: 746, baseType: !1654, size: 320)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !409, line: 459, size: 320, elements: !1655)
!1655 = !{!1656, !1657}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1654, file: !409, line: 461, baseType: !426, size: 256)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1654, file: !409, line: 464, baseType: !601, size: 64, offset: 256)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !423, file: !409, line: 747, baseType: !1659, size: 768)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !409, line: 469, size: 768, elements: !1660)
!1660 = !{!1661, !1662, !1663, !1664, !1665}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1659, file: !409, line: 471, baseType: !426, size: 256)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1659, file: !409, line: 474, baseType: !5, size: 32, offset: 256)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1659, file: !409, line: 475, baseType: !5, size: 32, offset: 288)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1659, file: !409, line: 478, baseType: !601, size: 64, offset: 320)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1659, file: !409, line: 481, baseType: !1666, size: 384, offset: 384)
!1666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1667, size: 384, elements: !521)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !149, line: 1917, size: 384, elements: !1668)
!1668 = !{!1669, !1670, !1671}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1667, file: !149, line: 1920, baseType: !1009, size: 256)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1667, file: !149, line: 1921, baseType: !601, size: 64, offset: 256)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1667, file: !149, line: 1922, baseType: !439, size: 32, offset: 320)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !423, file: !409, line: 748, baseType: !1673, size: 320)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !409, line: 487, size: 320, elements: !1674)
!1674 = !{!1675, !1676}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1673, file: !409, line: 490, baseType: !426, size: 256)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1673, file: !409, line: 494, baseType: !391, size: 32, offset: 256)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !423, file: !409, line: 749, baseType: !1678, size: 384)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !409, line: 500, size: 384, elements: !1679)
!1679 = !{!1680, !1681, !1682}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1678, file: !409, line: 502, baseType: !426, size: 256)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1678, file: !409, line: 506, baseType: !471, size: 64, offset: 256)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1678, file: !409, line: 510, baseType: !471, size: 64, offset: 320)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !423, file: !409, line: 750, baseType: !1684, size: 320)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !409, line: 529, size: 320, elements: !1685)
!1685 = !{!1686, !1687}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1684, file: !409, line: 531, baseType: !426, size: 256)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1684, file: !409, line: 540, baseType: !471, size: 64, offset: 256)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !423, file: !409, line: 751, baseType: !1689, size: 704)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !409, line: 546, size: 704, elements: !1690)
!1690 = !{!1691, !1692, !1693, !1694, !1695, !1696, !1697}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1689, file: !409, line: 549, baseType: !1619, size: 512)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1689, file: !409, line: 553, baseType: !396, size: 64, offset: 512)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1689, file: !409, line: 557, baseType: !390, size: 8, offset: 576)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1689, file: !409, line: 558, baseType: !390, size: 8, offset: 584)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1689, file: !409, line: 559, baseType: !390, size: 8, offset: 592)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1689, file: !409, line: 560, baseType: !390, size: 8, offset: 600)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1689, file: !409, line: 566, baseType: !960, size: 64, offset: 640)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !423, file: !409, line: 752, baseType: !1699, size: 384)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !409, line: 571, size: 384, elements: !1700)
!1700 = !{!1701, !1702}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1699, file: !409, line: 573, baseType: !1630, size: 320)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1699, file: !409, line: 577, baseType: !601, size: 64, offset: 320)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !423, file: !409, line: 753, baseType: !1704, size: 576)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !409, line: 600, size: 576, elements: !1705)
!1705 = !{!1706, !1707, !1708, !1709, !1718}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1704, file: !409, line: 602, baseType: !1630, size: 320)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1704, file: !409, line: 605, baseType: !601, size: 64, offset: 320)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1704, file: !409, line: 609, baseType: !918, size: 64, offset: 384)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1704, file: !409, line: 612, baseType: !1710, size: 64, offset: 448)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !409, line: 581, size: 320, elements: !1712)
!1712 = !{!1713, !1714, !1715, !1716, !1717}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1711, file: !409, line: 583, baseType: !181, size: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1711, file: !409, line: 586, baseType: !601, size: 64, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1711, file: !409, line: 589, baseType: !601, size: 64, offset: 128)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1711, file: !409, line: 592, baseType: !601, size: 64, offset: 192)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1711, file: !409, line: 595, baseType: !601, size: 64, offset: 256)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1704, file: !409, line: 616, baseType: !471, size: 64, offset: 512)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !423, file: !409, line: 754, baseType: !1720, size: 512)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !409, line: 622, size: 512, elements: !1721)
!1721 = !{!1722, !1723, !1724, !1725}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1720, file: !409, line: 624, baseType: !1630, size: 320)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1720, file: !409, line: 628, baseType: !601, size: 64, offset: 320)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1720, file: !409, line: 632, baseType: !601, size: 64, offset: 384)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1720, file: !409, line: 636, baseType: !601, size: 64, offset: 448)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !423, file: !409, line: 755, baseType: !1727, size: 704)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !409, line: 642, size: 704, elements: !1728)
!1728 = !{!1729, !1730, !1731, !1732}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1727, file: !409, line: 644, baseType: !1720, size: 512)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1727, file: !409, line: 648, baseType: !601, size: 64, offset: 512)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1727, file: !409, line: 652, baseType: !601, size: 64, offset: 576)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1727, file: !409, line: 653, baseType: !601, size: 64, offset: 640)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !423, file: !409, line: 756, baseType: !1734, size: 448)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !409, line: 663, size: 448, elements: !1735)
!1735 = !{!1736, !1737, !1738}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1734, file: !409, line: 665, baseType: !1630, size: 320)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1734, file: !409, line: 668, baseType: !601, size: 64, offset: 320)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1734, file: !409, line: 673, baseType: !601, size: 64, offset: 384)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !423, file: !409, line: 757, baseType: !1740, size: 384)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !409, line: 694, size: 384, elements: !1741)
!1741 = !{!1742, !1743}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1740, file: !409, line: 696, baseType: !1630, size: 320)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1740, file: !409, line: 699, baseType: !601, size: 64, offset: 320)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !423, file: !409, line: 758, baseType: !1745, size: 384)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !409, line: 681, size: 384, elements: !1746)
!1746 = !{!1747, !1748, !1749}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1745, file: !409, line: 683, baseType: !426, size: 256)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1745, file: !409, line: 686, baseType: !601, size: 64, offset: 256)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1745, file: !409, line: 689, baseType: !601, size: 64, offset: 320)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !423, file: !409, line: 759, baseType: !1751, size: 384)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !409, line: 707, size: 384, elements: !1752)
!1752 = !{!1753, !1754, !1755}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1751, file: !409, line: 709, baseType: !426, size: 256)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1751, file: !409, line: 712, baseType: !601, size: 64, offset: 256)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1751, file: !409, line: 712, baseType: !601, size: 64, offset: 320)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !423, file: !409, line: 760, baseType: !1757, size: 320)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !409, line: 718, size: 320, elements: !1758)
!1758 = !{!1759, !1760}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1757, file: !409, line: 720, baseType: !426, size: 256)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1757, file: !409, line: 723, baseType: !601, size: 64, offset: 256)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_heap", file: !1763, line: 32, baseType: !1764)
!1763 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_heap", file: !1763, line: 32, size: 96, elements: !1765)
!1765 = !{!1766}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1764, file: !1763, line: 32, baseType: !1767, size: 96)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_base", file: !1763, line: 31, baseType: !1768)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_base", file: !1763, line: 31, size: 96, elements: !1769)
!1769 = !{!1770, !1771, !1772}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1768, file: !1763, line: 31, baseType: !5, size: 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1768, file: !1763, line: 31, baseType: !5, size: 32, offset: 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1768, file: !1763, line: 31, baseType: !1773, size: 32, offset: 64)
!1773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 32, elements: !521)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_heap", file: !376, line: 86, baseType: !1776)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_heap", file: !376, line: 86, size: 128, elements: !1777)
!1777 = !{!1778}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1776, file: !376, line: 86, baseType: !1031, size: 128)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_data_reference_p_heap", file: !1781, line: 209, baseType: !1782)
!1781 = !DIFile(filename: "./tree-data-ref.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_data_reference_p_heap", file: !1781, line: 209, size: 128, elements: !1783)
!1783 = !{!1784}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1782, file: !1781, line: 209, baseType: !1785, size: 128)
!1785 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_data_reference_p_base", file: !1781, line: 208, baseType: !1786)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_data_reference_p_base", file: !1781, line: 208, size: 128, elements: !1787)
!1787 = !{!1788, !1789, !1790}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1786, file: !1781, line: 208, baseType: !5, size: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1786, file: !1781, line: 208, baseType: !5, size: 32, offset: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1786, file: !1781, line: 208, baseType: !1791, size: 64, offset: 64)
!1791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1792, size: 64, elements: !521)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "data_reference_p", file: !1781, line: 207, baseType: !1793)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "data_reference", file: !1781, line: 165, size: 896, elements: !1795)
!1795 = !{!1796, !1797, !1798, !1799, !1800, !1808, !1818, !1823}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1794, file: !1781, line: 168, baseType: !420, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1794, file: !1781, line: 171, baseType: !601, size: 64, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1794, file: !1781, line: 174, baseType: !395, size: 64, offset: 128)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "is_read", scope: !1794, file: !1781, line: 177, baseType: !390, size: 8, offset: 192)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "innermost", scope: !1794, file: !1781, line: 180, baseType: !1801, size: 320, offset: 256)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "innermost_loop_behavior", file: !1781, line: 51, size: 320, elements: !1802)
!1802 = !{!1803, !1804, !1805, !1806, !1807}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "base_address", scope: !1801, file: !1781, line: 53, baseType: !601, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1801, file: !1781, line: 54, baseType: !601, size: 64, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1801, file: !1781, line: 55, baseType: !601, size: 64, offset: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !1801, file: !1781, line: 56, baseType: !601, size: 64, offset: 192)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "aligned_to", scope: !1801, file: !1781, line: 60, baseType: !601, size: 64, offset: 256)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "indices", scope: !1794, file: !1781, line: 183, baseType: !1809, size: 128, offset: 576)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "indices", file: !1781, line: 78, size: 128, elements: !1810)
!1810 = !{!1811, !1812}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "base_object", scope: !1809, file: !1781, line: 81, baseType: !601, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "access_fns", scope: !1809, file: !1781, line: 84, baseType: !1813, size: 64, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_heap", file: !149, line: 184, baseType: !1815)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_heap", file: !149, line: 184, size: 128, elements: !1816)
!1816 = !{!1817}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1815, file: !149, line: 184, baseType: !954, size: 128)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1794, file: !1781, line: 186, baseType: !1819, size: 128, offset: 704)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dr_alias", file: !1781, line: 87, size: 128, elements: !1820)
!1820 = !{!1821, !1822}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1819, file: !1781, line: 91, baseType: !1236, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "vops", scope: !1819, file: !1781, line: 96, baseType: !973, size: 64, offset: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "access_matrix", scope: !1794, file: !1781, line: 189, baseType: !1824, size: 64, offset: 832)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "access_matrix", file: !1781, line: 127, size: 256, elements: !1826)
!1826 = !{!1827, !1828, !1829, !1830}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "loop_nest", scope: !1825, file: !1781, line: 129, baseType: !1774, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "nb_induction_vars", scope: !1825, file: !1781, line: 130, baseType: !391, size: 32, offset: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1825, file: !1781, line: 131, baseType: !1813, size: 64, offset: 128)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "matrix", scope: !1825, file: !1781, line: 132, baseType: !1831, size: 64, offset: 192)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_lambda_vector_gc", file: !1833, line: 34, baseType: !1834)
!1833 = !DIFile(filename: "./lambda.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_lambda_vector_gc", file: !1833, line: 34, size: 128, elements: !1835)
!1835 = !{!1836}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1834, file: !1833, line: 34, baseType: !1837, size: 128)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_lambda_vector_base", file: !1833, line: 32, baseType: !1838)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_lambda_vector_base", file: !1833, line: 32, size: 128, elements: !1839)
!1839 = !{!1840, !1841, !1842}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1838, file: !1833, line: 32, baseType: !5, size: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1838, file: !1833, line: 32, baseType: !5, size: 32, offset: 32)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1838, file: !1833, line: 32, baseType: !1843, size: 64, offset: 64)
!1843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1844, size: 64, elements: !521)
!1844 = !DIDerivedType(tag: DW_TAG_typedef, name: "lambda_vector", file: !1833, line: 31, baseType: !1845)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ddr_p_heap", file: !1781, line: 333, baseType: !1848)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ddr_p_heap", file: !1781, line: 333, size: 128, elements: !1849)
!1849 = !{!1850}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1848, file: !1781, line: 333, baseType: !1851, size: 128)
!1851 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_ddr_p_base", file: !1781, line: 332, baseType: !1852)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_ddr_p_base", file: !1781, line: 332, size: 128, elements: !1853)
!1853 = !{!1854, !1855, !1856}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1852, file: !1781, line: 332, baseType: !5, size: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1852, file: !1781, line: 332, baseType: !5, size: 32, offset: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1852, file: !1781, line: 332, baseType: !1857, size: 64, offset: 64)
!1857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1858, size: 64, elements: !521)
!1858 = !DIDerivedType(tag: DW_TAG_typedef, name: "ddr_p", file: !1781, line: 331, baseType: !1859)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "data_dependence_relation", file: !1781, line: 282, size: 512, elements: !1861)
!1861 = !{!1862, !1863, !1864, !1865, !1894, !1895, !1901, !1902, !1903, !1904, !1905}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1860, file: !1781, line: 285, baseType: !1793, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1860, file: !1781, line: 286, baseType: !1793, size: 64, offset: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "are_dependent", scope: !1860, file: !1781, line: 299, baseType: !601, size: 64, offset: 128)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "subscripts", scope: !1860, file: !1781, line: 304, baseType: !1866, size: 64, offset: 192)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_subscript_p_heap", file: !1781, line: 272, baseType: !1868)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_subscript_p_heap", file: !1781, line: 272, size: 128, elements: !1869)
!1869 = !{!1870}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1868, file: !1781, line: 272, baseType: !1871, size: 128)
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_subscript_p_base", file: !1781, line: 271, baseType: !1872)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_subscript_p_base", file: !1781, line: 271, size: 128, elements: !1873)
!1873 = !{!1874, !1875, !1876}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1872, file: !1781, line: 271, baseType: !5, size: 32)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1872, file: !1781, line: 271, baseType: !5, size: 32, offset: 32)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1872, file: !1781, line: 271, baseType: !1877, size: 64, offset: 64)
!1877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1878, size: 64, elements: !521)
!1878 = !DIDerivedType(tag: DW_TAG_typedef, name: "subscript_p", file: !1781, line: 270, baseType: !1879)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "subscript", file: !1781, line: 252, size: 256, elements: !1881)
!1881 = !{!1882, !1891, !1892, !1893}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "conflicting_iterations_in_a", scope: !1880, file: !1781, line: 256, baseType: !1883, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "conflict_function", file: !1781, line: 243, baseType: !1885)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1781, line: 239, size: 192, elements: !1886)
!1886 = !{!1887, !1888}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !1885, file: !1781, line: 241, baseType: !5, size: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "fns", scope: !1885, file: !1781, line: 242, baseType: !1889, size: 128, offset: 64)
!1889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1890, size: 128, elements: !557)
!1890 = !DIDerivedType(tag: DW_TAG_typedef, name: "affine_fn", file: !1781, line: 237, baseType: !1813)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "conflicting_iterations_in_b", scope: !1880, file: !1781, line: 257, baseType: !1883, size: 64, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "last_conflict", scope: !1880, file: !1781, line: 261, baseType: !601, size: 64, offset: 128)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "distance", scope: !1880, file: !1781, line: 267, baseType: !601, size: 64, offset: 192)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "loop_nest", scope: !1860, file: !1781, line: 307, baseType: !1774, size: 64, offset: 256)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "dir_vects", scope: !1860, file: !1781, line: 310, baseType: !1896, size: 64, offset: 320)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_lambda_vector_heap", file: !1833, line: 33, baseType: !1898)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_lambda_vector_heap", file: !1833, line: 33, size: 128, elements: !1899)
!1899 = !{!1900}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1898, file: !1833, line: 33, baseType: !1837, size: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "dist_vects", scope: !1860, file: !1781, line: 313, baseType: !1896, size: 64, offset: 384)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "inner_loop", scope: !1860, file: !1781, line: 317, baseType: !5, size: 32, offset: 448)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "reversed_p", scope: !1860, file: !1781, line: 320, baseType: !390, size: 8, offset: 480)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "affine_p", scope: !1860, file: !1781, line: 324, baseType: !390, size: 8, offset: 488)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "self_reference_p", scope: !1860, file: !1781, line: 328, baseType: !390, size: 8, offset: 496)
!1906 = !{i32 2, !"Dwarf Version", i32 4}
!1907 = !{i32 2, !"Debug Info Version", i32 3}
!1908 = !{i32 1, !"wchar_size", i32 4}
!1909 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1910 = distinct !DISubprogram(name: "vprintf", scope: !1911, file: !1911, line: 39, type: !1912, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1922)
!1911 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!391, !1914, !1915}
!1914 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !396)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !1917)
!1917 = !{!1918, !1919, !1920, !1921}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1916, file: !1, baseType: !5, size: 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1916, file: !1, baseType: !5, size: 32, offset: 32)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1916, file: !1, baseType: !395, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1916, file: !1, baseType: !395, size: 64, offset: 128)
!1922 = !{!1923, !1924}
!1923 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1910, file: !1911, line: 39, type: !1914)
!1924 = !DILocalVariable(name: "__arg", arg: 2, scope: !1910, file: !1911, line: 39, type: !1915)
!1925 = !DILocation(line: 0, scope: !1910)
!1926 = !DILocation(line: 41, column: 20, scope: !1910)
!1927 = !DILocation(line: 41, column: 10, scope: !1910)
!1928 = !DILocation(line: 41, column: 3, scope: !1910)
!1929 = distinct !DISubprogram(name: "getchar", scope: !1911, file: !1911, line: 47, type: !1930, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1932)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!391}
!1932 = !{}
!1933 = !DILocation(line: 49, column: 16, scope: !1929)
!1934 = !DILocation(line: 49, column: 10, scope: !1929)
!1935 = !DILocation(line: 49, column: 3, scope: !1929)
!1936 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1911, file: !1911, line: 56, type: !1937, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1990)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!391, !1939}
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1941, line: 7, baseType: !1942)
!1941 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1943, line: 49, size: 1728, elements: !1944)
!1943 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1944 = !{!1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1960, !1962, !1963, !1964, !1967, !1969, !1970, !1971, !1974, !1976, !1979, !1982, !1983, !1984, !1985, !1986}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1942, file: !1943, line: 51, baseType: !391, size: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1942, file: !1943, line: 54, baseType: !393, size: 64, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1942, file: !1943, line: 55, baseType: !393, size: 64, offset: 128)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1942, file: !1943, line: 56, baseType: !393, size: 64, offset: 192)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1942, file: !1943, line: 57, baseType: !393, size: 64, offset: 256)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1942, file: !1943, line: 58, baseType: !393, size: 64, offset: 320)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1942, file: !1943, line: 59, baseType: !393, size: 64, offset: 384)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1942, file: !1943, line: 60, baseType: !393, size: 64, offset: 448)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1942, file: !1943, line: 61, baseType: !393, size: 64, offset: 512)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1942, file: !1943, line: 64, baseType: !393, size: 64, offset: 576)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1942, file: !1943, line: 65, baseType: !393, size: 64, offset: 640)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1942, file: !1943, line: 66, baseType: !393, size: 64, offset: 704)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1942, file: !1943, line: 68, baseType: !1958, size: 64, offset: 768)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1943, line: 36, flags: DIFlagFwdDecl)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1942, file: !1943, line: 70, baseType: !1961, size: 64, offset: 832)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1942, file: !1943, line: 72, baseType: !391, size: 32, offset: 896)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1942, file: !1943, line: 73, baseType: !391, size: 32, offset: 928)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1942, file: !1943, line: 74, baseType: !1965, size: 64, offset: 960)
!1965 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1966, line: 152, baseType: !401)
!1966 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1942, file: !1943, line: 77, baseType: !1968, size: 16, offset: 1024)
!1968 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1942, file: !1943, line: 78, baseType: !1338, size: 8, offset: 1040)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1942, file: !1943, line: 79, baseType: !696, size: 8, offset: 1048)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1942, file: !1943, line: 81, baseType: !1972, size: 64, offset: 1088)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1943, line: 43, baseType: null)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1942, file: !1943, line: 89, baseType: !1975, size: 64, offset: 1152)
!1975 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1966, line: 153, baseType: !401)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1942, file: !1943, line: 91, baseType: !1977, size: 64, offset: 1216)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1943, line: 37, flags: DIFlagFwdDecl)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1942, file: !1943, line: 92, baseType: !1980, size: 64, offset: 1280)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1943, line: 38, flags: DIFlagFwdDecl)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1942, file: !1943, line: 93, baseType: !1961, size: 64, offset: 1344)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1942, file: !1943, line: 94, baseType: !395, size: 64, offset: 1408)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1942, file: !1943, line: 95, baseType: !918, size: 64, offset: 1472)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1942, file: !1943, line: 96, baseType: !391, size: 32, offset: 1536)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1942, file: !1943, line: 98, baseType: !1987, size: 160, offset: 1568)
!1987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 160, elements: !1988)
!1988 = !{!1989}
!1989 = !DISubrange(count: 20)
!1990 = !{!1991}
!1991 = !DILocalVariable(name: "__fp", arg: 1, scope: !1936, file: !1911, line: 56, type: !1939)
!1992 = !DILocation(line: 0, scope: !1936)
!1993 = !DILocation(line: 58, column: 10, scope: !1936)
!1994 = !DILocation(line: 58, column: 3, scope: !1936)
!1995 = distinct !DISubprogram(name: "getc_unlocked", scope: !1911, file: !1911, line: 66, type: !1937, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1996)
!1996 = !{!1997}
!1997 = !DILocalVariable(name: "__fp", arg: 1, scope: !1995, file: !1911, line: 66, type: !1939)
!1998 = !DILocation(line: 0, scope: !1995)
!1999 = !DILocation(line: 68, column: 10, scope: !1995)
!2000 = !DILocation(line: 68, column: 3, scope: !1995)
!2001 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1911, file: !1911, line: 73, type: !1930, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1932)
!2002 = !DILocation(line: 75, column: 10, scope: !2001)
!2003 = !DILocation(line: 75, column: 3, scope: !2001)
!2004 = distinct !DISubprogram(name: "putchar", scope: !1911, file: !1911, line: 82, type: !2005, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2007)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!391, !391}
!2007 = !{!2008}
!2008 = !DILocalVariable(name: "__c", arg: 1, scope: !2004, file: !1911, line: 82, type: !391)
!2009 = !DILocation(line: 0, scope: !2004)
!2010 = !DILocation(line: 84, column: 21, scope: !2004)
!2011 = !DILocation(line: 84, column: 10, scope: !2004)
!2012 = !DILocation(line: 84, column: 3, scope: !2004)
!2013 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1911, file: !1911, line: 91, type: !2014, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2016)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!391, !391, !1939}
!2016 = !{!2017, !2018}
!2017 = !DILocalVariable(name: "__c", arg: 1, scope: !2013, file: !1911, line: 91, type: !391)
!2018 = !DILocalVariable(name: "__stream", arg: 2, scope: !2013, file: !1911, line: 91, type: !1939)
!2019 = !DILocation(line: 0, scope: !2013)
!2020 = !DILocation(line: 93, column: 10, scope: !2013)
!2021 = !DILocation(line: 93, column: 3, scope: !2013)
!2022 = distinct !DISubprogram(name: "putc_unlocked", scope: !1911, file: !1911, line: 101, type: !2014, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2023)
!2023 = !{!2024, !2025}
!2024 = !DILocalVariable(name: "__c", arg: 1, scope: !2022, file: !1911, line: 101, type: !391)
!2025 = !DILocalVariable(name: "__stream", arg: 2, scope: !2022, file: !1911, line: 101, type: !1939)
!2026 = !DILocation(line: 0, scope: !2022)
!2027 = !DILocation(line: 103, column: 10, scope: !2022)
!2028 = !DILocation(line: 103, column: 3, scope: !2022)
!2029 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1911, file: !1911, line: 108, type: !2005, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2030)
!2030 = !{!2031}
!2031 = !DILocalVariable(name: "__c", arg: 1, scope: !2029, file: !1911, line: 108, type: !391)
!2032 = !DILocation(line: 0, scope: !2029)
!2033 = !DILocation(line: 110, column: 10, scope: !2029)
!2034 = !DILocation(line: 110, column: 3, scope: !2029)
!2035 = distinct !DISubprogram(name: "getline", scope: !1911, file: !1911, line: 118, type: !2036, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2040)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!2038, !392, !2039, !1939}
!2038 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1966, line: 193, baseType: !401)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!2040 = !{!2041, !2042, !2043}
!2041 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2035, file: !1911, line: 118, type: !392)
!2042 = !DILocalVariable(name: "__n", arg: 2, scope: !2035, file: !1911, line: 118, type: !2039)
!2043 = !DILocalVariable(name: "__stream", arg: 3, scope: !2035, file: !1911, line: 118, type: !1939)
!2044 = !DILocation(line: 0, scope: !2035)
!2045 = !DILocation(line: 120, column: 10, scope: !2035)
!2046 = !DILocation(line: 120, column: 3, scope: !2035)
!2047 = distinct !DISubprogram(name: "feof_unlocked", scope: !1911, file: !1911, line: 128, type: !1937, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2048)
!2048 = !{!2049}
!2049 = !DILocalVariable(name: "__stream", arg: 1, scope: !2047, file: !1911, line: 128, type: !1939)
!2050 = !DILocation(line: 0, scope: !2047)
!2051 = !DILocation(line: 130, column: 10, scope: !2047)
!2052 = !DILocation(line: 130, column: 3, scope: !2047)
!2053 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1911, file: !1911, line: 135, type: !1937, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2054)
!2054 = !{!2055}
!2055 = !DILocalVariable(name: "__stream", arg: 1, scope: !2053, file: !1911, line: 135, type: !1939)
!2056 = !DILocation(line: 0, scope: !2053)
!2057 = !DILocation(line: 137, column: 10, scope: !2053)
!2058 = !DILocation(line: 137, column: 3, scope: !2053)
!2059 = distinct !DISubprogram(name: "tolower", scope: !2060, file: !2060, line: 207, type: !2005, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2061)
!2060 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2061 = !{!2062}
!2062 = !DILocalVariable(name: "__c", arg: 1, scope: !2059, file: !2060, line: 207, type: !391)
!2063 = !DILocation(line: 0, scope: !2059)
!2064 = !DILocation(line: 209, column: 22, scope: !2059)
!2065 = !DILocation(line: 209, column: 39, scope: !2059)
!2066 = !DILocation(line: 209, column: 38, scope: !2059)
!2067 = !DILocation(line: 209, column: 37, scope: !2059)
!2068 = !DILocation(line: 209, column: 10, scope: !2059)
!2069 = !DILocation(line: 209, column: 3, scope: !2059)
!2070 = distinct !DISubprogram(name: "toupper", scope: !2060, file: !2060, line: 213, type: !2005, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2071)
!2071 = !{!2072}
!2072 = !DILocalVariable(name: "__c", arg: 1, scope: !2070, file: !2060, line: 213, type: !391)
!2073 = !DILocation(line: 0, scope: !2070)
!2074 = !DILocation(line: 215, column: 22, scope: !2070)
!2075 = !DILocation(line: 215, column: 39, scope: !2070)
!2076 = !DILocation(line: 215, column: 38, scope: !2070)
!2077 = !DILocation(line: 215, column: 37, scope: !2070)
!2078 = !DILocation(line: 215, column: 10, scope: !2070)
!2079 = !DILocation(line: 215, column: 3, scope: !2070)
!2080 = distinct !DISubprogram(name: "atoi", scope: !2081, file: !2081, line: 361, type: !2082, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2084)
!2081 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!391, !396}
!2084 = !{!2085}
!2085 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2080, file: !2081, line: 361, type: !396)
!2086 = !DILocation(line: 0, scope: !2080)
!2087 = !DILocation(line: 363, column: 16, scope: !2080)
!2088 = !DILocation(line: 363, column: 10, scope: !2080)
!2089 = !DILocation(line: 363, column: 3, scope: !2080)
!2090 = distinct !DISubprogram(name: "atol", scope: !2081, file: !2081, line: 366, type: !2091, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2093)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!401, !396}
!2093 = !{!2094}
!2094 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2090, file: !2081, line: 366, type: !396)
!2095 = !DILocation(line: 0, scope: !2090)
!2096 = !DILocation(line: 368, column: 10, scope: !2090)
!2097 = !DILocation(line: 368, column: 3, scope: !2090)
!2098 = distinct !DISubprogram(name: "atoll", scope: !2081, file: !2081, line: 373, type: !2099, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2102)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!2101, !396}
!2101 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2102 = !{!2103}
!2103 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2098, file: !2081, line: 373, type: !396)
!2104 = !DILocation(line: 0, scope: !2098)
!2105 = !DILocation(line: 375, column: 10, scope: !2098)
!2106 = !DILocation(line: 375, column: 3, scope: !2098)
!2107 = distinct !DISubprogram(name: "bsearch", scope: !2108, file: !2108, line: 20, type: !2109, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2112)
!2108 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!395, !906, !906, !918, !918, !2111}
!2111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2081, line: 808, baseType: !910)
!2112 = !{!2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122}
!2113 = !DILocalVariable(name: "__key", arg: 1, scope: !2107, file: !2108, line: 20, type: !906)
!2114 = !DILocalVariable(name: "__base", arg: 2, scope: !2107, file: !2108, line: 20, type: !906)
!2115 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2107, file: !2108, line: 20, type: !918)
!2116 = !DILocalVariable(name: "__size", arg: 4, scope: !2107, file: !2108, line: 20, type: !918)
!2117 = !DILocalVariable(name: "__compar", arg: 5, scope: !2107, file: !2108, line: 21, type: !2111)
!2118 = !DILocalVariable(name: "__l", scope: !2107, file: !2108, line: 23, type: !918)
!2119 = !DILocalVariable(name: "__u", scope: !2107, file: !2108, line: 23, type: !918)
!2120 = !DILocalVariable(name: "__idx", scope: !2107, file: !2108, line: 23, type: !918)
!2121 = !DILocalVariable(name: "__p", scope: !2107, file: !2108, line: 24, type: !906)
!2122 = !DILocalVariable(name: "__comparison", scope: !2107, file: !2108, line: 25, type: !391)
!2123 = !DILocation(line: 0, scope: !2107)
!2124 = !DILocation(line: 29, column: 3, scope: !2107)
!2125 = !DILocation(line: 27, column: 7, scope: !2107)
!2126 = !DILocation(line: 29, column: 14, scope: !2107)
!2127 = !DILocation(line: 31, column: 20, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2107, file: !2108, line: 30, column: 5)
!2129 = !DILocation(line: 31, column: 27, scope: !2128)
!2130 = !DILocation(line: 32, column: 56, scope: !2128)
!2131 = !DILocation(line: 32, column: 47, scope: !2128)
!2132 = !DILocation(line: 33, column: 22, scope: !2128)
!2133 = !DILocation(line: 34, column: 24, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2128, file: !2108, line: 34, column: 11)
!2135 = !DILocation(line: 34, column: 11, scope: !2128)
!2136 = !DILocation(line: 36, column: 29, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2134, file: !2108, line: 36, column: 16)
!2138 = !DILocation(line: 36, column: 16, scope: !2134)
!2139 = !DILocation(line: 37, column: 14, scope: !2137)
!2140 = distinct !{!2140, !2124, !2141}
!2141 = !DILocation(line: 40, column: 5, scope: !2107)
!2142 = !DILocation(line: 43, column: 1, scope: !2107)
!2143 = distinct !DISubprogram(name: "atof", scope: !2144, file: !2144, line: 25, type: !2145, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2148)
!2144 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!2147, !396}
!2147 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2148 = !{!2149}
!2149 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2143, file: !2144, line: 25, type: !396)
!2150 = !DILocation(line: 0, scope: !2143)
!2151 = !DILocation(line: 27, column: 10, scope: !2143)
!2152 = !DILocation(line: 27, column: 3, scope: !2143)
!2153 = distinct !DISubprogram(name: "strtoimax", scope: !2154, file: !2154, line: 324, type: !2155, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2161)
!2154 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!2157, !1914, !2160, !391}
!2157 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2158, line: 101, baseType: !2159)
!2158 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1966, line: 72, baseType: !401)
!2160 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !392)
!2161 = !{!2162, !2163, !2164}
!2162 = !DILocalVariable(name: "nptr", arg: 1, scope: !2153, file: !2154, line: 324, type: !1914)
!2163 = !DILocalVariable(name: "endptr", arg: 2, scope: !2153, file: !2154, line: 324, type: !2160)
!2164 = !DILocalVariable(name: "base", arg: 3, scope: !2153, file: !2154, line: 324, type: !391)
!2165 = !DILocation(line: 0, scope: !2153)
!2166 = !DILocation(line: 327, column: 10, scope: !2153)
!2167 = !DILocation(line: 327, column: 3, scope: !2153)
!2168 = distinct !DISubprogram(name: "strtoumax", scope: !2154, file: !2154, line: 336, type: !2169, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2173)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!2171, !1914, !2160, !391}
!2171 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2158, line: 102, baseType: !2172)
!2172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1966, line: 73, baseType: !556)
!2173 = !{!2174, !2175, !2176}
!2174 = !DILocalVariable(name: "nptr", arg: 1, scope: !2168, file: !2154, line: 336, type: !1914)
!2175 = !DILocalVariable(name: "endptr", arg: 2, scope: !2168, file: !2154, line: 336, type: !2160)
!2176 = !DILocalVariable(name: "base", arg: 3, scope: !2168, file: !2154, line: 336, type: !391)
!2177 = !DILocation(line: 0, scope: !2168)
!2178 = !DILocation(line: 339, column: 10, scope: !2168)
!2179 = !DILocation(line: 339, column: 3, scope: !2168)
!2180 = distinct !DISubprogram(name: "wcstoimax", scope: !2154, file: !2154, line: 348, type: !2181, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2190)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!2157, !2183, !2187, !391}
!2183 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2184)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2186)
!2186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2154, line: 34, baseType: !391)
!2187 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2188)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2190 = !{!2191, !2192, !2193}
!2191 = !DILocalVariable(name: "nptr", arg: 1, scope: !2180, file: !2154, line: 348, type: !2183)
!2192 = !DILocalVariable(name: "endptr", arg: 2, scope: !2180, file: !2154, line: 348, type: !2187)
!2193 = !DILocalVariable(name: "base", arg: 3, scope: !2180, file: !2154, line: 348, type: !391)
!2194 = !DILocation(line: 0, scope: !2180)
!2195 = !DILocation(line: 351, column: 10, scope: !2180)
!2196 = !DILocation(line: 351, column: 3, scope: !2180)
!2197 = distinct !DISubprogram(name: "wcstoumax", scope: !2154, file: !2154, line: 362, type: !2198, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2200)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!2171, !2183, !2187, !391}
!2200 = !{!2201, !2202, !2203}
!2201 = !DILocalVariable(name: "nptr", arg: 1, scope: !2197, file: !2154, line: 362, type: !2183)
!2202 = !DILocalVariable(name: "endptr", arg: 2, scope: !2197, file: !2154, line: 362, type: !2187)
!2203 = !DILocalVariable(name: "base", arg: 3, scope: !2197, file: !2154, line: 362, type: !391)
!2204 = !DILocation(line: 0, scope: !2197)
!2205 = !DILocation(line: 365, column: 10, scope: !2197)
!2206 = !DILocation(line: 365, column: 3, scope: !2197)
!2207 = distinct !DISubprogram(name: "stat", scope: !2208, file: !2208, line: 453, type: !2209, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2246)
!2208 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!391, !396, !2211}
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2213, line: 46, size: 1152, elements: !2214)
!2213 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2214 = !{!2215, !2217, !2219, !2221, !2223, !2225, !2227, !2228, !2229, !2230, !2232, !2234, !2242, !2243, !2244}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2212, file: !2213, line: 48, baseType: !2216, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1966, line: 145, baseType: !556)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2212, file: !2213, line: 53, baseType: !2218, size: 64, offset: 64)
!2218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1966, line: 148, baseType: !556)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2212, file: !2213, line: 61, baseType: !2220, size: 64, offset: 128)
!2220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1966, line: 151, baseType: !556)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2212, file: !2213, line: 62, baseType: !2222, size: 32, offset: 192)
!2222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1966, line: 150, baseType: !5)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2212, file: !2213, line: 64, baseType: !2224, size: 32, offset: 224)
!2224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1966, line: 146, baseType: !5)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2212, file: !2213, line: 65, baseType: !2226, size: 32, offset: 256)
!2226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1966, line: 147, baseType: !5)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2212, file: !2213, line: 67, baseType: !391, size: 32, offset: 288)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2212, file: !2213, line: 69, baseType: !2216, size: 64, offset: 320)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2212, file: !2213, line: 74, baseType: !1965, size: 64, offset: 384)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2212, file: !2213, line: 78, baseType: !2231, size: 64, offset: 448)
!2231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1966, line: 174, baseType: !401)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2212, file: !2213, line: 80, baseType: !2233, size: 64, offset: 512)
!2233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1966, line: 179, baseType: !401)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2212, file: !2213, line: 91, baseType: !2235, size: 128, offset: 576)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2236, line: 10, size: 128, elements: !2237)
!2236 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2237 = !{!2238, !2240}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2235, file: !2236, line: 12, baseType: !2239, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1966, line: 160, baseType: !401)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2235, file: !2236, line: 16, baseType: !2241, size: 64, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1966, line: 196, baseType: !401)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2212, file: !2213, line: 92, baseType: !2235, size: 128, offset: 704)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2212, file: !2213, line: 93, baseType: !2235, size: 128, offset: 832)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2212, file: !2213, line: 106, baseType: !2245, size: 192, offset: 960)
!2245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2241, size: 192, elements: !672)
!2246 = !{!2247, !2248}
!2247 = !DILocalVariable(name: "__path", arg: 1, scope: !2207, file: !2208, line: 453, type: !396)
!2248 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2207, file: !2208, line: 453, type: !2211)
!2249 = !DILocation(line: 0, scope: !2207)
!2250 = !DILocation(line: 455, column: 10, scope: !2207)
!2251 = !DILocation(line: 455, column: 3, scope: !2207)
!2252 = distinct !DISubprogram(name: "lstat", scope: !2208, file: !2208, line: 460, type: !2209, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2253)
!2253 = !{!2254, !2255}
!2254 = !DILocalVariable(name: "__path", arg: 1, scope: !2252, file: !2208, line: 460, type: !396)
!2255 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2252, file: !2208, line: 460, type: !2211)
!2256 = !DILocation(line: 0, scope: !2252)
!2257 = !DILocation(line: 462, column: 10, scope: !2252)
!2258 = !DILocation(line: 462, column: 3, scope: !2252)
!2259 = distinct !DISubprogram(name: "fstat", scope: !2208, file: !2208, line: 467, type: !2260, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2262)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!391, !391, !2211}
!2262 = !{!2263, !2264}
!2263 = !DILocalVariable(name: "__fd", arg: 1, scope: !2259, file: !2208, line: 467, type: !391)
!2264 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2259, file: !2208, line: 467, type: !2211)
!2265 = !DILocation(line: 0, scope: !2259)
!2266 = !DILocation(line: 469, column: 10, scope: !2259)
!2267 = !DILocation(line: 469, column: 3, scope: !2259)
!2268 = distinct !DISubprogram(name: "fstatat", scope: !2208, file: !2208, line: 474, type: !2269, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2271)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!391, !391, !396, !2211, !391}
!2271 = !{!2272, !2273, !2274, !2275}
!2272 = !DILocalVariable(name: "__fd", arg: 1, scope: !2268, file: !2208, line: 474, type: !391)
!2273 = !DILocalVariable(name: "__filename", arg: 2, scope: !2268, file: !2208, line: 474, type: !396)
!2274 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2268, file: !2208, line: 474, type: !2211)
!2275 = !DILocalVariable(name: "__flag", arg: 4, scope: !2268, file: !2208, line: 474, type: !391)
!2276 = !DILocation(line: 0, scope: !2268)
!2277 = !DILocation(line: 477, column: 10, scope: !2268)
!2278 = !DILocation(line: 477, column: 3, scope: !2268)
!2279 = distinct !DISubprogram(name: "mknod", scope: !2208, file: !2208, line: 483, type: !2280, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2282)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!391, !396, !2222, !2216}
!2282 = !{!2283, !2284, !2285}
!2283 = !DILocalVariable(name: "__path", arg: 1, scope: !2279, file: !2208, line: 483, type: !396)
!2284 = !DILocalVariable(name: "__mode", arg: 2, scope: !2279, file: !2208, line: 483, type: !2222)
!2285 = !DILocalVariable(name: "__dev", arg: 3, scope: !2279, file: !2208, line: 483, type: !2216)
!2286 = !DILocation(line: 0, scope: !2279)
!2287 = !DILocation(line: 485, column: 10, scope: !2279)
!2288 = !DILocation(line: 485, column: 3, scope: !2279)
!2289 = distinct !DISubprogram(name: "mknodat", scope: !2208, file: !2208, line: 491, type: !2290, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2292)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!391, !391, !396, !2222, !2216}
!2292 = !{!2293, !2294, !2295, !2296}
!2293 = !DILocalVariable(name: "__fd", arg: 1, scope: !2289, file: !2208, line: 491, type: !391)
!2294 = !DILocalVariable(name: "__path", arg: 2, scope: !2289, file: !2208, line: 491, type: !396)
!2295 = !DILocalVariable(name: "__mode", arg: 3, scope: !2289, file: !2208, line: 491, type: !2222)
!2296 = !DILocalVariable(name: "__dev", arg: 4, scope: !2289, file: !2208, line: 491, type: !2216)
!2297 = !DILocation(line: 0, scope: !2289)
!2298 = !DILocation(line: 494, column: 10, scope: !2289)
!2299 = !DILocation(line: 494, column: 3, scope: !2289)
!2300 = distinct !DISubprogram(name: "stat64", scope: !2208, file: !2208, line: 502, type: !2301, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2323)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!391, !396, !2303}
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2213, line: 119, size: 1152, elements: !2305)
!2305 = !{!2306, !2307, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2319, !2320, !2321, !2322}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2304, file: !2213, line: 121, baseType: !2216, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2304, file: !2213, line: 123, baseType: !2308, size: 64, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1966, line: 149, baseType: !556)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2304, file: !2213, line: 124, baseType: !2220, size: 64, offset: 128)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2304, file: !2213, line: 125, baseType: !2222, size: 32, offset: 192)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2304, file: !2213, line: 132, baseType: !2224, size: 32, offset: 224)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2304, file: !2213, line: 133, baseType: !2226, size: 32, offset: 256)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2304, file: !2213, line: 135, baseType: !391, size: 32, offset: 288)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2304, file: !2213, line: 136, baseType: !2216, size: 64, offset: 320)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2304, file: !2213, line: 137, baseType: !1965, size: 64, offset: 384)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2304, file: !2213, line: 143, baseType: !2231, size: 64, offset: 448)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2304, file: !2213, line: 144, baseType: !2318, size: 64, offset: 512)
!2318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1966, line: 180, baseType: !401)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2304, file: !2213, line: 152, baseType: !2235, size: 128, offset: 576)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2304, file: !2213, line: 153, baseType: !2235, size: 128, offset: 704)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2304, file: !2213, line: 154, baseType: !2235, size: 128, offset: 832)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2304, file: !2213, line: 164, baseType: !2245, size: 192, offset: 960)
!2323 = !{!2324, !2325}
!2324 = !DILocalVariable(name: "__path", arg: 1, scope: !2300, file: !2208, line: 502, type: !396)
!2325 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2300, file: !2208, line: 502, type: !2303)
!2326 = !DILocation(line: 0, scope: !2300)
!2327 = !DILocation(line: 504, column: 10, scope: !2300)
!2328 = !DILocation(line: 504, column: 3, scope: !2300)
!2329 = distinct !DISubprogram(name: "lstat64", scope: !2208, file: !2208, line: 509, type: !2301, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2330)
!2330 = !{!2331, !2332}
!2331 = !DILocalVariable(name: "__path", arg: 1, scope: !2329, file: !2208, line: 509, type: !396)
!2332 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2329, file: !2208, line: 509, type: !2303)
!2333 = !DILocation(line: 0, scope: !2329)
!2334 = !DILocation(line: 511, column: 10, scope: !2329)
!2335 = !DILocation(line: 511, column: 3, scope: !2329)
!2336 = distinct !DISubprogram(name: "fstat64", scope: !2208, file: !2208, line: 516, type: !2337, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2339)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!391, !391, !2303}
!2339 = !{!2340, !2341}
!2340 = !DILocalVariable(name: "__fd", arg: 1, scope: !2336, file: !2208, line: 516, type: !391)
!2341 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2336, file: !2208, line: 516, type: !2303)
!2342 = !DILocation(line: 0, scope: !2336)
!2343 = !DILocation(line: 518, column: 10, scope: !2336)
!2344 = !DILocation(line: 518, column: 3, scope: !2336)
!2345 = distinct !DISubprogram(name: "fstatat64", scope: !2208, file: !2208, line: 523, type: !2346, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2348)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!391, !391, !396, !2303, !391}
!2348 = !{!2349, !2350, !2351, !2352}
!2349 = !DILocalVariable(name: "__fd", arg: 1, scope: !2345, file: !2208, line: 523, type: !391)
!2350 = !DILocalVariable(name: "__filename", arg: 2, scope: !2345, file: !2208, line: 523, type: !396)
!2351 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2345, file: !2208, line: 523, type: !2303)
!2352 = !DILocalVariable(name: "__flag", arg: 4, scope: !2345, file: !2208, line: 523, type: !391)
!2353 = !DILocation(line: 0, scope: !2345)
!2354 = !DILocation(line: 526, column: 10, scope: !2345)
!2355 = !DILocation(line: 526, column: 3, scope: !2345)
!2356 = distinct !DISubprogram(name: "perfect_loop_nest_depth", scope: !1, file: !1, line: 278, type: !2357, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2359)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!5, !1039}
!2359 = !{!2360, !2361, !2362}
!2360 = !DILocalVariable(name: "loop_nest", arg: 1, scope: !2356, file: !1, line: 278, type: !1039)
!2361 = !DILocalVariable(name: "temp", scope: !2356, file: !1, line: 280, type: !1039)
!2362 = !DILocalVariable(name: "depth", scope: !2356, file: !1, line: 281, type: !5)
!2363 = !DILocation(line: 0, scope: !2356)
!2364 = !DILocation(line: 299, column: 19, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2356, file: !1, line: 299, column: 7)
!2366 = !DILocation(line: 299, column: 8, scope: !2365)
!2367 = !DILocation(line: 299, column: 25, scope: !2365)
!2368 = !DILocation(line: 299, column: 29, scope: !2365)
!2369 = !DILocation(line: 299, column: 7, scope: !2356)
!2370 = !DILocation(line: 302, column: 8, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2356, file: !1, line: 302, column: 3)
!2372 = !DILocation(line: 0, scope: !2371)
!2373 = !DILocation(line: 302, column: 3, scope: !2371)
!2374 = !DILocation(line: 305, column: 17, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !1, line: 305, column: 11)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !1, line: 303, column: 5)
!2377 = distinct !DILexicalBlock(scope: !2371, file: !1, line: 302, column: 3)
!2378 = !DILocation(line: 305, column: 11, scope: !2375)
!2379 = !DILocation(line: 305, column: 22, scope: !2375)
!2380 = !DILocation(line: 305, column: 26, scope: !2375)
!2381 = !DILocation(line: 305, column: 11, scope: !2376)
!2382 = !DILocation(line: 308, column: 12, scope: !2376)
!2383 = !DILocation(line: 302, column: 3, scope: !2377)
!2384 = distinct !{!2384, !2373, !2385}
!2385 = !DILocation(line: 309, column: 5, scope: !2371)
!2386 = !DILocation(line: 312, column: 1, scope: !2356)
!2387 = distinct !DISubprogram(name: "linear_transform_loops", scope: !1, file: !1, line: 317, type: !2388, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2390)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{null}
!2390 = !{!2391, !2392, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2409, !2410, !2411, !2437, !2438, !2449, !2450, !2451, !2452}
!2391 = !DILocalVariable(name: "modified", scope: !2387, file: !1, line: 319, type: !390)
!2392 = !DILocalVariable(name: "li", scope: !2387, file: !1, line: 320, type: !2393)
!2393 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_iterator", file: !376, line: 515, baseType: !2394)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !376, line: 508, size: 128, elements: !2395)
!2395 = !{!2396, !2397}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "to_visit", scope: !2394, file: !376, line: 511, baseType: !1761, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2394, file: !376, line: 514, baseType: !5, size: 32, offset: 64)
!2398 = !DILocalVariable(name: "oldivs", scope: !2387, file: !1, line: 321, type: !1813)
!2399 = !DILocalVariable(name: "invariants", scope: !2387, file: !1, line: 322, type: !1813)
!2400 = !DILocalVariable(name: "lambda_parameters", scope: !2387, file: !1, line: 323, type: !1813)
!2401 = !DILocalVariable(name: "remove_ivs", scope: !2387, file: !1, line: 324, type: !407)
!2402 = !DILocalVariable(name: "loop_nest", scope: !2387, file: !1, line: 325, type: !1039)
!2403 = !DILocalVariable(name: "oldiv_stmt", scope: !2387, file: !1, line: 326, type: !420)
!2404 = !DILocalVariable(name: "i", scope: !2387, file: !1, line: 327, type: !5)
!2405 = !DILocalVariable(name: "depth", scope: !2406, file: !1, line: 331, type: !5)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !1, line: 330, column: 5)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !1, line: 329, column: 3)
!2408 = distinct !DILexicalBlock(scope: !2387, file: !1, line: 329, column: 3)
!2409 = !DILocalVariable(name: "dependence_relations", scope: !2406, file: !1, line: 332, type: !1846)
!2410 = !DILocalVariable(name: "datarefs", scope: !2406, file: !1, line: 333, type: !1779)
!2411 = !DILocalVariable(name: "before", scope: !2406, file: !1, line: 335, type: !2412)
!2412 = !DIDerivedType(tag: DW_TAG_typedef, name: "lambda_loopnest", file: !1833, line: 145, baseType: !2413)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lambda_loopnest_s", file: !1833, line: 140, size: 128, elements: !2415)
!2415 = !{!2416, !2435, !2436}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "loops", scope: !2414, file: !1833, line: 142, baseType: !2417, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_typedef, name: "lambda_loop", file: !1833, line: 127, baseType: !2419)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lambda_loop_s", file: !1833, line: 121, size: 256, elements: !2421)
!2421 = !{!2422, !2432, !2433, !2434}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "lower_bound", scope: !2420, file: !1833, line: 123, baseType: !2423, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_typedef, name: "lambda_linear_expression", file: !1833, line: 100, baseType: !2424)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lambda_linear_expression_s", file: !1833, line: 93, size: 320, elements: !2426)
!2426 = !{!2427, !2428, !2429, !2430, !2431}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "coefficients", scope: !2425, file: !1833, line: 95, baseType: !1844, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !2425, file: !1833, line: 96, baseType: !391, size: 32, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "invariant_coefficients", scope: !2425, file: !1833, line: 97, baseType: !1844, size: 64, offset: 128)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "denominator", scope: !2425, file: !1833, line: 98, baseType: !391, size: 32, offset: 192)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2425, file: !1833, line: 99, baseType: !2424, size: 64, offset: 256)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "upper_bound", scope: !2420, file: !1833, line: 124, baseType: !2423, size: 64, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "linear_offset", scope: !2420, file: !1833, line: 125, baseType: !2423, size: 64, offset: 128)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !2420, file: !1833, line: 126, baseType: !391, size: 32, offset: 192)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2414, file: !1833, line: 143, baseType: !391, size: 32, offset: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "invariants", scope: !2414, file: !1833, line: 144, baseType: !391, size: 32, offset: 96)
!2437 = !DILocalVariable(name: "after", scope: !2406, file: !1, line: 335, type: !2412)
!2438 = !DILocalVariable(name: "trans", scope: !2406, file: !1, line: 336, type: !2439)
!2439 = !DIDerivedType(tag: DW_TAG_typedef, name: "lambda_trans_matrix", file: !1833, line: 56, baseType: !2440)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lambda_trans_matrix_s", file: !1833, line: 50, size: 192, elements: !2442)
!2442 = !{!2443, !2446, !2447, !2448}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "matrix", scope: !2441, file: !1833, line: 52, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_typedef, name: "lambda_matrix", file: !1833, line: 42, baseType: !2445)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "rowsize", scope: !2441, file: !1833, line: 53, baseType: !391, size: 32, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "colsize", scope: !2441, file: !1833, line: 54, baseType: !391, size: 32, offset: 96)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "denominator", scope: !2441, file: !1833, line: 55, baseType: !391, size: 32, offset: 128)
!2449 = !DILocalVariable(name: "lambda_obstack", scope: !2406, file: !1, line: 337, type: !569)
!2450 = !DILocalVariable(name: "loop", scope: !2406, file: !1, line: 338, type: !1039)
!2451 = !DILocalVariable(name: "nest", scope: !2406, file: !1, line: 339, type: !1774)
!2452 = !DILabel(scope: !2406, name: "free_and_continue", file: !1, line: 416)
!2453 = !DILocation(line: 0, scope: !2387)
!2454 = !DILocation(line: 320, column: 3, scope: !2387)
!2455 = !DILocation(line: 321, column: 3, scope: !2387)
!2456 = !DILocation(line: 321, column: 19, scope: !2387)
!2457 = !DILocation(line: 322, column: 3, scope: !2387)
!2458 = !DILocation(line: 322, column: 19, scope: !2387)
!2459 = !DILocation(line: 323, column: 3, scope: !2387)
!2460 = !DILocation(line: 323, column: 19, scope: !2387)
!2461 = !DILocation(line: 324, column: 3, scope: !2387)
!2462 = !DILocation(line: 324, column: 34, scope: !2387)
!2463 = !DILocation(line: 324, column: 21, scope: !2387)
!2464 = !DILocation(line: 325, column: 3, scope: !2387)
!2465 = !DILocation(line: 326, column: 3, scope: !2387)
!2466 = !DILocation(line: 329, column: 3, scope: !2408)
!2467 = !DILocation(line: 0, scope: !2406)
!2468 = !DILocation(line: 319, column: 8, scope: !2387)
!2469 = !DILocation(line: 329, column: 3, scope: !2407)
!2470 = !DILocation(line: 423, column: 3, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2387, file: !1, line: 423, column: 3)
!2472 = !DILocation(line: 332, column: 7, scope: !2406)
!2473 = !DILocation(line: 333, column: 7, scope: !2406)
!2474 = !DILocation(line: 337, column: 7, scope: !2406)
!2475 = !DILocation(line: 339, column: 7, scope: !2406)
!2476 = !DILocation(line: 341, column: 15, scope: !2406)
!2477 = !DILocation(line: 342, column: 17, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2406, file: !1, line: 342, column: 11)
!2479 = !DILocation(line: 342, column: 11, scope: !2406)
!2480 = !DILocation(line: 345, column: 14, scope: !2406)
!2481 = !DILocation(line: 345, column: 12, scope: !2406)
!2482 = !DILocation(line: 346, column: 12, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2406, file: !1, line: 346, column: 7)
!2484 = !DILocation(line: 0, scope: !2483)
!2485 = !DILocation(line: 346, column: 7, scope: !2483)
!2486 = !DILocation(line: 347, column: 2, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2483, file: !1, line: 346, column: 7)
!2488 = !DILocation(line: 346, column: 49, scope: !2487)
!2489 = !DILocation(line: 346, column: 7, scope: !2487)
!2490 = distinct !{!2490, !2485, !2491}
!2491 = !DILocation(line: 347, column: 2, scope: !2483)
!2492 = !DILocation(line: 349, column: 7, scope: !2406)
!2493 = !DILocation(line: 350, column: 7, scope: !2406)
!2494 = !DILocation(line: 351, column: 7, scope: !2406)
!2495 = !DILocation(line: 352, column: 7, scope: !2406)
!2496 = !DILocation(line: 354, column: 18, scope: !2406)
!2497 = !DILocation(line: 354, column: 16, scope: !2406)
!2498 = !DILocation(line: 355, column: 30, scope: !2406)
!2499 = !DILocation(line: 355, column: 28, scope: !2406)
!2500 = !DILocation(line: 356, column: 47, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2406, file: !1, line: 356, column: 11)
!2502 = !DILocation(line: 356, column: 12, scope: !2501)
!2503 = !DILocation(line: 356, column: 11, scope: !2406)
!2504 = !DILocation(line: 360, column: 34, scope: !2406)
!2505 = !DILocation(line: 360, column: 7, scope: !2406)
!2506 = !DILocation(line: 361, column: 44, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2406, file: !1, line: 361, column: 11)
!2508 = !DILocation(line: 361, column: 54, scope: !2507)
!2509 = !DILocation(line: 361, column: 73, scope: !2507)
!2510 = !DILocation(line: 361, column: 12, scope: !2507)
!2511 = !DILocation(line: 361, column: 11, scope: !2406)
!2512 = !DILocation(line: 364, column: 11, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2406, file: !1, line: 364, column: 11)
!2514 = !DILocation(line: 364, column: 21, scope: !2513)
!2515 = !DILocation(line: 364, column: 25, scope: !2513)
!2516 = !DILocation(line: 364, column: 36, scope: !2513)
!2517 = !DILocation(line: 364, column: 11, scope: !2406)
!2518 = !DILocation(line: 365, column: 24, scope: !2513)
!2519 = !DILocation(line: 365, column: 2, scope: !2513)
!2520 = !DILocation(line: 368, column: 15, scope: !2406)
!2521 = !DILocation(line: 369, column: 25, scope: !2406)
!2522 = !DILocation(line: 369, column: 7, scope: !2406)
!2523 = !DILocation(line: 370, column: 52, scope: !2406)
!2524 = !DILocation(line: 371, column: 10, scope: !2406)
!2525 = !DILocation(line: 371, column: 20, scope: !2406)
!2526 = !DILocation(line: 370, column: 15, scope: !2406)
!2527 = !DILocation(line: 373, column: 11, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2406, file: !1, line: 373, column: 11)
!2529 = !DILocation(line: 373, column: 11, scope: !2406)
!2530 = !DILocation(line: 375, column: 8, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !1, line: 375, column: 8)
!2532 = distinct !DILexicalBlock(scope: !2528, file: !1, line: 374, column: 2)
!2533 = !DILocation(line: 375, column: 8, scope: !2532)
!2534 = !DILocation(line: 376, column: 5, scope: !2531)
!2535 = !DILocation(line: 381, column: 52, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2406, file: !1, line: 381, column: 11)
!2537 = !DILocation(line: 381, column: 12, scope: !2536)
!2538 = !DILocation(line: 381, column: 11, scope: !2406)
!2539 = !DILocation(line: 383, column: 8, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !1, line: 383, column: 8)
!2541 = distinct !DILexicalBlock(scope: !2536, file: !1, line: 382, column: 2)
!2542 = !DILocation(line: 383, column: 8, scope: !2541)
!2543 = !DILocation(line: 384, column: 6, scope: !2540)
!2544 = !DILocation(line: 388, column: 49, scope: !2406)
!2545 = !DILocation(line: 388, column: 16, scope: !2406)
!2546 = !DILocation(line: 391, column: 12, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2406, file: !1, line: 391, column: 11)
!2548 = !DILocation(line: 391, column: 11, scope: !2406)
!2549 = !DILocation(line: 394, column: 11, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2406, file: !1, line: 394, column: 11)
!2551 = !DILocation(line: 394, column: 11, scope: !2406)
!2552 = !DILocation(line: 396, column: 4, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2550, file: !1, line: 395, column: 2)
!2554 = !DILocation(line: 397, column: 27, scope: !2553)
!2555 = !DILocation(line: 397, column: 4, scope: !2553)
!2556 = !DILocation(line: 398, column: 2, scope: !2553)
!2557 = !DILocation(line: 400, column: 15, scope: !2406)
!2558 = !DILocation(line: 402, column: 11, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2406, file: !1, line: 402, column: 11)
!2560 = !DILocation(line: 402, column: 11, scope: !2406)
!2561 = !DILocation(line: 404, column: 4, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2559, file: !1, line: 403, column: 2)
!2563 = !DILocation(line: 405, column: 27, scope: !2562)
!2564 = !DILocation(line: 405, column: 4, scope: !2562)
!2565 = !DILocation(line: 406, column: 2, scope: !2562)
!2566 = !DILocation(line: 408, column: 40, scope: !2406)
!2567 = !DILocation(line: 408, column: 51, scope: !2406)
!2568 = !DILocation(line: 408, column: 59, scope: !2406)
!2569 = !DILocation(line: 408, column: 7, scope: !2406)
!2570 = !DILocation(line: 413, column: 11, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2406, file: !1, line: 413, column: 11)
!2572 = !DILocation(line: 413, column: 11, scope: !2406)
!2573 = !DILocation(line: 414, column: 2, scope: !2571)
!2574 = !DILocation(line: 416, column: 5, scope: !2406)
!2575 = !DILocation(line: 417, column: 7, scope: !2406)
!2576 = !DILocation(line: 418, column: 34, scope: !2406)
!2577 = !DILocation(line: 418, column: 7, scope: !2406)
!2578 = !DILocation(line: 419, column: 23, scope: !2406)
!2579 = !DILocation(line: 419, column: 7, scope: !2406)
!2580 = !DILocation(line: 420, column: 7, scope: !2406)
!2581 = !DILocation(line: 421, column: 5, scope: !2407)
!2582 = distinct !{!2582, !2466, !2583}
!2583 = !DILocation(line: 421, column: 5, scope: !2408)
!2584 = !DILocation(line: 0, scope: !2471)
!2585 = !DILocation(line: 423, column: 15, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2471, file: !1, line: 423, column: 3)
!2587 = !DILocation(line: 424, column: 16, scope: !2586)
!2588 = !DILocation(line: 424, column: 5, scope: !2586)
!2589 = !DILocation(line: 423, column: 65, scope: !2586)
!2590 = !DILocation(line: 423, column: 3, scope: !2586)
!2591 = distinct !{!2591, !2470, !2592}
!2592 = !DILocation(line: 424, column: 26, scope: !2471)
!2593 = !DILocation(line: 426, column: 3, scope: !2387)
!2594 = !DILocation(line: 427, column: 3, scope: !2387)
!2595 = !DILocation(line: 428, column: 3, scope: !2387)
!2596 = !DILocation(line: 429, column: 3, scope: !2387)
!2597 = !DILocation(line: 431, column: 7, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2387, file: !1, line: 431, column: 7)
!2599 = !DILocation(line: 431, column: 7, scope: !2387)
!2600 = !DILocation(line: 432, column: 5, scope: !2598)
!2601 = !DILocation(line: 433, column: 1, scope: !2387)
!2602 = distinct !DISubprogram(name: "VEC_gimple_heap_alloc", scope: !409, file: !409, line: 34, type: !2603, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2605)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!407, !391}
!2605 = !{!2606}
!2606 = !DILocalVariable(name: "alloc_", arg: 1, scope: !2602, file: !409, line: 34, type: !391)
!2607 = !DILocation(line: 0, scope: !2602)
!2608 = !DILocation(line: 34, column: 1, scope: !2602)
!2609 = distinct !DISubprogram(name: "fel_init", scope: !376, file: !376, line: 535, type: !2610, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2614)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{null, !2612, !2613, !5}
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!2614 = !{!2615, !2616, !2617, !2618, !2619, !2620}
!2615 = !DILocalVariable(name: "li", arg: 1, scope: !2609, file: !376, line: 535, type: !2612)
!2616 = !DILocalVariable(name: "loop", arg: 2, scope: !2609, file: !376, line: 535, type: !2613)
!2617 = !DILocalVariable(name: "flags", arg: 3, scope: !2609, file: !376, line: 535, type: !5)
!2618 = !DILocalVariable(name: "aloop", scope: !2609, file: !376, line: 537, type: !1039)
!2619 = !DILocalVariable(name: "i", scope: !2609, file: !376, line: 538, type: !5)
!2620 = !DILocalVariable(name: "mn", scope: !2609, file: !376, line: 539, type: !391)
!2621 = !DILocation(line: 0, scope: !2609)
!2622 = !DILocation(line: 541, column: 7, scope: !2609)
!2623 = !DILocation(line: 541, column: 11, scope: !2609)
!2624 = !DILocation(line: 542, column: 8, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2609, file: !376, line: 542, column: 7)
!2626 = !DILocation(line: 542, column: 7, scope: !2609)
!2627 = !DILocation(line: 544, column: 11, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2625, file: !376, line: 543, column: 5)
!2629 = !DILocation(line: 544, column: 20, scope: !2628)
!2630 = !DILocation(line: 545, column: 13, scope: !2628)
!2631 = !DILocation(line: 546, column: 7, scope: !2628)
!2632 = !DILocation(line: 549, column: 18, scope: !2609)
!2633 = !DILocation(line: 549, column: 7, scope: !2609)
!2634 = !DILocation(line: 549, column: 16, scope: !2609)
!2635 = !DILocation(line: 0, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !376, line: 560, column: 12)
!2637 = distinct !DILexicalBlock(scope: !2609, file: !376, line: 552, column: 7)
!2638 = !DILocation(line: 590, column: 7, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2636, file: !376, line: 587, column: 5)
!2640 = !DILocation(line: 592, column: 8, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2642, file: !376, line: 592, column: 8)
!2642 = distinct !DILexicalBlock(scope: !2639, file: !376, line: 591, column: 2)
!2643 = !DILocation(line: 592, column: 15, scope: !2641)
!2644 = !DILocation(line: 592, column: 19, scope: !2641)
!2645 = !DILocation(line: 592, column: 8, scope: !2642)
!2646 = !DILocation(line: 593, column: 6, scope: !2641)
!2647 = !DILocation(line: 595, column: 15, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2642, file: !376, line: 595, column: 8)
!2649 = !DILocation(line: 595, column: 21, scope: !2648)
!2650 = !DILocation(line: 595, column: 8, scope: !2642)
!2651 = !DILocation(line: 599, column: 8, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2648, file: !376, line: 598, column: 6)
!2653 = !DILocation(line: 596, column: 21, scope: !2648)
!2654 = !DILocation(line: 596, column: 6, scope: !2648)
!2655 = !DILocation(line: 599, column: 15, scope: !2652)
!2656 = !DILocation(line: 599, column: 21, scope: !2652)
!2657 = !DILocation(line: 599, column: 29, scope: !2652)
!2658 = !DILocation(line: 599, column: 39, scope: !2652)
!2659 = !DILocation(line: 599, column: 44, scope: !2652)
!2660 = !DILocation(line: 0, scope: !2652)
!2661 = !DILocation(line: 600, column: 11, scope: !2652)
!2662 = distinct !{!2662, !2651, !2663}
!2663 = !DILocation(line: 600, column: 28, scope: !2652)
!2664 = !DILocation(line: 601, column: 18, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2652, file: !376, line: 601, column: 12)
!2666 = !DILocation(line: 601, column: 12, scope: !2652)
!2667 = !DILocation(line: 603, column: 23, scope: !2652)
!2668 = distinct !{!2668, !2638, !2669}
!2669 = !DILocation(line: 605, column: 2, scope: !2639)
!2670 = !DILocation(line: 608, column: 3, scope: !2609)
!2671 = !DILocation(line: 609, column: 1, scope: !2609)
!2672 = distinct !DISubprogram(name: "VEC_loop_p_heap_alloc", scope: !376, file: !376, line: 86, type: !2673, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2675)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!1774, !391}
!2675 = !{!2676}
!2676 = !DILocalVariable(name: "alloc_", arg: 1, scope: !2672, file: !376, line: 86, type: !391)
!2677 = !DILocation(line: 0, scope: !2672)
!2678 = !DILocation(line: 86, column: 1, scope: !2672)
!2679 = distinct !DISubprogram(name: "VEC_loop_p_heap_safe_push", scope: !376, file: !376, line: 86, type: !2680, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2683)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!2613, !2682, !1038}
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!2683 = !{!2684, !2685}
!2684 = !DILocalVariable(name: "vec_", arg: 1, scope: !2679, file: !376, line: 86, type: !2682)
!2685 = !DILocalVariable(name: "obj_", arg: 2, scope: !2679, file: !376, line: 86, type: !1038)
!2686 = !DILocation(line: 0, scope: !2679)
!2687 = !DILocation(line: 86, column: 1, scope: !2679)
!2688 = distinct !DISubprogram(name: "VEC_tree_base_truncate", scope: !149, file: !149, line: 182, type: !2689, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2692)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{null, !2691, !5}
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!2692 = !{!2693, !2694}
!2693 = !DILocalVariable(name: "vec_", arg: 1, scope: !2688, file: !149, line: 182, type: !2691)
!2694 = !DILocalVariable(name: "size_", arg: 2, scope: !2688, file: !149, line: 182, type: !5)
!2695 = !DILocation(line: 0, scope: !2688)
!2696 = !DILocation(line: 182, column: 1, scope: !2688)
!2697 = !DILocation(line: 182, column: 1, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2688, file: !149, line: 182, column: 1)
!2699 = distinct !DISubprogram(name: "VEC_data_reference_p_heap_alloc", scope: !1781, file: !1781, line: 209, type: !2700, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2702)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!1779, !391}
!2702 = !{!2703}
!2703 = !DILocalVariable(name: "alloc_", arg: 1, scope: !2699, file: !1781, line: 209, type: !391)
!2704 = !DILocation(line: 0, scope: !2699)
!2705 = !DILocation(line: 209, column: 1, scope: !2699)
!2706 = distinct !DISubprogram(name: "VEC_ddr_p_heap_alloc", scope: !1781, file: !1781, line: 333, type: !2707, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2709)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!1846, !391}
!2709 = !{!2710}
!2710 = !DILocalVariable(name: "alloc_", arg: 1, scope: !2706, file: !1781, line: 333, type: !391)
!2711 = !DILocation(line: 0, scope: !2706)
!2712 = !DILocation(line: 333, column: 1, scope: !2706)
!2713 = distinct !DISubprogram(name: "try_interchange_loops", scope: !1, file: !1, line: 175, type: !2714, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2716)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!2439, !2439, !5, !1846, !1779, !1039}
!2716 = !{!2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737}
!2717 = !DILocalVariable(name: "trans", arg: 1, scope: !2713, file: !1, line: 175, type: !2439)
!2718 = !DILocalVariable(name: "depth", arg: 2, scope: !2713, file: !1, line: 176, type: !5)
!2719 = !DILocalVariable(name: "dependence_relations", arg: 3, scope: !2713, file: !1, line: 177, type: !1846)
!2720 = !DILocalVariable(name: "datarefs", arg: 4, scope: !2713, file: !1, line: 178, type: !1779)
!2721 = !DILocalVariable(name: "first_loop", arg: 5, scope: !2713, file: !1, line: 179, type: !1039)
!2722 = !DILocalVariable(name: "res", scope: !2713, file: !1, line: 181, type: !390)
!2723 = !DILocalVariable(name: "loop_i", scope: !2713, file: !1, line: 182, type: !1039)
!2724 = !DILocalVariable(name: "loop_j", scope: !2713, file: !1, line: 183, type: !1039)
!2725 = !DILocalVariable(name: "dependence_steps_i", scope: !2713, file: !1, line: 184, type: !5)
!2726 = !DILocalVariable(name: "dependence_steps_j", scope: !2713, file: !1, line: 184, type: !5)
!2727 = !DILocalVariable(name: "access_strides_i", scope: !2713, file: !1, line: 185, type: !649)
!2728 = !DILocalVariable(name: "access_strides_j", scope: !2713, file: !1, line: 185, type: !649)
!2729 = !DILocalVariable(name: "small", scope: !2713, file: !1, line: 186, type: !649)
!2730 = !DILocalVariable(name: "large", scope: !2713, file: !1, line: 186, type: !649)
!2731 = !DILocalVariable(name: "nb_iter", scope: !2713, file: !1, line: 186, type: !649)
!2732 = !DILocalVariable(name: "l1_cache_size", scope: !2713, file: !1, line: 187, type: !649)
!2733 = !DILocalVariable(name: "l2_cache_size", scope: !2713, file: !1, line: 187, type: !649)
!2734 = !DILocalVariable(name: "cmp", scope: !2713, file: !1, line: 188, type: !391)
!2735 = !DILocalVariable(name: "nb_deps_not_carried_by_i", scope: !2713, file: !1, line: 189, type: !5)
!2736 = !DILocalVariable(name: "nb_deps_not_carried_by_j", scope: !2713, file: !1, line: 189, type: !5)
!2737 = !DILocalVariable(name: "ddr", scope: !2713, file: !1, line: 190, type: !1859)
!2738 = !DILocation(line: 0, scope: !2713)
!2739 = !DILocation(line: 184, column: 3, scope: !2713)
!2740 = !DILocation(line: 185, column: 3, scope: !2713)
!2741 = !DILocation(line: 186, column: 3, scope: !2713)
!2742 = !DILocation(line: 187, column: 3, scope: !2713)
!2743 = !DILocation(line: 189, column: 3, scope: !2713)
!2744 = !DILocation(line: 192, column: 7, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2713, file: !1, line: 192, column: 7)
!2746 = !DILocation(line: 192, column: 48, scope: !2745)
!2747 = !DILocation(line: 192, column: 7, scope: !2713)
!2748 = !DILocation(line: 197, column: 9, scope: !2713)
!2749 = !DILocation(line: 198, column: 11, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2713, file: !1, line: 198, column: 7)
!2751 = !DILocation(line: 198, column: 19, scope: !2750)
!2752 = !DILocation(line: 198, column: 22, scope: !2750)
!2753 = !DILocation(line: 198, column: 49, scope: !2750)
!2754 = !DILocation(line: 198, column: 46, scope: !2750)
!2755 = !DILocation(line: 198, column: 7, scope: !2713)
!2756 = !DILocation(line: 201, column: 19, scope: !2713)
!2757 = !DILocation(line: 201, column: 39, scope: !2713)
!2758 = !DILocation(line: 201, column: 53, scope: !2713)
!2759 = !DILocation(line: 202, column: 19, scope: !2713)
!2760 = !DILocation(line: 202, column: 39, scope: !2713)
!2761 = !DILocation(line: 202, column: 53, scope: !2713)
!2762 = !DILocation(line: 0, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2764, file: !1, line: 211, column: 7)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !1, line: 208, column: 5)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !1, line: 208, column: 5)
!2766 = distinct !DILexicalBlock(scope: !2767, file: !1, line: 205, column: 3)
!2767 = distinct !DILexicalBlock(scope: !2713, file: !1, line: 205, column: 3)
!2768 = !DILocation(line: 0, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2763, file: !1, line: 243, column: 6)
!2770 = !DILocation(line: 0, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2763, file: !1, line: 250, column: 6)
!2772 = !DILocation(line: 0, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !1, line: 258, column: 4)
!2774 = distinct !DILexicalBlock(scope: !2763, file: !1, line: 255, column: 6)
!2775 = !DILocation(line: 205, column: 8, scope: !2767)
!2776 = !DILocation(line: 0, scope: !2767)
!2777 = !DILocation(line: 205, column: 3, scope: !2767)
!2778 = !DILocation(line: 208, column: 5, scope: !2765)
!2779 = !DILocation(line: 0, scope: !2765)
!2780 = !DILocation(line: 209, column: 3, scope: !2764)
!2781 = !DILocation(line: 209, column: 25, scope: !2764)
!2782 = !DILocation(line: 209, column: 23, scope: !2764)
!2783 = !DILocation(line: 212, column: 2, scope: !2763)
!2784 = !DILocation(line: 217, column: 2, scope: !2763)
!2785 = !DILocation(line: 239, column: 8, scope: !2763)
!2786 = !DILocation(line: 240, column: 14, scope: !2763)
!2787 = !DILocation(line: 240, column: 10, scope: !2763)
!2788 = !DILocation(line: 240, column: 20, scope: !2763)
!2789 = !DILocation(line: 240, column: 39, scope: !2763)
!2790 = !DILocation(line: 241, column: 10, scope: !2763)
!2791 = !DILocation(line: 241, column: 20, scope: !2763)
!2792 = !DILocation(line: 241, column: 39, scope: !2763)
!2793 = !DILocation(line: 243, column: 6, scope: !2769)
!2794 = !DILocation(line: 243, column: 45, scope: !2769)
!2795 = !DILocation(line: 243, column: 6, scope: !2763)
!2796 = !DILocation(line: 246, column: 8, scope: !2763)
!2797 = !DILocation(line: 247, column: 4, scope: !2763)
!2798 = !DILocation(line: 248, column: 4, scope: !2763)
!2799 = !DILocation(line: 250, column: 6, scope: !2771)
!2800 = !DILocation(line: 251, column: 6, scope: !2771)
!2801 = !DILocation(line: 251, column: 26, scope: !2771)
!2802 = !DILocation(line: 251, column: 9, scope: !2771)
!2803 = !DILocation(line: 252, column: 20, scope: !2771)
!2804 = !DILocation(line: 250, column: 6, scope: !2763)
!2805 = !DILocation(line: 255, column: 6, scope: !2774)
!2806 = !DILocation(line: 255, column: 27, scope: !2774)
!2807 = !DILocation(line: 255, column: 25, scope: !2774)
!2808 = !DILocation(line: 256, column: 6, scope: !2774)
!2809 = !DILocation(line: 256, column: 9, scope: !2774)
!2810 = !DILocation(line: 256, column: 36, scope: !2774)
!2811 = !DILocation(line: 256, column: 34, scope: !2774)
!2812 = !DILocation(line: 257, column: 6, scope: !2774)
!2813 = !DILocation(line: 259, column: 34, scope: !2773)
!2814 = !DILocation(line: 260, column: 6, scope: !2773)
!2815 = !DILocation(line: 260, column: 28, scope: !2773)
!2816 = !DILocation(line: 260, column: 26, scope: !2773)
!2817 = !DILocation(line: 261, column: 6, scope: !2773)
!2818 = !DILocation(line: 261, column: 28, scope: !2773)
!2819 = !DILocation(line: 261, column: 26, scope: !2773)
!2820 = !DILocation(line: 259, column: 6, scope: !2773)
!2821 = !DILocation(line: 264, column: 11, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2773, file: !1, line: 264, column: 10)
!2823 = !DILocation(line: 264, column: 10, scope: !2773)
!2824 = !DILocation(line: 265, column: 36, scope: !2822)
!2825 = !DILocation(line: 266, column: 8, scope: !2822)
!2826 = !DILocation(line: 266, column: 30, scope: !2822)
!2827 = !DILocation(line: 266, column: 28, scope: !2822)
!2828 = !DILocation(line: 267, column: 8, scope: !2822)
!2829 = !DILocation(line: 267, column: 30, scope: !2822)
!2830 = !DILocation(line: 267, column: 28, scope: !2822)
!2831 = !DILocation(line: 265, column: 8, scope: !2822)
!2832 = !DILocation(line: 210, column: 20, scope: !2764)
!2833 = !DILocation(line: 208, column: 5, scope: !2764)
!2834 = distinct !{!2834, !2778, !2835}
!2835 = !DILocation(line: 269, column: 7, scope: !2765)
!2836 = !DILocation(line: 205, column: 3, scope: !2766)
!2837 = distinct !{!2837, !2777, !2838}
!2838 = !DILocation(line: 269, column: 7, scope: !2767)
!2839 = !DILocation(line: 272, column: 1, scope: !2713)
!2840 = distinct !DISubprogram(name: "VEC_loop_p_heap_free", scope: !376, file: !376, line: 86, type: !2841, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2843)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{null, !2682}
!2843 = !{!2844}
!2844 = !DILocalVariable(name: "vec_", arg: 1, scope: !2840, file: !376, line: 86, type: !2682)
!2845 = !DILocation(line: 0, scope: !2840)
!2846 = !DILocation(line: 86, column: 1, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2840, file: !376, line: 86, column: 1)
!2848 = !DILocation(line: 86, column: 1, scope: !2840)
!2849 = distinct !DISubprogram(name: "fel_next", scope: !376, file: !376, line: 518, type: !2850, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2852)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{null, !2612, !2613}
!2852 = !{!2853, !2854, !2855}
!2853 = !DILocalVariable(name: "li", arg: 1, scope: !2849, file: !376, line: 518, type: !2612)
!2854 = !DILocalVariable(name: "loop", arg: 2, scope: !2849, file: !376, line: 518, type: !2613)
!2855 = !DILocalVariable(name: "anum", scope: !2849, file: !376, line: 520, type: !391)
!2856 = !DILocation(line: 0, scope: !2849)
!2857 = !DILocation(line: 520, column: 3, scope: !2849)
!2858 = !DILocation(line: 522, column: 3, scope: !2849)
!2859 = !DILocation(line: 522, column: 10, scope: !2849)
!2860 = !DILocation(line: 524, column: 14, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2849, file: !376, line: 523, column: 5)
!2862 = !DILocation(line: 525, column: 25, scope: !2861)
!2863 = !DILocation(line: 525, column: 15, scope: !2861)
!2864 = !DILocation(line: 525, column: 13, scope: !2861)
!2865 = !DILocation(line: 526, column: 11, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2861, file: !376, line: 526, column: 11)
!2867 = !DILocation(line: 526, column: 11, scope: !2861)
!2868 = distinct !{!2868, !2858, !2869}
!2869 = !DILocation(line: 528, column: 5, scope: !2849)
!2870 = !DILocation(line: 530, column: 3, scope: !2849)
!2871 = !DILocation(line: 531, column: 9, scope: !2849)
!2872 = !DILocation(line: 532, column: 1, scope: !2849)
!2873 = distinct !DISubprogram(name: "VEC_gimple_base_iterate", scope: !409, file: !409, line: 33, type: !2874, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2879)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!391, !2876, !5, !2878}
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!2879 = !{!2880, !2881, !2882}
!2880 = !DILocalVariable(name: "vec_", arg: 1, scope: !2873, file: !409, line: 33, type: !2876)
!2881 = !DILocalVariable(name: "ix_", arg: 2, scope: !2873, file: !409, line: 33, type: !5)
!2882 = !DILocalVariable(name: "ptr", arg: 3, scope: !2873, file: !409, line: 33, type: !2878)
!2883 = !DILocation(line: 0, scope: !2873)
!2884 = !DILocation(line: 33, column: 1, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2873, file: !409, line: 33, column: 1)
!2886 = !DILocation(line: 33, column: 1, scope: !2873)
!2887 = !DILocation(line: 33, column: 1, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2885, file: !409, line: 33, column: 1)
!2889 = !DILocation(line: 33, column: 1, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2885, file: !409, line: 33, column: 1)
!2891 = !DILocation(line: 0, scope: !2885)
!2892 = distinct !DISubprogram(name: "VEC_tree_heap_free", scope: !149, file: !149, line: 184, type: !2893, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2896)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{null, !2895}
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!2896 = !{!2897}
!2897 = !DILocalVariable(name: "vec_", arg: 1, scope: !2892, file: !149, line: 184, type: !2895)
!2898 = !DILocation(line: 0, scope: !2892)
!2899 = !DILocation(line: 184, column: 1, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2892, file: !149, line: 184, column: 1)
!2901 = !DILocation(line: 184, column: 1, scope: !2892)
!2902 = distinct !DISubprogram(name: "VEC_gimple_heap_free", scope: !409, file: !409, line: 34, type: !2903, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2906)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{null, !2905}
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!2906 = !{!2907}
!2907 = !DILocalVariable(name: "vec_", arg: 1, scope: !2902, file: !409, line: 34, type: !2905)
!2908 = !DILocation(line: 0, scope: !2902)
!2909 = !DILocation(line: 34, column: 1, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2902, file: !409, line: 34, column: 1)
!2911 = !DILocation(line: 34, column: 1, scope: !2902)
!2912 = distinct !DISubprogram(name: "VEC_int_heap_alloc", scope: !1763, file: !1763, line: 32, type: !2913, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2915)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!1761, !391}
!2915 = !{!2916}
!2916 = !DILocalVariable(name: "alloc_", arg: 1, scope: !2912, file: !1763, line: 32, type: !391)
!2917 = !DILocation(line: 0, scope: !2912)
!2918 = !DILocation(line: 32, column: 1, scope: !2912)
!2919 = distinct !DISubprogram(name: "number_of_loops", scope: !376, file: !376, line: 459, type: !2920, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1932)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!5}
!2922 = !DILocation(line: 461, column: 8, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2919, file: !376, line: 461, column: 7)
!2924 = !DILocation(line: 461, column: 7, scope: !2919)
!2925 = !DILocation(line: 464, column: 10, scope: !2919)
!2926 = !DILocation(line: 464, column: 3, scope: !2919)
!2927 = !DILocation(line: 0, scope: !2919)
!2928 = !DILocation(line: 465, column: 1, scope: !2919)
!2929 = distinct !DISubprogram(name: "VEC_loop_p_base_iterate", scope: !376, file: !376, line: 85, type: !2930, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2934)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!391, !2932, !5, !2613}
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1031)
!2934 = !{!2935, !2936, !2937}
!2935 = !DILocalVariable(name: "vec_", arg: 1, scope: !2929, file: !376, line: 85, type: !2932)
!2936 = !DILocalVariable(name: "ix_", arg: 2, scope: !2929, file: !376, line: 85, type: !5)
!2937 = !DILocalVariable(name: "ptr", arg: 3, scope: !2929, file: !376, line: 85, type: !2613)
!2938 = !DILocation(line: 0, scope: !2929)
!2939 = !DILocation(line: 85, column: 1, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2929, file: !376, line: 85, column: 1)
!2941 = !DILocation(line: 85, column: 1, scope: !2929)
!2942 = !DILocation(line: 85, column: 1, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2940, file: !376, line: 85, column: 1)
!2944 = !DILocation(line: 85, column: 1, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2940, file: !376, line: 85, column: 1)
!2946 = !DILocation(line: 0, scope: !2940)
!2947 = distinct !DISubprogram(name: "VEC_int_base_quick_push", scope: !1763, file: !1763, line: 31, type: !2948, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2951)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!1845, !2950, !391}
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!2951 = !{!2952, !2953, !2954}
!2952 = !DILocalVariable(name: "vec_", arg: 1, scope: !2947, file: !1763, line: 31, type: !2950)
!2953 = !DILocalVariable(name: "obj_", arg: 2, scope: !2947, file: !1763, line: 31, type: !391)
!2954 = !DILocalVariable(name: "slot_", scope: !2947, file: !1763, line: 31, type: !1845)
!2955 = !DILocation(line: 0, scope: !2947)
!2956 = !DILocation(line: 31, column: 1, scope: !2947)
!2957 = distinct !DISubprogram(name: "loop_outer", scope: !376, file: !376, line: 434, type: !2958, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2962)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!1039, !2960}
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1040)
!2962 = !{!2963, !2964}
!2963 = !DILocalVariable(name: "loop", arg: 1, scope: !2957, file: !376, line: 434, type: !2960)
!2964 = !DILocalVariable(name: "n", scope: !2957, file: !376, line: 436, type: !5)
!2965 = !DILocation(line: 0, scope: !2957)
!2966 = !DILocation(line: 436, column: 16, scope: !2957)
!2967 = !DILocation(line: 438, column: 9, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2957, file: !376, line: 438, column: 7)
!2969 = !DILocation(line: 438, column: 7, scope: !2957)
!2970 = !DILocation(line: 441, column: 10, scope: !2957)
!2971 = !DILocation(line: 441, column: 3, scope: !2957)
!2972 = !DILocation(line: 442, column: 1, scope: !2957)
!2973 = distinct !DISubprogram(name: "VEC_loop_p_base_length", scope: !376, file: !376, line: 85, type: !2974, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2976)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!5, !2932}
!2976 = !{!2977}
!2977 = !DILocalVariable(name: "vec_", arg: 1, scope: !2973, file: !376, line: 85, type: !2932)
!2978 = !DILocation(line: 0, scope: !2973)
!2979 = !DILocation(line: 85, column: 1, scope: !2973)
!2980 = distinct !DISubprogram(name: "VEC_loop_p_base_index", scope: !376, file: !376, line: 85, type: !2981, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2983)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!1038, !2932, !5}
!2983 = !{!2984, !2985}
!2984 = !DILocalVariable(name: "vec_", arg: 1, scope: !2980, file: !376, line: 85, type: !2932)
!2985 = !DILocalVariable(name: "ix_", arg: 2, scope: !2980, file: !376, line: 85, type: !5)
!2986 = !DILocation(line: 0, scope: !2980)
!2987 = !DILocation(line: 85, column: 1, scope: !2980)
!2988 = distinct !DISubprogram(name: "VEC_loop_p_heap_reserve", scope: !376, file: !376, line: 86, type: !2989, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2991)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!391, !2682, !391}
!2991 = !{!2992, !2993, !2994}
!2992 = !DILocalVariable(name: "vec_", arg: 1, scope: !2988, file: !376, line: 86, type: !2682)
!2993 = !DILocalVariable(name: "alloc_", arg: 2, scope: !2988, file: !376, line: 86, type: !391)
!2994 = !DILocalVariable(name: "extend", scope: !2988, file: !376, line: 86, type: !391)
!2995 = !DILocation(line: 0, scope: !2988)
!2996 = !DILocation(line: 86, column: 1, scope: !2988)
!2997 = !DILocation(line: 86, column: 1, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2988, file: !376, line: 86, column: 1)
!2999 = distinct !DISubprogram(name: "VEC_loop_p_base_quick_push", scope: !376, file: !376, line: 85, type: !3000, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3003)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!2613, !3002, !1038}
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!3003 = !{!3004, !3005, !3006}
!3004 = !DILocalVariable(name: "vec_", arg: 1, scope: !2999, file: !376, line: 85, type: !3002)
!3005 = !DILocalVariable(name: "obj_", arg: 2, scope: !2999, file: !376, line: 85, type: !1038)
!3006 = !DILocalVariable(name: "slot_", scope: !2999, file: !376, line: 85, type: !2613)
!3007 = !DILocation(line: 0, scope: !2999)
!3008 = !DILocation(line: 85, column: 1, scope: !2999)
!3009 = distinct !DISubprogram(name: "VEC_loop_p_base_space", scope: !376, file: !376, line: 85, type: !3010, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3012)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!391, !3002, !391}
!3012 = !{!3013, !3014}
!3013 = !DILocalVariable(name: "vec_", arg: 1, scope: !3009, file: !376, line: 85, type: !3002)
!3014 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3009, file: !376, line: 85, type: !391)
!3015 = !DILocation(line: 0, scope: !3009)
!3016 = !DILocation(line: 85, column: 1, scope: !3009)
!3017 = distinct !DISubprogram(name: "VEC_ddr_p_base_length", scope: !1781, file: !1781, line: 332, type: !3018, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3022)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!5, !3020}
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1851)
!3022 = !{!3023}
!3023 = !DILocalVariable(name: "vec_", arg: 1, scope: !3017, file: !1781, line: 332, type: !3020)
!3024 = !DILocation(line: 0, scope: !3017)
!3025 = !DILocation(line: 332, column: 1, scope: !3017)
!3026 = distinct !DISubprogram(name: "VEC_ddr_p_base_index", scope: !1781, file: !1781, line: 332, type: !3027, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3029)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!1858, !3020, !5}
!3029 = !{!3030, !3031}
!3030 = !DILocalVariable(name: "vec_", arg: 1, scope: !3026, file: !1781, line: 332, type: !3020)
!3031 = !DILocalVariable(name: "ix_", arg: 2, scope: !3026, file: !1781, line: 332, type: !5)
!3032 = !DILocation(line: 0, scope: !3026)
!3033 = !DILocation(line: 332, column: 1, scope: !3026)
!3034 = distinct !DISubprogram(name: "uhwi_to_double_int", scope: !650, file: !650, line: 94, type: !3035, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3037)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!649, !556}
!3037 = !{!3038, !3039}
!3038 = !DILocalVariable(name: "cst", arg: 1, scope: !3034, file: !650, line: 94, type: !556)
!3039 = !DILocalVariable(name: "r", scope: !3034, file: !650, line: 96, type: !649)
!3040 = !DILocation(line: 0, scope: !3034)
!3041 = !DILocation(line: 101, column: 3, scope: !3034)
!3042 = distinct !DISubprogram(name: "loop_depth", scope: !376, file: !376, line: 425, type: !3043, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3045)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!5, !2960}
!3045 = !{!3046}
!3046 = !DILocalVariable(name: "loop", arg: 1, scope: !3042, file: !376, line: 425, type: !2960)
!3047 = !DILocation(line: 0, scope: !3042)
!3048 = !DILocation(line: 427, column: 10, scope: !3042)
!3049 = !DILocation(line: 427, column: 3, scope: !3042)
!3050 = distinct !DISubprogram(name: "gather_interchange_stats", scope: !1, file: !1, line: 93, type: !3051, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3055)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{null, !1846, !1779, !1039, !1039, !3053, !3053, !3054}
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!3055 = !{!3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3074, !3078, !3079, !3080, !3081, !3082, !3086, !3087, !3088}
!3056 = !DILocalVariable(name: "dependence_relations", arg: 1, scope: !3050, file: !1, line: 93, type: !1846)
!3057 = !DILocalVariable(name: "datarefs", arg: 2, scope: !3050, file: !1, line: 94, type: !1779)
!3058 = !DILocalVariable(name: "loop", arg: 3, scope: !3050, file: !1, line: 95, type: !1039)
!3059 = !DILocalVariable(name: "first_loop", arg: 4, scope: !3050, file: !1, line: 96, type: !1039)
!3060 = !DILocalVariable(name: "dependence_steps", arg: 5, scope: !3050, file: !1, line: 97, type: !3053)
!3061 = !DILocalVariable(name: "nb_deps_not_carried_by_loop", arg: 6, scope: !3050, file: !1, line: 98, type: !3053)
!3062 = !DILocalVariable(name: "access_strides", arg: 7, scope: !3050, file: !1, line: 99, type: !3054)
!3063 = !DILocalVariable(name: "i", scope: !3050, file: !1, line: 101, type: !5)
!3064 = !DILocalVariable(name: "j", scope: !3050, file: !1, line: 101, type: !5)
!3065 = !DILocalVariable(name: "ddr", scope: !3050, file: !1, line: 102, type: !1859)
!3066 = !DILocalVariable(name: "dr", scope: !3050, file: !1, line: 103, type: !1793)
!3067 = !DILocalVariable(name: "dist", scope: !3068, file: !1, line: 121, type: !391)
!3068 = distinct !DILexicalBlock(scope: !3069, file: !1, line: 120, column: 2)
!3069 = distinct !DILexicalBlock(scope: !3070, file: !1, line: 119, column: 7)
!3070 = distinct !DILexicalBlock(scope: !3071, file: !1, line: 119, column: 7)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !1, line: 110, column: 5)
!3072 = distinct !DILexicalBlock(scope: !3073, file: !1, line: 109, column: 3)
!3073 = distinct !DILexicalBlock(scope: !3050, file: !1, line: 109, column: 3)
!3074 = !DILocalVariable(name: "it", scope: !3075, file: !1, line: 137, type: !5)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !1, line: 136, column: 5)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !1, line: 135, column: 3)
!3077 = distinct !DILexicalBlock(scope: !3050, file: !1, line: 135, column: 3)
!3078 = !DILocalVariable(name: "ref", scope: !3075, file: !1, line: 138, type: !601)
!3079 = !DILocalVariable(name: "stmt", scope: !3075, file: !1, line: 139, type: !420)
!3080 = !DILocalVariable(name: "stmt_loop", scope: !3075, file: !1, line: 140, type: !1039)
!3081 = !DILocalVariable(name: "inner_loop", scope: !3075, file: !1, line: 141, type: !1039)
!3082 = !DILocalVariable(name: "num", scope: !3083, file: !1, line: 150, type: !391)
!3083 = distinct !DILexicalBlock(scope: !3084, file: !1, line: 149, column: 2)
!3084 = distinct !DILexicalBlock(scope: !3085, file: !1, line: 147, column: 7)
!3085 = distinct !DILexicalBlock(scope: !3075, file: !1, line: 147, column: 7)
!3086 = !DILocalVariable(name: "istride", scope: !3083, file: !1, line: 151, type: !391)
!3087 = !DILocalVariable(name: "array_size", scope: !3083, file: !1, line: 152, type: !601)
!3088 = !DILocalVariable(name: "dstride", scope: !3083, file: !1, line: 153, type: !649)
!3089 = !DILocation(line: 0, scope: !3050)
!3090 = !DILocation(line: 102, column: 3, scope: !3050)
!3091 = !DILocation(line: 103, column: 3, scope: !3050)
!3092 = !DILocation(line: 105, column: 21, scope: !3050)
!3093 = !DILocation(line: 106, column: 32, scope: !3050)
!3094 = !DILocation(line: 107, column: 21, scope: !3050)
!3095 = !DILocation(line: 0, scope: !3072)
!3096 = !DILocation(line: 109, column: 8, scope: !3073)
!3097 = !DILocation(line: 0, scope: !3073)
!3098 = !DILocation(line: 109, column: 15, scope: !3072)
!3099 = !DILocation(line: 109, column: 3, scope: !3073)
!3100 = !DILocation(line: 0, scope: !3076)
!3101 = !DILocation(line: 0, scope: !3075)
!3102 = !DILocation(line: 0, scope: !3083)
!3103 = !DILocation(line: 135, column: 3, scope: !3077)
!3104 = !DILocation(line: 114, column: 11, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3071, file: !1, line: 114, column: 11)
!3106 = !DILocation(line: 114, column: 38, scope: !3105)
!3107 = !DILocation(line: 114, column: 35, scope: !3105)
!3108 = !DILocation(line: 115, column: 4, scope: !3105)
!3109 = !DILocation(line: 115, column: 34, scope: !3105)
!3110 = !DILocation(line: 115, column: 31, scope: !3105)
!3111 = !DILocation(line: 116, column: 4, scope: !3105)
!3112 = !DILocation(line: 116, column: 7, scope: !3105)
!3113 = !DILocation(line: 116, column: 32, scope: !3105)
!3114 = !DILocation(line: 114, column: 11, scope: !3071)
!3115 = !DILocation(line: 119, column: 7, scope: !3070)
!3116 = !DILocation(line: 0, scope: !3070)
!3117 = !DILocation(line: 119, column: 23, scope: !3069)
!3118 = !DILocation(line: 119, column: 21, scope: !3069)
!3119 = !DILocation(line: 121, column: 15, scope: !3068)
!3120 = !DILocation(line: 121, column: 38, scope: !3068)
!3121 = !DILocation(line: 121, column: 58, scope: !3068)
!3122 = !DILocation(line: 121, column: 56, scope: !3068)
!3123 = !DILocation(line: 0, scope: !3068)
!3124 = !DILocation(line: 123, column: 13, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3068, file: !1, line: 123, column: 8)
!3126 = !DILocation(line: 123, column: 8, scope: !3068)
!3127 = !DILocation(line: 124, column: 37, scope: !3125)
!3128 = !DILocation(line: 124, column: 6, scope: !3125)
!3129 = !DILocation(line: 126, column: 18, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3125, file: !1, line: 126, column: 13)
!3131 = !DILocation(line: 126, column: 13, scope: !3125)
!3132 = !DILocation(line: 127, column: 26, scope: !3130)
!3133 = !DILocation(line: 127, column: 6, scope: !3130)
!3134 = !DILocation(line: 130, column: 26, scope: !3130)
!3135 = !DILocation(line: 119, column: 50, scope: !3069)
!3136 = !DILocation(line: 119, column: 7, scope: !3069)
!3137 = distinct !{!3137, !3115, !3138}
!3138 = !DILocation(line: 131, column: 2, scope: !3070)
!3139 = !DILocation(line: 109, column: 67, scope: !3072)
!3140 = !DILocation(line: 109, column: 3, scope: !3072)
!3141 = distinct !{!3141, !3099, !3142}
!3142 = !DILocation(line: 132, column: 5, scope: !3073)
!3143 = !DILocation(line: 0, scope: !3077)
!3144 = !DILocation(line: 135, column: 15, scope: !3076)
!3145 = !DILocation(line: 138, column: 18, scope: !3075)
!3146 = !DILocation(line: 139, column: 21, scope: !3075)
!3147 = !DILocation(line: 140, column: 32, scope: !3075)
!3148 = !DILocation(line: 141, column: 45, scope: !3075)
!3149 = !DILocation(line: 143, column: 22, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3075, file: !1, line: 143, column: 11)
!3151 = !DILocation(line: 144, column: 4, scope: !3150)
!3152 = !DILocation(line: 144, column: 8, scope: !3150)
!3153 = !DILocation(line: 143, column: 11, scope: !3075)
!3154 = !DILocation(line: 147, column: 12, scope: !3085)
!3155 = !DILocation(line: 0, scope: !3085)
!3156 = !DILocation(line: 147, column: 25, scope: !3084)
!3157 = !DILocation(line: 147, column: 23, scope: !3084)
!3158 = !DILocation(line: 147, column: 7, scope: !3085)
!3159 = !DILocation(line: 150, column: 40, scope: !3083)
!3160 = !DILocation(line: 150, column: 69, scope: !3083)
!3161 = !DILocation(line: 150, column: 14, scope: !3083)
!3162 = !DILocation(line: 151, column: 18, scope: !3083)
!3163 = !DILocation(line: 152, column: 22, scope: !3083)
!3164 = !DILocation(line: 153, column: 4, scope: !3083)
!3165 = !DILocation(line: 155, column: 19, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3083, file: !1, line: 155, column: 8)
!3167 = !DILocation(line: 156, column: 8, scope: !3166)
!3168 = !DILocation(line: 156, column: 11, scope: !3166)
!3169 = !DILocation(line: 156, column: 34, scope: !3166)
!3170 = !DILocation(line: 155, column: 8, scope: !3083)
!3171 = !DILocation(line: 159, column: 14, scope: !3083)
!3172 = !DILocation(line: 159, column: 30, scope: !3083)
!3173 = !DILocation(line: 160, column: 29, scope: !3083)
!3174 = !DILocation(line: 160, column: 9, scope: !3083)
!3175 = !DILocation(line: 161, column: 24, scope: !3083)
!3176 = !DILocation(line: 162, column: 2, scope: !3084)
!3177 = !DILocation(line: 148, column: 7, scope: !3084)
!3178 = !DILocation(line: 148, column: 17, scope: !3084)
!3179 = !DILocation(line: 147, column: 7, scope: !3084)
!3180 = distinct !{!3180, !3158, !3181}
!3181 = !DILocation(line: 162, column: 2, scope: !3085)
!3182 = !DILocation(line: 135, column: 65, scope: !3076)
!3183 = !DILocation(line: 135, column: 3, scope: !3076)
!3184 = distinct !{!3184, !3103, !3185}
!3185 = !DILocation(line: 163, column: 5, scope: !3077)
!3186 = !DILocation(line: 164, column: 1, scope: !3050)
!3187 = distinct !DISubprogram(name: "shwi_to_double_int", scope: !650, file: !650, line: 72, type: !3188, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3190)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!649, !401}
!3190 = !{!3191, !3192}
!3191 = !DILocalVariable(name: "cst", arg: 1, scope: !3187, file: !650, line: 72, type: !401)
!3192 = !DILocalVariable(name: "r", scope: !3187, file: !650, line: 74, type: !649)
!3193 = !DILocation(line: 0, scope: !3187)
!3194 = !DILocation(line: 77, column: 12, scope: !3187)
!3195 = !DILocation(line: 79, column: 3, scope: !3187)
!3196 = distinct !DISubprogram(name: "VEC_ddr_p_base_iterate", scope: !1781, file: !1781, line: 332, type: !3197, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3200)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!391, !3020, !5, !3199}
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!3200 = !{!3201, !3202, !3203}
!3201 = !DILocalVariable(name: "vec_", arg: 1, scope: !3196, file: !1781, line: 332, type: !3020)
!3202 = !DILocalVariable(name: "ix_", arg: 2, scope: !3196, file: !1781, line: 332, type: !5)
!3203 = !DILocalVariable(name: "ptr", arg: 3, scope: !3196, file: !1781, line: 332, type: !3199)
!3204 = !DILocation(line: 0, scope: !3196)
!3205 = !DILocation(line: 332, column: 1, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3196, file: !1781, line: 332, column: 1)
!3207 = !DILocation(line: 332, column: 1, scope: !3196)
!3208 = !DILocation(line: 332, column: 1, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3206, file: !1781, line: 332, column: 1)
!3210 = !DILocation(line: 332, column: 1, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3206, file: !1781, line: 332, column: 1)
!3212 = !DILocation(line: 0, scope: !3206)
!3213 = distinct !DISubprogram(name: "VEC_lambda_vector_base_length", scope: !1833, file: !1833, line: 32, type: !3214, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3218)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!5, !3216}
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1837)
!3218 = !{!3219}
!3219 = !DILocalVariable(name: "vec_", arg: 1, scope: !3213, file: !1833, line: 32, type: !3216)
!3220 = !DILocation(line: 0, scope: !3213)
!3221 = !DILocation(line: 32, column: 1, scope: !3213)
!3222 = distinct !DISubprogram(name: "VEC_lambda_vector_base_index", scope: !1833, file: !1833, line: 32, type: !3223, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3225)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!1844, !3216, !5}
!3225 = !{!3226, !3227}
!3226 = !DILocalVariable(name: "vec_", arg: 1, scope: !3222, file: !1833, line: 32, type: !3216)
!3227 = !DILocalVariable(name: "ix_", arg: 2, scope: !3222, file: !1833, line: 32, type: !5)
!3228 = !DILocation(line: 0, scope: !3222)
!3229 = !DILocation(line: 32, column: 1, scope: !3222)
!3230 = distinct !DISubprogram(name: "VEC_data_reference_p_base_iterate", scope: !1781, file: !1781, line: 208, type: !3231, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3236)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!391, !3233, !5, !3235}
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1785)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!3236 = !{!3237, !3238, !3239}
!3237 = !DILocalVariable(name: "vec_", arg: 1, scope: !3230, file: !1781, line: 208, type: !3233)
!3238 = !DILocalVariable(name: "ix_", arg: 2, scope: !3230, file: !1781, line: 208, type: !5)
!3239 = !DILocalVariable(name: "ptr", arg: 3, scope: !3230, file: !1781, line: 208, type: !3235)
!3240 = !DILocation(line: 0, scope: !3230)
!3241 = !DILocation(line: 208, column: 1, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3230, file: !1781, line: 208, column: 1)
!3243 = !DILocation(line: 208, column: 1, scope: !3230)
!3244 = !DILocation(line: 208, column: 1, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3242, file: !1781, line: 208, column: 1)
!3246 = !DILocation(line: 208, column: 1, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3242, file: !1781, line: 208, column: 1)
!3248 = !DILocation(line: 0, scope: !3242)
!3249 = distinct !DISubprogram(name: "loop_containing_stmt", scope: !3250, file: !3250, line: 617, type: !3251, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3253)
!3250 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!1039, !420}
!3253 = !{!3254, !3255}
!3254 = !DILocalVariable(name: "stmt", arg: 1, scope: !3249, file: !3250, line: 617, type: !420)
!3255 = !DILocalVariable(name: "bb", scope: !3249, file: !3250, line: 619, type: !863)
!3256 = !DILocation(line: 0, scope: !3249)
!3257 = !DILocation(line: 619, column: 20, scope: !3249)
!3258 = !DILocation(line: 620, column: 8, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3249, file: !3250, line: 620, column: 7)
!3260 = !DILocation(line: 620, column: 7, scope: !3249)
!3261 = !DILocation(line: 623, column: 14, scope: !3249)
!3262 = !DILocation(line: 623, column: 3, scope: !3249)
!3263 = !DILocation(line: 624, column: 1, scope: !3249)
!3264 = distinct !DISubprogram(name: "VEC_tree_base_length", scope: !149, file: !149, line: 182, type: !3265, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3269)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!5, !3267}
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !954)
!3269 = !{!3270}
!3270 = !DILocalVariable(name: "vec_", arg: 1, scope: !3264, file: !149, line: 182, type: !3267)
!3271 = !DILocation(line: 0, scope: !3264)
!3272 = !DILocation(line: 182, column: 1, scope: !3264)
!3273 = distinct !DISubprogram(name: "am_vector_index_for_loop", scope: !1781, file: !1781, line: 148, type: !3274, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3276)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!391, !1824, !391}
!3276 = !{!3277, !3278, !3279, !3280}
!3277 = !DILocalVariable(name: "access_matrix", arg: 1, scope: !3273, file: !1781, line: 148, type: !1824)
!3278 = !DILocalVariable(name: "loop_num", arg: 2, scope: !3273, file: !1781, line: 148, type: !391)
!3279 = !DILocalVariable(name: "i", scope: !3273, file: !1781, line: 150, type: !391)
!3280 = !DILocalVariable(name: "l", scope: !3273, file: !1781, line: 151, type: !1038)
!3281 = !DILocation(line: 0, scope: !3273)
!3282 = !DILocation(line: 151, column: 3, scope: !3273)
!3283 = !DILocation(line: 0, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3285, file: !1781, line: 153, column: 3)
!3285 = distinct !DILexicalBlock(scope: !3273, file: !1781, line: 153, column: 3)
!3286 = !DILocation(line: 153, column: 8, scope: !3285)
!3287 = !DILocation(line: 0, scope: !3285)
!3288 = !DILocation(line: 153, column: 15, scope: !3284)
!3289 = !DILocation(line: 153, column: 3, scope: !3285)
!3290 = !DILocation(line: 154, column: 9, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3284, file: !1781, line: 154, column: 9)
!3292 = !DILocation(line: 154, column: 12, scope: !3291)
!3293 = !DILocation(line: 154, column: 16, scope: !3291)
!3294 = !DILocation(line: 154, column: 9, scope: !3284)
!3295 = !DILocation(line: 153, column: 74, scope: !3284)
!3296 = !DILocation(line: 153, column: 3, scope: !3284)
!3297 = distinct !{!3297, !3289, !3298}
!3298 = !DILocation(line: 155, column: 14, scope: !3285)
!3299 = !DILocation(line: 157, column: 3, scope: !3273)
!3300 = !DILocation(line: 159, column: 5, scope: !3273)
!3301 = !DILocation(line: 161, column: 1, scope: !3273)
!3302 = distinct !DISubprogram(name: "gimple_bb", scope: !409, file: !409, line: 1112, type: !3303, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3308)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!445, !3305}
!3305 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !421, line: 60, baseType: !3306)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!3308 = !{!3309}
!3309 = !DILocalVariable(name: "g", arg: 1, scope: !3302, file: !409, line: 1112, type: !3305)
!3310 = !DILocation(line: 0, scope: !3302)
!3311 = !DILocation(line: 1114, column: 20, scope: !3302)
!3312 = !DILocation(line: 1114, column: 3, scope: !3302)
!3313 = distinct !DISubprogram(name: "VEC_int_base_iterate", scope: !1763, file: !1763, line: 31, type: !3314, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3318)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!391, !3316, !5, !1845}
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1767)
!3318 = !{!3319, !3320, !3321}
!3319 = !DILocalVariable(name: "vec_", arg: 1, scope: !3313, file: !1763, line: 31, type: !3316)
!3320 = !DILocalVariable(name: "ix_", arg: 2, scope: !3313, file: !1763, line: 31, type: !5)
!3321 = !DILocalVariable(name: "ptr", arg: 3, scope: !3313, file: !1763, line: 31, type: !1845)
!3322 = !DILocation(line: 0, scope: !3313)
!3323 = !DILocation(line: 31, column: 1, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3313, file: !1763, line: 31, column: 1)
!3325 = !DILocation(line: 31, column: 1, scope: !3313)
!3326 = !DILocation(line: 31, column: 1, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3324, file: !1763, line: 31, column: 1)
!3328 = !DILocation(line: 31, column: 1, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3324, file: !1763, line: 31, column: 1)
!3330 = !DILocation(line: 0, scope: !3324)
!3331 = distinct !DISubprogram(name: "get_loop", scope: !376, file: !376, line: 417, type: !3332, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3334)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!1039, !5}
!3334 = !{!3335}
!3335 = !DILocalVariable(name: "num", arg: 1, scope: !3331, file: !376, line: 417, type: !5)
!3336 = !DILocation(line: 0, scope: !3331)
!3337 = !DILocation(line: 419, column: 10, scope: !3331)
!3338 = !DILocation(line: 419, column: 3, scope: !3331)
!3339 = distinct !DISubprogram(name: "VEC_int_heap_free", scope: !1763, file: !1763, line: 32, type: !3340, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3343)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{null, !3342}
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!3343 = !{!3344}
!3344 = !DILocalVariable(name: "vec_", arg: 1, scope: !3339, file: !1763, line: 32, type: !3342)
!3345 = !DILocation(line: 0, scope: !3339)
!3346 = !DILocation(line: 32, column: 1, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3339, file: !1763, line: 32, column: 1)
!3348 = !DILocation(line: 32, column: 1, scope: !3339)
