; ModuleID = 'tree-if-conv.bc'
source_filename = "tree-if-conv.c"
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
%struct.loop_iterator = type { %struct.VEC_int_heap*, i32 }
%struct.VEC_int_heap = type { %struct.VEC_int_base }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.immediate_use_iterator_d = type { %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [6 x i8] c"ifcvt\00", align 1
@pass_if_conversion = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8 ()* @gate_tree_if_conversion, i32 ()* @main_tree_if_conversion, %struct.opt_pass* null, %struct.opt_pass* null, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 89 } }, align 8, !dbg !0
@flag_tree_vectorize = external dso_local local_unnamed_addr global i32, align 4
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@ifc_bbs = internal unnamed_addr global %struct.basic_block_def** null, align 8, !dbg !2021
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"-------------------------\0A\00", align 1
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"not inner most loop\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"less than 2 basic blocks\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"multiple exits\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Irreducible loop\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Applying if-conversion\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"tree-if-conv.c\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"----------[%d]-------------\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"basic block after exit bb but before latch\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"non empty basic block after exit bb\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"latch is not dominated by exit_block\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Difficult to handle edges\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"don't know what to do\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"stmt not suitable for ifcvt\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"tree could trap...\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"LHS is not var\0A\00", align 1
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.19 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.20 = private unnamed_addr constant [30 x i8] c"More than two phi node args.\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"Virtual phi not on loop header.\0A\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"Difficult to handle this virtual phi.\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"------if-convert stmt\0A\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"_ifc_\00", align 1
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.25 = private unnamed_addr constant [26 x i8] c"new phi replacement stmt\0A\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !2053 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !2066, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !2067, metadata !DIExpression()), !dbg !2068
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2069
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !2070
  ret i32 %call, !dbg !2071
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !2072 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2076
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !2077
  ret i32 %call, !dbg !2078
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2079 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2134, metadata !DIExpression()), !dbg !2135
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2136
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2136
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2136
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2136
  %cmp = icmp uge i8* %0, %1, !dbg !2136
  %conv1 = zext i1 %cmp to i64, !dbg !2136
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2136
  %tobool = icmp eq i64 %expval, 0, !dbg !2136
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2136

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2136
  br label %cond.end, !dbg !2136

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2136
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2136
  %2 = load i8, i8* %0, align 1, !dbg !2136
  %conv3 = zext i8 %2 to i32, !dbg !2136
  br label %cond.end, !dbg !2136

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2136
  ret i32 %cond, !dbg !2137
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2138 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2140, metadata !DIExpression()), !dbg !2141
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2142
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2142
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2142
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2142
  %cmp = icmp uge i8* %0, %1, !dbg !2142
  %conv1 = zext i1 %cmp to i64, !dbg !2142
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2142
  %tobool = icmp eq i64 %expval, 0, !dbg !2142
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2142

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2142
  br label %cond.end, !dbg !2142

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2142
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2142
  %2 = load i8, i8* %0, align 1, !dbg !2142
  %conv3 = zext i8 %2 to i32, !dbg !2142
  br label %cond.end, !dbg !2142

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2142
  ret i32 %cond, !dbg !2143
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2144 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2145
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2145
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2145
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2145
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2145
  %cmp = icmp uge i8* %1, %2, !dbg !2145
  %conv1 = zext i1 %cmp to i64, !dbg !2145
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2145
  %tobool = icmp eq i64 %expval, 0, !dbg !2145
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2145

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2145
  br label %cond.end, !dbg !2145

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2145
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2145
  %3 = load i8, i8* %1, align 1, !dbg !2145
  %conv3 = zext i8 %3 to i32, !dbg !2145
  br label %cond.end, !dbg !2145

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2145
  ret i32 %cond, !dbg !2146
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2147 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2151, metadata !DIExpression()), !dbg !2152
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2153
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2154
  ret i32 %call, !dbg !2155
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2156 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2160, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2161, metadata !DIExpression()), !dbg !2162
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2163
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2163
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2163
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2163
  %cmp = icmp uge i8* %0, %1, !dbg !2163
  %conv1 = zext i1 %cmp to i64, !dbg !2163
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2163
  %tobool = icmp eq i64 %expval, 0, !dbg !2163
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2163

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2163
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2163
  br label %cond.end, !dbg !2163

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2163
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2163
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2163
  store i8 %conv2, i8* %0, align 1, !dbg !2163
  %conv6 = and i32 %__c, 255, !dbg !2163
  br label %cond.end, !dbg !2163

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2163
  ret i32 %cond, !dbg !2164
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2165 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2167, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2168, metadata !DIExpression()), !dbg !2169
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2170
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2170
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2170
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2170
  %cmp = icmp uge i8* %0, %1, !dbg !2170
  %conv1 = zext i1 %cmp to i64, !dbg !2170
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2170
  %tobool = icmp eq i64 %expval, 0, !dbg !2170
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2170

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2170
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2170
  br label %cond.end, !dbg !2170

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2170
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2170
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2170
  store i8 %conv2, i8* %0, align 1, !dbg !2170
  %conv6 = and i32 %__c, 255, !dbg !2170
  br label %cond.end, !dbg !2170

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2170
  ret i32 %cond, !dbg !2171
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2172 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2174, metadata !DIExpression()), !dbg !2175
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2176
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2176
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2176
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2176
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2176
  %cmp = icmp uge i8* %1, %2, !dbg !2176
  %conv1 = zext i1 %cmp to i64, !dbg !2176
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2176
  %tobool = icmp eq i64 %expval, 0, !dbg !2176
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2176

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2176
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2176
  br label %cond.end, !dbg !2176

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2176
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2176
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2176
  store i8 %conv4, i8* %1, align 1, !dbg !2176
  %conv6 = and i32 %__c, 255, !dbg !2176
  br label %cond.end, !dbg !2176

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2176
  ret i32 %cond, !dbg !2177
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2178 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2184, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2185, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2186, metadata !DIExpression()), !dbg !2187
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2188
  ret i64 %call, !dbg !2189
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2190 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2192, metadata !DIExpression()), !dbg !2193
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2194
  %0 = load i32, i32* %_flags, align 8, !dbg !2194
  %and = lshr i32 %0, 4, !dbg !2194
  %and.lobit = and i32 %and, 1, !dbg !2194
  ret i32 %and.lobit, !dbg !2195
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2196 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2198, metadata !DIExpression()), !dbg !2199
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2200
  %0 = load i32, i32* %_flags, align 8, !dbg !2200
  %and = lshr i32 %0, 5, !dbg !2200
  %and.lobit = and i32 %and, 1, !dbg !2200
  ret i32 %and.lobit, !dbg !2201
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2202 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2205, metadata !DIExpression()), !dbg !2206
  %__c.off = add i32 %__c, 128, !dbg !2207
  %0 = icmp ult i32 %__c.off, 384, !dbg !2207
  br i1 %0, label %cond.true, label %cond.end, !dbg !2207

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2208
  %1 = load i32*, i32** %call, align 8, !dbg !2209
  %idxprom = sext i32 %__c to i64, !dbg !2210
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2210
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2210
  br label %cond.end, !dbg !2211

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2211
  ret i32 %cond, !dbg !2212
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2213 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2215, metadata !DIExpression()), !dbg !2216
  %__c.off = add i32 %__c, 128, !dbg !2217
  %0 = icmp ult i32 %__c.off, 384, !dbg !2217
  br i1 %0, label %cond.true, label %cond.end, !dbg !2217

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2218
  %1 = load i32*, i32** %call, align 8, !dbg !2219
  %idxprom = sext i32 %__c to i64, !dbg !2220
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2220
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2220
  br label %cond.end, !dbg !2221

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2221
  ret i32 %cond, !dbg !2222
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2223 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2228, metadata !DIExpression()), !dbg !2229
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2230
  %conv = trunc i64 %call to i32, !dbg !2231
  ret i32 %conv, !dbg !2232
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2233 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2237, metadata !DIExpression()), !dbg !2238
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2239
  ret i64 %call, !dbg !2240
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2241 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2246, metadata !DIExpression()), !dbg !2247
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2248
  ret i64 %call, !dbg !2249
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2250 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2256, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2257, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2258, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2259, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2260, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 0, metadata !2261, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2262, metadata !DIExpression()), !dbg !2266
  br label %while.cond, !dbg !2267

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2268
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2266
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2262, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2261, metadata !DIExpression()), !dbg !2266
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2269
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2267

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2270
  %div = lshr i64 %add, 1, !dbg !2272
  call void @llvm.dbg.value(metadata i64 %div, metadata !2263, metadata !DIExpression()), !dbg !2266
  %mul = mul i64 %div, %__size, !dbg !2273
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2274
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2264, metadata !DIExpression()), !dbg !2266
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2275
  call void @llvm.dbg.value(metadata i32 %call, metadata !2265, metadata !DIExpression()), !dbg !2266
  %cmp1 = icmp slt i32 %call, 0, !dbg !2276
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2278

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2279
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2281

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2282
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2261, metadata !DIExpression()), !dbg !2266
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2266
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2266
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2262, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2261, metadata !DIExpression()), !dbg !2266
  br label %while.cond, !dbg !2267, !llvm.loop !2283

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2266
  ret i8* %retval.0, !dbg !2285
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2286 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2292, metadata !DIExpression()), !dbg !2293
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2294
  ret double %call, !dbg !2295
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2296 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2305, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2306, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i32 %base, metadata !2307, metadata !DIExpression()), !dbg !2308
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2309
  ret i64 %call, !dbg !2310
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2311 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2317, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2318, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i32 %base, metadata !2319, metadata !DIExpression()), !dbg !2320
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2321
  ret i64 %call, !dbg !2322
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2323 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2334, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2335, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata i32 %base, metadata !2336, metadata !DIExpression()), !dbg !2337
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2338
  ret i64 %call, !dbg !2339
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2340 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2344, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2345, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 %base, metadata !2346, metadata !DIExpression()), !dbg !2347
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2348
  ret i64 %call, !dbg !2349
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2350 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2390, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2391, metadata !DIExpression()), !dbg !2392
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2393
  ret i32 %call, !dbg !2394
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2395 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2397, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2398, metadata !DIExpression()), !dbg !2399
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2400
  ret i32 %call, !dbg !2401
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2402 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2406, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2407, metadata !DIExpression()), !dbg !2408
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2409
  ret i32 %call, !dbg !2410
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2411 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2415, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2416, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2417, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2418, metadata !DIExpression()), !dbg !2419
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2420
  ret i32 %call, !dbg !2421
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2422 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2426, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2427, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2428, metadata !DIExpression()), !dbg !2429
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2428, metadata !DIExpression(DW_OP_deref)), !dbg !2429
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2430
  ret i32 %call, !dbg !2431
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2432 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2436, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2437, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2438, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2439, metadata !DIExpression()), !dbg !2440
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2439, metadata !DIExpression(DW_OP_deref)), !dbg !2440
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2441
  ret i32 %call, !dbg !2442
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2443 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2467, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2468, metadata !DIExpression()), !dbg !2469
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2470
  ret i32 %call, !dbg !2471
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2472 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2474, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2475, metadata !DIExpression()), !dbg !2476
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2477
  ret i32 %call, !dbg !2478
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2479 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2483, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2484, metadata !DIExpression()), !dbg !2485
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2486
  ret i32 %call, !dbg !2487
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2488 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2492, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2493, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2494, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2495, metadata !DIExpression()), !dbg !2496
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2497
  ret i32 %call, !dbg !2498
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal zeroext i8 @gate_tree_if_conversion() #5 !dbg !2499 {
entry:
  %0 = load i32, i32* @flag_tree_vectorize, align 4, !dbg !2500
  %cmp = icmp ne i32 %0, 0, !dbg !2501
  %conv1 = zext i1 %cmp to i8, !dbg !2500
  ret i8 %conv1, !dbg !2502
}

; Function Attrs: nounwind uwtable
define internal i32 @main_tree_if_conversion() #5 !dbg !2503 {
entry:
  %li = alloca %struct.loop_iterator, align 8
  %loop = alloca %struct.loop*, align 8
  %0 = bitcast %struct.loop_iterator* %li to i8*, !dbg !2512
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7, !dbg !2512
  %1 = bitcast %struct.loop** %loop to i8*, !dbg !2513
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2513
  %call = tail call fastcc i32 @number_of_loops() #8, !dbg !2514
  %cmp = icmp ult i32 %call, 2, !dbg !2516
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2517

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2505, metadata !DIExpression(DW_OP_deref)), !dbg !2518
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2511, metadata !DIExpression(DW_OP_deref)), !dbg !2518
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop, i32 0) #8, !dbg !2519
  br label %for.cond, !dbg !2519

for.cond:                                         ; preds = %for.body, %if.end
  %2 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2521
  call void @llvm.dbg.value(metadata %struct.loop* %2, metadata !2511, metadata !DIExpression()), !dbg !2518
  %tobool = icmp eq %struct.loop* %2, null, !dbg !2519
  br i1 %tobool, label %cleanup.loopexit, label %for.body, !dbg !2519

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.loop* %2, metadata !2511, metadata !DIExpression()), !dbg !2518
  %call1 = call fastcc zeroext i8 @tree_if_conversion(%struct.loop* nonnull %2, i8 zeroext 1) #8, !dbg !2523
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2505, metadata !DIExpression(DW_OP_deref)), !dbg !2518
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2511, metadata !DIExpression(DW_OP_deref)), !dbg !2518
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #8, !dbg !2521
  br label %for.cond, !dbg !2521, !llvm.loop !2525

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !2527

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2527
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7, !dbg !2527
  ret i32 0, !dbg !2527
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #0 !dbg !2528 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2529
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !2529
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2529
  %tobool = icmp eq %struct.loops* %1, null, !dbg !2529
  br i1 %tobool, label %return, label %if.end, !dbg !2531

if.end:                                           ; preds = %entry
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !2532
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !2532
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !2532
  br i1 %tobool3, label %cond.end, label %cond.true, !dbg !2532

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !2532
  br label %cond.end, !dbg !2532

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !2532
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #8, !dbg !2532
  br label %return, !dbg !2533

return:                                           ; preds = %entry, %cond.end
  %retval.0 = phi i32 [ %call, %cond.end ], [ 0, %entry ], !dbg !2534
  ret i32 %retval.0, !dbg !2535
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fel_init(%struct.loop_iterator* %li, %struct.loop** %loop, i32 %flags) unnamed_addr #0 !dbg !2536 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2542, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2543, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i32 0, metadata !2544, metadata !DIExpression()), !dbg !2548
  %idx = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 1, !dbg !2549
  store i32 0, i32* %idx, align 8, !dbg !2550
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2551
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !2551
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2551
  %tobool = icmp eq %struct.loops* %1, null, !dbg !2551
  br i1 %tobool, label %if.then, label %if.end, !dbg !2553

if.then:                                          ; preds = %entry
  %to_visit = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2554
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %to_visit, align 8, !dbg !2556
  store %struct.loop* null, %struct.loop** %loop, align 8, !dbg !2557
  br label %cleanup, !dbg !2558

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @number_of_loops() #8, !dbg !2559
  %call1 = tail call fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %call) #8, !dbg !2559
  %to_visit2 = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2560
  store %struct.VEC_int_heap* %call1, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !2561
  call void @llvm.dbg.value(metadata i32 1, metadata !2547, metadata !DIExpression()), !dbg !2548
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2562
  %x_current_loops35 = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 4, !dbg !2562
  %3 = load %struct.loops*, %struct.loops** %x_current_loops35, align 8, !dbg !2562
  %tree_root = getelementptr inbounds %struct.loops, %struct.loops* %3, i64 0, i32 3, !dbg !2562
  %4 = load %struct.loop*, %struct.loop** %tree_root, align 8, !dbg !2562
  br label %while.cond79, !dbg !2565

while.cond79:                                     ; preds = %if.end, %if.end111
  %5 = phi %struct.loop* [ %4, %if.end ], [ %25, %if.end111 ]
  %6 = phi %struct.loop* [ %4, %if.end ], [ %26, %if.end111 ]
  %7 = phi %struct.loop* [ %4, %if.end ], [ %27, %if.end111 ]
  %8 = phi %struct.loop* [ %4, %if.end ], [ %28, %if.end111 ]
  %9 = phi %struct.loop* [ %4, %if.end ], [ %29, %if.end111 ]
  %10 = phi %struct.loop* [ %4, %if.end ], [ %30, %if.end111 ]
  %11 = phi %struct.loop* [ %4, %if.end ], [ %31, %if.end111 ]
  %12 = phi %struct.loop* [ %4, %if.end ], [ %32, %if.end111 ], !dbg !2567
  call void @llvm.dbg.value(metadata %struct.loop* %12, metadata !2545, metadata !DIExpression()), !dbg !2548
  %num81 = getelementptr inbounds %struct.loop, %struct.loop* %12, i64 0, i32 0, !dbg !2570
  %13 = load i32, i32* %num81, align 8, !dbg !2570
  %cmp82 = icmp slt i32 %13, 1, !dbg !2571
  br i1 %cmp82, label %if.end94, label %if.then83, !dbg !2572

if.then83:                                        ; preds = %while.cond79
  %14 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !2573
  %tobool85 = icmp eq %struct.VEC_int_heap* %14, null, !dbg !2573
  br i1 %tobool85, label %cond.end90, label %cond.true86, !dbg !2573

cond.true86:                                      ; preds = %if.then83
  %base88 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %14, i64 0, i32 0, !dbg !2573
  br label %cond.end90, !dbg !2573

cond.end90:                                       ; preds = %if.then83, %cond.true86
  %cond91 = phi %struct.VEC_int_base* [ %base88, %cond.true86 ], [ null, %if.then83 ], !dbg !2573
  call void @llvm.dbg.value(metadata %struct.loop* %11, metadata !2545, metadata !DIExpression()), !dbg !2548
  %num92 = getelementptr inbounds %struct.loop, %struct.loop* %11, i64 0, i32 0, !dbg !2573
  %15 = load i32, i32* %num92, align 8, !dbg !2573
  %call93 = tail call fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %cond91, i32 %15) #8, !dbg !2573
  br label %if.end94, !dbg !2573

if.end94:                                         ; preds = %while.cond79, %cond.end90
  call void @llvm.dbg.value(metadata %struct.loop* %10, metadata !2545, metadata !DIExpression()), !dbg !2548
  %inner95 = getelementptr inbounds %struct.loop, %struct.loop* %10, i64 0, i32 8, !dbg !2574
  %16 = load %struct.loop*, %struct.loop** %inner95, align 8, !dbg !2574
  %cmp96 = icmp eq %struct.loop* %16, null, !dbg !2576
  br i1 %cmp96, label %while.cond100.preheader, label %if.then97, !dbg !2577

while.cond100.preheader:                          ; preds = %if.end94
  br label %while.cond100, !dbg !2578

if.then97:                                        ; preds = %if.end94
  call void @llvm.dbg.value(metadata %struct.loop* %9, metadata !2545, metadata !DIExpression()), !dbg !2548
  %inner98 = getelementptr inbounds %struct.loop, %struct.loop* %9, i64 0, i32 8, !dbg !2580
  %17 = load %struct.loop*, %struct.loop** %inner98, align 8, !dbg !2580
  br label %if.end111, !dbg !2581

while.cond100:                                    ; preds = %while.cond100.preheader, %while.body104
  %18 = phi %struct.loop* [ %5, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %19 = phi %struct.loop* [ %6, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %20 = phi %struct.loop* [ %7, %while.cond100.preheader ], [ %call105, %while.body104 ]
  %21 = phi %struct.loop* [ %8, %while.cond100.preheader ], [ %call105, %while.body104 ], !dbg !2582
  call void @llvm.dbg.value(metadata %struct.loop* %21, metadata !2545, metadata !DIExpression()), !dbg !2548
  %cmp101 = icmp eq %struct.loop* %21, null, !dbg !2583
  br i1 %cmp101, label %land.end, label %land.rhs, !dbg !2584

land.rhs:                                         ; preds = %while.cond100
  call void @llvm.dbg.value(metadata %struct.loop* %20, metadata !2545, metadata !DIExpression()), !dbg !2548
  %next102 = getelementptr inbounds %struct.loop, %struct.loop* %20, i64 0, i32 9, !dbg !2585
  %22 = load %struct.loop*, %struct.loop** %next102, align 8, !dbg !2585
  %cmp103 = icmp eq %struct.loop* %22, null, !dbg !2586
  br label %land.end

land.end:                                         ; preds = %while.cond100, %land.rhs
  %23 = phi i1 [ false, %while.cond100 ], [ %cmp103, %land.rhs ], !dbg !2587
  call void @llvm.dbg.value(metadata %struct.loop* %19, metadata !2545, metadata !DIExpression()), !dbg !2548
  br i1 %23, label %while.body104, label %while.end106, !dbg !2578

while.body104:                                    ; preds = %land.end
  %call105 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %19) #8, !dbg !2588
  call void @llvm.dbg.value(metadata %struct.loop* %call105, metadata !2545, metadata !DIExpression()), !dbg !2548
  br label %while.cond100, !dbg !2578, !llvm.loop !2589

while.end106:                                     ; preds = %land.end
  %.lcssa4 = phi %struct.loop* [ %18, %land.end ]
  %.lcssa = phi %struct.loop* [ %19, %land.end ]
  %cmp107 = icmp eq %struct.loop* %.lcssa, null, !dbg !2591
  br i1 %cmp107, label %if.end114.loopexit, label %if.end109, !dbg !2593

if.end109:                                        ; preds = %while.end106
  call void @llvm.dbg.value(metadata %struct.loop* %.lcssa4, metadata !2545, metadata !DIExpression()), !dbg !2548
  %next110 = getelementptr inbounds %struct.loop, %struct.loop* %.lcssa4, i64 0, i32 9, !dbg !2594
  %24 = load %struct.loop*, %struct.loop** %next110, align 8, !dbg !2594
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
  br label %while.cond79, !dbg !2565, !llvm.loop !2595

if.end114.loopexit:                               ; preds = %while.end106
  call fastcc void @fel_next(%struct.loop_iterator* %li, %struct.loop** %loop) #8, !dbg !2597
  br label %cleanup, !dbg !2598

cleanup:                                          ; preds = %if.end114.loopexit, %if.then
  ret void, !dbg !2598
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @tree_if_conversion(%struct.loop* %loop, i8 zeroext %for_vectorizer) unnamed_addr #5 !dbg !2599 {
entry:
  %itr = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2603, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 1, metadata !2604, metadata !DIExpression()), !dbg !2625
  %0 = bitcast %struct.gimple_stmt_iterator* %itr to i8*, !dbg !2626
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !2626
  store %struct.basic_block_def** null, %struct.basic_block_def*** @ifc_bbs, align 8, !dbg !2627
  %call = tail call fastcc zeroext i8 @if_convertible_loop_p(%struct.loop* %loop, i8 zeroext 1) #8, !dbg !2628
  %tobool = icmp eq i8 %call, 0, !dbg !2628
  br i1 %tobool, label %if.then, label %for.cond.preheader, !dbg !2630

for.cond.preheader:                               ; preds = %entry
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !2631
  %1 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2632
  br label %for.cond, !dbg !2633

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2634
  %tobool1 = icmp eq %struct._IO_FILE* %2, null, !dbg !2634
  br i1 %tobool1, label %if.end, label %land.lhs.true, !dbg !2637

land.lhs.true:                                    ; preds = %if.then
  %3 = load i32, i32* @dump_flags, align 4, !dbg !2638
  %and = and i32 %3, 8, !dbg !2639
  %tobool2 = icmp eq i32 %and, 0, !dbg !2639
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !2640

if.then3:                                         ; preds = %land.lhs.true
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2641
  br label %if.end, !dbg !2641

if.end:                                           ; preds = %land.lhs.true, %if.then, %if.then3
  %4 = load %struct.basic_block_def**, %struct.basic_block_def*** @ifc_bbs, align 8, !dbg !2642
  %tobool5 = icmp eq %struct.basic_block_def** %4, null, !dbg !2642
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !2644

if.then6:                                         ; preds = %if.end
  %5 = bitcast %struct.basic_block_def** %4 to i8*, !dbg !2644
  tail call void @free(i8* nonnull %5) #6, !dbg !2645
  store %struct.basic_block_def** null, %struct.basic_block_def*** @ifc_bbs, align 8, !dbg !2647
  br label %if.end7, !dbg !2648

if.end7:                                          ; preds = %if.end, %if.then6
  tail call void @free_dominance_info(i32 2) #6, !dbg !2649
  br label %cleanup, !dbg !2650

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !2651
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2613, metadata !DIExpression()), !dbg !2625
  %6 = load i32, i32* %num_nodes, align 4, !dbg !2652
  %7 = zext i32 %6 to i64, !dbg !2653
  %cmp = icmp ult i64 %indvars.iv, %7, !dbg !2653
  br i1 %cmp, label %for.body, label %for.end27, !dbg !2633

for.body:                                         ; preds = %for.cond
  %8 = load %struct.basic_block_def**, %struct.basic_block_def*** @ifc_bbs, align 8, !dbg !2654
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %8, i64 %indvars.iv, !dbg !2654
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !2654
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %9, metadata !2605, metadata !DIExpression()), !dbg !2625
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i64 0, i32 2, !dbg !2655
  %10 = bitcast i8** %aux to %union.tree_node**, !dbg !2655
  %11 = load %union.tree_node*, %union.tree_node** %10, align 8, !dbg !2655
  call void @llvm.dbg.value(metadata %union.tree_node* %11, metadata !2614, metadata !DIExpression()), !dbg !2656
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #7, !dbg !2657
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %9) #8, !dbg !2657
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %1, i64 24, i1 false), !dbg !2657
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #7, !dbg !2657
  br label %for.cond9, !dbg !2658

for.cond9:                                        ; preds = %if.end18, %for.body
  %cond.0 = phi %union.tree_node* [ %11, %for.body ], [ %call14, %if.end18 ], !dbg !2656
  call void @llvm.dbg.value(metadata %union.tree_node* %cond.0, metadata !2614, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %itr, metadata !2606, metadata !DIExpression(DW_OP_deref)), !dbg !2625
  %call10 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %itr) #8, !dbg !2659
  %tobool11 = icmp eq i8 %call10, 0, !dbg !2660
  br i1 %tobool11, label %for.body12, label %for.end, !dbg !2661

for.body12:                                       ; preds = %for.cond9
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %itr, metadata !2606, metadata !DIExpression(DW_OP_deref)), !dbg !2625
  %call13 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %itr) #8, !dbg !2662
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call13, metadata !2618, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %itr, metadata !2606, metadata !DIExpression(DW_OP_deref)), !dbg !2625
  %call14 = call fastcc %union.tree_node* @tree_if_convert_stmt(%struct.loop* %loop, %union.gimple_statement_d* %call13, %union.tree_node* %cond.0, %struct.gimple_stmt_iterator* nonnull %itr) #8, !dbg !2664
  call void @llvm.dbg.value(metadata %union.tree_node* %call14, metadata !2614, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %itr, metadata !2606, metadata !DIExpression(DW_OP_deref)), !dbg !2625
  %call15 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %itr) #8, !dbg !2665
  %tobool16 = icmp eq i8 %call15, 0, !dbg !2665
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !2667

if.then17:                                        ; preds = %for.body12
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %itr, metadata !2606, metadata !DIExpression(DW_OP_deref)), !dbg !2625
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %itr) #8, !dbg !2668
  br label %if.end18, !dbg !2668

if.end18:                                         ; preds = %for.body12, %if.then17
  br label %for.cond9, !dbg !2669, !llvm.loop !2670

for.end:                                          ; preds = %for.cond9
  %cond.0.lcssa = phi %union.tree_node* [ %cond.0, %for.cond9 ], !dbg !2656
  call void @llvm.dbg.value(metadata %union.tree_node* %cond.0.lcssa, metadata !2614, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata %union.tree_node* %cond.0.lcssa, metadata !2614, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata %union.tree_node* %cond.0.lcssa, metadata !2614, metadata !DIExpression()), !dbg !2656
  %call19 = call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %9) #8, !dbg !2672
  %tobool20 = icmp eq i8 %call19, 0, !dbg !2672
  br i1 %tobool20, label %for.inc, label %if.then21, !dbg !2673

if.then21:                                        ; preds = %for.end
  %call22 = call fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %9) #8, !dbg !2674
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call22, metadata !2622, metadata !DIExpression()), !dbg !2675
  %cmp23 = icmp eq %union.tree_node* %cond.0.lcssa, null, !dbg !2676
  %12 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 26), align 16, !dbg !2678
  %spec.select = select i1 %cmp23, %union.tree_node* %12, %union.tree_node* %cond.0.lcssa, !dbg !2679
  call void @llvm.dbg.value(metadata %union.tree_node* %spec.select, metadata !2614, metadata !DIExpression()), !dbg !2656
  call fastcc void @add_to_predicate_list(%struct.basic_block_def* %call22, %union.tree_node* %spec.select) #8, !dbg !2680
  br label %for.inc, !dbg !2681

for.inc:                                          ; preds = %for.end, %if.then21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2682
  br label %for.cond, !dbg !2683, !llvm.loop !2684

for.end27:                                        ; preds = %for.cond
  call fastcc void @combine_blocks(%struct.loop* %loop) #8, !dbg !2686
  call fastcc void @clean_predicate_lists(%struct.loop* %loop) #8, !dbg !2687
  %13 = load i8*, i8** bitcast (%struct.basic_block_def*** @ifc_bbs to i8**), align 8, !dbg !2688
  call void @free(i8* %13) #6, !dbg !2689
  store %struct.basic_block_def** null, %struct.basic_block_def*** @ifc_bbs, align 8, !dbg !2690
  br label %cleanup, !dbg !2691

cleanup:                                          ; preds = %for.end27, %if.end7
  %retval.0 = phi i8 [ 1, %for.end27 ], [ 0, %if.end7 ], !dbg !2625
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !2692
  ret i8 %retval.0, !dbg !2692
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fel_next(%struct.loop_iterator* %li, %struct.loop** %loop) unnamed_addr #0 !dbg !2693 {
entry:
  %anum = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2697, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2698, metadata !DIExpression()), !dbg !2700
  %0 = bitcast i32* %anum to i8*, !dbg !2701
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2701
  %to_visit = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2700
  %idx = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 1, !dbg !2700
  br label %while.cond, !dbg !2702

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit, align 8, !dbg !2703
  %tobool = icmp eq %struct.VEC_int_heap* %1, null, !dbg !2703
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2703

cond.true:                                        ; preds = %while.cond
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %1, i64 0, i32 0, !dbg !2703
  br label %cond.end, !dbg !2703

cond.end:                                         ; preds = %while.cond, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %while.cond ], !dbg !2703
  %2 = load i32, i32* %idx, align 8, !dbg !2703
  call void @llvm.dbg.value(metadata i32* %anum, metadata !2699, metadata !DIExpression(DW_OP_deref)), !dbg !2700
  %call = call fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %cond, i32 %2, i32* nonnull %anum) #8, !dbg !2703
  %tobool2 = icmp eq i32 %call, 0, !dbg !2702
  br i1 %tobool2, label %while.end, label %while.body, !dbg !2702

while.body:                                       ; preds = %cond.end
  %3 = load i32, i32* %idx, align 8, !dbg !2704
  %inc = add i32 %3, 1, !dbg !2704
  store i32 %inc, i32* %idx, align 8, !dbg !2704
  %4 = load i32, i32* %anum, align 4, !dbg !2706
  call void @llvm.dbg.value(metadata i32 %4, metadata !2699, metadata !DIExpression()), !dbg !2700
  %call4 = call fastcc %struct.loop* @get_loop(i32 %4) #8, !dbg !2707
  store %struct.loop* %call4, %struct.loop** %loop, align 8, !dbg !2708
  %tobool5 = icmp eq %struct.loop* %call4, null, !dbg !2709
  br i1 %tobool5, label %while.cond, label %cleanup.loopexit, !dbg !2711, !llvm.loop !2712

while.end:                                        ; preds = %cond.end
  call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %to_visit) #8, !dbg !2714
  store %struct.loop* null, %struct.loop** %loop, align 8, !dbg !2715
  br label %cleanup, !dbg !2716

cleanup.loopexit:                                 ; preds = %while.body
  br label %cleanup, !dbg !2716

cleanup:                                          ; preds = %cleanup.loopexit, %while.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !2716
  ret void, !dbg !2716
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %vec_) unnamed_addr #0 !dbg !2717 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !2723, metadata !DIExpression()), !dbg !2724
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !2725
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2725

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !2725
  %0 = load i32, i32* %num, align 8, !dbg !2725
  br label %cond.end, !dbg !2725

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2725
  ret i32 %cond, !dbg !2725
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !2726 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !2730, metadata !DIExpression()), !dbg !2731
  %call = tail call i8* @vec_heap_o_reserve_exact(i8* null, i32 %alloc_, i64 8, i64 4) #6, !dbg !2732
  %0 = bitcast i8* %call to %struct.VEC_int_heap*, !dbg !2732
  ret %struct.VEC_int_heap* %0, !dbg !2732
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_iterate(%struct.VEC_loop_p_base* %vec_, i32 %ix_, %struct.loop** %ptr) unnamed_addr #0 !dbg !2733 {
entry:
  unreachable, !dbg !2740
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %vec_, i32 %obj_) unnamed_addr #0 !dbg !2741 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !2747, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !2748, metadata !DIExpression()), !dbg !2750
  %num1 = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !2751
  %0 = load i32, i32* %num1, align 4, !dbg !2751
  %inc = add i32 %0, 1, !dbg !2751
  store i32 %inc, i32* %num1, align 4, !dbg !2751
  %idxprom = zext i32 %0 to i64, !dbg !2751
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2751
  call void @llvm.dbg.value(metadata i32* %arrayidx, metadata !2749, metadata !DIExpression()), !dbg !2750
  store i32 %obj_, i32* %arrayidx, align 4, !dbg !2751
  ret i32* %arrayidx, !dbg !2751
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @loop_outer(%struct.loop* %loop) unnamed_addr #0 !dbg !2752 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2758, metadata !DIExpression()), !dbg !2760
  %superloops = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 7, !dbg !2761
  %0 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !2761
  %tobool = icmp eq %struct.VEC_loop_p_gc* %0, null, !dbg !2761
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2761

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %0, i64 0, i32 0, !dbg !2761
  br label %cond.end, !dbg !2761

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2761
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #8, !dbg !2761
  call void @llvm.dbg.value(metadata i32 %call, metadata !2759, metadata !DIExpression()), !dbg !2760
  %cmp = icmp eq i32 %call, 0, !dbg !2762
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2764

if.end:                                           ; preds = %cond.end
  %1 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !2765
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %1, null, !dbg !2765
  br i1 %tobool3, label %cond.end8, label %cond.true4, !dbg !2765

cond.true4:                                       ; preds = %if.end
  %base6 = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %1, i64 0, i32 0, !dbg !2765
  br label %cond.end8, !dbg !2765

cond.end8:                                        ; preds = %if.end, %cond.true4
  %cond9 = phi %struct.VEC_loop_p_base* [ %base6, %cond.true4 ], [ null, %if.end ], !dbg !2765
  %sub = add i32 %call, -1, !dbg !2765
  %call10 = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond9, i32 %sub) #8, !dbg !2765
  br label %cleanup, !dbg !2766

cleanup:                                          ; preds = %cond.end, %cond.end8
  %retval.0 = phi %struct.loop* [ %call10, %cond.end8 ], [ null, %cond.end ], !dbg !2760
  ret %struct.loop* %retval.0, !dbg !2767
}

declare dso_local i8* @vec_heap_o_reserve_exact(i8*, i32, i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2768 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !2772, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2773, metadata !DIExpression()), !dbg !2774
  br label %land.end, !dbg !2775

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2775
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2775
  %0 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !2775
  ret %struct.loop* %0, !dbg !2775
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @if_convertible_loop_p(%struct.loop* %loop, i8 zeroext %for_vectorizer) unnamed_addr #5 !dbg !2776 {
entry:
  %itr = alloca %struct.gimple_stmt_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp52 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp64 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp68 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2778, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i8 %for_vectorizer, metadata !2779, metadata !DIExpression()), !dbg !2792
  %0 = bitcast %struct.gimple_stmt_iterator* %itr to i8*, !dbg !2793
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #7, !dbg !2793
  %1 = bitcast %struct.edge_def** %e to i8*, !dbg !2794
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2794
  %2 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2795
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !2795
  call void @llvm.dbg.value(metadata %struct.basic_block_def* null, metadata !2791, metadata !DIExpression()), !dbg !2792
  %tobool = icmp eq %struct.loop* %loop, null, !dbg !2796
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !2798

lor.lhs.false:                                    ; preds = %entry
  %inner = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 8, !dbg !2799
  %3 = load %struct.loop*, %struct.loop** %inner, align 8, !dbg !2799
  %tobool1 = icmp eq %struct.loop* %3, null, !dbg !2800
  br i1 %tobool1, label %if.end5, label %if.then, !dbg !2801

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2802
  %tobool2 = icmp eq %struct._IO_FILE* %4, null, !dbg !2802
  br i1 %tobool2, label %cleanup, label %land.lhs.true, !dbg !2805

land.lhs.true:                                    ; preds = %if.then
  %5 = load i32, i32* @dump_flags, align 4, !dbg !2806
  %and = and i32 %5, 8, !dbg !2807
  %tobool3 = icmp eq i32 %and, 0, !dbg !2807
  br i1 %tobool3, label %cleanup, label %if.then4, !dbg !2808

if.then4:                                         ; preds = %land.lhs.true
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2809
  br label %cleanup, !dbg !2809

if.end5:                                          ; preds = %lor.lhs.false
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !2810
  %6 = load i32, i32* %num_nodes, align 4, !dbg !2810
  %cmp = icmp ult i32 %6, 3, !dbg !2812
  br i1 %cmp, label %if.then6, label %if.end14, !dbg !2813

if.then6:                                         ; preds = %if.end5
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2814
  %tobool7 = icmp eq %struct._IO_FILE* %7, null, !dbg !2814
  br i1 %tobool7, label %cleanup, label %land.lhs.true8, !dbg !2817

land.lhs.true8:                                   ; preds = %if.then6
  %8 = load i32, i32* @dump_flags, align 4, !dbg !2818
  %and9 = and i32 %8, 8, !dbg !2819
  %tobool10 = icmp eq i32 %and9, 0, !dbg !2819
  br i1 %tobool10, label %cleanup, label %if.then11, !dbg !2820

if.then11:                                        ; preds = %land.lhs.true8
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !2821
  br label %cleanup, !dbg !2821

if.end14:                                         ; preds = %if.end5
  %call15 = tail call %struct.edge_def* @single_exit(%struct.loop* nonnull %loop) #6, !dbg !2822
  %tobool16 = icmp eq %struct.edge_def* %call15, null, !dbg !2822
  br i1 %tobool16, label %if.then17, label %if.end25, !dbg !2824

if.then17:                                        ; preds = %if.end14
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2825
  %tobool18 = icmp eq %struct._IO_FILE* %9, null, !dbg !2825
  br i1 %tobool18, label %cleanup, label %land.lhs.true19, !dbg !2828

land.lhs.true19:                                  ; preds = %if.then17
  %10 = load i32, i32* @dump_flags, align 4, !dbg !2829
  %and20 = and i32 %10, 8, !dbg !2830
  %tobool21 = icmp eq i32 %and20, 0, !dbg !2830
  br i1 %tobool21, label %cleanup, label %if.then22, !dbg !2831

if.then22:                                        ; preds = %land.lhs.true19
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2832
  br label %cleanup, !dbg !2832

if.end25:                                         ; preds = %if.end14
  %11 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2833
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #7, !dbg !2833
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !2833
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !2833
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i64 0, i32 1, !dbg !2833
  %call26 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !2833
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2833
  %14 = extractvalue { i32, %struct.VEC_edge_gc** } %call26, 0, !dbg !2833
  store i32 %14, i32* %13, align 8, !dbg !2833
  %15 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2833
  %16 = extractvalue { i32, %struct.VEC_edge_gc** } %call26, 1, !dbg !2833
  store %struct.VEC_edge_gc** %16, %struct.VEC_edge_gc*** %15, align 8, !dbg !2833
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %11, i64 16, i1 false), !dbg !2833
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #7, !dbg !2833
  %17 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2835
  %18 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2835
  br label %for.cond, !dbg !2833

for.cond:                                         ; preds = %for.inc, %if.end25
  %19 = load i32, i32* %17, align 8, !dbg !2837
  %20 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %18, align 8, !dbg !2837
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2783, metadata !DIExpression(DW_OP_deref)), !dbg !2792
  %call27 = call fastcc zeroext i8 @ei_cond(i32 %19, %struct.VEC_edge_gc** %20, %struct.edge_def** nonnull %e) #8, !dbg !2837
  %tobool28 = icmp eq i8 %call27, 0, !dbg !2833
  br i1 %tobool28, label %for.end, label %for.body, !dbg !2833

for.body:                                         ; preds = %for.cond
  %21 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2838
  call void @llvm.dbg.value(metadata %struct.edge_def* %21, metadata !2783, metadata !DIExpression()), !dbg !2792
  %call29 = call zeroext i8 @loop_exit_edge_p(%struct.loop* nonnull %loop, %struct.edge_def* %21) #6, !dbg !2841
  %tobool30 = icmp eq i8 %call29, 0, !dbg !2841
  br i1 %tobool30, label %for.inc, label %cleanup.loopexit3, !dbg !2842

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2784, metadata !DIExpression(DW_OP_deref)), !dbg !2792
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2837
  br label %for.cond, !dbg !2837, !llvm.loop !2843

for.end:                                          ; preds = %for.cond
  call void @calculate_dominance_info(i32 1) #6, !dbg !2845
  call void @calculate_dominance_info(i32 2) #6, !dbg !2846
  %call33 = call fastcc %struct.basic_block_def** @get_loop_body_in_if_conv_order(%struct.loop* nonnull %loop) #8, !dbg !2847
  store %struct.basic_block_def** %call33, %struct.basic_block_def*** @ifc_bbs, align 8, !dbg !2848
  %tobool34 = icmp eq %struct.basic_block_def** %call33, null, !dbg !2849
  br i1 %tobool34, label %if.then35, label %for.cond44.preheader, !dbg !2851

for.cond44.preheader:                             ; preds = %for.end
  %22 = bitcast %struct.gimple_stmt_iterator* %tmp52 to i8*, !dbg !2852
  %23 = bitcast %struct.gimple_stmt_iterator* %tmp64 to i8*, !dbg !2857
  %24 = bitcast %struct.edge_iterator* %tmp68 to i8*, !dbg !2858
  %25 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp68, i64 0, i32 0, !dbg !2858
  %26 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp68, i64 0, i32 1, !dbg !2858
  br label %for.cond44, !dbg !2861

if.then35:                                        ; preds = %for.end
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2862
  %tobool36 = icmp eq %struct._IO_FILE* %27, null, !dbg !2862
  br i1 %tobool36, label %if.end42, label %land.lhs.true37, !dbg !2865

land.lhs.true37:                                  ; preds = %if.then35
  %28 = load i32, i32* @dump_flags, align 4, !dbg !2866
  %and38 = and i32 %28, 8, !dbg !2867
  %tobool39 = icmp eq i32 %and38, 0, !dbg !2867
  br i1 %tobool39, label %if.end42, label %if.then40, !dbg !2868

if.then40:                                        ; preds = %land.lhs.true37
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2869
  br label %if.end42, !dbg !2869

if.end42:                                         ; preds = %land.lhs.true37, %if.then35, %if.then40
  call void @free_dominance_info(i32 2) #6, !dbg !2870
  br label %cleanup, !dbg !2871

for.cond44:                                       ; preds = %for.cond44.preheader, %for.end88
  %indvars.iv = phi i64 [ 0, %for.cond44.preheader ], [ %indvars.iv.next, %for.end88 ], !dbg !2872
  %exit_bb.0 = phi %struct.basic_block_def* [ null, %for.cond44.preheader ], [ %spec.select, %for.end88 ], !dbg !2792
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %exit_bb.0, metadata !2791, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2782, metadata !DIExpression()), !dbg !2792
  %29 = load i32, i32* %num_nodes, align 4, !dbg !2873
  %30 = zext i32 %29 to i64, !dbg !2874
  %cmp46 = icmp ult i64 %indvars.iv, %30, !dbg !2874
  br i1 %cmp46, label %for.body47, label %for.end94, !dbg !2861

for.body47:                                       ; preds = %for.cond44
  %31 = load %struct.basic_block_def**, %struct.basic_block_def*** @ifc_bbs, align 8, !dbg !2875
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %31, i64 %indvars.iv, !dbg !2875
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !2875
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %32, metadata !2780, metadata !DIExpression()), !dbg !2792
  %call48 = call fastcc zeroext i8 @if_convertible_bb_p(%struct.loop* nonnull %loop, %struct.basic_block_def* %32, %struct.basic_block_def* %exit_bb.0) #8, !dbg !2876
  %tobool49 = icmp eq i8 %call48, 0, !dbg !2876
  br i1 %tobool49, label %cleanup.loopexit2, label %if.end51, !dbg !2878

if.end51:                                         ; preds = %for.body47
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %22) #7, !dbg !2879
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp52, %struct.basic_block_def* %32) #8, !dbg !2879
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %22, i64 24, i1 false), !dbg !2879
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %22) #7, !dbg !2879
  br label %for.cond53, !dbg !2880

for.cond53:                                       ; preds = %for.inc62, %if.end51
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %itr, metadata !2781, metadata !DIExpression(DW_OP_deref)), !dbg !2792
  %call54 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %itr) #8, !dbg !2881
  %tobool55 = icmp eq i8 %call54, 0, !dbg !2883
  br i1 %tobool55, label %for.body56, label %for.end63, !dbg !2884

for.body56:                                       ; preds = %for.cond53
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %itr, metadata !2781, metadata !DIExpression(DW_OP_deref)), !dbg !2792
  %call57 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %itr) #8, !dbg !2885
  %call58 = call fastcc zeroext i8 @if_convertible_stmt_p(%struct.loop* nonnull %loop, %struct.basic_block_def* %32, %union.gimple_statement_d* %call57) #8, !dbg !2887
  %tobool59 = icmp eq i8 %call58, 0, !dbg !2887
  br i1 %tobool59, label %cleanup.loopexit1, label %for.inc62, !dbg !2888

for.inc62:                                        ; preds = %for.body56
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %itr, metadata !2781, metadata !DIExpression(DW_OP_deref)), !dbg !2792
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %itr) #8, !dbg !2889
  br label %for.cond53, !dbg !2890, !llvm.loop !2891

for.end63:                                        ; preds = %for.cond53
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %23) #7, !dbg !2893
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp64, %struct.basic_block_def* %32) #6, !dbg !2893
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %23, i64 24, i1 false), !dbg !2893
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %23) #7, !dbg !2893
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %itr, metadata !2781, metadata !DIExpression(DW_OP_deref)), !dbg !2792
  %call65 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %itr) #8, !dbg !2894
  %tobool66 = icmp eq i8 %call65, 0, !dbg !2894
  br i1 %tobool66, label %if.then67, label %if.end76, !dbg !2895

if.then67:                                        ; preds = %for.end63
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %24) #7, !dbg !2896
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %32, i64 0, i32 0, !dbg !2896
  %call69 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !2896
  %33 = extractvalue { i32, %struct.VEC_edge_gc** } %call69, 0, !dbg !2896
  store i32 %33, i32* %25, align 8, !dbg !2896
  %34 = extractvalue { i32, %struct.VEC_edge_gc** } %call69, 1, !dbg !2896
  store %struct.VEC_edge_gc** %34, %struct.VEC_edge_gc*** %26, align 8, !dbg !2896
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %24, i64 16, i1 false), !dbg !2896
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %24) #7, !dbg !2896
  br label %for.cond70, !dbg !2896

for.cond70:                                       ; preds = %for.body73, %if.then67
  %35 = load i32, i32* %17, align 8, !dbg !2897
  %36 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %18, align 8, !dbg !2897
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2783, metadata !DIExpression(DW_OP_deref)), !dbg !2792
  %call71 = call fastcc zeroext i8 @ei_cond(i32 %35, %struct.VEC_edge_gc** %36, %struct.edge_def** nonnull %e) #8, !dbg !2897
  %tobool72 = icmp eq i8 %call71, 0, !dbg !2896
  br i1 %tobool72, label %if.end76.loopexit, label %for.body73, !dbg !2896

for.body73:                                       ; preds = %for.cond70
  %37 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2899
  call void @llvm.dbg.value(metadata %struct.edge_def* %37, metadata !2783, metadata !DIExpression()), !dbg !2792
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %37, i64 0, i32 3, !dbg !2900
  store i8* null, i8** %aux, align 8, !dbg !2901
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2784, metadata !DIExpression(DW_OP_deref)), !dbg !2792
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2897
  br label %for.cond70, !dbg !2897, !llvm.loop !2902

if.end76.loopexit:                                ; preds = %for.cond70
  br label %if.end76, !dbg !2904

if.end76:                                         ; preds = %if.end76.loopexit, %for.end63
  br label %for.cond77, !dbg !2904

for.cond77:                                       ; preds = %for.inc87, %if.end76
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %itr, metadata !2781, metadata !DIExpression(DW_OP_deref)), !dbg !2792
  %call78 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %itr) #8, !dbg !2905
  %tobool79 = icmp eq i8 %call78, 0, !dbg !2908
  br i1 %tobool79, label %for.body81, label %for.end88, !dbg !2909

for.body81:                                       ; preds = %for.cond77
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %itr, metadata !2781, metadata !DIExpression(DW_OP_deref)), !dbg !2792
  %call82 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %itr) #8, !dbg !2910
  %call83 = call fastcc zeroext i8 @if_convertible_phi_p(%struct.loop* nonnull %loop, %struct.basic_block_def* %32, %union.gimple_statement_d* %call82) #8, !dbg !2912
  %tobool84 = icmp eq i8 %call83, 0, !dbg !2912
  br i1 %tobool84, label %cleanup.loopexit, label %for.inc87, !dbg !2913

for.inc87:                                        ; preds = %for.body81
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %itr, metadata !2781, metadata !DIExpression(DW_OP_deref)), !dbg !2792
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %itr) #8, !dbg !2914
  br label %for.cond77, !dbg !2915, !llvm.loop !2916

for.end88:                                        ; preds = %for.cond77
  %call89 = call fastcc zeroext i8 @bb_with_exit_edge_p(%struct.loop* nonnull %loop, %struct.basic_block_def* %32) #8, !dbg !2918
  %tobool90 = icmp eq i8 %call89, 0, !dbg !2918
  %spec.select = select i1 %tobool90, %struct.basic_block_def* %exit_bb.0, %struct.basic_block_def* %32, !dbg !2920
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %spec.select, metadata !2791, metadata !DIExpression()), !dbg !2792
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2921
  br label %for.cond44, !dbg !2922, !llvm.loop !2923

for.end94:                                        ; preds = %for.cond44
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2925
  %tobool95 = icmp eq %struct._IO_FILE* %38, null, !dbg !2925
  br i1 %tobool95, label %if.end98, label %if.then96, !dbg !2927

if.then96:                                        ; preds = %for.end94
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2928
  br label %if.end98, !dbg !2928

if.end98:                                         ; preds = %for.end94, %if.then96
  call void @free_dominance_info(i32 2) #6, !dbg !2929
  br label %cleanup, !dbg !2930

cleanup.loopexit:                                 ; preds = %for.body81
  br label %cleanup, !dbg !2931

cleanup.loopexit1:                                ; preds = %for.body56
  br label %cleanup, !dbg !2931

cleanup.loopexit2:                                ; preds = %for.body47
  br label %cleanup, !dbg !2931

cleanup.loopexit3:                                ; preds = %for.body
  br label %cleanup, !dbg !2931

cleanup:                                          ; preds = %cleanup.loopexit3, %cleanup.loopexit2, %cleanup.loopexit1, %cleanup.loopexit, %land.lhs.true8, %if.then6, %land.lhs.true19, %if.then17, %land.lhs.true, %if.then, %if.then22, %if.then11, %if.then4, %if.end98, %if.end42
  %retval.0 = phi i8 [ 1, %if.end98 ], [ 0, %if.end42 ], [ 0, %if.then4 ], [ 0, %land.lhs.true ], [ 0, %if.then ], [ 0, %if.then11 ], [ 0, %land.lhs.true8 ], [ 0, %if.then6 ], [ 0, %if.then22 ], [ 0, %land.lhs.true19 ], [ 0, %if.then17 ], [ 0, %cleanup.loopexit ], [ 0, %cleanup.loopexit1 ], [ 0, %cleanup.loopexit2 ], [ 0, %cleanup.loopexit3 ], !dbg !2792
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !2931
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2931
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #7, !dbg !2931
  ret i8 %retval.0, !dbg !2931
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local void @free(i8*) local_unnamed_addr #2

declare dso_local void @free_dominance_info(i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2932 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2936, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !2937, metadata !DIExpression()), !dbg !2940
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #8, !dbg !2941
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !2938, metadata !DIExpression()), !dbg !2939
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #8, !dbg !2942
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !2943
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2944
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !2945
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !2946
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !2947
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !2948
  ret void, !dbg !2949
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2950 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2954, metadata !DIExpression()), !dbg !2955
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2956
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2956
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !2957
  %conv1 = zext i1 %cmp to i8, !dbg !2958
  ret i8 %conv1, !dbg !2959
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2960 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2964, metadata !DIExpression()), !dbg !2965
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2966
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2966
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !2967
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2967
  ret %union.gimple_statement_d* %1, !dbg !2968
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @tree_if_convert_stmt(%struct.loop* %loop, %union.gimple_statement_d* %t, %union.tree_node* %cond, %struct.gimple_stmt_iterator* %gsi) unnamed_addr #5 !dbg !2969 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2974, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %t, metadata !2975, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata %union.tree_node* %cond, metadata !2976, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2977, metadata !DIExpression()), !dbg !2978
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2979
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !2979
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2981

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @dump_flags, align 4, !dbg !2982
  %and = and i32 %1, 8, !dbg !2983
  %tobool1 = icmp eq i32 %and, 0, !dbg !2983
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2984

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0)) #6, !dbg !2985
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2987
  tail call void @print_gimple_stmt(%struct._IO_FILE* %2, %union.gimple_statement_d* %t, i32 0, i32 2) #6, !dbg !2988
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2989
  tail call void @print_generic_stmt(%struct._IO_FILE* %3, %union.tree_node* %cond, i32 2) #6, !dbg !2990
  br label %if.end, !dbg !2991

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %call2 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %t) #8, !dbg !2992
  switch i32 %call2, label %sw.default [
    i32 4, label %sw.epilog
    i32 2, label %sw.bb
    i32 6, label %sw.epilog
    i32 1, label %sw.bb10
  ], !dbg !2993

sw.bb:                                            ; preds = %if.end
  %call3 = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !2994
  %call4 = tail call fastcc zeroext i8 @gimple_debug_bind_p(%union.gimple_statement_d* %call3) #8, !dbg !2997
  %tobool5 = icmp eq i8 %call4, 0, !dbg !2997
  br i1 %tobool5, label %sw.epilog, label %if.then6, !dbg !2998

if.then6:                                         ; preds = %sw.bb
  %call7 = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !2999
  tail call fastcc void @gimple_debug_bind_reset_value(%union.gimple_statement_d* %call7) #8, !dbg !3001
  %call8 = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3002
  tail call fastcc void @update_stmt(%union.gimple_statement_d* %call8) #8, !dbg !3003
  br label %sw.epilog, !dbg !3004

sw.bb10:                                          ; preds = %if.end
  tail call fastcc void @tree_if_convert_cond_stmt(%struct.loop* %loop, %union.gimple_statement_d* %t, %union.tree_node* %cond, %struct.gimple_stmt_iterator* %gsi) #8, !dbg !3005
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !2976, metadata !DIExpression()), !dbg !2978
  br label %sw.epilog, !dbg !3006

sw.default:                                       ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 267, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3007
  br label %sw.epilog, !dbg !3008

sw.epilog:                                        ; preds = %sw.bb, %if.then6, %sw.default, %sw.bb10, %if.end, %if.end
  %cond.addr.0 = phi %union.tree_node* [ %cond, %sw.default ], [ null, %sw.bb10 ], [ %cond, %if.end ], [ %cond, %if.end ], [ %cond, %if.then6 ], [ %cond, %sw.bb ]
  call void @llvm.dbg.value(metadata %union.tree_node* %cond.addr.0, metadata !2976, metadata !DIExpression()), !dbg !2978
  ret %union.tree_node* %cond.addr.0, !dbg !3009
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !3010 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3014, metadata !DIExpression()), !dbg !3015
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3016
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3016
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !3017
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !3017
  %2 = load i64, i64* %1, align 8, !dbg !3017
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !3018
  store i64 %2, i64* %3, align 8, !dbg !3018
  ret void, !dbg !3019
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3020 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3027, metadata !DIExpression()), !dbg !3028
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3029
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3029
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3029
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3029

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3029
  br label %cond.end, !dbg !3029

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3029
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !3029
  %cmp = icmp eq i32 %call, 1, !dbg !3030
  %conv2 = zext i1 %cmp to i8, !dbg !3029
  ret i8 %conv2, !dbg !3031
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3032 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3036, metadata !DIExpression()), !dbg !3037
  %call = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) #8, !dbg !3038
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 1, !dbg !3039
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3039
  ret %struct.basic_block_def* %0, !dbg !3040
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_to_predicate_list(%struct.basic_block_def* %bb, %union.tree_node* %new_cond) unnamed_addr #5 !dbg !3041 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3045, metadata !DIExpression()), !dbg !3048
  call void @llvm.dbg.value(metadata %union.tree_node* %new_cond, metadata !3046, metadata !DIExpression()), !dbg !3048
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 2, !dbg !3049
  %0 = bitcast i8** %aux to %union.tree_node**, !dbg !3049
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3049
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !3047, metadata !DIExpression()), !dbg !3048
  %tobool = icmp eq %union.tree_node* %1, null, !dbg !3050
  br i1 %tobool, label %if.end, label %if.then, !dbg !3052

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3053
  %bf.load = load i64, i64* %2, align 8, !dbg !3053
  %bf.cast = and i64 %bf.load, 65535, !dbg !3053
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !3053
  %3 = load i32, i32* %arrayidx, align 4, !dbg !3053
  %cmp = icmp ugt i32 %3, 3, !dbg !3053
  br i1 %cmp, label %land.lhs.true, label %cond.end, !dbg !3053

land.lhs.true:                                    ; preds = %if.then
  %cmp7 = icmp ult i32 %3, 11, !dbg !3053
  br i1 %cmp7, label %cond.true, label %cond.end, !dbg !3053

cond.true:                                        ; preds = %land.lhs.true
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3053
  %5 = load i32, i32* %4, align 8, !dbg !3053
  br label %cond.end, !dbg !3053

cond.end:                                         ; preds = %if.then, %land.lhs.true, %cond.true
  %cond8 = phi i32 [ %5, %cond.true ], [ 0, %land.lhs.true ], [ 0, %if.then ], !dbg !3053
  %6 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !3053
  %call = tail call %union.tree_node* @unshare_expr(%union.tree_node* nonnull %1) #6, !dbg !3053
  %call9 = tail call %union.tree_node* @fold_build2_stat_loc(i32 %cond8, i32 94, %union.tree_node* %6, %union.tree_node* %call, %union.tree_node* %new_cond) #6, !dbg !3053
  call void @llvm.dbg.value(metadata %union.tree_node* %call9, metadata !3047, metadata !DIExpression()), !dbg !3048
  br label %if.end, !dbg !3054

if.end:                                           ; preds = %entry, %cond.end
  %cond.0 = phi %union.tree_node* [ %call9, %cond.end ], [ %new_cond, %entry ], !dbg !3055
  call void @llvm.dbg.value(metadata %union.tree_node* %cond.0, metadata !3047, metadata !DIExpression()), !dbg !3048
  store %union.tree_node* %cond.0, %union.tree_node** %0, align 8, !dbg !3056
  ret void, !dbg !3057
}

; Function Attrs: nounwind uwtable
define internal fastcc void @combine_blocks(%struct.loop* %loop) unnamed_addr #5 !dbg !3058 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp27 = alloca %struct.edge_iterator, align 8
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %last = alloca %struct.gimple_stmt_iterator, align 8
  %tmp60 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp73 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3062, metadata !DIExpression()), !dbg !3075
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !3076
  %0 = load i32, i32* %num_nodes, align 4, !dbg !3076
  call void @llvm.dbg.value(metadata i32 %0, metadata !3066, metadata !DIExpression()), !dbg !3075
  %1 = bitcast %struct.edge_def** %e to i8*, !dbg !3077
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3077
  %2 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3078
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !3078
  tail call fastcc void @process_phi_nodes(%struct.loop* %loop) #8, !dbg !3079
  call void @llvm.dbg.value(metadata %struct.basic_block_def* null, metadata !3064, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 0, metadata !3067, metadata !DIExpression()), !dbg !3075
  %wide.trip.count = zext i32 %0 to i64, !dbg !3080
  br label %for.cond, !dbg !3083

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %for.inc ], [ 0, %entry ], !dbg !3084
  call void @llvm.dbg.value(metadata i64 %indvars.iv4, metadata !3067, metadata !DIExpression()), !dbg !3075
  %exitcond = icmp eq i64 %indvars.iv4, %wide.trip.count, !dbg !3080
  br i1 %exitcond, label %for.end, label %for.body, !dbg !3085

for.body:                                         ; preds = %for.cond
  %3 = load %struct.basic_block_def**, %struct.basic_block_def*** @ifc_bbs, align 8, !dbg !3086
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %3, i64 %indvars.iv4, !dbg !3086
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3086
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %4, metadata !3063, metadata !DIExpression()), !dbg !3075
  %call = tail call fastcc zeroext i8 @bb_with_exit_edge_p(%struct.loop* %loop, %struct.basic_block_def* %4) #8, !dbg !3088
  %tobool = icmp eq i8 %call, 0, !dbg !3088
  br i1 %tobool, label %for.inc, label %for.end, !dbg !3090

for.inc:                                          ; preds = %for.body
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1, !dbg !3091
  br label %for.cond, !dbg !3092, !llvm.loop !3093

for.end:                                          ; preds = %for.cond, %for.body
  %exit_bb.0 = phi %struct.basic_block_def* [ null, %for.cond ], [ %4, %for.body ], !dbg !3075
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %exit_bb.0, metadata !3064, metadata !DIExpression()), !dbg !3075
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !3095
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !3095
  %cmp1 = icmp eq %struct.basic_block_def* %exit_bb.0, %5, !dbg !3095
  br i1 %cmp1, label %cond.true, label %cond.end, !dbg !3095

cond.true:                                        ; preds = %for.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 945, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3095
  br label %cond.end, !dbg !3095

cond.end:                                         ; preds = %for.end, %cond.true
  call void @llvm.dbg.value(metadata i32 1, metadata !3067, metadata !DIExpression()), !dbg !3075
  %6 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3096
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3096
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3096
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3101
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3101
  %11 = zext i32 %0 to i64, !dbg !3103
  br label %for.cond2, !dbg !3103

for.cond2:                                        ; preds = %for.inc16, %cond.end
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.inc16 ], [ 1, %cond.end ], !dbg !3104
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !3067, metadata !DIExpression()), !dbg !3075
  %cmp3 = icmp ult i64 %indvars.iv2, %11, !dbg !3105
  br i1 %cmp3, label %for.body4, label %for.end18, !dbg !3106

for.body4:                                        ; preds = %for.cond2
  %12 = load %struct.basic_block_def**, %struct.basic_block_def*** @ifc_bbs, align 8, !dbg !3107
  %arrayidx6 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %12, i64 %indvars.iv2, !dbg !3107
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx6, align 8, !dbg !3107
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %13, metadata !3063, metadata !DIExpression()), !dbg !3075
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #7, !dbg !3108
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i64 0, i32 0, !dbg !3108
  %call7 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !3108
  %14 = extractvalue { i32, %struct.VEC_edge_gc** } %call7, 0, !dbg !3108
  store i32 %14, i32* %7, align 8, !dbg !3108
  %15 = extractvalue { i32, %struct.VEC_edge_gc** } %call7, 1, !dbg !3108
  store %struct.VEC_edge_gc** %15, %struct.VEC_edge_gc*** %8, align 8, !dbg !3108
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %6, i64 16, i1 false), !dbg !3108
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #7, !dbg !3108
  br label %for.cond8, !dbg !3109

for.cond8:                                        ; preds = %if.end14, %for.body4
  %16 = load i32, i32* %9, align 8, !dbg !3110
  %17 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %10, align 8, !dbg !3110
  %call9 = call fastcc %struct.edge_def* @ei_safe_edge(i32 %16, %struct.VEC_edge_gc** %17) #8, !dbg !3110
  call void @llvm.dbg.value(metadata %struct.edge_def* %call9, metadata !3068, metadata !DIExpression()), !dbg !3075
  store %struct.edge_def* %call9, %struct.edge_def** %e, align 8, !dbg !3111
  %tobool10 = icmp eq %struct.edge_def* %call9, null, !dbg !3112
  br i1 %tobool10, label %for.inc16, label %for.body11, !dbg !3112

for.body11:                                       ; preds = %for.cond8
  call void @llvm.dbg.value(metadata %struct.edge_def* %call9, metadata !3068, metadata !DIExpression()), !dbg !3075
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call9, i64 0, i32 0, !dbg !3113
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3113
  %cmp12 = icmp eq %struct.basic_block_def* %18, %exit_bb.0, !dbg !3116
  br i1 %cmp12, label %if.then13, label %if.else, !dbg !3117

if.then13:                                        ; preds = %for.body11
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3069, metadata !DIExpression(DW_OP_deref)), !dbg !3075
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3118
  br label %if.end14, !dbg !3118

if.else:                                          ; preds = %for.body11
  call void @llvm.dbg.value(metadata %struct.edge_def* %call9, metadata !3068, metadata !DIExpression()), !dbg !3075
  call void @remove_edge(%struct.edge_def* nonnull %call9) #6, !dbg !3119
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then13
  br label %for.cond8, !dbg !3120, !llvm.loop !3121

for.inc16:                                        ; preds = %for.cond8
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1, !dbg !3123
  br label %for.cond2, !dbg !3124, !llvm.loop !3125

for.end18:                                        ; preds = %for.cond2
  %cmp19 = icmp eq %struct.basic_block_def* %exit_bb.0, null, !dbg !3127
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !3129
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !3129
  br i1 %cmp19, label %if.else42, label %if.then20, !dbg !3130

if.then20:                                        ; preds = %for.end18
  %cmp21 = icmp eq %struct.basic_block_def* %exit_bb.0, %19, !dbg !3131
  br i1 %cmp21, label %if.end26, label %if.then22, !dbg !3134

if.then22:                                        ; preds = %if.then20
  %call24 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %19, %struct.basic_block_def* nonnull %exit_bb.0, i32 1) #6, !dbg !3135
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !3137
  call void @set_immediate_dominator(i32 1, %struct.basic_block_def* nonnull %exit_bb.0, %struct.basic_block_def* %20) #6, !dbg !3138
  br label %if.end26, !dbg !3139

if.end26:                                         ; preds = %if.then20, %if.then22
  %21 = bitcast %struct.edge_iterator* %tmp27 to i8*, !dbg !3140
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %21) #7, !dbg !3140
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %exit_bb.0, i64 0, i32 1, !dbg !3140
  %call28 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !3140
  %22 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp27, i64 0, i32 0, !dbg !3140
  %23 = extractvalue { i32, %struct.VEC_edge_gc** } %call28, 0, !dbg !3140
  store i32 %23, i32* %22, align 8, !dbg !3140
  %24 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp27, i64 0, i32 1, !dbg !3140
  %25 = extractvalue { i32, %struct.VEC_edge_gc** } %call28, 1, !dbg !3140
  store %struct.VEC_edge_gc** %25, %struct.VEC_edge_gc*** %24, align 8, !dbg !3140
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %21, i64 16, i1 false), !dbg !3140
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #7, !dbg !3140
  br label %for.cond29, !dbg !3140

for.cond29:                                       ; preds = %for.inc39, %if.end26
  %26 = load i32, i32* %9, align 8, !dbg !3142
  %27 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %10, align 8, !dbg !3142
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3068, metadata !DIExpression(DW_OP_deref)), !dbg !3075
  %call30 = call fastcc zeroext i8 @ei_cond(i32 %26, %struct.VEC_edge_gc** %27, %struct.edge_def** nonnull %e) #8, !dbg !3142
  %tobool31 = icmp eq i8 %call30, 0, !dbg !3140
  br i1 %tobool31, label %for.end40, label %for.body32, !dbg !3140

for.body32:                                       ; preds = %for.cond29
  %28 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3144
  call void @llvm.dbg.value(metadata %struct.edge_def* %28, metadata !3068, metadata !DIExpression()), !dbg !3075
  %call33 = call zeroext i8 @loop_exit_edge_p(%struct.loop* %loop, %struct.edge_def* %28) #6, !dbg !3147
  %tobool34 = icmp eq i8 %call33, 0, !dbg !3147
  br i1 %tobool34, label %if.then35, label %for.inc39, !dbg !3148

if.then35:                                        ; preds = %for.body32
  %29 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3149
  call void @llvm.dbg.value(metadata %struct.edge_def* %29, metadata !3068, metadata !DIExpression()), !dbg !3075
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !3150
  %call37 = call %struct.edge_def* @redirect_edge_and_branch(%struct.edge_def* %29, %struct.basic_block_def* %30) #6, !dbg !3151
  br label %for.inc39, !dbg !3151

for.inc39:                                        ; preds = %for.body32, %if.then35
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3069, metadata !DIExpression(DW_OP_deref)), !dbg !3075
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3142
  br label %for.cond29, !dbg !3142, !llvm.loop !3152

for.end40:                                        ; preds = %for.cond29
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !3154
  call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %31, %struct.basic_block_def* nonnull %exit_bb.0) #6, !dbg !3155
  br label %if.end48, !dbg !3156

if.else42:                                        ; preds = %for.end18
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !3157
  %call45 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %19, %struct.basic_block_def* %32, i32 1) #6, !dbg !3159
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !3160
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !3161
  call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %33, %struct.basic_block_def* %34) #6, !dbg !3162
  br label %if.end48

if.end48:                                         ; preds = %if.else42, %for.end40
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !3163
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %35, metadata !3065, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i32 1, metadata !3067, metadata !DIExpression()), !dbg !3075
  %36 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3164
  %37 = bitcast %struct.gimple_stmt_iterator* %last to i8*, !dbg !3164
  %38 = bitcast %struct.gimple_stmt_iterator* %tmp60 to i8*, !dbg !3165
  %39 = bitcast %struct.gimple_stmt_iterator* %tmp73 to i8*, !dbg !3164
  %40 = zext i32 %0 to i64, !dbg !3167
  br label %for.cond50, !dbg !3167

for.cond50:                                       ; preds = %cleanup, %if.end48
  %indvars.iv = phi i64 [ %indvars.iv.next, %cleanup ], [ 1, %if.end48 ], !dbg !3168
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3067, metadata !DIExpression()), !dbg !3075
  %cmp51 = icmp ult i64 %indvars.iv, %40, !dbg !3169
  br i1 %cmp51, label %for.body52, label %for.end78, !dbg !3170

for.body52:                                       ; preds = %for.cond50
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %36) #7, !dbg !3171
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %37) #7, !dbg !3172
  %41 = load %struct.basic_block_def**, %struct.basic_block_def*** @ifc_bbs, align 8, !dbg !3173
  %arrayidx54 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %41, i64 %indvars.iv, !dbg !3173
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx54, align 8, !dbg !3173
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %42, metadata !3063, metadata !DIExpression()), !dbg !3075
  %cmp55 = icmp eq %struct.basic_block_def* %42, %exit_bb.0, !dbg !3174
  br i1 %cmp55, label %cleanup, label %lor.lhs.false, !dbg !3176

lor.lhs.false:                                    ; preds = %for.body52
  %43 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !3177
  %cmp57 = icmp eq %struct.basic_block_def* %42, %43, !dbg !3178
  br i1 %cmp57, label %cleanup, label %if.end59, !dbg !3179

if.end59:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %38) #7, !dbg !3180
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp60, %struct.basic_block_def* %42) #8, !dbg !3180
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %36, i8* nonnull align 8 %38, i64 24, i1 false), !dbg !3180
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %38) #7, !dbg !3180
  br label %for.cond61, !dbg !3181

for.cond61:                                       ; preds = %if.end71, %if.end59
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3070, metadata !DIExpression(DW_OP_deref)), !dbg !3164
  %call62 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3182
  %tobool63 = icmp eq i8 %call62, 0, !dbg !3184
  br i1 %tobool63, label %for.body64, label %for.end72, !dbg !3185

for.body64:                                       ; preds = %for.cond61
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3070, metadata !DIExpression(DW_OP_deref)), !dbg !3164
  %call65 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3186
  %call66 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call65) #8, !dbg !3189
  %cmp67 = icmp eq i32 %call66, 4, !dbg !3190
  br i1 %cmp67, label %if.then68, label %if.else69, !dbg !3191

if.then68:                                        ; preds = %for.body64
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3070, metadata !DIExpression(DW_OP_deref)), !dbg !3164
  call void @gsi_remove(%struct.gimple_stmt_iterator* nonnull %gsi, i8 zeroext 1) #6, !dbg !3192
  br label %if.end71, !dbg !3192

if.else69:                                        ; preds = %for.body64
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3070, metadata !DIExpression(DW_OP_deref)), !dbg !3164
  %call70 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #8, !dbg !3193
  call void @gimple_set_bb(%union.gimple_statement_d* %call70, %struct.basic_block_def* %35) #6, !dbg !3195
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3070, metadata !DIExpression(DW_OP_deref)), !dbg !3164
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !3196
  br label %if.end71

if.end71:                                         ; preds = %if.else69, %if.then68
  br label %for.cond61, !dbg !3197, !llvm.loop !3198

for.end72:                                        ; preds = %for.cond61
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %39) #7, !dbg !3200
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp73, %struct.basic_block_def* %35) #8, !dbg !3200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %37, i8* nonnull align 8 %39, i64 24, i1 false), !dbg !3200
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %39) #7, !dbg !3200
  %call74 = call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %42) #8, !dbg !3201
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %last, metadata !3074, metadata !DIExpression(DW_OP_deref)), !dbg !3164
  call void @gsi_insert_seq_after(%struct.gimple_stmt_iterator* nonnull %last, %struct.gimple_seq_d* %call74, i32 0) #6, !dbg !3202
  call fastcc void @set_bb_seq(%struct.basic_block_def* %42, %struct.gimple_seq_d* null) #8, !dbg !3203
  call void @delete_basic_block(%struct.basic_block_def* %42) #6, !dbg !3204
  br label %cleanup, !dbg !3205

cleanup:                                          ; preds = %for.body52, %lor.lhs.false, %for.end72
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %37) #7, !dbg !3205
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %36) #7, !dbg !3205
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3206
  br label %for.cond50, !dbg !3207, !llvm.loop !3208

for.end78:                                        ; preds = %for.cond50
  br i1 %cmp19, label %if.end88, label %land.lhs.true, !dbg !3210

land.lhs.true:                                    ; preds = %for.end78
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !3212
  %cmp81 = icmp eq %struct.basic_block_def* %exit_bb.0, %44, !dbg !3213
  br i1 %cmp81, label %if.end88, label %land.lhs.true82, !dbg !3214

land.lhs.true82:                                  ; preds = %land.lhs.true
  %call84 = call zeroext i8 @can_merge_blocks_p(%struct.basic_block_def* %44, %struct.basic_block_def* nonnull %exit_bb.0) #6, !dbg !3215
  %tobool85 = icmp eq i8 %call84, 0, !dbg !3215
  br i1 %tobool85, label %if.end88, label %if.then86, !dbg !3216

if.then86:                                        ; preds = %land.lhs.true82
  %45 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !3217
  call void @merge_blocks(%struct.basic_block_def* %45, %struct.basic_block_def* nonnull %exit_bb.0) #6, !dbg !3218
  br label %if.end88, !dbg !3218

if.end88:                                         ; preds = %land.lhs.true82, %land.lhs.true, %for.end78, %if.then86
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !3219
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3219
  ret void, !dbg !3219
}

; Function Attrs: nounwind uwtable
define internal fastcc void @clean_predicate_lists(%struct.loop* %loop) unnamed_addr #5 !dbg !3220 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3222, metadata !DIExpression()), !dbg !3227
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !3228
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3228
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3229
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3229
  %call = tail call %struct.basic_block_def** @get_loop_body(%struct.loop* %loop) #6, !dbg !3230
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %call, metadata !3223, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i32 0, metadata !3224, metadata !DIExpression()), !dbg !3227
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !3231
  %2 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3234
  %3 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3234
  %4 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3234
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3237
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3237
  br label %for.cond, !dbg !3239

for.cond:                                         ; preds = %for.inc8, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc8 ], [ 0, %entry ], !dbg !3240
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3224, metadata !DIExpression()), !dbg !3227
  %7 = load i32, i32* %num_nodes, align 4, !dbg !3241
  %8 = zext i32 %7 to i64, !dbg !3242
  %cmp = icmp ult i64 %indvars.iv, %8, !dbg !3242
  br i1 %cmp, label %for.body, label %for.end9, !dbg !3243

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call, i64 %indvars.iv, !dbg !3244
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3244
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i64 0, i32 2, !dbg !3245
  store i8* null, i8** %aux, align 8, !dbg !3246
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !3247
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3247
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i64 0, i32 1, !dbg !3247
  %call3 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !3247
  %11 = extractvalue { i32, %struct.VEC_edge_gc** } %call3, 0, !dbg !3247
  store i32 %11, i32* %3, align 8, !dbg !3247
  %12 = extractvalue { i32, %struct.VEC_edge_gc** } %call3, 1, !dbg !3247
  store %struct.VEC_edge_gc** %12, %struct.VEC_edge_gc*** %4, align 8, !dbg !3247
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !3247
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !3247
  br label %for.cond4, !dbg !3247

for.cond4:                                        ; preds = %for.body6, %for.body
  %13 = load i32, i32* %5, align 8, !dbg !3248
  %14 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %6, align 8, !dbg !3248
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3225, metadata !DIExpression(DW_OP_deref)), !dbg !3227
  %call5 = call fastcc zeroext i8 @ei_cond(i32 %13, %struct.VEC_edge_gc** %14, %struct.edge_def** nonnull %e) #8, !dbg !3248
  %tobool = icmp eq i8 %call5, 0, !dbg !3247
  br i1 %tobool, label %for.inc8, label %for.body6, !dbg !3247

for.body6:                                        ; preds = %for.cond4
  %15 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3249
  call void @llvm.dbg.value(metadata %struct.edge_def* %15, metadata !3225, metadata !DIExpression()), !dbg !3227
  %aux7 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %15, i64 0, i32 3, !dbg !3250
  store i8* null, i8** %aux7, align 8, !dbg !3251
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3226, metadata !DIExpression(DW_OP_deref)), !dbg !3227
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3248
  br label %for.cond4, !dbg !3248, !llvm.loop !3252

for.inc8:                                         ; preds = %for.cond4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3254
  br label %for.cond, !dbg !3255, !llvm.loop !3256

for.end9:                                         ; preds = %for.cond
  %16 = bitcast %struct.basic_block_def** %call to i8*, !dbg !3258
  call void @free(i8* %16) #6, !dbg !3259
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3260
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3260
  ret void, !dbg !3260
}

declare dso_local %struct.edge_def* @single_exit(%struct.loop*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !3261 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !3265, metadata !DIExpression()), !dbg !3267
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !3268
  store i32 0, i32* %index, align 8, !dbg !3269
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !3270
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !3271
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !3272
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !3272
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !3272
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !3273 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !3279, metadata !DIExpression()), !dbg !3280
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !3281
  %tobool = icmp eq i8 %call, 0, !dbg !3281
  br i1 %tobool, label %if.then, label %if.else, !dbg !3283

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !3284
  br label %return, !dbg !3286

if.else:                                          ; preds = %entry
  br label %return, !dbg !3287

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !3289
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !3289
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !3289
  ret i8 %retval.0, !dbg !3290
}

declare dso_local zeroext i8 @loop_exit_edge_p(%struct.loop*, %struct.edge_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !3291 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !3296, metadata !DIExpression()), !dbg !3297
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !3298
  %0 = load i32, i32* %index, align 8, !dbg !3298
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !3298
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3298
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #8, !dbg !3298
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3298
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3298

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !3298
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3298
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #8, !dbg !3298
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3298
  br label %cond.end, !dbg !3298

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3298
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !3298
  %cmp = icmp ult i32 %0, %call2, !dbg !3298
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !3298

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3298
  br label %cond.end5, !dbg !3298

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !3299
  %inc = add i32 %5, 1, !dbg !3299
  store i32 %inc, i32* %index, align 8, !dbg !3299
  ret void, !dbg !3300
}

declare dso_local void @calculate_dominance_info(i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.basic_block_def** @get_loop_body_in_if_conv_order(%struct.loop* %loop) unnamed_addr #5 !dbg !3301 {
entry:
  %visited = alloca %struct.bitmap_head_def*, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3305, metadata !DIExpression()), !dbg !3312
  %0 = bitcast %struct.bitmap_head_def** %visited to i8*, !dbg !3313
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3313
  call void @llvm.dbg.value(metadata i32 0, metadata !3310, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i32 0, metadata !3311, metadata !DIExpression()), !dbg !3312
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !3314
  %1 = load i32, i32* %num_nodes, align 4, !dbg !3314
  %tobool = icmp eq i32 %1, 0, !dbg !3314
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3314

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 1082, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3314
  br label %cond.end, !dbg !3314

cond.end:                                         ; preds = %entry, %cond.true
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !3315
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !3315
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3315
  %cfg = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !3315
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3315
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 1, !dbg !3315
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3315
  %cmp = icmp eq %struct.basic_block_def* %2, %5, !dbg !3315
  br i1 %cmp, label %cond.true1, label %cond.end3, !dbg !3315

cond.true1:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 1083, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3315
  br label %cond.end3, !dbg !3315

cond.end3:                                        ; preds = %cond.end, %cond.true1
  %6 = load i32, i32* %num_nodes, align 4, !dbg !3316
  %conv = zext i32 %6 to i64, !dbg !3316
  %call = tail call i8* @xcalloc(i64 %conv, i64 8) #6, !dbg !3316
  %7 = bitcast i8* %call to %struct.basic_block_def**, !dbg !3316
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %7, metadata !3306, metadata !DIExpression()), !dbg !3312
  %call6 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3317
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call6, metadata !3309, metadata !DIExpression()), !dbg !3312
  store %struct.bitmap_head_def* %call6, %struct.bitmap_head_def** %visited, align 8, !dbg !3318
  %call7 = tail call %struct.basic_block_def** @get_loop_body_in_bfs_order(%struct.loop* %loop) #6, !dbg !3319
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %call7, metadata !3307, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i32 0, metadata !3310, metadata !DIExpression()), !dbg !3312
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !3320
  %.pre = load i32, i32* %num_nodes, align 4, !dbg !3325
  br label %while.cond, !dbg !3326

while.cond:                                       ; preds = %if.end36, %cond.end3
  %8 = phi i32 [ %.pre, %cond.end3 ], [ %18, %if.end36 ], !dbg !3325
  %index.0 = phi i32 [ 0, %cond.end3 ], [ %index.1, %if.end36 ], !dbg !3312
  %visited_count.0 = phi i32 [ 0, %cond.end3 ], [ %visited_count.2, %if.end36 ], !dbg !3327
  call void @llvm.dbg.value(metadata i32 %visited_count.0, metadata !3311, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i32 %index.0, metadata !3310, metadata !DIExpression()), !dbg !3312
  %cmp9 = icmp ult i32 %index.0, %8, !dbg !3328
  br i1 %cmp9, label %while.body, label %while.end, !dbg !3326

while.body:                                       ; preds = %while.cond
  %idxprom = zext i32 %index.0 to i64, !dbg !3329
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call7, i64 %idxprom, !dbg !3329
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3329
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %9, metadata !3308, metadata !DIExpression()), !dbg !3312
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i64 0, i32 13, !dbg !3330
  %10 = load i32, i32* %flags, align 8, !dbg !3330
  %and = and i32 %10, 4, !dbg !3332
  %tobool11 = icmp eq i32 %and, 0, !dbg !3332
  br i1 %tobool11, label %if.end, label %if.then, !dbg !3333

if.then:                                          ; preds = %while.body
  %11 = bitcast %struct.basic_block_def** %call7 to i8*, !dbg !3334
  call void @free(i8* %11) #6, !dbg !3336
  %12 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %visited, align 8, !dbg !3337
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %12, metadata !3309, metadata !DIExpression()), !dbg !3312
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %12) #6, !dbg !3337
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3309, metadata !DIExpression()), !dbg !3312
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %visited, align 8, !dbg !3337
  call void @free(i8* %call) #6, !dbg !3338
  br label %cleanup, !dbg !3339

if.end:                                           ; preds = %while.body
  %13 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %visited, align 8, !dbg !3340
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %13, metadata !3309, metadata !DIExpression()), !dbg !3312
  %index12 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i64 0, i32 9, !dbg !3341
  %14 = load i32, i32* %index12, align 8, !dbg !3341
  %call13 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %13, i32 %14) #6, !dbg !3342
  %tobool14 = icmp eq i32 %call13, 0, !dbg !3342
  br i1 %tobool14, label %if.then15, label %if.end27, !dbg !3343

if.then15:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def** %visited, metadata !3309, metadata !DIExpression(DW_OP_deref)), !dbg !3312
  %call16 = call fastcc zeroext i8 @pred_blocks_visited_p(%struct.basic_block_def* %9, %struct.bitmap_head_def** nonnull %visited) #8, !dbg !3344
  %tobool18 = icmp eq i8 %call16, 0, !dbg !3344
  br i1 %tobool18, label %lor.lhs.false, label %if.then21, !dbg !3345

lor.lhs.false:                                    ; preds = %if.then15
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !3346
  %cmp19 = icmp eq %struct.basic_block_def* %9, %15, !dbg !3347
  br i1 %cmp19, label %if.then21, label %if.end27, !dbg !3348

if.then21:                                        ; preds = %if.then15, %lor.lhs.false
  %16 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %visited, align 8, !dbg !3349
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %16, metadata !3309, metadata !DIExpression()), !dbg !3312
  %17 = load i32, i32* %index12, align 8, !dbg !3351
  %call23 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %16, i32 %17) #6, !dbg !3352
  %inc = add i32 %visited_count.0, 1, !dbg !3353
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3311, metadata !DIExpression()), !dbg !3312
  %idxprom24 = zext i32 %visited_count.0 to i64, !dbg !3354
  %arrayidx25 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %7, i64 %idxprom24, !dbg !3354
  store %struct.basic_block_def* %9, %struct.basic_block_def** %arrayidx25, align 8, !dbg !3355
  br label %if.end27, !dbg !3356

if.end27:                                         ; preds = %if.end, %lor.lhs.false, %if.then21
  %visited_count.2 = phi i32 [ %visited_count.0, %if.end ], [ %inc, %if.then21 ], [ %visited_count.0, %lor.lhs.false ], !dbg !3312
  call void @llvm.dbg.value(metadata i32 %visited_count.2, metadata !3311, metadata !DIExpression()), !dbg !3312
  %inc28 = add i32 %index.0, 1, !dbg !3357
  call void @llvm.dbg.value(metadata i32 %inc28, metadata !3310, metadata !DIExpression()), !dbg !3312
  %18 = load i32, i32* %num_nodes, align 4, !dbg !3358
  %cmp30 = icmp eq i32 %inc28, %18, !dbg !3360
  br i1 %cmp30, label %land.lhs.true, label %if.end36, !dbg !3361

land.lhs.true:                                    ; preds = %if.end27
  %cmp33 = icmp eq i32 %visited_count.2, %inc28, !dbg !3362
  %spec.select = select i1 %cmp33, i32 %inc28, i32 0, !dbg !3363
  br label %if.end36, !dbg !3363

if.end36:                                         ; preds = %land.lhs.true, %if.end27
  %index.1 = phi i32 [ %inc28, %if.end27 ], [ %spec.select, %land.lhs.true ], !dbg !3364
  call void @llvm.dbg.value(metadata i32 %index.1, metadata !3310, metadata !DIExpression()), !dbg !3312
  br label %while.cond, !dbg !3326, !llvm.loop !3365

while.end:                                        ; preds = %while.cond
  %19 = bitcast %struct.basic_block_def** %call7 to i8*, !dbg !3367
  call void @free(i8* %19) #6, !dbg !3368
  %20 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %visited, align 8, !dbg !3369
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %20, metadata !3309, metadata !DIExpression()), !dbg !3312
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %20) #6, !dbg !3369
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3309, metadata !DIExpression()), !dbg !3312
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %visited, align 8, !dbg !3369
  br label %cleanup, !dbg !3370

cleanup:                                          ; preds = %while.end, %if.then
  %retval.0 = phi %struct.basic_block_def** [ null, %if.then ], [ %7, %while.end ], !dbg !3312
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3371
  ret %struct.basic_block_def** %retval.0, !dbg !3371
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @if_convertible_bb_p(%struct.loop* %loop, %struct.basic_block_def* %bb, %struct.basic_block_def* %exit_bb) unnamed_addr #5 !dbg !3372 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3376, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3377, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %exit_bb, metadata !3378, metadata !DIExpression()), !dbg !3381
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !3382
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3382
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3383
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3383
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3384
  %tobool = icmp eq %struct._IO_FILE* %2, null, !dbg !3384
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3386

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* @dump_flags, align 4, !dbg !3387
  %and = and i32 %3, 8, !dbg !3388
  %tobool1 = icmp eq i32 %and, 0, !dbg !3388
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3389

if.then:                                          ; preds = %land.lhs.true
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !3390
  %4 = load i32, i32* %index, align 8, !dbg !3390
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %4) #6, !dbg !3391
  br label %if.end, !dbg !3391

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %tobool2 = icmp eq %struct.basic_block_def* %exit_bb, null, !dbg !3392
  br i1 %tobool2, label %if.end41, label %if.then3, !dbg !3394

if.then3:                                         ; preds = %if.end
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !3395
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !3395
  %cmp = icmp eq %struct.basic_block_def* %5, %bb, !dbg !3398
  br i1 %cmp, label %if.else, label %if.then4, !dbg !3399

if.then4:                                         ; preds = %if.then3
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3400
  %tobool5 = icmp eq %struct._IO_FILE* %6, null, !dbg !3400
  br i1 %tobool5, label %cleanup, label %land.lhs.true6, !dbg !3403

land.lhs.true6:                                   ; preds = %if.then4
  %7 = load i32, i32* @dump_flags, align 4, !dbg !3404
  %and7 = and i32 %7, 8, !dbg !3405
  %tobool8 = icmp eq i32 %and7, 0, !dbg !3405
  br i1 %tobool8, label %cleanup, label %if.then9, !dbg !3406

if.then9:                                         ; preds = %land.lhs.true6
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %6, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !3407
  br label %cleanup, !dbg !3407

if.else:                                          ; preds = %if.then3
  %call12 = tail call zeroext i8 @empty_block_p(%struct.basic_block_def* %bb) #6, !dbg !3408
  %tobool13 = icmp eq i8 %call12, 0, !dbg !3408
  br i1 %tobool13, label %if.then14, label %if.else22, !dbg !3410

if.then14:                                        ; preds = %if.else
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3411
  %tobool15 = icmp eq %struct._IO_FILE* %8, null, !dbg !3411
  br i1 %tobool15, label %cleanup, label %land.lhs.true16, !dbg !3414

land.lhs.true16:                                  ; preds = %if.then14
  %9 = load i32, i32* @dump_flags, align 4, !dbg !3415
  %and17 = and i32 %9, 8, !dbg !3416
  %tobool18 = icmp eq i32 %and17, 0, !dbg !3416
  br i1 %tobool18, label %cleanup, label %if.then19, !dbg !3417

if.then19:                                        ; preds = %land.lhs.true16
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %8, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !3418
  br label %cleanup, !dbg !3418

if.else22:                                        ; preds = %if.else
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !3419
  %cmp24 = icmp eq %struct.basic_block_def* %10, %bb, !dbg !3421
  %cmp26 = icmp ne %struct.basic_block_def* %bb, %exit_bb, !dbg !3422
  %or.cond = and i1 %cmp24, %cmp26, !dbg !3423
  br i1 %or.cond, label %land.lhs.true27, label %if.end41, !dbg !3423

land.lhs.true27:                                  ; preds = %if.else22
  %call28 = tail call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %bb, %struct.basic_block_def* nonnull %exit_bb) #6, !dbg !3424
  %tobool29 = icmp eq i8 %call28, 0, !dbg !3424
  br i1 %tobool29, label %if.then30, label %if.end41, !dbg !3425

if.then30:                                        ; preds = %land.lhs.true27
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3426
  %tobool31 = icmp eq %struct._IO_FILE* %11, null, !dbg !3426
  br i1 %tobool31, label %cleanup, label %land.lhs.true32, !dbg !3429

land.lhs.true32:                                  ; preds = %if.then30
  %12 = load i32, i32* @dump_flags, align 4, !dbg !3430
  %and33 = and i32 %12, 8, !dbg !3431
  %tobool34 = icmp eq i32 %and33, 0, !dbg !3431
  br i1 %tobool34, label %cleanup, label %if.then35, !dbg !3432

if.then35:                                        ; preds = %land.lhs.true32
  %call36 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !3433
  br label %cleanup, !dbg !3433

if.end41:                                         ; preds = %land.lhs.true27, %if.end, %if.else22
  %13 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3434
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #7, !dbg !3434
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3434
  %call42 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !3434
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3434
  %15 = extractvalue { i32, %struct.VEC_edge_gc** } %call42, 0, !dbg !3434
  store i32 %15, i32* %14, align 8, !dbg !3434
  %16 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3434
  %17 = extractvalue { i32, %struct.VEC_edge_gc** } %call42, 1, !dbg !3434
  store %struct.VEC_edge_gc** %17, %struct.VEC_edge_gc*** %16, align 8, !dbg !3434
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %13, i64 16, i1 false), !dbg !3434
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #7, !dbg !3434
  %18 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3436
  %19 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3436
  br label %for.cond, !dbg !3434

for.cond:                                         ; preds = %for.inc, %if.end41
  %20 = load i32, i32* %18, align 8, !dbg !3438
  %21 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %19, align 8, !dbg !3438
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3379, metadata !DIExpression(DW_OP_deref)), !dbg !3381
  %call43 = call fastcc zeroext i8 @ei_cond(i32 %20, %struct.VEC_edge_gc** %21, %struct.edge_def** nonnull %e) #8, !dbg !3438
  %tobool44 = icmp eq i8 %call43, 0, !dbg !3434
  br i1 %tobool44, label %cleanup.loopexit, label %for.body, !dbg !3434

for.body:                                         ; preds = %for.cond
  %22 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3439
  call void @llvm.dbg.value(metadata %struct.edge_def* %22, metadata !3379, metadata !DIExpression()), !dbg !3381
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %22, i64 0, i32 7, !dbg !3441
  %23 = load i32, i32* %flags, align 8, !dbg !3441
  %and45 = and i32 %23, 142, !dbg !3442
  %tobool46 = icmp eq i32 %and45, 0, !dbg !3442
  br i1 %tobool46, label %for.inc, label %if.then47, !dbg !3443

if.then47:                                        ; preds = %for.body
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3444
  %tobool48 = icmp eq %struct._IO_FILE* %24, null, !dbg !3444
  br i1 %tobool48, label %cleanup, label %land.lhs.true49, !dbg !3447

land.lhs.true49:                                  ; preds = %if.then47
  %25 = load i32, i32* @dump_flags, align 4, !dbg !3448
  %and50 = and i32 %25, 8, !dbg !3449
  %tobool51 = icmp eq i32 %and50, 0, !dbg !3449
  br i1 %tobool51, label %cleanup, label %if.then52, !dbg !3450

if.then52:                                        ; preds = %land.lhs.true49
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !3451
  br label %cleanup, !dbg !3451

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3380, metadata !DIExpression(DW_OP_deref)), !dbg !3381
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3438
  br label %for.cond, !dbg !3438, !llvm.loop !3452

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !3454

cleanup:                                          ; preds = %cleanup.loopexit, %land.lhs.true6, %if.then4, %land.lhs.true32, %if.then30, %land.lhs.true16, %if.then14, %land.lhs.true49, %if.then47, %if.then52, %if.then35, %if.then19, %if.then9
  %retval.0 = phi i8 [ 0, %if.then9 ], [ 0, %land.lhs.true6 ], [ 0, %if.then4 ], [ 0, %if.then19 ], [ 0, %land.lhs.true16 ], [ 0, %if.then14 ], [ 0, %if.then35 ], [ 0, %land.lhs.true32 ], [ 0, %if.then30 ], [ 0, %if.then52 ], [ 0, %land.lhs.true49 ], [ 0, %if.then47 ], [ 1, %cleanup.loopexit ], !dbg !3381
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3454
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3454
  ret i8 %retval.0, !dbg !3454
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @if_convertible_stmt_p(%struct.loop* %loop, %struct.basic_block_def* %bb, %union.gimple_statement_d* %stmt) unnamed_addr #5 !dbg !3455 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3459, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3460, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3461, metadata !DIExpression()), !dbg !3462
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #8, !dbg !3463
  switch i32 %call, label %sw.default [
    i32 4, label %sw.epilog
    i32 2, label %sw.epilog
    i32 6, label %sw.bb
    i32 1, label %sw.epilog
  ], !dbg !3464

sw.bb:                                            ; preds = %entry
  %call1 = tail call fastcc zeroext i8 @if_convertible_gimple_assign_stmt_p(%struct.loop* %loop, %struct.basic_block_def* %bb, %union.gimple_statement_d* %stmt) #8, !dbg !3465
  %tobool = icmp eq i8 %call1, 0, !dbg !3465
  br i1 %tobool, label %return, label %sw.epilog, !dbg !3468

sw.default:                                       ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3469
  %tobool2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3469
  br i1 %tobool2, label %return, label %land.lhs.true, !dbg !3471

land.lhs.true:                                    ; preds = %sw.default
  %1 = load i32, i32* @dump_flags, align 4, !dbg !3472
  %and = and i32 %1, 8, !dbg !3473
  %tobool3 = icmp eq i32 %and, 0, !dbg !3473
  br i1 %tobool3, label %return, label %if.then4, !dbg !3474

if.then4:                                         ; preds = %land.lhs.true
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !3475
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3477
  tail call void @print_gimple_stmt(%struct._IO_FILE* %2, %union.gimple_statement_d* %stmt, i32 0, i32 2) #6, !dbg !3478
  br label %return, !dbg !3479

sw.epilog:                                        ; preds = %sw.bb, %entry, %entry, %entry
  br label %return, !dbg !3480

return:                                           ; preds = %land.lhs.true, %sw.default, %sw.bb, %if.then4, %sw.epilog
  %retval.0 = phi i8 [ 1, %sw.epilog ], [ 0, %sw.bb ], [ 0, %if.then4 ], [ 0, %land.lhs.true ], [ 0, %sw.default ], !dbg !3462
  ret i8 %retval.0, !dbg !3481
}

declare dso_local void @gsi_start_phis(%struct.gimple_stmt_iterator* sret, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @if_convertible_phi_p(%struct.loop* %loop, %struct.basic_block_def* %bb, %union.gimple_statement_d* %phi) unnamed_addr #5 !dbg !3482 {
entry:
  %imm_iter = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3484, metadata !DIExpression()), !dbg !3498
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3485, metadata !DIExpression()), !dbg !3498
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !3486, metadata !DIExpression()), !dbg !3498
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3499
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !3499
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3501

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @dump_flags, align 4, !dbg !3502
  %and = and i32 %1, 8, !dbg !3503
  %tobool1 = icmp eq i32 %and, 0, !dbg !3503
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3504

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3505
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3507
  tail call void @print_gimple_stmt(%struct._IO_FILE* %2, %union.gimple_statement_d* %phi, i32 0, i32 2) #6, !dbg !3508
  br label %if.end, !dbg !3509

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !3510
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !3510
  %cmp = icmp eq %struct.basic_block_def* %3, %bb, !dbg !3512
  br i1 %cmp, label %if.end13, label %land.lhs.true2, !dbg !3513

land.lhs.true2:                                   ; preds = %if.end
  %call3 = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %phi) #8, !dbg !3514
  %cmp4 = icmp eq i32 %call3, 2, !dbg !3515
  br i1 %cmp4, label %if.end13, label %if.then5, !dbg !3516

if.then5:                                         ; preds = %land.lhs.true2
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3517
  %tobool6 = icmp eq %struct._IO_FILE* %4, null, !dbg !3517
  br i1 %tobool6, label %return, label %land.lhs.true7, !dbg !3520

land.lhs.true7:                                   ; preds = %if.then5
  %5 = load i32, i32* @dump_flags, align 4, !dbg !3521
  %and8 = and i32 %5, 8, !dbg !3522
  %tobool9 = icmp eq i32 %and8, 0, !dbg !3522
  br i1 %tobool9, label %return, label %if.then10, !dbg !3523

if.then10:                                        ; preds = %land.lhs.true7
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0)) #6, !dbg !3524
  br label %return, !dbg !3524

if.end13:                                         ; preds = %land.lhs.true2, %if.end
  %call14 = tail call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %phi) #8, !dbg !3525
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %call14, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3525
  %6 = bitcast i32* %var to %union.tree_node**, !dbg !3525
  %7 = load %union.tree_node*, %union.tree_node** %6, align 8, !dbg !3525
  %call15 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %7) #6, !dbg !3526
  %tobool16 = icmp eq i8 %call15, 0, !dbg !3526
  br i1 %tobool16, label %if.then17, label %if.end46, !dbg !3527

if.then17:                                        ; preds = %if.end13
  %8 = bitcast %struct.immediate_use_iterator_d* %imm_iter to i8*, !dbg !3528
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %8) #7, !dbg !3528
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !3529
  %cmp19 = icmp eq %struct.basic_block_def* %9, %bb, !dbg !3531
  br i1 %cmp19, label %if.end28, label %if.then20, !dbg !3532

if.then20:                                        ; preds = %if.then17
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3533
  %tobool21 = icmp eq %struct._IO_FILE* %10, null, !dbg !3533
  br i1 %tobool21, label %cleanup, label %land.lhs.true22, !dbg !3536

land.lhs.true22:                                  ; preds = %if.then20
  %11 = load i32, i32* @dump_flags, align 4, !dbg !3537
  %and23 = and i32 %11, 8, !dbg !3538
  %tobool24 = icmp eq i32 %and23, 0, !dbg !3538
  br i1 %tobool24, label %cleanup, label %if.then25, !dbg !3539

if.then25:                                        ; preds = %land.lhs.true22
  %call26 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !3540
  br label %cleanup, !dbg !3540

if.end28:                                         ; preds = %if.then17
  %call29 = tail call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %phi) #8, !dbg !3541
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm_iter, metadata !3487, metadata !DIExpression(DW_OP_deref)), !dbg !3543
  %call30 = call fastcc %struct.ssa_use_operand_d* @first_readonly_imm_use(%struct.immediate_use_iterator_d* nonnull %imm_iter, %union.tree_node* %call29) #8, !dbg !3541
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call30, metadata !3497, metadata !DIExpression()), !dbg !3543
  br label %for.cond, !dbg !3541

for.cond:                                         ; preds = %for.inc, %if.end28
  %use_p.0 = phi %struct.ssa_use_operand_d* [ %call30, %if.end28 ], [ %call44, %for.inc ], !dbg !3544
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.0, metadata !3497, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm_iter, metadata !3487, metadata !DIExpression(DW_OP_deref)), !dbg !3543
  %call31 = call fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* nonnull %imm_iter) #8, !dbg !3545
  %tobool32 = icmp eq i8 %call31, 0, !dbg !3545
  br i1 %tobool32, label %for.body, label %cleanup.loopexit, !dbg !3541

for.body:                                         ; preds = %for.cond
  %stmt = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use_p.0, i64 0, i32 2, i32 0, !dbg !3547
  %12 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3547
  %call33 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %12) #8, !dbg !3550
  %cmp34 = icmp eq i32 %call33, 16, !dbg !3551
  br i1 %cmp34, label %if.then35, label %for.inc, !dbg !3552

if.then35:                                        ; preds = %for.body
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3553
  %tobool36 = icmp eq %struct._IO_FILE* %13, null, !dbg !3553
  br i1 %tobool36, label %cleanup, label %land.lhs.true37, !dbg !3556

land.lhs.true37:                                  ; preds = %if.then35
  %14 = load i32, i32* @dump_flags, align 4, !dbg !3557
  %and38 = and i32 %14, 8, !dbg !3558
  %tobool39 = icmp eq i32 %and38, 0, !dbg !3558
  br i1 %tobool39, label %cleanup, label %if.then40, !dbg !3559

if.then40:                                        ; preds = %land.lhs.true37
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %13, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !3560
  br label %cleanup, !dbg !3560

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm_iter, metadata !3487, metadata !DIExpression(DW_OP_deref)), !dbg !3543
  %call44 = call fastcc %struct.ssa_use_operand_d* @next_readonly_imm_use(%struct.immediate_use_iterator_d* nonnull %imm_iter) #8, !dbg !3545
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call44, metadata !3497, metadata !DIExpression()), !dbg !3543
  br label %for.cond, !dbg !3545, !llvm.loop !3561

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !3563

cleanup:                                          ; preds = %cleanup.loopexit, %land.lhs.true22, %if.then20, %land.lhs.true37, %if.then35, %if.then40, %if.then25
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then25 ], [ false, %land.lhs.true22 ], [ false, %if.then20 ], [ false, %if.then40 ], [ false, %land.lhs.true37 ], [ false, %if.then35 ], [ true, %cleanup.loopexit ]
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %8) #7, !dbg !3563
  br i1 %cleanup.dest.slot.0, label %if.end46, label %return

if.end46:                                         ; preds = %if.end13, %cleanup
  br label %return, !dbg !3564

return:                                           ; preds = %land.lhs.true7, %if.then5, %cleanup, %if.then10, %if.end46
  %retval.1 = phi i8 [ 1, %if.end46 ], [ 0, %cleanup ], [ 0, %if.then10 ], [ 0, %land.lhs.true7 ], [ 0, %if.then5 ], !dbg !3498
  ret i8 %retval.1, !dbg !3565
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @bb_with_exit_edge_p(%struct.loop* %loop, %struct.basic_block_def* %bb) unnamed_addr #5 !dbg !3566 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3570, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3571, metadata !DIExpression()), !dbg !3575
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !3576
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3576
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3577
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3577
  call void @llvm.dbg.value(metadata i8 0, metadata !3574, metadata !DIExpression()), !dbg !3575
  %2 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3578
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !3578
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3578
  %call = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !3578
  %3 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3578
  %4 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !3578
  store i32 %4, i32* %3, align 8, !dbg !3578
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3578
  %6 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !3578
  store %struct.VEC_edge_gc** %6, %struct.VEC_edge_gc*** %5, align 8, !dbg !3578
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !3578
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !3578
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3580
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3580
  br label %for.cond, !dbg !3578

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %7, align 8, !dbg !3582
  %10 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %8, align 8, !dbg !3582
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3572, metadata !DIExpression(DW_OP_deref)), !dbg !3575
  %call1 = call fastcc zeroext i8 @ei_cond(i32 %9, %struct.VEC_edge_gc** %10, %struct.edge_def** nonnull %e) #8, !dbg !3582
  %tobool = icmp eq i8 %call1, 0, !dbg !3578
  br i1 %tobool, label %for.end, label %for.body, !dbg !3578

for.body:                                         ; preds = %for.cond
  %11 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3583
  call void @llvm.dbg.value(metadata %struct.edge_def* %11, metadata !3572, metadata !DIExpression()), !dbg !3575
  %call2 = call zeroext i8 @loop_exit_edge_p(%struct.loop* %loop, %struct.edge_def* %11) #6, !dbg !3585
  %tobool3 = icmp eq i8 %call2, 0, !dbg !3585
  br i1 %tobool3, label %for.inc, label %for.end, !dbg !3586

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3573, metadata !DIExpression(DW_OP_deref)), !dbg !3575
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3582
  br label %for.cond, !dbg !3582, !llvm.loop !3587

for.end:                                          ; preds = %for.body, %for.cond
  %exit_edge_found.0 = phi i8 [ 0, %for.cond ], [ 1, %for.body ], !dbg !3575
  call void @llvm.dbg.value(metadata i8 %exit_edge_found.0, metadata !3574, metadata !DIExpression()), !dbg !3575
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3589
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3589
  ret i8 %exit_edge_found.0, !dbg !3590
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3591 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3596
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3596
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3596

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3596
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3596
  br label %cond.end, !dbg !3596

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3596
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !3596
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !3597
  %conv3 = zext i1 %cmp to i8, !dbg !3598
  ret i8 %conv3, !dbg !3599
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3600 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3605
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3605
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3605

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !3605
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3605
  br label %cond.end, !dbg !3605

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3605
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #8, !dbg !3605
  ret %struct.edge_def* %call2, !dbg !3606
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !3607 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3613, metadata !DIExpression()), !dbg !3614
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3615
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3615

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3615
  %0 = load i32, i32* %num, align 8, !dbg !3615
  br label %cond.end, !dbg !3615

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3615
  ret i32 %cond, !dbg !3615
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3616 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !3621
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3621

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3621
  br label %cond.end, !dbg !3621

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !3622
  ret %struct.VEC_edge_gc* %0, !dbg !3623
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3624 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3628, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3629, metadata !DIExpression()), !dbg !3630
  br label %land.end, !dbg !3631

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3631
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3631
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3631
  ret %struct.edge_def* %0, !dbg !3631
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #2

declare dso_local %struct.basic_block_def** @get_loop_body_in_bfs_order(%struct.loop*) local_unnamed_addr #2

declare dso_local void @bitmap_obstack_free(%struct.bitmap_head_def*) local_unnamed_addr #2

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @pred_blocks_visited_p(%struct.basic_block_def* %bb, %struct.bitmap_head_def** %visited) unnamed_addr #5 !dbg !3632 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3637, metadata !DIExpression()), !dbg !3641
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def** %visited, metadata !3638, metadata !DIExpression()), !dbg !3641
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !3642
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3642
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3643
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3643
  %2 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3644
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !3644
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3644
  %call = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #8, !dbg !3644
  %3 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3644
  %4 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !3644
  store i32 %4, i32* %3, align 8, !dbg !3644
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3644
  %6 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !3644
  store %struct.VEC_edge_gc** %6, %struct.VEC_edge_gc*** %5, align 8, !dbg !3644
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !3644
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !3644
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3646
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3646
  br label %for.cond, !dbg !3644

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %7, align 8, !dbg !3648
  %10 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %8, align 8, !dbg !3648
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3639, metadata !DIExpression(DW_OP_deref)), !dbg !3641
  %call1 = call fastcc zeroext i8 @ei_cond(i32 %9, %struct.VEC_edge_gc** %10, %struct.edge_def** nonnull %e) #8, !dbg !3648
  %tobool = icmp eq i8 %call1, 0, !dbg !3644
  br i1 %tobool, label %cleanup, label %for.body, !dbg !3644

for.body:                                         ; preds = %for.cond
  %11 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %visited, align 8, !dbg !3649
  %12 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3651
  call void @llvm.dbg.value(metadata %struct.edge_def* %12, metadata !3639, metadata !DIExpression()), !dbg !3641
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i64 0, i32 0, !dbg !3652
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3652
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i64 0, i32 9, !dbg !3653
  %14 = load i32, i32* %index, align 8, !dbg !3653
  %call2 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %11, i32 %14) #6, !dbg !3654
  %tobool3 = icmp eq i32 %call2, 0, !dbg !3654
  br i1 %tobool3, label %cleanup, label %for.inc, !dbg !3655

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3640, metadata !DIExpression(DW_OP_deref)), !dbg !3641
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !3648
  br label %for.cond, !dbg !3648, !llvm.loop !3656

cleanup:                                          ; preds = %for.body, %for.cond
  %retval.0 = phi i8 [ 0, %for.body ], [ 1, %for.cond ], !dbg !3641
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !3658
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3658
  ret i8 %retval.0, !dbg !3658
}

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

declare dso_local zeroext i8 @empty_block_p(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local zeroext i8 @dominated_by_p(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3659 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3664, metadata !DIExpression()), !dbg !3665
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !3666
  %bf.load = load i32, i32* %0, align 8, !dbg !3666
  %bf.clear = and i32 %bf.load, 255, !dbg !3666
  ret i32 %bf.clear, !dbg !3667
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @if_convertible_gimple_assign_stmt_p(%struct.loop* %loop, %struct.basic_block_def* %bb, %union.gimple_statement_d* %stmt) unnamed_addr #5 !dbg !3668 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3670, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3671, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3672, metadata !DIExpression()), !dbg !3674
  %call = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %stmt) #8, !dbg !3675
  %tobool = icmp eq i8 %call, 0, !dbg !3675
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3677

if.end:                                           ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3678
  %tobool1 = icmp eq %struct._IO_FILE* %0, null, !dbg !3678
  br i1 %tobool1, label %if.end5, label %land.lhs.true, !dbg !3680

land.lhs.true:                                    ; preds = %if.end
  %1 = load i32, i32* @dump_flags, align 4, !dbg !3681
  %and = and i32 %1, 8, !dbg !3682
  %tobool2 = icmp eq i32 %and, 0, !dbg !3682
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !3683

if.then3:                                         ; preds = %land.lhs.true
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3684
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3686
  tail call void @print_gimple_stmt(%struct._IO_FILE* %2, %union.gimple_statement_d* %stmt, i32 0, i32 2) #6, !dbg !3687
  br label %if.end5, !dbg !3688

if.end5:                                          ; preds = %land.lhs.true, %if.end, %if.then3
  %call6 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %stmt) #8, !dbg !3689
  call void @llvm.dbg.value(metadata %union.tree_node* %call6, metadata !3673, metadata !DIExpression()), !dbg !3674
  %call7 = tail call zeroext i8 @stmt_ends_bb_p(%union.gimple_statement_d* %stmt) #6, !dbg !3690
  %tobool8 = icmp eq i8 %call7, 0, !dbg !3690
  br i1 %tobool8, label %lor.lhs.false, label %if.then24, !dbg !3692

lor.lhs.false:                                    ; preds = %if.end5
  %call9 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(%union.gimple_statement_d* %stmt) #8, !dbg !3693
  %tobool11 = icmp eq i8 %call9, 0, !dbg !3693
  br i1 %tobool11, label %lor.lhs.false12, label %if.then24, !dbg !3694

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %call6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3695
  %bf.load = load i64, i64* %3, align 8, !dbg !3695
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3696
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !3696
  br i1 %cmp, label %land.lhs.true14, label %lor.lhs.false20, !dbg !3697

land.lhs.true14:                                  ; preds = %lor.lhs.false12
  %bf.cast183 = and i64 %bf.load, 4194304, !dbg !3698
  %tobool19 = icmp eq i64 %bf.cast183, 0, !dbg !3698
  br i1 %tobool19, label %lor.lhs.false20, label %if.then24, !dbg !3699

lor.lhs.false20:                                  ; preds = %land.lhs.true14, %lor.lhs.false12
  %call21 = tail call zeroext i8 @gimple_has_side_effects(%union.gimple_statement_d* %stmt) #6, !dbg !3700
  %tobool23 = icmp eq i8 %call21, 0, !dbg !3700
  br i1 %tobool23, label %if.end32, label %if.then24, !dbg !3701

if.then24:                                        ; preds = %land.lhs.true14, %lor.lhs.false20, %lor.lhs.false, %if.end5
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3702
  %tobool25 = icmp eq %struct._IO_FILE* %4, null, !dbg !3702
  br i1 %tobool25, label %cleanup, label %land.lhs.true26, !dbg !3705

land.lhs.true26:                                  ; preds = %if.then24
  %5 = load i32, i32* @dump_flags, align 4, !dbg !3706
  %and27 = and i32 %5, 8, !dbg !3707
  %tobool28 = icmp eq i32 %and27, 0, !dbg !3707
  br i1 %tobool28, label %cleanup, label %if.then29, !dbg !3708

if.then29:                                        ; preds = %land.lhs.true26
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)) #6, !dbg !3709
  br label %cleanup, !dbg !3709

if.end32:                                         ; preds = %lor.lhs.false20
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !3710
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !3710
  %cmp33 = icmp eq %struct.basic_block_def* %6, %bb, !dbg !3712
  br i1 %cmp33, label %if.end47, label %land.lhs.true35, !dbg !3713

land.lhs.true35:                                  ; preds = %if.end32
  %call36 = tail call zeroext i8 @gimple_assign_rhs_could_trap_p(%union.gimple_statement_d* %stmt) #6, !dbg !3714
  %tobool38 = icmp eq i8 %call36, 0, !dbg !3714
  br i1 %tobool38, label %if.end47, label %if.then39, !dbg !3715

if.then39:                                        ; preds = %land.lhs.true35
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3716
  %tobool40 = icmp eq %struct._IO_FILE* %7, null, !dbg !3716
  br i1 %tobool40, label %cleanup, label %land.lhs.true41, !dbg !3719

land.lhs.true41:                                  ; preds = %if.then39
  %8 = load i32, i32* @dump_flags, align 4, !dbg !3720
  %and42 = and i32 %8, 8, !dbg !3721
  %tobool43 = icmp eq i32 %and42, 0, !dbg !3721
  br i1 %tobool43, label %cleanup, label %if.then44, !dbg !3722

if.then44:                                        ; preds = %land.lhs.true41
  %call45 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !3723
  br label %cleanup, !dbg !3723

if.end47:                                         ; preds = %land.lhs.true35, %if.end32
  %bf.load49 = load i64, i64* %3, align 8, !dbg !3724
  %bf.cast512 = and i64 %bf.load49, 65535, !dbg !3726
  %cmp52 = icmp eq i64 %bf.cast512, 141, !dbg !3726
  br i1 %cmp52, label %cleanup, label %land.lhs.true54, !dbg !3727

land.lhs.true54:                                  ; preds = %if.end47
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !3728
  %cmp56 = icmp eq %struct.basic_block_def* %9, %bb, !dbg !3729
  br i1 %cmp56, label %cleanup, label %land.lhs.true58, !dbg !3730

land.lhs.true58:                                  ; preds = %land.lhs.true54
  %call59 = tail call fastcc zeroext i8 @bb_with_exit_edge_p(%struct.loop* %loop, %struct.basic_block_def* %bb) #8, !dbg !3731
  %tobool60 = icmp eq i8 %call59, 0, !dbg !3731
  br i1 %tobool60, label %if.then61, label %cleanup, !dbg !3732

if.then61:                                        ; preds = %land.lhs.true58
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3733
  %tobool62 = icmp eq %struct._IO_FILE* %10, null, !dbg !3733
  br i1 %tobool62, label %cleanup, label %land.lhs.true63, !dbg !3736

land.lhs.true63:                                  ; preds = %if.then61
  %11 = load i32, i32* @dump_flags, align 4, !dbg !3737
  %and64 = and i32 %11, 8, !dbg !3738
  %tobool65 = icmp eq i32 %and64, 0, !dbg !3738
  br i1 %tobool65, label %cleanup, label %if.then66, !dbg !3739

if.then66:                                        ; preds = %land.lhs.true63
  %call67 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !3740
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3742
  tail call void @print_gimple_stmt(%struct._IO_FILE* %12, %union.gimple_statement_d* %stmt, i32 0, i32 2) #6, !dbg !3743
  br label %cleanup, !dbg !3744

cleanup:                                          ; preds = %land.lhs.true26, %if.then24, %land.lhs.true41, %if.then39, %land.lhs.true63, %if.then61, %land.lhs.true58, %land.lhs.true54, %if.end47, %entry, %if.then66, %if.then44, %if.then29
  %retval.0 = phi i8 [ 0, %entry ], [ 0, %if.then29 ], [ 0, %land.lhs.true26 ], [ 0, %if.then24 ], [ 0, %if.then44 ], [ 0, %land.lhs.true41 ], [ 0, %if.then39 ], [ 0, %if.then66 ], [ 0, %land.lhs.true63 ], [ 0, %if.then61 ], [ 1, %land.lhs.true58 ], [ 1, %land.lhs.true54 ], [ 1, %if.end47 ], !dbg !3674
  ret i8 %retval.0, !dbg !3745
}

declare dso_local void @print_gimple_stmt(%struct._IO_FILE*, %union.gimple_statement_d*, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3746 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3750, metadata !DIExpression()), !dbg !3751
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !3752
  %cmp = icmp eq i32 %call, 6, !dbg !3753
  %conv1 = zext i1 %cmp to i8, !dbg !3752
  ret i8 %conv1, !dbg !3754
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3755 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3759, metadata !DIExpression()), !dbg !3760
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !3761
  ret %union.tree_node* %call, !dbg !3762
}

declare dso_local zeroext i8 @stmt_ends_bb_p(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !3763 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3765, metadata !DIExpression()), !dbg !3766
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %stmt) #8, !dbg !3767
  %tobool = icmp eq i8 %call, 0, !dbg !3767
  br i1 %tobool, label %return, label %if.then, !dbg !3769

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !3770
  %bf.load = load i32, i32* %0, align 8, !dbg !3770
  %bf.lshr = lshr i32 %bf.load, 14, !dbg !3770
  %1 = trunc i32 %bf.lshr to i8, !dbg !3771
  %conv = and i8 %1, 1, !dbg !3771
  br label %return, !dbg !3772

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i8 [ %conv, %if.then ], [ 0, %entry ], !dbg !3773
  ret i8 %retval.0, !dbg !3774
}

declare dso_local zeroext i8 @gimple_has_side_effects(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local zeroext i8 @gimple_assign_rhs_could_trap_p(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3775 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3779, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata i32 %i, metadata !3780, metadata !DIExpression()), !dbg !3781
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #8, !dbg !3782
  %tobool = icmp eq i8 %call, 0, !dbg !3782
  br i1 %tobool, label %return, label %if.then, !dbg !3784

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #8, !dbg !3785
  %idxprom = zext i32 %i to i64, !dbg !3785
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !3785
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3785
  br label %return, !dbg !3787

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !3788
  ret %union.tree_node* %retval.0, !dbg !3789
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3790 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3792, metadata !DIExpression()), !dbg !3793
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3794
  %cmp = icmp eq i32 %call, 0, !dbg !3795
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !3796

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3797
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3798
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3799
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3800 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3804, metadata !DIExpression()), !dbg !3806
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #8, !dbg !3807
  %idxprom = zext i32 %call to i64, !dbg !3808
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !3808
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3808
  call void @llvm.dbg.value(metadata i64 %0, metadata !3805, metadata !DIExpression()), !dbg !3806
  %cmp = icmp eq i64 %0, 0, !dbg !3809
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3809

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3809
  br label %cond.end, !dbg !3809

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !3810
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !3811
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !3812
  ret %union.tree_node** %2, !dbg !3813
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3814 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3818, metadata !DIExpression()), !dbg !3819
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !3820
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #8, !dbg !3821
  ret i32 %call1, !dbg !3822
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !3823 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3827, metadata !DIExpression()), !dbg !3828
  %idxprom = zext i32 %code to i64, !dbg !3829
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !3829
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3829
  ret i32 %0, !dbg !3830
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3831 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3833, metadata !DIExpression()), !dbg !3834
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3835
  %cmp = icmp ugt i32 %call, 5, !dbg !3836
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3837

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #8, !dbg !3838
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3839
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3840
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3841 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3845, metadata !DIExpression()), !dbg !3846
  %nargs = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 2, !dbg !3847
  %0 = load i32, i32* %nargs, align 4, !dbg !3847
  ret i32 %0, !dbg !3848
}

declare dso_local zeroext i8 @is_gimple_reg(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3849 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3851, metadata !DIExpression()), !dbg !3852
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !3853
  %0 = load %union.tree_node*, %union.tree_node** %result, align 8, !dbg !3853
  ret %union.tree_node* %0, !dbg !3854
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @first_readonly_imm_use(%struct.immediate_use_iterator_d* %imm, %union.tree_node* %var) unnamed_addr #0 !dbg !3855 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !3861, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3862, metadata !DIExpression()), !dbg !3863
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3864
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !3865
  %0 = bitcast %struct.ssa_use_operand_d** %end_p to i40**, !dbg !3866
  store i40* %imm_uses, i40** %0, align 8, !dbg !3866
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !3867
  %1 = bitcast i40* %next to i64*, !dbg !3867
  %2 = load i64, i64* %1, align 8, !dbg !3867
  %3 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !3868
  store i64 %2, i64* %3, align 8, !dbg !3868
  %call = tail call fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* %imm) #8, !dbg !3869
  %tobool = icmp eq i8 %call, 0, !dbg !3869
  br i1 %tobool, label %if.end, label %return, !dbg !3871

if.end:                                           ; preds = %entry
  %imm_use2 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !3872
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use2, align 8, !dbg !3872
  br label %return, !dbg !3873

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.ssa_use_operand_d* [ %4, %if.end ], [ null, %entry ], !dbg !3863
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !3874
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !3875 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !3881, metadata !DIExpression()), !dbg !3882
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !3883
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !3883
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !3884
  %1 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %end_p, align 8, !dbg !3884
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, %1, !dbg !3885
  %conv1 = zext i1 %cmp to i8, !dbg !3886
  ret i8 %conv1, !dbg !3887
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @next_readonly_imm_use(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !3888 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !3892, metadata !DIExpression()), !dbg !3894
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !3895
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !3895
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %0, metadata !3893, metadata !DIExpression()), !dbg !3894
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %0, i64 0, i32 1, !dbg !3896
  %1 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !3896
  %2 = load i64, i64* %1, align 8, !dbg !3896
  %3 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !3897
  store i64 %2, i64* %3, align 8, !dbg !3897
  %call = tail call fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* %imm) #8, !dbg !3898
  %tobool = icmp eq i8 %call, 0, !dbg !3898
  br i1 %tobool, label %if.end, label %cleanup, !dbg !3900

if.end:                                           ; preds = %entry
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !3901
  br label %cleanup, !dbg !3902

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ssa_use_operand_d* [ %4, %if.end ], [ null, %entry ], !dbg !3894
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !3903
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3904 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3908, metadata !DIExpression()), !dbg !3909
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !3910
  %0 = load i32, i32* %flags, align 8, !dbg !3910
  %and = and i32 %0, 512, !dbg !3911
  %tobool = icmp eq i32 %and, 0, !dbg !3911
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !3912

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !3913
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !3913
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !3914
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !3915

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !3916
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !3916
  br label %cond.end, !dbg !3915

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !3915
  ret %struct.gimple_seq_d* %cond, !dbg !3917
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !3918 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !3925, metadata !DIExpression()), !dbg !3926
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !3927
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3927

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !3928
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !3928
  br label %cond.end, !dbg !3927

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !3927
  ret %struct.gimple_seq_node_d* %cond, !dbg !3929
}

declare dso_local void @print_generic_stmt(%struct._IO_FILE*, %union.tree_node*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_debug_bind_p(%union.gimple_statement_d* %s) unnamed_addr #0 !dbg !3930 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !3932, metadata !DIExpression()), !dbg !3933
  %call = tail call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %s) #8, !dbg !3934
  %tobool = icmp eq i8 %call, 0, !dbg !3934
  br i1 %tobool, label %return, label %if.then, !dbg !3936

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %s, i64 0, i32 0, i32 0, i32 0, !dbg !3937
  %bf.load = load i32, i32* %0, align 8, !dbg !3937
  %cmp = icmp ult i32 %bf.load, 65536, !dbg !3938
  %conv1 = zext i1 %cmp to i8, !dbg !3939
  br label %return, !dbg !3940

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i8 [ %conv1, %if.then ], [ 0, %entry ], !dbg !3933
  ret i8 %retval.0, !dbg !3941
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_debug_bind_reset_value(%union.gimple_statement_d* %dbg) unnamed_addr #0 !dbg !3942 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %dbg, metadata !3946, metadata !DIExpression()), !dbg !3947
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %dbg, i32 1, %union.tree_node* null) #8, !dbg !3948
  ret void, !dbg !3949
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @update_stmt(%union.gimple_statement_d* %s) unnamed_addr #0 !dbg !3950 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !3952, metadata !DIExpression()), !dbg !3953
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %s) #8, !dbg !3954
  %tobool = icmp eq i8 %call, 0, !dbg !3954
  br i1 %tobool, label %if.end, label %if.then, !dbg !3956

if.then:                                          ; preds = %entry
  tail call void @gimple_set_modified(%union.gimple_statement_d* %s, i8 zeroext 1) #6, !dbg !3957
  tail call void @update_stmt_operands(%union.gimple_statement_d* %s) #6, !dbg !3959
  br label %if.end, !dbg !3960

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !3961
}

; Function Attrs: nounwind uwtable
define internal fastcc void @tree_if_convert_cond_stmt(%struct.loop* %loop, %union.gimple_statement_d* %stmt, %union.tree_node* %cond, %struct.gimple_stmt_iterator* %gsi) unnamed_addr #5 !dbg !3962 {
entry:
  %true_edge = alloca %struct.edge_def*, align 8
  %false_edge = alloca %struct.edge_def*, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3966, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3967, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata %union.tree_node* %cond, metadata !3968, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3969, metadata !DIExpression()), !dbg !3975
  %0 = bitcast %struct.edge_def** %true_edge to i8*, !dbg !3976
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3976
  %1 = bitcast %struct.edge_def** %false_edge to i8*, !dbg !3976
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3976
  %call = tail call fastcc i32 @gimple_location(%union.gimple_statement_d* %stmt) #8, !dbg !3977
  call void @llvm.dbg.value(metadata i32 %call, metadata !3974, metadata !DIExpression()), !dbg !3975
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #8, !dbg !3978
  %cmp = icmp eq i32 %call1, 1, !dbg !3978
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3978

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 285, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3978
  br label %cond.end, !dbg !3978

cond.end:                                         ; preds = %entry, %cond.true
  %call3 = tail call fastcc i32 @gimple_cond_code(%union.gimple_statement_d* %stmt) #8, !dbg !3979
  %2 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !3979
  %call4 = tail call fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %stmt) #8, !dbg !3979
  %call5 = tail call fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %stmt) #8, !dbg !3979
  %call6 = tail call %union.tree_node* @fold_build2_stat_loc(i32 %call, i32 %call3, %union.tree_node* %2, %union.tree_node* %call4, %union.tree_node* %call5) #6, !dbg !3979
  call void @llvm.dbg.value(metadata %union.tree_node* %call6, metadata !3970, metadata !DIExpression()), !dbg !3975
  %call7 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %stmt) #8, !dbg !3980
  call void @llvm.dbg.value(metadata %struct.edge_def** %true_edge, metadata !3972, metadata !DIExpression(DW_OP_deref)), !dbg !3975
  call void @llvm.dbg.value(metadata %struct.edge_def** %false_edge, metadata !3973, metadata !DIExpression(DW_OP_deref)), !dbg !3975
  call void @extract_true_false_edges_from_block(%struct.basic_block_def* %call7, %struct.edge_def** nonnull %true_edge, %struct.edge_def** nonnull %false_edge) #6, !dbg !3981
  %3 = load %struct.edge_def*, %struct.edge_def** %true_edge, align 8, !dbg !3982
  call void @llvm.dbg.value(metadata %struct.edge_def* %3, metadata !3972, metadata !DIExpression()), !dbg !3975
  %call8 = call fastcc %union.tree_node* @add_to_dst_predicate_list(%struct.loop* %loop, %struct.edge_def* %3, %union.tree_node* %cond, %union.tree_node* %call6, %struct.gimple_stmt_iterator* %gsi) #8, !dbg !3983
  %call9 = call %union.tree_node* @unshare_expr(%union.tree_node* %call6) #6, !dbg !3984
  %call10 = call %union.tree_node* @invert_truthvalue_loc(i32 %call, %union.tree_node* %call9) #6, !dbg !3985
  call void @llvm.dbg.value(metadata %union.tree_node* %call10, metadata !3971, metadata !DIExpression()), !dbg !3975
  %4 = load %struct.edge_def*, %struct.edge_def** %false_edge, align 8, !dbg !3986
  call void @llvm.dbg.value(metadata %struct.edge_def* %4, metadata !3973, metadata !DIExpression()), !dbg !3975
  %call11 = call fastcc %union.tree_node* @add_to_dst_predicate_list(%struct.loop* %loop, %struct.edge_def* %4, %union.tree_node* %cond, %union.tree_node* %call10, %struct.gimple_stmt_iterator* %gsi) #8, !dbg !3987
  %call12 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %stmt) #8, !dbg !3988
  %call13 = call fastcc zeroext i8 @bb_with_exit_edge_p(%struct.loop* %loop, %struct.basic_block_def* %call12) #8, !dbg !3990
  %tobool = icmp eq i8 %call13, 0, !dbg !3990
  br i1 %tobool, label %if.then, label %if.end, !dbg !3991

if.then:                                          ; preds = %cond.end
  call void @gsi_remove(%struct.gimple_stmt_iterator* %gsi, i8 zeroext 1) #6, !dbg !3992
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3968, metadata !DIExpression()), !dbg !3975
  br label %if.end, !dbg !3994

if.end:                                           ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3995
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3995
  ret void, !dbg !3995
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3996 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3998, metadata !DIExpression()), !dbg !3999
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #8, !dbg !4000
  %cmp = icmp eq i32 %call, 2, !dbg !4001
  %conv1 = zext i1 %cmp to i8, !dbg !4000
  ret i8 %conv1, !dbg !4002
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 %i, %union.tree_node* %op) unnamed_addr #0 !dbg !4003 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4007, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i32 %i, metadata !4008, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata %union.tree_node* %op, metadata !4009, metadata !DIExpression()), !dbg !4010
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #8, !dbg !4011
  %tobool = icmp eq i8 %call, 0, !dbg !4011
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !4011

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #8, !dbg !4011
  %cmp = icmp ugt i32 %call1, %i, !dbg !4011
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4011

cond.true:                                        ; preds = %entry, %land.lhs.true
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i32 1665, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !4011
  br label %cond.end, !dbg !4011

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %call3 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #8, !dbg !4012
  %idxprom = zext i32 %i to i64, !dbg !4012
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call3, i64 %idxprom, !dbg !4012
  store %union.tree_node* %op, %union.tree_node** %arrayidx, align 8, !dbg !4013
  ret void, !dbg !4014
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4015 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4017, metadata !DIExpression()), !dbg !4018
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !4019
  %0 = load i32, i32* %num_ops, align 4, !dbg !4019
  ret i32 %0, !dbg !4020
}

declare dso_local void @gimple_set_modified(%union.gimple_statement_d*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @update_stmt_operands(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_location(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4021 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4025, metadata !DIExpression()), !dbg !4026
  %location = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 2, !dbg !4027
  %0 = load i32, i32* %location, align 8, !dbg !4027
  ret i32 %0, !dbg !4028
}

declare dso_local %union.tree_node* @fold_build2_stat_loc(i32, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_cond_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4029 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4033, metadata !DIExpression()), !dbg !4034
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 0, !dbg !4035
  %bf.load = load i32, i32* %0, align 8, !dbg !4035
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !4035
  ret i32 %bf.lshr, !dbg !4036
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_cond_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4037 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4039, metadata !DIExpression()), !dbg !4040
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #8, !dbg !4041
  ret %union.tree_node* %call, !dbg !4042
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_cond_rhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4043 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4045, metadata !DIExpression()), !dbg !4046
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #8, !dbg !4047
  ret %union.tree_node* %call, !dbg !4048
}

declare dso_local void @extract_true_false_edges_from_block(%struct.basic_block_def*, %struct.edge_def**, %struct.edge_def**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4049 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4053, metadata !DIExpression()), !dbg !4054
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !4055
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !4055
  ret %struct.basic_block_def* %0, !dbg !4056
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @add_to_dst_predicate_list(%struct.loop* %loop, %struct.edge_def* %e, %union.tree_node* %prev_cond, %union.tree_node* %cond, %struct.gimple_stmt_iterator* %gsi) unnamed_addr #5 !dbg !4057 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4061, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !4062, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata %union.tree_node* %prev_cond, metadata !4063, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata %union.tree_node* %cond, metadata !4064, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4065, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !4066, metadata !DIExpression()), !dbg !4071
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !4072
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !4072
  %call = tail call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %loop, %struct.basic_block_def* %0) #6, !dbg !4074
  %tobool = icmp eq i8 %call, 0, !dbg !4074
  br i1 %tobool, label %cleanup, label %if.end, !dbg !4075

if.end:                                           ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 26), align 16, !dbg !4076
  %cmp = icmp ne %union.tree_node* %1, %prev_cond, !dbg !4077
  %tobool1 = icmp ne %union.tree_node* %prev_cond, null, !dbg !4078
  %or.cond = and i1 %cmp, %tobool1, !dbg !4079
  br i1 %or.cond, label %if.else, label %if.then2, !dbg !4079

if.then2:                                         ; preds = %if.end
  %call3 = tail call %union.tree_node* @unshare_expr(%union.tree_node* %cond) #6, !dbg !4080
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !4066, metadata !DIExpression()), !dbg !4071
  br label %if.end12, !dbg !4081

if.else:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* null, metadata !4070, metadata !DIExpression()), !dbg !4082
  %call4 = tail call %union.tree_node* @unshare_expr(%union.tree_node* nonnull %prev_cond) #6, !dbg !4083
  %call5 = tail call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %call4, i8 zeroext 1, %union.tree_node* null, i8 zeroext 1, i32 1) #6, !dbg !4084
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !4063, metadata !DIExpression()), !dbg !4071
  %call6 = tail call %union.tree_node* @unshare_expr(%union.tree_node* %cond) #6, !dbg !4085
  %call7 = tail call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %call6, i8 zeroext 1, %union.tree_node* null, i8 zeroext 1, i32 1) #6, !dbg !4086
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !4064, metadata !DIExpression()), !dbg !4071
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 3, !dbg !4087
  %2 = bitcast i8** %aux to %union.tree_node**, !dbg !4088
  store %union.tree_node* %call7, %union.tree_node** %2, align 8, !dbg !4088
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !4089
  %call8 = tail call %union.tree_node* @unshare_expr(%union.tree_node* %call5) #6, !dbg !4089
  %call9 = tail call %union.tree_node* @build2_stat(i32 93, %union.tree_node* %3, %union.tree_node* %call8, %union.tree_node* %call7) #6, !dbg !4089
  call void @llvm.dbg.value(metadata %union.tree_node* %call9, metadata !4067, metadata !DIExpression()), !dbg !4082
  %4 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !4090
  %call10 = tail call fastcc %union.gimple_statement_d* @ifc_temp_var(%union.tree_node* %4, %union.tree_node* %call9) #8, !dbg !4091
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call10, metadata !4070, metadata !DIExpression()), !dbg !4082
  tail call void @gsi_insert_before(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %call10, i32 1) #6, !dbg !4092
  %call11 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %call10) #8, !dbg !4093
  call void @llvm.dbg.value(metadata %union.tree_node* %call11, metadata !4066, metadata !DIExpression()), !dbg !4071
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then2
  %new_cond.0 = phi %union.tree_node* [ %call3, %if.then2 ], [ %call11, %if.else ], !dbg !4094
  call void @llvm.dbg.value(metadata %union.tree_node* %new_cond.0, metadata !4066, metadata !DIExpression()), !dbg !4071
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !4095
  tail call fastcc void @add_to_predicate_list(%struct.basic_block_def* %5, %union.tree_node* %new_cond.0) #8, !dbg !4096
  br label %cleanup, !dbg !4097

cleanup:                                          ; preds = %entry, %if.end12
  %retval.0 = phi %union.tree_node* [ %new_cond.0, %if.end12 ], [ null, %entry ], !dbg !4071
  ret %union.tree_node* %retval.0, !dbg !4098
}

declare dso_local %union.tree_node* @invert_truthvalue_loc(i32, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @unshare_expr(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @gsi_remove(%struct.gimple_stmt_iterator*, i8 zeroext) local_unnamed_addr #2

declare dso_local zeroext i8 @flow_bb_inside_loop_p(%struct.loop*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator*, %union.tree_node*, i8 zeroext, %union.tree_node*, i8 zeroext, i32) local_unnamed_addr #2

declare dso_local %union.tree_node* @build2_stat(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %union.gimple_statement_d* @ifc_temp_var(%union.tree_node* %type, %union.tree_node* %exp) unnamed_addr #5 !dbg !4099 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !4103, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata %union.tree_node* %exp, metadata !4104, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), metadata !4105, metadata !DIExpression()), !dbg !4109
  %call = tail call %union.tree_node* @create_tmp_var(%union.tree_node* %type, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0)) #6, !dbg !4110
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !4106, metadata !DIExpression()), !dbg !4109
  %call1 = tail call zeroext i8 @add_referenced_var(%union.tree_node* %call) #6, !dbg !4111
  %call2 = tail call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call, %union.tree_node* %exp) #6, !dbg !4112
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call2, metadata !4108, metadata !DIExpression()), !dbg !4109
  %call3 = tail call fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %call, %union.gimple_statement_d* %call2) #8, !dbg !4113
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !4107, metadata !DIExpression()), !dbg !4109
  tail call fastcc void @gimple_assign_set_lhs(%union.gimple_statement_d* %call2, %union.tree_node* %call3) #8, !dbg !4114
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4115
  %0 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !4115
  store %union.gimple_statement_d* %call2, %union.gimple_statement_d** %0, align 8, !dbg !4116
  tail call fastcc void @update_stmt(%union.gimple_statement_d* %call2) #8, !dbg !4117
  ret %union.gimple_statement_d* %call2, !dbg !4118
}

declare dso_local void @gsi_insert_before(%struct.gimple_stmt_iterator*, %union.gimple_statement_d*, i32) local_unnamed_addr #2

declare dso_local %union.tree_node* @create_tmp_var(%union.tree_node*, i8*) local_unnamed_addr #2

declare dso_local zeroext i8 @add_referenced_var(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %var, %union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !4119 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !4123, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4124, metadata !DIExpression()), !dbg !4125
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4126
  %call = tail call %union.tree_node* @make_ssa_name_fn(%struct.function* %0, %union.tree_node* %var, %union.gimple_statement_d* %stmt) #6, !dbg !4127
  ret %union.tree_node* %call, !dbg !4128
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_assign_set_lhs(%union.gimple_statement_d* %gs, %union.tree_node* %lhs) unnamed_addr #0 !dbg !4129 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4133, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata %union.tree_node* %lhs, metadata !4134, metadata !DIExpression()), !dbg !4135
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 0, %union.tree_node* %lhs) #8, !dbg !4136
  %tobool = icmp eq %union.tree_node* %lhs, null, !dbg !4137
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !4139

land.lhs.true:                                    ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4140
  %bf.load = load i64, i64* %0, align 8, !dbg !4140
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4141
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !4141
  br i1 %cmp, label %if.then, label %if.end, !dbg !4142

if.then:                                          ; preds = %land.lhs.true
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4143
  %1 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !4143
  store %union.gimple_statement_d* %gs, %union.gimple_statement_d** %1, align 8, !dbg !4144
  br label %if.end, !dbg !4143

if.end:                                           ; preds = %entry, %if.then, %land.lhs.true
  ret void, !dbg !4145
}

declare dso_local %union.tree_node* @make_ssa_name_fn(%struct.function*, %union.tree_node*, %union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4146 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4150, metadata !DIExpression()), !dbg !4151
  %call = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) #8, !dbg !4152
  %tobool = icmp eq i8 %call, 0, !dbg !4152
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4152

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 645, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !4152
  br label %cond.end, !dbg !4152

cond.end:                                         ; preds = %entry, %cond.true
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !4153
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !4153
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !4153
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !4153

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !4153
  br label %cond.end5, !dbg !4153

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !4153
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #8, !dbg !4153
  ret %struct.edge_def* %call7, !dbg !4154
}

; Function Attrs: nounwind uwtable
define internal fastcc void @process_phi_nodes(%struct.loop* %loop) unnamed_addr #5 !dbg !4155 {
entry:
  %cond = alloca %union.tree_node*, align 8
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %phi_gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4157, metadata !DIExpression()), !dbg !4169
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !4170
  %0 = load i32, i32* %num_nodes, align 4, !dbg !4170
  call void @llvm.dbg.value(metadata i32 %0, metadata !4159, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.value(metadata i32 1, metadata !4160, metadata !DIExpression()), !dbg !4169
  %1 = bitcast %union.tree_node** %cond to i8*, !dbg !4171
  %2 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !4171
  %3 = bitcast %struct.gimple_stmt_iterator* %phi_gsi to i8*, !dbg !4171
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !4172
  %4 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !4171
  %5 = bitcast %struct.gimple_stmt_iterator* %tmp2 to i8*, !dbg !4171
  %6 = zext i32 %0 to i64, !dbg !4174
  br label %for.cond, !dbg !4174

for.cond:                                         ; preds = %cleanup, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %cleanup ], [ 1, %entry ], !dbg !4175
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4160, metadata !DIExpression()), !dbg !4169
  %cmp = icmp ult i64 %indvars.iv, %6, !dbg !4176
  br i1 %cmp, label %for.body, label %for.end, !dbg !4177

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !4178
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !4165, metadata !DIExpression()), !dbg !4171
  store %union.tree_node* null, %union.tree_node** %cond, align 8, !dbg !4179
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %2) #7, !dbg !4180
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #7, !dbg !4180
  call void @llvm.dbg.value(metadata %struct.basic_block_def* null, metadata !4168, metadata !DIExpression()), !dbg !4171
  %7 = load %struct.basic_block_def**, %struct.basic_block_def*** @ifc_bbs, align 8, !dbg !4181
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %7, i64 %indvars.iv, !dbg !4181
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !4181
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %8, metadata !4158, metadata !DIExpression()), !dbg !4169
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !4182
  %cmp1 = icmp eq %struct.basic_block_def* %8, %9, !dbg !4183
  br i1 %cmp1, label %cleanup, label %if.end, !dbg !4184

if.end:                                           ; preds = %for.body
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #7, !dbg !4185
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %8) #6, !dbg !4185
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* nonnull align 8 %4, i64 24, i1 false), !dbg !4185
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #7, !dbg !4185
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #7, !dbg !4186
  call fastcc void @gsi_after_labels(%struct.gimple_stmt_iterator* nonnull sret %tmp2, %struct.basic_block_def* %8) #8, !dbg !4186
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %5, i64 24, i1 false), !dbg !4186
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #7, !dbg !4186
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %phi_gsi, metadata !4167, metadata !DIExpression(DW_OP_deref)), !dbg !4171
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %phi_gsi) #8, !dbg !4187
  %tobool = icmp eq i8 %call, 0, !dbg !4187
  br i1 %tobool, label %if.then3, label %if.end5, !dbg !4189

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %union.tree_node** %cond, metadata !4165, metadata !DIExpression(DW_OP_deref)), !dbg !4171
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4166, metadata !DIExpression(DW_OP_deref)), !dbg !4171
  %call4 = call fastcc %struct.basic_block_def* @find_phi_replacement_condition(%struct.loop* %loop, %struct.basic_block_def* %8, %union.tree_node** nonnull %cond, %struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !4190
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call4, metadata !4168, metadata !DIExpression()), !dbg !4171
  br label %if.end5, !dbg !4191

if.end5:                                          ; preds = %if.end, %if.then3
  %true_bb.0 = phi %struct.basic_block_def* [ null, %if.end ], [ %call4, %if.then3 ], !dbg !4171
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %true_bb.0, metadata !4168, metadata !DIExpression()), !dbg !4171
  br label %while.cond, !dbg !4192

while.cond:                                       ; preds = %while.body, %if.end5
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %phi_gsi, metadata !4167, metadata !DIExpression(DW_OP_deref)), !dbg !4171
  %call6 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %phi_gsi) #8, !dbg !4193
  %tobool7 = icmp eq i8 %call6, 0, !dbg !4194
  br i1 %tobool7, label %while.body, label %while.end, !dbg !4192

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %phi_gsi, metadata !4167, metadata !DIExpression(DW_OP_deref)), !dbg !4171
  %call8 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %phi_gsi) #8, !dbg !4195
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call8, metadata !4161, metadata !DIExpression()), !dbg !4171
  %10 = load %union.tree_node*, %union.tree_node** %cond, align 8, !dbg !4197
  call void @llvm.dbg.value(metadata %union.tree_node* %10, metadata !4165, metadata !DIExpression()), !dbg !4171
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4166, metadata !DIExpression(DW_OP_deref)), !dbg !4171
  call fastcc void @replace_phi_with_cond_gimple_assign_stmt(%union.gimple_statement_d* %call8, %union.tree_node* %10, %struct.basic_block_def* %true_bb.0, %struct.gimple_stmt_iterator* nonnull %gsi) #8, !dbg !4198
  call void @release_phi_node(%union.gimple_statement_d* %call8) #6, !dbg !4199
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %phi_gsi, metadata !4167, metadata !DIExpression(DW_OP_deref)), !dbg !4171
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %phi_gsi) #8, !dbg !4200
  br label %while.cond, !dbg !4192, !llvm.loop !4201

while.end:                                        ; preds = %while.cond
  call fastcc void @set_phi_nodes(%struct.basic_block_def* %8, %struct.gimple_seq_d* null) #8, !dbg !4203
  br label %cleanup, !dbg !4204

cleanup:                                          ; preds = %for.body, %while.end
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #7, !dbg !4204
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %2) #7, !dbg !4204
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !4204
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4205
  br label %for.cond, !dbg !4206, !llvm.loop !4207

for.end:                                          ; preds = %for.cond
  ret void, !dbg !4209
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_safe_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4210 {
entry:
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !4213
  %tobool = icmp eq i8 %call, 0, !dbg !4213
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4214

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !4215
  br label %cond.end, !dbg !4214

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.edge_def* [ %call1, %cond.true ], [ null, %entry ], !dbg !4214
  ret %struct.edge_def* %cond, !dbg !4216
}

declare dso_local void @remove_edge(%struct.edge_def*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @make_edge(%struct.basic_block_def*, %struct.basic_block_def*, i32) local_unnamed_addr #2

declare dso_local void @set_immediate_dominator(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @redirect_edge_and_branch(%struct.edge_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @gimple_set_bb(%union.gimple_statement_d*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4217 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4219, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !4220, metadata !DIExpression()), !dbg !4223
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #8, !dbg !4224
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !4221, metadata !DIExpression()), !dbg !4222
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %call) #8, !dbg !4225
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !4226
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !4227
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !4228
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !4229
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !4230
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !4231
  ret void, !dbg !4232
}

declare dso_local void @gsi_insert_seq_after(%struct.gimple_stmt_iterator*, %struct.gimple_seq_d*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_bb_seq(%struct.basic_block_def* %bb, %struct.gimple_seq_d* %seq) unnamed_addr #0 !dbg !4233 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4237, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* null, metadata !4238, metadata !DIExpression()), !dbg !4239
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !4240
  %0 = load i32, i32* %flags, align 8, !dbg !4240
  %and = and i32 %0, 512, !dbg !4240
  %tobool = icmp eq i32 %and, 0, !dbg !4240
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4240

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i32 248, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !4240
  br label %cond.end, !dbg !4240

cond.end:                                         ; preds = %entry, %cond.true
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !4241
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !4241
  %seq1 = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !4242
  store %struct.gimple_seq_d* null, %struct.gimple_seq_d** %seq1, align 8, !dbg !4243
  ret void, !dbg !4244
}

declare dso_local void @delete_basic_block(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local zeroext i8 @can_merge_blocks_p(%struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @merge_blocks(%struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_after_labels(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4245 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4247, metadata !DIExpression()), !dbg !4249
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !4248, metadata !DIExpression()), !dbg !4250
  tail call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* sret %agg.result, %struct.basic_block_def* %bb) #8, !dbg !4251
  br label %while.cond, !dbg !4252

while.cond:                                       ; preds = %while.body, %entry
  %call = tail call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %agg.result) #8, !dbg !4253
  %tobool = icmp eq i8 %call, 0, !dbg !4253
  br i1 %tobool, label %land.rhs, label %while.end, !dbg !4254

land.rhs:                                         ; preds = %while.cond
  %call1 = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %agg.result) #8, !dbg !4255
  %call2 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %call1) #8, !dbg !4256
  %cmp = icmp eq i32 %call2, 4, !dbg !4257
  br i1 %cmp, label %while.body, label %while.end, !dbg !4252

while.body:                                       ; preds = %land.rhs
  tail call fastcc void @gsi_next(%struct.gimple_stmt_iterator* %agg.result) #8, !dbg !4258
  br label %while.cond, !dbg !4252, !llvm.loop !4259

while.end:                                        ; preds = %while.cond, %land.rhs
  ret void, !dbg !4261
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.basic_block_def* @find_phi_replacement_condition(%struct.loop* %loop, %struct.basic_block_def* %bb, %union.tree_node** %cond, %struct.gimple_stmt_iterator* %gsi) unnamed_addr #5 !dbg !4262 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4266, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4267, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata %union.tree_node** %cond, metadata !4268, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4269, metadata !DIExpression()), !dbg !4279
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !4280
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !4280
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !4280
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4280

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !4280
  br label %cond.end, !dbg !4280

cond.end:                                         ; preds = %entry, %cond.true
  %cond2 = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4280
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond2) #8, !dbg !4280
  %cmp = icmp eq i32 %call, 2, !dbg !4280
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !4280

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 716, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !4280
  br label %cond.end5, !dbg !4280

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %1 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !4281
  %tobool8 = icmp eq %struct.VEC_edge_gc* %1, null, !dbg !4281
  br i1 %tobool8, label %cond.end13, label %cond.true9, !dbg !4281

cond.true9:                                       ; preds = %cond.end5
  %base11 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %1, i64 0, i32 0, !dbg !4281
  br label %cond.end13, !dbg !4281

cond.end13:                                       ; preds = %cond.end5, %cond.true9
  %cond14 = phi %struct.VEC_edge_base* [ %base11, %cond.true9 ], [ null, %cond.end5 ], !dbg !4281
  %call15 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond14, i32 0) #8, !dbg !4281
  call void @llvm.dbg.value(metadata %struct.edge_def* %call15, metadata !4270, metadata !DIExpression()), !dbg !4279
  %2 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !4282
  %tobool17 = icmp eq %struct.VEC_edge_gc* %2, null, !dbg !4282
  br i1 %tobool17, label %cond.end22, label %cond.true18, !dbg !4282

cond.true18:                                      ; preds = %cond.end13
  %base20 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %2, i64 0, i32 0, !dbg !4282
  br label %cond.end22, !dbg !4282

cond.end22:                                       ; preds = %cond.end13, %cond.true18
  %cond23 = phi %struct.VEC_edge_base* [ %base20, %cond.true18 ], [ null, %cond.end13 ], !dbg !4282
  %call24 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond23, i32 1) #8, !dbg !4282
  call void @llvm.dbg.value(metadata %struct.edge_def* %call24, metadata !4271, metadata !DIExpression()), !dbg !4279
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call15, i64 0, i32 0, !dbg !4283
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !4283
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i64 0, i32 2, !dbg !4284
  %4 = bitcast i8** %aux to %union.tree_node**, !dbg !4284
  %5 = load %union.tree_node*, %union.tree_node** %4, align 8, !dbg !4284
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !4272, metadata !DIExpression()), !dbg !4279
  %tobool25 = icmp eq %union.tree_node* %5, null, !dbg !4285
  br i1 %tobool25, label %cond.true26, label %cond.end28, !dbg !4285

cond.true26:                                      ; preds = %cond.end22
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 746, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !4285
  br label %cond.end28, !dbg !4285

cond.end28:                                       ; preds = %cond.end22, %cond.true26
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4286
  %bf.load = load i64, i64* %6, align 8, !dbg !4286
  %bf.cast2 = and i64 %bf.load, 65535, !dbg !4287
  %cmp31 = icmp eq i64 %bf.cast2, 96, !dbg !4287
  %spec.select = select i1 %cmp31, %struct.edge_def* %call24, %struct.edge_def* %call15, !dbg !4288
  %spec.select1 = select i1 %cmp31, %struct.edge_def* %call15, %struct.edge_def* %call24, !dbg !4288
  call void @llvm.dbg.value(metadata %struct.edge_def* %spec.select1, metadata !4271, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata %struct.edge_def* %spec.select, metadata !4270, metadata !DIExpression()), !dbg !4279
  %src32 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %spec.select, i64 0, i32 0, !dbg !4289
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %src32, align 8, !dbg !4289
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !4291
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !4291
  %cmp33 = icmp eq %struct.basic_block_def* %7, %8, !dbg !4292
  br i1 %cmp33, label %if.then38, label %lor.lhs.false, !dbg !4293

lor.lhs.false:                                    ; preds = %cond.end28
  %src34 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %spec.select1, i64 0, i32 0, !dbg !4294
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %src34, align 8, !dbg !4294
  %call36 = tail call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %9, %struct.basic_block_def* %7) #6, !dbg !4295
  %tobool37 = icmp eq i8 %call36, 0, !dbg !4295
  br i1 %tobool37, label %if.else56, label %if.then38, !dbg !4296

if.then38:                                        ; preds = %lor.lhs.false, %cond.end28
  %src39 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %spec.select1, i64 0, i32 0, !dbg !4297
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %src39, align 8, !dbg !4297
  %aux40 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i64 0, i32 2, !dbg !4299
  %11 = bitcast i8** %aux40 to i64*, !dbg !4299
  %12 = load i64, i64* %11, align 8, !dbg !4299
  %13 = bitcast %union.tree_node** %cond to i64*, !dbg !4300
  store i64 %12, i64* %13, align 8, !dbg !4300
  %aux41 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %spec.select1, i64 0, i32 3, !dbg !4301
  %14 = load i8*, i8** %aux41, align 8, !dbg !4301
  %tobool42 = icmp eq i8* %14, null, !dbg !4303
  %15 = inttoptr i64 %12 to %union.tree_node*, !dbg !4304
  %16 = inttoptr i64 %12 to i64*, !dbg !4304
  br i1 %tobool42, label %if.end46, label %if.then43, !dbg !4304

if.then43:                                        ; preds = %if.then38
  %17 = bitcast i8* %14 to %union.tree_node*, !dbg !4304
  %18 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !4305
  %call45 = tail call %union.tree_node* @build2_stat(i32 93, %union.tree_node* %18, %union.tree_node* %15, %union.tree_node* nonnull %17) #6, !dbg !4305
  store %union.tree_node* %call45, %union.tree_node** %cond, align 8, !dbg !4306
  %19 = getelementptr inbounds %union.tree_node, %union.tree_node* %call45, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4307
  br label %if.end46, !dbg !4307

if.end46:                                         ; preds = %if.then38, %if.then43
  %20 = phi %union.tree_node* [ %15, %if.then38 ], [ %call45, %if.then43 ]
  %21 = phi %union.tree_node* [ %15, %if.then38 ], [ %call45, %if.then43 ]
  %22 = phi i64* [ %16, %if.then38 ], [ %19, %if.then43 ], !dbg !4308
  %bf.load48 = load i64, i64* %22, align 8, !dbg !4308
  %bf.cast503 = and i64 %bf.load48, 65535, !dbg !4310
  %cmp51 = icmp eq i64 %bf.cast503, 96, !dbg !4310
  br i1 %cmp51, label %if.then53, label %if.end65, !dbg !4311

if.then53:                                        ; preds = %if.end46
  %call54 = tail call %union.tree_node* @invert_truthvalue_loc(i32 0, %union.tree_node* %21) #6, !dbg !4312
  store %union.tree_node* %call54, %union.tree_node** %cond, align 8, !dbg !4313
  br label %if.end65, !dbg !4314

if.else56:                                        ; preds = %lor.lhs.false
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %src32, align 8, !dbg !4315
  %aux58 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %23, i64 0, i32 2, !dbg !4317
  %24 = bitcast i8** %aux58 to i64*, !dbg !4317
  %25 = load i64, i64* %24, align 8, !dbg !4317
  %26 = bitcast %union.tree_node** %cond to i64*, !dbg !4318
  store i64 %25, i64* %26, align 8, !dbg !4318
  %aux59 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %spec.select, i64 0, i32 3, !dbg !4319
  %27 = load i8*, i8** %aux59, align 8, !dbg !4319
  %tobool60 = icmp eq i8* %27, null, !dbg !4321
  %28 = inttoptr i64 %25 to %union.tree_node*, !dbg !4322
  br i1 %tobool60, label %if.end65, label %if.then61, !dbg !4322

if.then61:                                        ; preds = %if.else56
  %29 = bitcast i8* %27 to %union.tree_node*, !dbg !4322
  %30 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !4323
  %call63 = tail call %union.tree_node* @build2_stat(i32 93, %union.tree_node* %30, %union.tree_node* %28, %union.tree_node* nonnull %29) #6, !dbg !4323
  store %union.tree_node* %call63, %union.tree_node** %cond, align 8, !dbg !4324
  br label %if.end65, !dbg !4325

if.end65:                                         ; preds = %if.else56, %if.then61, %if.then53, %if.end46
  %31 = phi %union.tree_node* [ %call54, %if.then53 ], [ %20, %if.end46 ], [ %call63, %if.then61 ], [ %28, %if.else56 ], !dbg !4326
  %first_edge.2 = phi %struct.edge_def* [ %spec.select, %if.then53 ], [ %spec.select1, %if.end46 ], [ %spec.select, %if.then61 ], [ %spec.select, %if.else56 ], !dbg !4327
  call void @llvm.dbg.value(metadata %struct.edge_def* %first_edge.2, metadata !4270, metadata !DIExpression()), !dbg !4279
  %call66 = tail call %union.tree_node* @unshare_expr(%union.tree_node* %31) #6, !dbg !4328
  %call67 = tail call %union.tree_node* @force_gimple_operand_gsi(%struct.gimple_stmt_iterator* %gsi, %union.tree_node* %call66, i8 zeroext 0, %union.tree_node* null, i8 zeroext 1, i32 1) #6, !dbg !4329
  store %union.tree_node* %call67, %union.tree_node** %cond, align 8, !dbg !4330
  %call68 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %call67) #6, !dbg !4331
  %tobool69 = icmp eq i8 %call68, 0, !dbg !4331
  br i1 %tobool69, label %land.lhs.true, label %if.end76, !dbg !4332

land.lhs.true:                                    ; preds = %if.end65
  %32 = load %union.tree_node*, %union.tree_node** %cond, align 8, !dbg !4333
  %call70 = tail call zeroext i8 @is_gimple_condexpr(%union.tree_node* %32) #6, !dbg !4334
  %tobool71 = icmp eq i8 %call70, 0, !dbg !4334
  br i1 %tobool71, label %if.then72, label %if.end76, !dbg !4335

if.then72:                                        ; preds = %land.lhs.true
  %33 = bitcast %union.tree_node** %cond to %struct.tree_common**, !dbg !4336
  %34 = load %struct.tree_common*, %struct.tree_common** %33, align 8, !dbg !4336
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %34, i64 0, i32 2, !dbg !4336
  %35 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !4336
  %.cast = bitcast %struct.tree_common* %34 to %union.tree_node*, !dbg !4337
  %call73 = tail call %union.tree_node* @unshare_expr(%union.tree_node* %.cast) #6, !dbg !4338
  %call74 = tail call fastcc %union.gimple_statement_d* @ifc_temp_var(%union.tree_node* %35, %union.tree_node* %call73) #8, !dbg !4339
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call74, metadata !4276, metadata !DIExpression()), !dbg !4340
  tail call void @gsi_insert_before(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %call74, i32 1) #6, !dbg !4341
  %call75 = tail call fastcc %union.tree_node* @gimple_assign_lhs(%union.gimple_statement_d* %call74) #8, !dbg !4342
  store %union.tree_node* %call75, %union.tree_node** %cond, align 8, !dbg !4343
  br label %if.end76, !dbg !4344

if.end76:                                         ; preds = %land.lhs.true, %if.end65, %if.then72
  %36 = load %union.tree_node*, %union.tree_node** %cond, align 8, !dbg !4345
  %tobool77 = icmp eq %union.tree_node* %36, null, !dbg !4345
  br i1 %tobool77, label %cond.true78, label %cond.end80, !dbg !4345

cond.true78:                                      ; preds = %if.end76
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 808, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !4345
  br label %cond.end80, !dbg !4345

cond.end80:                                       ; preds = %if.end76, %cond.true78
  %src82 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %first_edge.2, i64 0, i32 0, !dbg !4346
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %src82, align 8, !dbg !4346
  ret %struct.basic_block_def* %37, !dbg !4347
}

; Function Attrs: nounwind uwtable
define internal fastcc void @replace_phi_with_cond_gimple_assign_stmt(%union.gimple_statement_d* %phi, %union.tree_node* %cond, %struct.basic_block_def* %true_bb, %struct.gimple_stmt_iterator* %gsi) unnamed_addr #5 !dbg !4348 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !4352, metadata !DIExpression()), !dbg !4361
  call void @llvm.dbg.value(metadata %union.tree_node* %cond, metadata !4353, metadata !DIExpression()), !dbg !4361
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %true_bb, metadata !4354, metadata !DIExpression()), !dbg !4361
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !4355, metadata !DIExpression()), !dbg !4361
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %phi) #8, !dbg !4362
  %cmp = icmp eq i32 %call, 16, !dbg !4362
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4362

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 834, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !4362
  br label %cond.end, !dbg !4362

cond.end:                                         ; preds = %entry, %cond.true
  %call2 = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %phi) #8, !dbg !4363
  %cmp3 = icmp eq i32 %call2, 2, !dbg !4363
  br i1 %cmp3, label %cond.end6, label %cond.true4, !dbg !4363

cond.true4:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 837, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !4363
  br label %cond.end6, !dbg !4363

cond.end6:                                        ; preds = %cond.end, %cond.true4
  %call8 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %phi) #8, !dbg !4364
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call8, metadata !4357, metadata !DIExpression()), !dbg !4361
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call8, i64 0, i32 0, !dbg !4365
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !4365
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !4365
  br i1 %tobool, label %cond.end12, label %cond.true9, !dbg !4365

cond.true9:                                       ; preds = %cond.end6
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !4365
  br label %cond.end12, !dbg !4365

cond.end12:                                       ; preds = %cond.end6, %cond.true9
  %cond13 = phi %struct.VEC_edge_base* [ %base, %cond.true9 ], [ null, %cond.end6 ], !dbg !4365
  %call14 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond13, i32 1) #8, !dbg !4365
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call14, i64 0, i32 0, !dbg !4367
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !4367
  %cmp15 = icmp eq %struct.basic_block_def* %1, %true_bb, !dbg !4368
  br i1 %cmp15, label %if.then, label %if.else, !dbg !4369

if.then:                                          ; preds = %cond.end12
  %call16 = tail call fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %phi, i64 1) #8, !dbg !4370
  call void @llvm.dbg.value(metadata %union.tree_node* %call16, metadata !4359, metadata !DIExpression()), !dbg !4361
  %call17 = tail call fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %phi, i64 0) #8, !dbg !4372
  call void @llvm.dbg.value(metadata %union.tree_node* %call17, metadata !4360, metadata !DIExpression()), !dbg !4361
  br label %if.end, !dbg !4373

if.else:                                          ; preds = %cond.end12
  %call18 = tail call fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %phi, i64 0) #8, !dbg !4374
  call void @llvm.dbg.value(metadata %union.tree_node* %call18, metadata !4359, metadata !DIExpression()), !dbg !4361
  %call19 = tail call fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %phi, i64 1) #8, !dbg !4376
  call void @llvm.dbg.value(metadata %union.tree_node* %call19, metadata !4360, metadata !DIExpression()), !dbg !4361
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arg_0.0 = phi %union.tree_node* [ %call16, %if.then ], [ %call18, %if.else ], !dbg !4377
  %arg_1.0 = phi %union.tree_node* [ %call17, %if.then ], [ %call19, %if.else ], !dbg !4377
  call void @llvm.dbg.value(metadata %union.tree_node* %arg_1.0, metadata !4360, metadata !DIExpression()), !dbg !4361
  call void @llvm.dbg.value(metadata %union.tree_node* %arg_0.0, metadata !4359, metadata !DIExpression()), !dbg !4361
  %call20 = tail call fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %phi) #8, !dbg !4378
  %call21 = tail call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %call20) #8, !dbg !4378
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call21, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4378
  %2 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !4378
  %call22 = tail call %union.tree_node* @unshare_expr(%union.tree_node* %cond) #6, !dbg !4378
  %call23 = tail call %union.tree_node* @unshare_expr(%union.tree_node* %arg_0.0) #6, !dbg !4378
  %call24 = tail call %union.tree_node* @unshare_expr(%union.tree_node* %arg_1.0) #6, !dbg !4378
  %call25 = tail call %union.tree_node* @build3_stat(i32 56, %union.tree_node* %2, %union.tree_node* %call22, %union.tree_node* %call23, %union.tree_node* %call24) #6, !dbg !4378
  call void @llvm.dbg.value(metadata %union.tree_node* %call25, metadata !4358, metadata !DIExpression()), !dbg !4361
  %call26 = tail call fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %phi) #8, !dbg !4379
  %call27 = tail call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %call26) #8, !dbg !4379
  %call28 = tail call %union.tree_node* @unshare_expr(%union.tree_node* %call27) #6, !dbg !4379
  %call29 = tail call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call28, %union.tree_node* %call25) #6, !dbg !4379
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call29, metadata !4356, metadata !DIExpression()), !dbg !4361
  %call30 = tail call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %phi) #8, !dbg !4380
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call30, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !4380
  %3 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !4380
  store %union.gimple_statement_d* %call29, %union.gimple_statement_d** %3, align 8, !dbg !4381
  tail call void @gsi_insert_before(%struct.gimple_stmt_iterator* %gsi, %union.gimple_statement_d* %call29, i32 1) #6, !dbg !4382
  tail call fastcc void @update_stmt(%union.gimple_statement_d* %call29) #8, !dbg !4383
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4384
  %tobool31 = icmp eq %struct._IO_FILE* %4, null, !dbg !4384
  br i1 %tobool31, label %if.end35, label %land.lhs.true, !dbg !4386

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, i32* @dump_flags, align 4, !dbg !4387
  %and = and i32 %5, 8, !dbg !4388
  %tobool32 = icmp eq i32 %and, 0, !dbg !4388
  br i1 %tobool32, label %if.end35, label %if.then33, !dbg !4389

if.then33:                                        ; preds = %land.lhs.true
  %call34 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0)) #6, !dbg !4390
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4392
  tail call void @print_gimple_stmt(%struct._IO_FILE* %6, %union.gimple_statement_d* %call29, i32 0, i32 2) #6, !dbg !4393
  br label %if.end35, !dbg !4394

if.end35:                                         ; preds = %land.lhs.true, %if.end, %if.then33
  ret void, !dbg !4395
}

declare dso_local void @release_phi_node(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_phi_nodes(%struct.basic_block_def* %bb, %struct.gimple_seq_d* %seq) unnamed_addr #0 !dbg !4396 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4398, metadata !DIExpression()), !dbg !4401
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* null, metadata !4399, metadata !DIExpression()), !dbg !4401
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !4402
  %0 = load i32, i32* %flags, align 8, !dbg !4402
  %and = and i32 %0, 512, !dbg !4402
  %tobool = icmp eq i32 %and, 0, !dbg !4402
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4402

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0), i32 523, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !4402
  br label %cond.end, !dbg !4402

cond.end:                                         ; preds = %entry, %cond.true
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !4403
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !4403
  %phi_nodes = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 1, !dbg !4404
  store %struct.gimple_seq_d* null, %struct.gimple_seq_d** %phi_nodes, align 8, !dbg !4405
  ret void, !dbg !4406
}

declare dso_local zeroext i8 @is_gimple_condexpr(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %gs, i64 %index) unnamed_addr #0 !dbg !4407 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4411, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.value(metadata i64 %index, metadata !4412, metadata !DIExpression()), !dbg !4415
  %conv = trunc i64 %index to i32, !dbg !4416
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %conv) #8, !dbg !4417
  call void @llvm.dbg.value(metadata %struct.phi_arg_d* %call, metadata !4413, metadata !DIExpression()), !dbg !4415
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !4418
  %call1 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %imm_use) #8, !dbg !4419
  ret %union.tree_node* %call1, !dbg !4420
}

declare dso_local %union.tree_node* @build3_stat(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %def) unnamed_addr #0 !dbg !4421 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %def, metadata !4426, metadata !DIExpression()), !dbg !4427
  %0 = load %union.tree_node*, %union.tree_node** %def, align 8, !dbg !4428
  ret %union.tree_node* %0, !dbg !4429
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_phi_result_ptr(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4430 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4432, metadata !DIExpression()), !dbg !4433
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !4434
  ret %union.tree_node** %result, !dbg !4435
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !4436 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4440, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 %index, metadata !4441, metadata !DIExpression()), !dbg !4442
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !4443
  %0 = load i32, i32* %capacity, align 8, !dbg !4443
  %cmp = icmp ult i32 %0, %index, !dbg !4443
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4443

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !4443
  br label %cond.end, !dbg !4443

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !4444
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !4444
  ret %struct.phi_arg_d* %arrayidx, !dbg !4445
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !4446 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !4450, metadata !DIExpression()), !dbg !4451
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !4452
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !4452
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !4453
  ret %union.tree_node* %1, !dbg !4454
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.gimple_seq_d* %seq) unnamed_addr #0 !dbg !4455 {
entry:
  unreachable, !dbg !4461
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !4462 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !4464, metadata !DIExpression()), !dbg !4465
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !4466
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4466

cond.true:                                        ; preds = %entry
  %last = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 1, !dbg !4467
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %last, align 8, !dbg !4467
  br label %cond.end, !dbg !4466

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !4466
  ret %struct.gimple_seq_node_d* %cond, !dbg !4468
}

declare dso_local %struct.basic_block_def** @get_loop_body(%struct.loop*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %vec_, i32 %ix_, i32* %ptr) unnamed_addr #0 !dbg !4469 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !4475, metadata !DIExpression()), !dbg !4478
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4476, metadata !DIExpression()), !dbg !4478
  call void @llvm.dbg.value(metadata i32* %ptr, metadata !4477, metadata !DIExpression()), !dbg !4478
  %tobool = icmp eq %struct.VEC_int_base* %vec_, null, !dbg !4479
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !4479

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !4479
  %0 = load i32, i32* %num, align 4, !dbg !4479
  %cmp = icmp ugt i32 %0, %ix_, !dbg !4479
  br i1 %cmp, label %if.then, label %if.else, !dbg !4481

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !4482
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4482
  %1 = load i32, i32* %arrayidx, align 4, !dbg !4482
  br label %return, !dbg !4482

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !4484

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ 0, %if.else ], [ %1, %if.then ], !dbg !4486
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !4486
  store i32 %storemerge, i32* %ptr, align 4, !dbg !4486
  ret i32 %retval.0, !dbg !4481
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @get_loop(i32 %num) unnamed_addr #0 !dbg !4487 {
entry:
  call void @llvm.dbg.value(metadata i32 %num, metadata !4491, metadata !DIExpression()), !dbg !4492
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4493
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !4493
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !4493
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !4493
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !4493
  %tobool = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !4493
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4493

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !4493
  br label %cond.end, !dbg !4493

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4493
  %call = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond, i32 %num) #8, !dbg !4493
  ret %struct.loop* %call, !dbg !4494
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %vec_) unnamed_addr #0 !dbg !4495 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !4500, metadata !DIExpression()), !dbg !4501
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !4502
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !4502
  br i1 %tobool, label %if.end, label %if.then, !dbg !4504

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_int_heap* %0 to i8*, !dbg !4504
  tail call void @free(i8* nonnull %1) #6, !dbg !4502
  br label %if.end, !dbg !4502

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %vec_, align 8, !dbg !4504
  ret void, !dbg !4504
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
!llvm.module.flags = !{!2049, !2050, !2051}
!llvm.ident = !{!2052}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pass_if_conversion", scope: !2, file: !3, line: 1168, type: !2023, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !638, globals: !2020, nameTableKind: None)
!3 = !DIFile(filename: "tree-if-conv.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !13, !189, !317, !323, !328, !333, !352, !359, !366, !560, !569, !573, !612}
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
!612 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !574, line: 727, baseType: !7, size: 32, elements: !613)
!613 = !{!614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637}
!614 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!615 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!616 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!617 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!618 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!619 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!620 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!621 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!622 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!623 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!624 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!625 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!626 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!627 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!628 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!629 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!630 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!631 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!632 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!633 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!634 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!635 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!636 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!637 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!638 = !{!639, !640, !641, !642, !645, !646, !648, !663, !732, !2014, !1286, !366, !708, !2015, !1315, !643, !2017, !727}
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!641 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !644)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_heap", file: !650, line: 32, baseType: !651)
!650 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_heap", file: !650, line: 32, size: 96, elements: !652)
!652 = !{!653}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !651, file: !650, line: 32, baseType: !654, size: 96)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_base", file: !650, line: 31, baseType: !655)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_base", file: !650, line: 31, size: 96, elements: !656)
!656 = !{!657, !658, !659}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !655, file: !650, line: 31, baseType: !7, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !655, file: !650, line: 31, baseType: !7, size: 32, offset: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !655, file: !650, line: 31, baseType: !660, size: 32, offset: 64)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 32, elements: !661)
!661 = !{!662}
!662 = !DISubrange(count: 1)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !561, line: 84, baseType: !664)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !561, line: 100, size: 1216, elements: !666)
!666 = !{!667, !668, !669, !1978, !1979, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !2004, !2012, !2013}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !665, file: !561, line: 102, baseType: !641, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !665, file: !561, line: 105, baseType: !7, size: 32, offset: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !665, file: !561, line: 108, baseType: !670, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !318, line: 217, size: 832, elements: !672)
!672 = !{!673, !1945, !1946, !1947, !1948, !1952, !1953, !1954, !1972, !1973, !1974, !1975, !1976, !1977}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !671, file: !318, line: 219, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !318, line: 151, baseType: !676)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !318, line: 151, size: 128, elements: !677)
!677 = !{!678}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !676, file: !318, line: 151, baseType: !679, size: 128)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !318, line: 150, baseType: !680)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !318, line: 150, size: 128, elements: !681)
!681 = !{!682, !683, !684}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !680, file: !318, line: 150, baseType: !7, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !680, file: !318, line: 150, baseType: !7, size: 32, offset: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !680, file: !318, line: 150, baseType: !685, size: 64, offset: 64)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 64, elements: !661)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !687, line: 108, baseType: !688)
!687 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !318, line: 122, size: 512, elements: !690)
!690 = !{!691, !692, !693, !1937, !1938, !1939, !1940, !1941, !1942, !1943}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !689, file: !318, line: 124, baseType: !670, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !689, file: !318, line: 125, baseType: !670, size: 64, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !689, file: !318, line: 131, baseType: !694, size: 64, offset: 128)
!694 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !318, line: 128, size: 64, elements: !695)
!695 = !{!696, !1936}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !694, file: !318, line: 129, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !687, line: 66, baseType: !698)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !574, line: 143, size: 192, elements: !700)
!700 = !{!701, !1934, !1935}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !699, file: !574, line: 145, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !687, line: 69, baseType: !703)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !574, line: 136, size: 192, elements: !705)
!705 = !{!706, !1932, !1933}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !704, file: !574, line: 137, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !687, line: 58, baseType: !708)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !574, line: 737, size: 768, elements: !710)
!710 = !{!711, !1779, !1789, !1795, !1800, !1805, !1812, !1818, !1824, !1829, !1843, !1848, !1854, !1859, !1869, !1874, !1890, !1897, !1904, !1910, !1915, !1921, !1927}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !709, file: !574, line: 738, baseType: !712, size: 256)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !574, line: 271, size: 256, elements: !713)
!713 = !{!714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !729, !730, !731}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !712, file: !574, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !712, file: !574, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !712, file: !574, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !712, file: !574, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !712, file: !574, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !712, file: !574, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !712, file: !574, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !712, file: !574, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !712, file: !574, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !712, file: !574, line: 312, baseType: !7, size: 32, offset: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !712, file: !574, line: 316, baseType: !725, size: 32, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !726, line: 58, baseType: !727)
!726 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !728, line: 44, baseType: !7)
!728 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!729 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !712, file: !574, line: 319, baseType: !7, size: 32, offset: 96)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !712, file: !574, line: 323, baseType: !670, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !712, file: !574, line: 327, baseType: !732, size: 64, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !687, line: 56, baseType: !733)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !334, line: 3371, size: 1792, elements: !735)
!735 = !{!736, !769, !775, !788, !807, !818, !823, !830, !836, !849, !857, !895, !1069, !1097, !1114, !1115, !1120, !1129, !1135, !1140, !1144, !1148, !1430, !1477, !1483, !1489, !1496, !1509, !1523, !1540, !1552, !1574, !1589, !1761}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !734, file: !334, line: 3372, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !334, line: 360, size: 64, elements: !738)
!738 = !{!739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !737, file: !334, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !737, file: !334, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !737, file: !334, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !737, file: !334, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !737, file: !334, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !737, file: !334, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !737, file: !334, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !737, file: !334, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !737, file: !334, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !737, file: !334, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !737, file: !334, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !737, file: !334, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !737, file: !334, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !737, file: !334, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !737, file: !334, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !737, file: !334, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !737, file: !334, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !737, file: !334, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !737, file: !334, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !737, file: !334, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !737, file: !334, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !737, file: !334, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !737, file: !334, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !737, file: !334, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !737, file: !334, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !737, file: !334, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !737, file: !334, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !737, file: !334, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !737, file: !334, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !737, file: !334, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !734, file: !334, line: 3373, baseType: !770, size: 192)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !334, line: 402, size: 192, elements: !771)
!771 = !{!772, !773, !774}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !770, file: !334, line: 403, baseType: !737, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !770, file: !334, line: 404, baseType: !732, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !770, file: !334, line: 405, baseType: !732, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !734, file: !334, line: 3374, baseType: !776, size: 320)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !334, line: 1384, size: 320, elements: !777)
!777 = !{!778, !779}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !776, file: !334, line: 1385, baseType: !770, size: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !776, file: !334, line: 1386, baseType: !780, size: 128, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !781, line: 58, baseType: !782)
!781 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !781, line: 54, size: 128, elements: !783)
!783 = !{!784, !786}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !782, file: !781, line: 56, baseType: !785, size: 64)
!785 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !782, file: !781, line: 57, baseType: !787, size: 64, offset: 64)
!787 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !734, file: !334, line: 3375, baseType: !789, size: 256)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !334, line: 1397, size: 256, elements: !790)
!790 = !{!791, !792}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !789, file: !334, line: 1398, baseType: !770, size: 192)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !789, file: !334, line: 1399, baseType: !793, size: 64, offset: 192)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !795, line: 52, size: 256, elements: !796)
!795 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!796 = !{!797, !798, !799, !800, !801, !802, !803}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !794, file: !795, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !794, file: !795, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !794, file: !795, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !794, file: !795, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !794, file: !795, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !794, file: !795, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !794, file: !795, line: 62, baseType: !804, size: 192, offset: 64)
!804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !785, size: 192, elements: !805)
!805 = !{!806}
!806 = !DISubrange(count: 3)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !734, file: !334, line: 3376, baseType: !808, size: 256)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !334, line: 1408, size: 256, elements: !809)
!809 = !{!810, !811}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !808, file: !334, line: 1409, baseType: !770, size: 192)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !808, file: !334, line: 1410, baseType: !812, size: 64, offset: 192)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !814, line: 27, size: 192, elements: !815)
!814 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!815 = !{!816, !817}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !813, file: !814, line: 29, baseType: !780, size: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !813, file: !814, line: 30, baseType: !189, size: 32, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !734, file: !334, line: 3377, baseType: !819, size: 256)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !334, line: 1437, size: 256, elements: !820)
!820 = !{!821, !822}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !819, file: !334, line: 1438, baseType: !770, size: 192)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !819, file: !334, line: 1439, baseType: !732, size: 64, offset: 192)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !734, file: !334, line: 3378, baseType: !824, size: 256)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !334, line: 1418, size: 256, elements: !825)
!825 = !{!826, !827, !828}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !824, file: !334, line: 1419, baseType: !770, size: 192)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !824, file: !334, line: 1420, baseType: !641, size: 32, offset: 192)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !824, file: !334, line: 1421, baseType: !829, size: 8, offset: 224)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 8, elements: !661)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !734, file: !334, line: 3379, baseType: !831, size: 320)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !334, line: 1428, size: 320, elements: !832)
!832 = !{!833, !834, !835}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !831, file: !334, line: 1429, baseType: !770, size: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !831, file: !334, line: 1430, baseType: !732, size: 64, offset: 192)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !831, file: !334, line: 1431, baseType: !732, size: 64, offset: 256)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !734, file: !334, line: 3380, baseType: !837, size: 320)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !334, line: 1460, size: 320, elements: !838)
!838 = !{!839, !840}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !837, file: !334, line: 1461, baseType: !770, size: 192)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !837, file: !334, line: 1462, baseType: !841, size: 128, offset: 192)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !842, line: 31, size: 128, elements: !843)
!842 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!843 = !{!844, !847, !848}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !841, file: !842, line: 32, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !640)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !841, file: !842, line: 33, baseType: !7, size: 32, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !841, file: !842, line: 34, baseType: !7, size: 32, offset: 96)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !734, file: !334, line: 3381, baseType: !850, size: 384)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !334, line: 2507, size: 384, elements: !851)
!851 = !{!852, !853, !854, !855, !856}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !850, file: !334, line: 2508, baseType: !770, size: 192)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !850, file: !334, line: 2509, baseType: !725, size: 32, offset: 192)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !850, file: !334, line: 2510, baseType: !7, size: 32, offset: 224)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !850, file: !334, line: 2511, baseType: !732, size: 64, offset: 256)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !850, file: !334, line: 2512, baseType: !732, size: 64, offset: 320)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !734, file: !334, line: 3382, baseType: !858, size: 896)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !334, line: 2652, size: 896, elements: !859)
!859 = !{!860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !858, file: !334, line: 2653, baseType: !850, size: 384)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !858, file: !334, line: 2654, baseType: !732, size: 64, offset: 384)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !858, file: !334, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !858, file: !334, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !858, file: !334, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !858, file: !334, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !858, file: !334, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !858, file: !334, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !858, file: !334, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !858, file: !334, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !858, file: !334, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !858, file: !334, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !858, file: !334, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !858, file: !334, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !858, file: !334, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !858, file: !334, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !858, file: !334, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !858, file: !334, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !858, file: !334, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !858, file: !334, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !858, file: !334, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !858, file: !334, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !858, file: !334, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !858, file: !334, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !858, file: !334, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !858, file: !334, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !858, file: !334, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !858, file: !334, line: 2703, baseType: !7, size: 32, offset: 512)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !858, file: !334, line: 2705, baseType: !732, size: 64, offset: 576)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !858, file: !334, line: 2706, baseType: !732, size: 64, offset: 640)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !858, file: !334, line: 2707, baseType: !732, size: 64, offset: 704)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !858, file: !334, line: 2708, baseType: !732, size: 64, offset: 768)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !858, file: !334, line: 2711, baseType: !893, size: 64, offset: 832)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !334, line: 2711, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !734, file: !334, line: 3383, baseType: !896, size: 960)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !334, line: 2756, size: 960, elements: !897)
!897 = !{!898, !899}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !896, file: !334, line: 2757, baseType: !858, size: 896)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !896, file: !334, line: 2758, baseType: !900, size: 64, offset: 896)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !687, line: 50, baseType: !901)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !903, line: 240, size: 384, elements: !904)
!903 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!904 = !{!905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !902, file: !903, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !902, file: !903, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !902, file: !903, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !902, file: !903, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !902, file: !903, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !902, file: !903, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !902, file: !903, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !902, file: !903, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !902, file: !903, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !902, file: !903, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !902, file: !903, line: 321, baseType: !916, size: 320, offset: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !903, line: 315, size: 320, elements: !917)
!917 = !{!918, !1036, !1038, !1067, !1068}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !916, file: !903, line: 316, baseType: !919, size: 64)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !920, size: 64, elements: !661)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !903, line: 183, baseType: !921)
!921 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !903, line: 166, size: 64, elements: !922)
!922 = !{!923, !924, !925, !926, !927, !935, !936, !948, !951, !1011, !1012, !1013, !1026, !1033}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !921, file: !903, line: 168, baseType: !641, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !921, file: !903, line: 169, baseType: !7, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !921, file: !903, line: 170, baseType: !646, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !921, file: !903, line: 171, baseType: !900, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !921, file: !903, line: 172, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !687, line: 53, baseType: !929)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !903, line: 359, size: 128, elements: !931)
!931 = !{!932, !933}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !930, file: !903, line: 360, baseType: !641, size: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !930, file: !903, line: 361, baseType: !934, size: 64, offset: 64)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !900, size: 64, elements: !661)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !921, file: !903, line: 173, baseType: !189, size: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !921, file: !903, line: 174, baseType: !937, size: 32)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !903, line: 133, baseType: !938)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !903, line: 115, size: 32, elements: !939)
!939 = !{!940, !941, !942, !943, !944, !945, !946, !947}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !938, file: !903, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !938, file: !903, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !938, file: !903, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !938, file: !903, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !938, file: !903, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !938, file: !903, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !938, file: !903, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !938, file: !903, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !921, file: !903, line: 175, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !903, line: 175, flags: DIFlagFwdDecl)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !921, file: !903, line: 176, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !954, line: 75, size: 256, elements: !955)
!954 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!955 = !{!956, !970, !971, !972}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !953, file: !954, line: 76, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !954, line: 68, baseType: !959)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !954, line: 63, size: 320, elements: !960)
!960 = !{!961, !963, !964, !965}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !959, file: !954, line: 64, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !959, file: !954, line: 65, baseType: !962, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !959, file: !954, line: 66, baseType: !7, size: 32, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !959, file: !954, line: 67, baseType: !966, size: 128, offset: 192)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !967, size: 128, elements: !968)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !954, line: 29, baseType: !785)
!968 = !{!969}
!969 = !DISubrange(count: 2)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !953, file: !954, line: 77, baseType: !957, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !953, file: !954, line: 78, baseType: !7, size: 32, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !953, file: !954, line: 79, baseType: !973, size: 64, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !954, line: 49, baseType: !975)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !954, line: 45, size: 832, elements: !976)
!976 = !{!977, !978, !979}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !975, file: !954, line: 46, baseType: !962, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !975, file: !954, line: 47, baseType: !952, size: 64, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !975, file: !954, line: 48, baseType: !980, size: 704, offset: 128)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !981, line: 164, size: 704, elements: !982)
!981 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!982 = !{!983, !984, !994, !995, !996, !997, !998, !999, !1003, !1007, !1008, !1009, !1010}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !980, file: !981, line: 166, baseType: !787, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !980, file: !981, line: 167, baseType: !985, size: 64, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !981, line: 157, size: 192, elements: !987)
!987 = !{!988, !989, !990}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !986, file: !981, line: 159, baseType: !643, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !986, file: !981, line: 160, baseType: !985, size: 64, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !986, file: !981, line: 161, baseType: !991, size: 32, offset: 128)
!991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 32, elements: !992)
!992 = !{!993}
!993 = !DISubrange(count: 4)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !980, file: !981, line: 168, baseType: !643, size: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !980, file: !981, line: 169, baseType: !643, size: 64, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !980, file: !981, line: 170, baseType: !643, size: 64, offset: 256)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !980, file: !981, line: 171, baseType: !787, size: 64, offset: 320)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !980, file: !981, line: 172, baseType: !641, size: 32, offset: 384)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !980, file: !981, line: 176, baseType: !1000, size: 64, offset: 448)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!985, !645, !787}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !980, file: !981, line: 177, baseType: !1004, size: 64, offset: 512)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{null, !645, !985}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !980, file: !981, line: 178, baseType: !645, size: 64, offset: 576)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !980, file: !981, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !980, file: !981, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !980, file: !981, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !921, file: !903, line: 177, baseType: !732, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !921, file: !903, line: 178, baseType: !670, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !921, file: !903, line: 179, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !903, line: 150, baseType: !1016)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !903, line: 142, size: 320, elements: !1017)
!1017 = !{!1018, !1019, !1020, !1021, !1024, !1025}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1016, file: !903, line: 144, baseType: !732, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1016, file: !903, line: 145, baseType: !900, size: 64, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1016, file: !903, line: 146, baseType: !900, size: 64, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1016, file: !903, line: 147, baseType: !1022, size: 32, offset: 192)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1023, line: 31, baseType: !641)
!1023 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1016, file: !903, line: 148, baseType: !7, size: 32, offset: 224)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1016, file: !903, line: 149, baseType: !640, size: 8, offset: 256)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !921, file: !903, line: 180, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !903, line: 162, baseType: !1029)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !903, line: 159, size: 128, elements: !1030)
!1030 = !{!1031, !1032}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1029, file: !903, line: 160, baseType: !732, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1029, file: !903, line: 161, baseType: !787, size: 64, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !921, file: !903, line: 181, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !903, line: 181, flags: DIFlagFwdDecl)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !916, file: !903, line: 317, baseType: !1037, size: 64)
!1037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !787, size: 64, elements: !661)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !916, file: !903, line: 318, baseType: !1039, size: 320)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !903, line: 188, size: 320, elements: !1040)
!1040 = !{!1041, !1043, !1066}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1039, file: !903, line: 190, baseType: !1042, size: 192)
!1042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !920, size: 192, elements: !805)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1039, file: !903, line: 193, baseType: !1044, size: 64, offset: 192)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !903, line: 206, size: 320, elements: !1046)
!1046 = !{!1047, !1051, !1052, !1053, !1065}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1045, file: !903, line: 208, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !687, line: 62, baseType: !1050)
!1050 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !687, line: 61, flags: DIFlagFwdDecl)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1045, file: !903, line: 211, baseType: !7, size: 32, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1045, file: !903, line: 214, baseType: !787, size: 64, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1045, file: !903, line: 224, baseType: !1054, size: 64, offset: 192)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !903, line: 202, baseType: !1056)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !903, line: 202, size: 128, elements: !1057)
!1057 = !{!1058}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1056, file: !903, line: 202, baseType: !1059, size: 128)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !903, line: 200, baseType: !1060)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !903, line: 200, size: 128, elements: !1061)
!1061 = !{!1062, !1063, !1064}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1060, file: !903, line: 200, baseType: !7, size: 32)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1060, file: !903, line: 200, baseType: !7, size: 32, offset: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1060, file: !903, line: 200, baseType: !934, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1045, file: !903, line: 234, baseType: !1054, size: 64, offset: 256)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1039, file: !903, line: 197, baseType: !787, size: 64, offset: 256)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !916, file: !903, line: 319, baseType: !794, size: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !916, file: !903, line: 320, baseType: !813, size: 192)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !734, file: !334, line: 3384, baseType: !1070, size: 1472)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !334, line: 3114, size: 1472, elements: !1071)
!1071 = !{!1072, !1093, !1094, !1095, !1096}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1070, file: !334, line: 3115, baseType: !1073, size: 1216)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !334, line: 2984, size: 1216, elements: !1074)
!1074 = !{!1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1073, file: !334, line: 2985, baseType: !896, size: 960)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1073, file: !334, line: 2986, baseType: !732, size: 64, offset: 960)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1073, file: !334, line: 2987, baseType: !732, size: 64, offset: 1024)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1073, file: !334, line: 2988, baseType: !732, size: 64, offset: 1088)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1073, file: !334, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1073, file: !334, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1073, file: !334, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1073, file: !334, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1073, file: !334, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1073, file: !334, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1073, file: !334, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1073, file: !334, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1073, file: !334, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1073, file: !334, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1073, file: !334, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1073, file: !334, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1073, file: !334, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1073, file: !334, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1070, file: !334, line: 3117, baseType: !732, size: 64, offset: 1216)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1070, file: !334, line: 3119, baseType: !732, size: 64, offset: 1280)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1070, file: !334, line: 3121, baseType: !732, size: 64, offset: 1344)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1070, file: !334, line: 3123, baseType: !732, size: 64, offset: 1408)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !734, file: !334, line: 3385, baseType: !1098, size: 1088)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !334, line: 2874, size: 1088, elements: !1099)
!1099 = !{!1100, !1101, !1102}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1098, file: !334, line: 2875, baseType: !896, size: 960)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1098, file: !334, line: 2876, baseType: !900, size: 64, offset: 960)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1098, file: !334, line: 2877, baseType: !1103, size: 64, offset: 1024)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1105, line: 172, size: 128, elements: !1106)
!1105 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1106 = !{!1107, !1108, !1109, !1110, !1111, !1112, !1113}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1104, file: !1105, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1104, file: !1105, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1104, file: !1105, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1104, file: !1105, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1104, file: !1105, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1104, file: !1105, line: 195, baseType: !7, size: 32, offset: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1104, file: !1105, line: 199, baseType: !732, size: 64, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !734, file: !334, line: 3386, baseType: !1073, size: 1216)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !734, file: !334, line: 3387, baseType: !1116, size: 1280)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !334, line: 3093, size: 1280, elements: !1117)
!1117 = !{!1118, !1119}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1116, file: !334, line: 3094, baseType: !1073, size: 1216)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1116, file: !334, line: 3095, baseType: !1103, size: 64, offset: 1216)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !734, file: !334, line: 3388, baseType: !1121, size: 1216)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !334, line: 2824, size: 1216, elements: !1122)
!1122 = !{!1123, !1124, !1125, !1126, !1127, !1128}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1121, file: !334, line: 2825, baseType: !858, size: 896)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1121, file: !334, line: 2827, baseType: !732, size: 64, offset: 896)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1121, file: !334, line: 2828, baseType: !732, size: 64, offset: 960)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1121, file: !334, line: 2829, baseType: !732, size: 64, offset: 1024)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1121, file: !334, line: 2830, baseType: !732, size: 64, offset: 1088)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1121, file: !334, line: 2831, baseType: !732, size: 64, offset: 1152)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !734, file: !334, line: 3389, baseType: !1130, size: 1024)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !334, line: 2850, size: 1024, elements: !1131)
!1131 = !{!1132, !1133, !1134}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1130, file: !334, line: 2851, baseType: !896, size: 960)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1130, file: !334, line: 2852, baseType: !641, size: 32, offset: 960)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1130, file: !334, line: 2853, baseType: !641, size: 32, offset: 992)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !734, file: !334, line: 3390, baseType: !1136, size: 1024)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !334, line: 2857, size: 1024, elements: !1137)
!1137 = !{!1138, !1139}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1136, file: !334, line: 2858, baseType: !896, size: 960)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1136, file: !334, line: 2859, baseType: !1103, size: 64, offset: 960)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !734, file: !334, line: 3391, baseType: !1141, size: 960)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !334, line: 2862, size: 960, elements: !1142)
!1142 = !{!1143}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1141, file: !334, line: 2863, baseType: !896, size: 960)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !734, file: !334, line: 3392, baseType: !1145, size: 1472)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !334, line: 3304, size: 1472, elements: !1146)
!1146 = !{!1147}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1145, file: !334, line: 3305, baseType: !1070, size: 1472)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !734, file: !334, line: 3393, baseType: !1149, size: 1792)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !334, line: 3248, size: 1792, elements: !1150)
!1150 = !{!1151, !1152, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1149, file: !334, line: 3249, baseType: !1070, size: 1472)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1149, file: !334, line: 3251, baseType: !1153, size: 64, offset: 1472)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1155, line: 463, size: 1152, elements: !1156)
!1155 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1156 = !{!1157, !1160, !1191, !1192, !1333, !1353, !1354, !1355, !1356, !1357, !1358, !1382, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1154, file: !1155, line: 464, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1155, line: 464, flags: DIFlagFwdDecl)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1154, file: !1155, line: 467, baseType: !1161, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !318, line: 374, size: 640, elements: !1163)
!1163 = !{!1164, !1166, !1167, !1180, !1181, !1182, !1183, !1184, !1185, !1187, !1189, !1190}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1162, file: !318, line: 377, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !687, line: 111, baseType: !670)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1162, file: !318, line: 378, baseType: !1165, size: 64, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1162, file: !318, line: 381, baseType: !1168, size: 64, offset: 128)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !318, line: 282, baseType: !1170)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !318, line: 282, size: 128, elements: !1171)
!1171 = !{!1172}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1170, file: !318, line: 282, baseType: !1173, size: 128)
!1173 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !318, line: 281, baseType: !1174)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !318, line: 281, size: 128, elements: !1175)
!1175 = !{!1176, !1177, !1178}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1174, file: !318, line: 281, baseType: !7, size: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1174, file: !318, line: 281, baseType: !7, size: 32, offset: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1174, file: !318, line: 281, baseType: !1179, size: 64, offset: 64)
!1179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1165, size: 64, elements: !661)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1162, file: !318, line: 384, baseType: !641, size: 32, offset: 192)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1162, file: !318, line: 387, baseType: !641, size: 32, offset: 224)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1162, file: !318, line: 390, baseType: !641, size: 32, offset: 256)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1162, file: !318, line: 394, baseType: !1168, size: 64, offset: 320)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1162, file: !318, line: 396, baseType: !317, size: 32, offset: 384)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1162, file: !318, line: 399, baseType: !1186, size: 64, offset: 416)
!1186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 64, elements: !968)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1162, file: !318, line: 402, baseType: !1188, size: 64, offset: 480)
!1188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !968)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1162, file: !318, line: 406, baseType: !641, size: 32, offset: 544)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1162, file: !318, line: 409, baseType: !641, size: 32, offset: 576)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1154, file: !1155, line: 470, baseType: !698, size: 64, offset: 128)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1154, file: !1155, line: 473, baseType: !1193, size: 64, offset: 192)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1105, line: 39, size: 1152, elements: !1195)
!1195 = !{!1196, !1248, !1261, !1274, !1275, !1287, !1288, !1292, !1293, !1294, !1295, !1296}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1194, file: !1105, line: 41, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1198, line: 144, baseType: !1199)
!1198 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1198, line: 100, size: 896, elements: !1201)
!1201 = !{!1202, !1210, !1215, !1220, !1222, !1225, !1226, !1227, !1228, !1229, !1234, !1236, !1237, !1242, !1247}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1200, file: !1198, line: 102, baseType: !1203, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1198, line: 52, baseType: !1204)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!1207, !1208}
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1198, line: 47, baseType: !7)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1200, file: !1198, line: 105, baseType: !1211, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1198, line: 59, baseType: !1212)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!641, !1208, !1208}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1200, file: !1198, line: 108, baseType: !1216, size: 64, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1198, line: 63, baseType: !1217)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{null, !645}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1200, file: !1198, line: 111, baseType: !1221, size: 64, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1200, file: !1198, line: 114, baseType: !1223, size: 64, offset: 256)
!1223 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1224, line: 46, baseType: !785)
!1224 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1200, file: !1198, line: 117, baseType: !1223, size: 64, offset: 320)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1200, file: !1198, line: 120, baseType: !1223, size: 64, offset: 384)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1200, file: !1198, line: 124, baseType: !7, size: 32, offset: 448)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1200, file: !1198, line: 128, baseType: !7, size: 32, offset: 480)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1200, file: !1198, line: 131, baseType: !1230, size: 64, offset: 512)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1198, line: 75, baseType: !1231)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!645, !1223, !1223}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1200, file: !1198, line: 132, baseType: !1235, size: 64, offset: 576)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1198, line: 78, baseType: !1217)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1200, file: !1198, line: 135, baseType: !645, size: 64, offset: 640)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1200, file: !1198, line: 136, baseType: !1238, size: 64, offset: 704)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1198, line: 82, baseType: !1239)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!645, !645, !1223, !1223}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1200, file: !1198, line: 137, baseType: !1243, size: 64, offset: 768)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1198, line: 83, baseType: !1244)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{null, !645, !645}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1200, file: !1198, line: 141, baseType: !7, size: 32, offset: 832)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1194, file: !1105, line: 48, baseType: !1249, size: 64, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !574, line: 35, baseType: !1251)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !574, line: 35, size: 128, elements: !1252)
!1252 = !{!1253}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1251, file: !574, line: 35, baseType: !1254, size: 128)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !574, line: 33, baseType: !1255)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !574, line: 33, size: 128, elements: !1256)
!1256 = !{!1257, !1258, !1259}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1255, file: !574, line: 33, baseType: !7, size: 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1255, file: !574, line: 33, baseType: !7, size: 32, offset: 32)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1255, file: !574, line: 33, baseType: !1260, size: 64, offset: 64)
!1260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !707, size: 64, elements: !661)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1194, file: !1105, line: 51, baseType: !1262, size: 64, offset: 128)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !334, line: 183, baseType: !1264)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !334, line: 183, size: 128, elements: !1265)
!1265 = !{!1266}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1264, file: !334, line: 183, baseType: !1267, size: 128)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !334, line: 182, baseType: !1268)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !334, line: 182, size: 128, elements: !1269)
!1269 = !{!1270, !1271, !1272}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1268, file: !334, line: 182, baseType: !7, size: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1268, file: !334, line: 182, baseType: !7, size: 32, offset: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1268, file: !334, line: 182, baseType: !1273, size: 64, offset: 64)
!1273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !732, size: 64, elements: !661)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1194, file: !1105, line: 54, baseType: !732, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1194, file: !1105, line: 57, baseType: !1276, size: 128, offset: 256)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1277, line: 31, size: 128, elements: !1278)
!1277 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1278 = !{!1279, !1280, !1281, !1282, !1283, !1284, !1285}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1276, file: !1277, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1276, file: !1277, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1276, file: !1277, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1276, file: !1277, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1276, file: !1277, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1276, file: !1277, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1276, file: !1277, line: 56, baseType: !1286, size: 64, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !687, line: 47, baseType: !952)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1194, file: !1105, line: 60, baseType: !1276, size: 128, offset: 384)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1194, file: !1105, line: 64, baseType: !1289, size: 64, offset: 512)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1291, line: 33, flags: DIFlagFwdDecl)
!1291 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1194, file: !1105, line: 67, baseType: !732, size: 64, offset: 576)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1194, file: !1105, line: 73, baseType: !1197, size: 64, offset: 640)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1194, file: !1105, line: 77, baseType: !1286, size: 64, offset: 704)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1194, file: !1105, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1194, file: !1105, line: 82, baseType: !1297, size: 320, offset: 832)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !1298, line: 62, size: 320, elements: !1299)
!1298 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1299 = !{!1300, !1306, !1307, !1308, !1309, !1316}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1297, file: !1298, line: 63, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !1298, line: 56, size: 128, elements: !1303)
!1303 = !{!1304, !1305}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1302, file: !1298, line: 57, baseType: !1301, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1302, file: !1298, line: 58, baseType: !829, size: 8, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1297, file: !1298, line: 64, baseType: !7, size: 32, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1297, file: !1298, line: 66, baseType: !7, size: 32, offset: 96)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1297, file: !1298, line: 68, baseType: !640, size: 8, offset: 128)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1297, file: !1298, line: 70, baseType: !1310, size: 64, offset: 192)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !1298, line: 37, size: 128, elements: !1312)
!1312 = !{!1313, !1314}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1311, file: !1298, line: 39, baseType: !1310, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1311, file: !1298, line: 40, baseType: !1315, size: 64, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1297, file: !1298, line: 71, baseType: !1317, size: 64, offset: 256)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !1298, line: 45, size: 320, elements: !1319)
!1319 = !{!1320, !1321}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1318, file: !1298, line: 47, baseType: !1317, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1318, file: !1298, line: 48, baseType: !1322, size: 256, offset: 64)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !334, line: 1883, size: 256, elements: !1323)
!1323 = !{!1324, !1326, !1327, !1332}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1322, file: !334, line: 1884, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1322, file: !334, line: 1885, baseType: !1325, size: 64, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1322, file: !334, line: 1891, baseType: !1328, size: 64, offset: 128)
!1328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1322, file: !334, line: 1891, size: 64, elements: !1329)
!1329 = !{!1330, !1331}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1328, file: !334, line: 1891, baseType: !707, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1328, file: !334, line: 1891, baseType: !732, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1322, file: !334, line: 1892, baseType: !1315, size: 64, offset: 192)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1154, file: !1155, line: 476, baseType: !1334, size: 64, offset: 256)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !561, line: 187, size: 256, elements: !1336)
!1336 = !{!1337, !1338, !1351, !1352}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1335, file: !561, line: 189, baseType: !641, size: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1335, file: !561, line: 192, baseType: !1339, size: 64, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !561, line: 87, baseType: !1341)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !561, line: 87, size: 128, elements: !1342)
!1342 = !{!1343}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1341, file: !561, line: 87, baseType: !1344, size: 128)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !561, line: 85, baseType: !1345)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !561, line: 85, size: 128, elements: !1346)
!1346 = !{!1347, !1348, !1349}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1345, file: !561, line: 85, baseType: !7, size: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1345, file: !561, line: 85, baseType: !7, size: 32, offset: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1345, file: !561, line: 85, baseType: !1350, size: 64, offset: 64)
!1350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !663, size: 64, elements: !661)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1335, file: !561, line: 197, baseType: !1197, size: 64, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1335, file: !561, line: 200, baseType: !664, size: 64, offset: 192)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1154, file: !1155, line: 479, baseType: !1197, size: 64, offset: 320)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1154, file: !1155, line: 484, baseType: !732, size: 64, offset: 384)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1154, file: !1155, line: 488, baseType: !732, size: 64, offset: 448)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1154, file: !1155, line: 493, baseType: !732, size: 64, offset: 512)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1154, file: !1155, line: 496, baseType: !732, size: 64, offset: 576)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1154, file: !1155, line: 501, baseType: !1359, size: 64, offset: 640)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !329, line: 2355, size: 576, elements: !1361)
!1361 = !{!1362, !1365, !1366, !1367, !1368, !1370, !1371, !1376, !1377, !1378, !1379, !1380, !1381}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1360, file: !329, line: 2356, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !329, line: 2356, flags: DIFlagFwdDecl)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1360, file: !329, line: 2357, baseType: !646, size: 64, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1360, file: !329, line: 2358, baseType: !641, size: 32, offset: 128)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1360, file: !329, line: 2359, baseType: !641, size: 32, offset: 160)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1360, file: !329, line: 2360, baseType: !1369, size: 128, offset: 192)
!1369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 128, elements: !992)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1360, file: !329, line: 2364, baseType: !641, size: 32, offset: 320)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1360, file: !329, line: 2367, baseType: !1372, size: 128, offset: 384)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !329, line: 2349, size: 128, elements: !1373)
!1373 = !{!1374, !1375}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1372, file: !329, line: 2351, baseType: !900, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1372, file: !329, line: 2352, baseType: !787, size: 64, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1360, file: !329, line: 2371, baseType: !328, size: 32, offset: 512)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1360, file: !329, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1360, file: !329, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1360, file: !329, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1360, file: !329, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1360, file: !329, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1154, file: !1155, line: 504, baseType: !1383, size: 64, offset: 704)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1155, line: 504, flags: DIFlagFwdDecl)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1154, file: !1155, line: 507, baseType: !1197, size: 64, offset: 768)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1154, file: !1155, line: 510, baseType: !641, size: 32, offset: 832)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1154, file: !1155, line: 513, baseType: !641, size: 32, offset: 864)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1154, file: !1155, line: 516, baseType: !725, size: 32, offset: 896)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1154, file: !1155, line: 519, baseType: !725, size: 32, offset: 928)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1154, file: !1155, line: 522, baseType: !7, size: 32, offset: 960)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1154, file: !1155, line: 523, baseType: !7, size: 32, offset: 992)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1154, file: !1155, line: 528, baseType: !646, size: 64, offset: 1024)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1154, file: !1155, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1154, file: !1155, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1154, file: !1155, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1154, file: !1155, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1154, file: !1155, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1154, file: !1155, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1154, file: !1155, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1154, file: !1155, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1154, file: !1155, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1154, file: !1155, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1154, file: !1155, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1154, file: !1155, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1154, file: !1155, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1154, file: !1155, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1154, file: !1155, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1154, file: !1155, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1149, file: !334, line: 3254, baseType: !732, size: 64, offset: 1536)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1149, file: !334, line: 3257, baseType: !732, size: 64, offset: 1600)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1149, file: !334, line: 3258, baseType: !732, size: 64, offset: 1664)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1149, file: !334, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1149, file: !334, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1149, file: !334, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1149, file: !334, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1149, file: !334, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1149, file: !334, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1149, file: !334, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1149, file: !334, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1149, file: !334, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1149, file: !334, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1149, file: !334, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1149, file: !334, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1149, file: !334, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1149, file: !334, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1149, file: !334, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1149, file: !334, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1149, file: !334, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1149, file: !334, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !734, file: !334, line: 3394, baseType: !1431, size: 1344)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !334, line: 2279, size: 1344, elements: !1432)
!1432 = !{!1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1431, file: !334, line: 2280, baseType: !770, size: 192)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1431, file: !334, line: 2281, baseType: !732, size: 64, offset: 192)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1431, file: !334, line: 2282, baseType: !732, size: 64, offset: 256)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1431, file: !334, line: 2283, baseType: !732, size: 64, offset: 320)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1431, file: !334, line: 2284, baseType: !732, size: 64, offset: 384)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1431, file: !334, line: 2285, baseType: !7, size: 32, offset: 448)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1431, file: !334, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1431, file: !334, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1431, file: !334, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1431, file: !334, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1431, file: !334, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1431, file: !334, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1431, file: !334, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1431, file: !334, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1431, file: !334, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1431, file: !334, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1431, file: !334, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1431, file: !334, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1431, file: !334, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1431, file: !334, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1431, file: !334, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1431, file: !334, line: 2305, baseType: !7, size: 32, offset: 512)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1431, file: !334, line: 2306, baseType: !1022, size: 32, offset: 544)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1431, file: !334, line: 2307, baseType: !732, size: 64, offset: 576)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1431, file: !334, line: 2308, baseType: !732, size: 64, offset: 640)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1431, file: !334, line: 2314, baseType: !1459, size: 64, offset: 704)
!1459 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !334, line: 2309, size: 64, elements: !1460)
!1460 = !{!1461, !1462, !1463}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1459, file: !334, line: 2310, baseType: !641, size: 32)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1459, file: !334, line: 2311, baseType: !646, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1459, file: !334, line: 2312, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !334, line: 2277, flags: DIFlagFwdDecl)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1431, file: !334, line: 2315, baseType: !732, size: 64, offset: 768)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1431, file: !334, line: 2316, baseType: !732, size: 64, offset: 832)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1431, file: !334, line: 2317, baseType: !732, size: 64, offset: 896)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1431, file: !334, line: 2318, baseType: !732, size: 64, offset: 960)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1431, file: !334, line: 2319, baseType: !732, size: 64, offset: 1024)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1431, file: !334, line: 2320, baseType: !732, size: 64, offset: 1088)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1431, file: !334, line: 2321, baseType: !732, size: 64, offset: 1152)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1431, file: !334, line: 2322, baseType: !732, size: 64, offset: 1216)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1431, file: !334, line: 2324, baseType: !1475, size: 64, offset: 1280)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !334, line: 2324, flags: DIFlagFwdDecl)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !734, file: !334, line: 3395, baseType: !1478, size: 320)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !334, line: 1469, size: 320, elements: !1479)
!1479 = !{!1480, !1481, !1482}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1478, file: !334, line: 1470, baseType: !770, size: 192)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1478, file: !334, line: 1471, baseType: !732, size: 64, offset: 192)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1478, file: !334, line: 1472, baseType: !732, size: 64, offset: 256)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !734, file: !334, line: 3396, baseType: !1484, size: 320)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !334, line: 1482, size: 320, elements: !1485)
!1485 = !{!1486, !1487, !1488}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1484, file: !334, line: 1483, baseType: !770, size: 192)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1484, file: !334, line: 1484, baseType: !641, size: 32, offset: 192)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1484, file: !334, line: 1485, baseType: !1273, size: 64, offset: 256)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !734, file: !334, line: 3397, baseType: !1490, size: 384)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !334, line: 1829, size: 384, elements: !1491)
!1491 = !{!1492, !1493, !1494, !1495}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1490, file: !334, line: 1830, baseType: !770, size: 192)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1490, file: !334, line: 1831, baseType: !725, size: 32, offset: 192)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1490, file: !334, line: 1832, baseType: !732, size: 64, offset: 256)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1490, file: !334, line: 1835, baseType: !1273, size: 64, offset: 320)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !734, file: !334, line: 3398, baseType: !1497, size: 704)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !334, line: 1898, size: 704, elements: !1498)
!1498 = !{!1499, !1500, !1501, !1502, !1503, !1508}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1497, file: !334, line: 1899, baseType: !770, size: 192)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1497, file: !334, line: 1902, baseType: !732, size: 64, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1497, file: !334, line: 1905, baseType: !707, size: 64, offset: 256)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1497, file: !334, line: 1908, baseType: !7, size: 32, offset: 320)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1497, file: !334, line: 1911, baseType: !1504, size: 64, offset: 384)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1105, line: 117, size: 128, elements: !1506)
!1506 = !{!1507}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1505, file: !1105, line: 120, baseType: !1276, size: 128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1497, file: !334, line: 1914, baseType: !1322, size: 256, offset: 448)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !734, file: !334, line: 3399, baseType: !1510, size: 704)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !334, line: 2008, size: 704, elements: !1511)
!1511 = !{!1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1510, file: !334, line: 2009, baseType: !770, size: 192)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1510, file: !334, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1510, file: !334, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1510, file: !334, line: 2014, baseType: !725, size: 32, offset: 224)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1510, file: !334, line: 2016, baseType: !732, size: 64, offset: 256)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1510, file: !334, line: 2017, baseType: !1262, size: 64, offset: 320)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1510, file: !334, line: 2019, baseType: !732, size: 64, offset: 384)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1510, file: !334, line: 2020, baseType: !732, size: 64, offset: 448)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1510, file: !334, line: 2021, baseType: !732, size: 64, offset: 512)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1510, file: !334, line: 2022, baseType: !732, size: 64, offset: 576)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1510, file: !334, line: 2023, baseType: !732, size: 64, offset: 640)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !734, file: !334, line: 3400, baseType: !1524, size: 832)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !334, line: 2430, size: 832, elements: !1525)
!1525 = !{!1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1524, file: !334, line: 2431, baseType: !770, size: 192)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1524, file: !334, line: 2433, baseType: !732, size: 64, offset: 192)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1524, file: !334, line: 2434, baseType: !732, size: 64, offset: 256)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1524, file: !334, line: 2435, baseType: !732, size: 64, offset: 320)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1524, file: !334, line: 2436, baseType: !732, size: 64, offset: 384)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1524, file: !334, line: 2437, baseType: !1262, size: 64, offset: 448)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1524, file: !334, line: 2438, baseType: !732, size: 64, offset: 512)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1524, file: !334, line: 2440, baseType: !732, size: 64, offset: 576)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1524, file: !334, line: 2441, baseType: !732, size: 64, offset: 640)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1524, file: !334, line: 2443, baseType: !1536, size: 128, offset: 704)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !334, line: 182, baseType: !1537)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !334, line: 182, size: 128, elements: !1538)
!1538 = !{!1539}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1537, file: !334, line: 182, baseType: !1267, size: 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !734, file: !334, line: 3401, baseType: !1541, size: 320)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !334, line: 3327, size: 320, elements: !1542)
!1542 = !{!1543, !1544, !1551}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1541, file: !334, line: 3329, baseType: !770, size: 192)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1541, file: !334, line: 3330, baseType: !1545, size: 64, offset: 192)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !334, line: 3320, size: 192, elements: !1547)
!1547 = !{!1548, !1549, !1550}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1546, file: !334, line: 3322, baseType: !1545, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1546, file: !334, line: 3323, baseType: !1545, size: 64, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1546, file: !334, line: 3324, baseType: !732, size: 64, offset: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1541, file: !334, line: 3331, baseType: !1545, size: 64, offset: 256)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !734, file: !334, line: 3402, baseType: !1553, size: 256)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !334, line: 1540, size: 256, elements: !1554)
!1554 = !{!1555, !1556}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1553, file: !334, line: 1541, baseType: !770, size: 192)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1553, file: !334, line: 1542, baseType: !1557, size: 64, offset: 192)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !334, line: 1538, baseType: !1559)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !334, line: 1538, size: 192, elements: !1560)
!1560 = !{!1561}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1559, file: !334, line: 1538, baseType: !1562, size: 192)
!1562 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !334, line: 1537, baseType: !1563)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !334, line: 1537, size: 192, elements: !1564)
!1564 = !{!1565, !1566, !1567}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1563, file: !334, line: 1537, baseType: !7, size: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1563, file: !334, line: 1537, baseType: !7, size: 32, offset: 32)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1563, file: !334, line: 1537, baseType: !1568, size: 128, offset: 64)
!1568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1569, size: 128, elements: !661)
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !334, line: 1535, baseType: !1570)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !334, line: 1532, size: 128, elements: !1571)
!1571 = !{!1572, !1573}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1570, file: !334, line: 1533, baseType: !732, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1570, file: !334, line: 1534, baseType: !732, size: 64, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !734, file: !334, line: 3403, baseType: !1575, size: 512)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !334, line: 1938, size: 512, elements: !1576)
!1576 = !{!1577, !1578, !1579, !1580, !1586, !1587, !1588}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1575, file: !334, line: 1939, baseType: !770, size: 192)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1575, file: !334, line: 1940, baseType: !725, size: 32, offset: 192)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1575, file: !334, line: 1941, baseType: !333, size: 32, offset: 224)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1575, file: !334, line: 1946, baseType: !1581, size: 32, offset: 256)
!1581 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !334, line: 1942, size: 32, elements: !1582)
!1582 = !{!1583, !1584, !1585}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1581, file: !334, line: 1943, baseType: !352, size: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1581, file: !334, line: 1944, baseType: !359, size: 32)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1581, file: !334, line: 1945, baseType: !366, size: 32)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1575, file: !334, line: 1950, baseType: !697, size: 64, offset: 320)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1575, file: !334, line: 1951, baseType: !697, size: 64, offset: 384)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1575, file: !334, line: 1953, baseType: !1273, size: 64, offset: 448)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !734, file: !334, line: 3404, baseType: !1590, size: 1664)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !334, line: 3337, size: 1664, elements: !1591)
!1591 = !{!1592, !1593}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1590, file: !334, line: 3338, baseType: !770, size: 192)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1590, file: !334, line: 3341, baseType: !1594, size: 1472, offset: 192)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1595, line: 410, size: 1472, elements: !1596)
!1595 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1596 = !{!1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1594, file: !1595, line: 412, baseType: !641, size: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1594, file: !1595, line: 413, baseType: !641, size: 32, offset: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1594, file: !1595, line: 414, baseType: !641, size: 32, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1594, file: !1595, line: 415, baseType: !641, size: 32, offset: 96)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1594, file: !1595, line: 416, baseType: !641, size: 32, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1594, file: !1595, line: 417, baseType: !641, size: 32, offset: 160)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1594, file: !1595, line: 418, baseType: !640, size: 8, offset: 192)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1594, file: !1595, line: 419, baseType: !640, size: 8, offset: 200)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1594, file: !1595, line: 420, baseType: !1606, size: 8, offset: 208)
!1606 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1594, file: !1595, line: 421, baseType: !1606, size: 8, offset: 216)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1594, file: !1595, line: 422, baseType: !1606, size: 8, offset: 224)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1594, file: !1595, line: 423, baseType: !1606, size: 8, offset: 232)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1594, file: !1595, line: 424, baseType: !1606, size: 8, offset: 240)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1594, file: !1595, line: 425, baseType: !1606, size: 8, offset: 248)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1594, file: !1595, line: 426, baseType: !1606, size: 8, offset: 256)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1594, file: !1595, line: 427, baseType: !1606, size: 8, offset: 264)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1594, file: !1595, line: 428, baseType: !1606, size: 8, offset: 272)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1594, file: !1595, line: 429, baseType: !1606, size: 8, offset: 280)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1594, file: !1595, line: 430, baseType: !1606, size: 8, offset: 288)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1594, file: !1595, line: 431, baseType: !1606, size: 8, offset: 296)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1594, file: !1595, line: 432, baseType: !1606, size: 8, offset: 304)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1594, file: !1595, line: 433, baseType: !1606, size: 8, offset: 312)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1594, file: !1595, line: 434, baseType: !1606, size: 8, offset: 320)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1594, file: !1595, line: 435, baseType: !1606, size: 8, offset: 328)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1594, file: !1595, line: 436, baseType: !1606, size: 8, offset: 336)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1594, file: !1595, line: 437, baseType: !1606, size: 8, offset: 344)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1594, file: !1595, line: 438, baseType: !1606, size: 8, offset: 352)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1594, file: !1595, line: 439, baseType: !1606, size: 8, offset: 360)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1594, file: !1595, line: 440, baseType: !1606, size: 8, offset: 368)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1594, file: !1595, line: 441, baseType: !1606, size: 8, offset: 376)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1594, file: !1595, line: 442, baseType: !1606, size: 8, offset: 384)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1594, file: !1595, line: 443, baseType: !1606, size: 8, offset: 392)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1594, file: !1595, line: 444, baseType: !1606, size: 8, offset: 400)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1594, file: !1595, line: 445, baseType: !1606, size: 8, offset: 408)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1594, file: !1595, line: 446, baseType: !1606, size: 8, offset: 416)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1594, file: !1595, line: 447, baseType: !1606, size: 8, offset: 424)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1594, file: !1595, line: 448, baseType: !1606, size: 8, offset: 432)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1594, file: !1595, line: 449, baseType: !1606, size: 8, offset: 440)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1594, file: !1595, line: 450, baseType: !1606, size: 8, offset: 448)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1594, file: !1595, line: 451, baseType: !1606, size: 8, offset: 456)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1594, file: !1595, line: 452, baseType: !1606, size: 8, offset: 464)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1594, file: !1595, line: 453, baseType: !1606, size: 8, offset: 472)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1594, file: !1595, line: 454, baseType: !1606, size: 8, offset: 480)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1594, file: !1595, line: 455, baseType: !1606, size: 8, offset: 488)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1594, file: !1595, line: 456, baseType: !1606, size: 8, offset: 496)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1594, file: !1595, line: 457, baseType: !1606, size: 8, offset: 504)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1594, file: !1595, line: 458, baseType: !1606, size: 8, offset: 512)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1594, file: !1595, line: 459, baseType: !1606, size: 8, offset: 520)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1594, file: !1595, line: 460, baseType: !1606, size: 8, offset: 528)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1594, file: !1595, line: 461, baseType: !1606, size: 8, offset: 536)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1594, file: !1595, line: 462, baseType: !1606, size: 8, offset: 544)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1594, file: !1595, line: 463, baseType: !1606, size: 8, offset: 552)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1594, file: !1595, line: 464, baseType: !1606, size: 8, offset: 560)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1594, file: !1595, line: 465, baseType: !1606, size: 8, offset: 568)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1594, file: !1595, line: 466, baseType: !1606, size: 8, offset: 576)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1594, file: !1595, line: 467, baseType: !1606, size: 8, offset: 584)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1594, file: !1595, line: 468, baseType: !1606, size: 8, offset: 592)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1594, file: !1595, line: 469, baseType: !1606, size: 8, offset: 600)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1594, file: !1595, line: 470, baseType: !1606, size: 8, offset: 608)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1594, file: !1595, line: 471, baseType: !1606, size: 8, offset: 616)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1594, file: !1595, line: 472, baseType: !1606, size: 8, offset: 624)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1594, file: !1595, line: 473, baseType: !1606, size: 8, offset: 632)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1594, file: !1595, line: 474, baseType: !1606, size: 8, offset: 640)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1594, file: !1595, line: 475, baseType: !1606, size: 8, offset: 648)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1594, file: !1595, line: 476, baseType: !1606, size: 8, offset: 656)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1594, file: !1595, line: 477, baseType: !1606, size: 8, offset: 664)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1594, file: !1595, line: 478, baseType: !1606, size: 8, offset: 672)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1594, file: !1595, line: 479, baseType: !1606, size: 8, offset: 680)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1594, file: !1595, line: 480, baseType: !1606, size: 8, offset: 688)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1594, file: !1595, line: 481, baseType: !1606, size: 8, offset: 696)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1594, file: !1595, line: 482, baseType: !1606, size: 8, offset: 704)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1594, file: !1595, line: 483, baseType: !1606, size: 8, offset: 712)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1594, file: !1595, line: 484, baseType: !1606, size: 8, offset: 720)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1594, file: !1595, line: 485, baseType: !1606, size: 8, offset: 728)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1594, file: !1595, line: 486, baseType: !1606, size: 8, offset: 736)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1594, file: !1595, line: 487, baseType: !1606, size: 8, offset: 744)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1594, file: !1595, line: 488, baseType: !1606, size: 8, offset: 752)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1594, file: !1595, line: 489, baseType: !1606, size: 8, offset: 760)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1594, file: !1595, line: 490, baseType: !1606, size: 8, offset: 768)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1594, file: !1595, line: 491, baseType: !1606, size: 8, offset: 776)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1594, file: !1595, line: 492, baseType: !1606, size: 8, offset: 784)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1594, file: !1595, line: 493, baseType: !1606, size: 8, offset: 792)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1594, file: !1595, line: 494, baseType: !1606, size: 8, offset: 800)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1594, file: !1595, line: 495, baseType: !1606, size: 8, offset: 808)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1594, file: !1595, line: 496, baseType: !1606, size: 8, offset: 816)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1594, file: !1595, line: 497, baseType: !1606, size: 8, offset: 824)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1594, file: !1595, line: 498, baseType: !1606, size: 8, offset: 832)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1594, file: !1595, line: 499, baseType: !1606, size: 8, offset: 840)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1594, file: !1595, line: 500, baseType: !1606, size: 8, offset: 848)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1594, file: !1595, line: 501, baseType: !1606, size: 8, offset: 856)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1594, file: !1595, line: 502, baseType: !1606, size: 8, offset: 864)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1594, file: !1595, line: 503, baseType: !1606, size: 8, offset: 872)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1594, file: !1595, line: 504, baseType: !1606, size: 8, offset: 880)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1594, file: !1595, line: 505, baseType: !1606, size: 8, offset: 888)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1594, file: !1595, line: 506, baseType: !1606, size: 8, offset: 896)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1594, file: !1595, line: 507, baseType: !1606, size: 8, offset: 904)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1594, file: !1595, line: 508, baseType: !1606, size: 8, offset: 912)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1594, file: !1595, line: 509, baseType: !1606, size: 8, offset: 920)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1594, file: !1595, line: 510, baseType: !1606, size: 8, offset: 928)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1594, file: !1595, line: 511, baseType: !1606, size: 8, offset: 936)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1594, file: !1595, line: 512, baseType: !1606, size: 8, offset: 944)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1594, file: !1595, line: 513, baseType: !1606, size: 8, offset: 952)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1594, file: !1595, line: 514, baseType: !1606, size: 8, offset: 960)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1594, file: !1595, line: 515, baseType: !1606, size: 8, offset: 968)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1594, file: !1595, line: 516, baseType: !1606, size: 8, offset: 976)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1594, file: !1595, line: 517, baseType: !1606, size: 8, offset: 984)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1594, file: !1595, line: 518, baseType: !1606, size: 8, offset: 992)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1594, file: !1595, line: 519, baseType: !1606, size: 8, offset: 1000)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1594, file: !1595, line: 520, baseType: !1606, size: 8, offset: 1008)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1594, file: !1595, line: 521, baseType: !1606, size: 8, offset: 1016)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1594, file: !1595, line: 522, baseType: !1606, size: 8, offset: 1024)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1594, file: !1595, line: 523, baseType: !1606, size: 8, offset: 1032)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1594, file: !1595, line: 524, baseType: !1606, size: 8, offset: 1040)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1594, file: !1595, line: 525, baseType: !1606, size: 8, offset: 1048)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1594, file: !1595, line: 526, baseType: !1606, size: 8, offset: 1056)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1594, file: !1595, line: 527, baseType: !1606, size: 8, offset: 1064)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1594, file: !1595, line: 528, baseType: !1606, size: 8, offset: 1072)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1594, file: !1595, line: 529, baseType: !1606, size: 8, offset: 1080)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1594, file: !1595, line: 530, baseType: !1606, size: 8, offset: 1088)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1594, file: !1595, line: 531, baseType: !1606, size: 8, offset: 1096)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1594, file: !1595, line: 532, baseType: !1606, size: 8, offset: 1104)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1594, file: !1595, line: 533, baseType: !1606, size: 8, offset: 1112)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1594, file: !1595, line: 534, baseType: !1606, size: 8, offset: 1120)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1594, file: !1595, line: 535, baseType: !1606, size: 8, offset: 1128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1594, file: !1595, line: 536, baseType: !1606, size: 8, offset: 1136)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1594, file: !1595, line: 537, baseType: !1606, size: 8, offset: 1144)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1594, file: !1595, line: 538, baseType: !1606, size: 8, offset: 1152)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1594, file: !1595, line: 539, baseType: !1606, size: 8, offset: 1160)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1594, file: !1595, line: 540, baseType: !1606, size: 8, offset: 1168)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1594, file: !1595, line: 541, baseType: !1606, size: 8, offset: 1176)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1594, file: !1595, line: 542, baseType: !1606, size: 8, offset: 1184)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1594, file: !1595, line: 543, baseType: !1606, size: 8, offset: 1192)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1594, file: !1595, line: 544, baseType: !1606, size: 8, offset: 1200)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1594, file: !1595, line: 545, baseType: !1606, size: 8, offset: 1208)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1594, file: !1595, line: 546, baseType: !1606, size: 8, offset: 1216)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1594, file: !1595, line: 547, baseType: !1606, size: 8, offset: 1224)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1594, file: !1595, line: 548, baseType: !1606, size: 8, offset: 1232)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1594, file: !1595, line: 549, baseType: !1606, size: 8, offset: 1240)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1594, file: !1595, line: 550, baseType: !1606, size: 8, offset: 1248)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1594, file: !1595, line: 551, baseType: !1606, size: 8, offset: 1256)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1594, file: !1595, line: 552, baseType: !1606, size: 8, offset: 1264)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1594, file: !1595, line: 553, baseType: !1606, size: 8, offset: 1272)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1594, file: !1595, line: 554, baseType: !1606, size: 8, offset: 1280)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1594, file: !1595, line: 555, baseType: !1606, size: 8, offset: 1288)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1594, file: !1595, line: 556, baseType: !1606, size: 8, offset: 1296)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1594, file: !1595, line: 557, baseType: !1606, size: 8, offset: 1304)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1594, file: !1595, line: 558, baseType: !1606, size: 8, offset: 1312)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1594, file: !1595, line: 559, baseType: !1606, size: 8, offset: 1320)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1594, file: !1595, line: 560, baseType: !1606, size: 8, offset: 1328)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1594, file: !1595, line: 561, baseType: !1606, size: 8, offset: 1336)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1594, file: !1595, line: 562, baseType: !1606, size: 8, offset: 1344)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1594, file: !1595, line: 563, baseType: !1606, size: 8, offset: 1352)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1594, file: !1595, line: 564, baseType: !1606, size: 8, offset: 1360)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1594, file: !1595, line: 565, baseType: !1606, size: 8, offset: 1368)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1594, file: !1595, line: 566, baseType: !1606, size: 8, offset: 1376)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1594, file: !1595, line: 567, baseType: !1606, size: 8, offset: 1384)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1594, file: !1595, line: 568, baseType: !1606, size: 8, offset: 1392)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1594, file: !1595, line: 569, baseType: !1606, size: 8, offset: 1400)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1594, file: !1595, line: 570, baseType: !1606, size: 8, offset: 1408)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1594, file: !1595, line: 571, baseType: !1606, size: 8, offset: 1416)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1594, file: !1595, line: 572, baseType: !1606, size: 8, offset: 1424)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1594, file: !1595, line: 573, baseType: !1606, size: 8, offset: 1432)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1594, file: !1595, line: 574, baseType: !1606, size: 8, offset: 1440)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !734, file: !334, line: 3405, baseType: !1762, size: 384)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !334, line: 3352, size: 384, elements: !1763)
!1763 = !{!1764, !1765}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1762, file: !334, line: 3353, baseType: !770, size: 192)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1762, file: !334, line: 3356, baseType: !1766, size: 192, offset: 192)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1595, line: 578, size: 192, elements: !1767)
!1767 = !{!1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1766, file: !1595, line: 580, baseType: !641, size: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1766, file: !1595, line: 581, baseType: !641, size: 32, offset: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1766, file: !1595, line: 582, baseType: !641, size: 32, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1766, file: !1595, line: 583, baseType: !641, size: 32, offset: 96)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1766, file: !1595, line: 584, baseType: !640, size: 8, offset: 128)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1766, file: !1595, line: 585, baseType: !640, size: 8, offset: 136)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1766, file: !1595, line: 586, baseType: !640, size: 8, offset: 144)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1766, file: !1595, line: 587, baseType: !640, size: 8, offset: 152)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1766, file: !1595, line: 588, baseType: !640, size: 8, offset: 160)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1766, file: !1595, line: 589, baseType: !640, size: 8, offset: 168)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1766, file: !1595, line: 590, baseType: !640, size: 8, offset: 176)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !709, file: !574, line: 739, baseType: !1780, size: 448)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !574, line: 350, size: 448, elements: !1781)
!1781 = !{!1782, !1788}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1780, file: !574, line: 353, baseType: !1783, size: 384)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !574, line: 333, size: 384, elements: !1784)
!1784 = !{!1785, !1786, !1787}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1783, file: !574, line: 336, baseType: !712, size: 256)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1783, file: !574, line: 343, baseType: !1310, size: 64, offset: 256)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1783, file: !574, line: 344, baseType: !1317, size: 64, offset: 320)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1780, file: !574, line: 359, baseType: !1273, size: 64, offset: 384)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !709, file: !574, line: 740, baseType: !1790, size: 512)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !574, line: 365, size: 512, elements: !1791)
!1791 = !{!1792, !1793, !1794}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1790, file: !574, line: 368, baseType: !1783, size: 384)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1790, file: !574, line: 373, baseType: !732, size: 64, offset: 384)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1790, file: !574, line: 374, baseType: !732, size: 64, offset: 448)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !709, file: !574, line: 741, baseType: !1796, size: 576)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !574, line: 380, size: 576, elements: !1797)
!1797 = !{!1798, !1799}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1796, file: !574, line: 383, baseType: !1790, size: 512)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1796, file: !574, line: 389, baseType: !1273, size: 64, offset: 512)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !709, file: !574, line: 742, baseType: !1801, size: 320)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !574, line: 395, size: 320, elements: !1802)
!1802 = !{!1803, !1804}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1801, file: !574, line: 397, baseType: !712, size: 256)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1801, file: !574, line: 400, baseType: !697, size: 64, offset: 256)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !709, file: !574, line: 743, baseType: !1806, size: 448)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !574, line: 406, size: 448, elements: !1807)
!1807 = !{!1808, !1809, !1810, !1811}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1806, file: !574, line: 408, baseType: !712, size: 256)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1806, file: !574, line: 412, baseType: !732, size: 64, offset: 256)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1806, file: !574, line: 420, baseType: !732, size: 64, offset: 320)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1806, file: !574, line: 423, baseType: !697, size: 64, offset: 384)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !709, file: !574, line: 744, baseType: !1813, size: 384)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !574, line: 429, size: 384, elements: !1814)
!1814 = !{!1815, !1816, !1817}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1813, file: !574, line: 431, baseType: !712, size: 256)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1813, file: !574, line: 434, baseType: !732, size: 64, offset: 256)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1813, file: !574, line: 437, baseType: !697, size: 64, offset: 320)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !709, file: !574, line: 745, baseType: !1819, size: 384)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !574, line: 443, size: 384, elements: !1820)
!1820 = !{!1821, !1822, !1823}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1819, file: !574, line: 445, baseType: !712, size: 256)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1819, file: !574, line: 449, baseType: !732, size: 64, offset: 256)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1819, file: !574, line: 453, baseType: !697, size: 64, offset: 320)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !709, file: !574, line: 746, baseType: !1825, size: 320)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !574, line: 459, size: 320, elements: !1826)
!1826 = !{!1827, !1828}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1825, file: !574, line: 461, baseType: !712, size: 256)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1825, file: !574, line: 464, baseType: !732, size: 64, offset: 256)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !709, file: !574, line: 747, baseType: !1830, size: 768)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !574, line: 469, size: 768, elements: !1831)
!1831 = !{!1832, !1833, !1834, !1835, !1836}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1830, file: !574, line: 471, baseType: !712, size: 256)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1830, file: !574, line: 474, baseType: !7, size: 32, offset: 256)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1830, file: !574, line: 475, baseType: !7, size: 32, offset: 288)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1830, file: !574, line: 478, baseType: !732, size: 64, offset: 320)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1830, file: !574, line: 481, baseType: !1837, size: 384, offset: 384)
!1837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1838, size: 384, elements: !661)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !334, line: 1917, size: 384, elements: !1839)
!1839 = !{!1840, !1841, !1842}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1838, file: !334, line: 1920, baseType: !1322, size: 256)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1838, file: !334, line: 1921, baseType: !732, size: 64, offset: 256)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1838, file: !334, line: 1922, baseType: !725, size: 32, offset: 320)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !709, file: !574, line: 748, baseType: !1844, size: 320)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !574, line: 487, size: 320, elements: !1845)
!1845 = !{!1846, !1847}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1844, file: !574, line: 490, baseType: !712, size: 256)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1844, file: !574, line: 494, baseType: !641, size: 32, offset: 256)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !709, file: !574, line: 749, baseType: !1849, size: 384)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !574, line: 500, size: 384, elements: !1850)
!1850 = !{!1851, !1852, !1853}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1849, file: !574, line: 502, baseType: !712, size: 256)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1849, file: !574, line: 506, baseType: !697, size: 64, offset: 256)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1849, file: !574, line: 510, baseType: !697, size: 64, offset: 320)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !709, file: !574, line: 750, baseType: !1855, size: 320)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !574, line: 529, size: 320, elements: !1856)
!1856 = !{!1857, !1858}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1855, file: !574, line: 531, baseType: !712, size: 256)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1855, file: !574, line: 540, baseType: !697, size: 64, offset: 256)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !709, file: !574, line: 751, baseType: !1860, size: 704)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !574, line: 546, size: 704, elements: !1861)
!1861 = !{!1862, !1863, !1864, !1865, !1866, !1867, !1868}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1860, file: !574, line: 549, baseType: !1790, size: 512)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1860, file: !574, line: 553, baseType: !646, size: 64, offset: 512)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1860, file: !574, line: 557, baseType: !640, size: 8, offset: 576)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1860, file: !574, line: 558, baseType: !640, size: 8, offset: 584)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1860, file: !574, line: 559, baseType: !640, size: 8, offset: 592)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1860, file: !574, line: 560, baseType: !640, size: 8, offset: 600)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1860, file: !574, line: 566, baseType: !1273, size: 64, offset: 640)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !709, file: !574, line: 752, baseType: !1870, size: 384)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !574, line: 571, size: 384, elements: !1871)
!1871 = !{!1872, !1873}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1870, file: !574, line: 573, baseType: !1801, size: 320)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1870, file: !574, line: 577, baseType: !732, size: 64, offset: 320)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !709, file: !574, line: 753, baseType: !1875, size: 576)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !574, line: 600, size: 576, elements: !1876)
!1876 = !{!1877, !1878, !1879, !1880, !1889}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1875, file: !574, line: 602, baseType: !1801, size: 320)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1875, file: !574, line: 605, baseType: !732, size: 64, offset: 320)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1875, file: !574, line: 609, baseType: !1223, size: 64, offset: 384)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1875, file: !574, line: 612, baseType: !1881, size: 64, offset: 448)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !574, line: 581, size: 320, elements: !1883)
!1883 = !{!1884, !1885, !1886, !1887, !1888}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1882, file: !574, line: 583, baseType: !366, size: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1882, file: !574, line: 586, baseType: !732, size: 64, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1882, file: !574, line: 589, baseType: !732, size: 64, offset: 128)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1882, file: !574, line: 592, baseType: !732, size: 64, offset: 192)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1882, file: !574, line: 595, baseType: !732, size: 64, offset: 256)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1875, file: !574, line: 616, baseType: !697, size: 64, offset: 512)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !709, file: !574, line: 754, baseType: !1891, size: 512)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !574, line: 622, size: 512, elements: !1892)
!1892 = !{!1893, !1894, !1895, !1896}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1891, file: !574, line: 624, baseType: !1801, size: 320)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1891, file: !574, line: 628, baseType: !732, size: 64, offset: 320)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1891, file: !574, line: 632, baseType: !732, size: 64, offset: 384)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1891, file: !574, line: 636, baseType: !732, size: 64, offset: 448)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !709, file: !574, line: 755, baseType: !1898, size: 704)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !574, line: 642, size: 704, elements: !1899)
!1899 = !{!1900, !1901, !1902, !1903}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1898, file: !574, line: 644, baseType: !1891, size: 512)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1898, file: !574, line: 648, baseType: !732, size: 64, offset: 512)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1898, file: !574, line: 652, baseType: !732, size: 64, offset: 576)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1898, file: !574, line: 653, baseType: !732, size: 64, offset: 640)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !709, file: !574, line: 756, baseType: !1905, size: 448)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !574, line: 663, size: 448, elements: !1906)
!1906 = !{!1907, !1908, !1909}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1905, file: !574, line: 665, baseType: !1801, size: 320)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1905, file: !574, line: 668, baseType: !732, size: 64, offset: 320)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1905, file: !574, line: 673, baseType: !732, size: 64, offset: 384)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !709, file: !574, line: 757, baseType: !1911, size: 384)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !574, line: 694, size: 384, elements: !1912)
!1912 = !{!1913, !1914}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1911, file: !574, line: 696, baseType: !1801, size: 320)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1911, file: !574, line: 699, baseType: !732, size: 64, offset: 320)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !709, file: !574, line: 758, baseType: !1916, size: 384)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !574, line: 681, size: 384, elements: !1917)
!1917 = !{!1918, !1919, !1920}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1916, file: !574, line: 683, baseType: !712, size: 256)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1916, file: !574, line: 686, baseType: !732, size: 64, offset: 256)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1916, file: !574, line: 689, baseType: !732, size: 64, offset: 320)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !709, file: !574, line: 759, baseType: !1922, size: 384)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !574, line: 707, size: 384, elements: !1923)
!1923 = !{!1924, !1925, !1926}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1922, file: !574, line: 709, baseType: !712, size: 256)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1922, file: !574, line: 712, baseType: !732, size: 64, offset: 256)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1922, file: !574, line: 712, baseType: !732, size: 64, offset: 320)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !709, file: !574, line: 760, baseType: !1928, size: 320)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !574, line: 718, size: 320, elements: !1929)
!1929 = !{!1930, !1931}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1928, file: !574, line: 720, baseType: !712, size: 256)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1928, file: !574, line: 723, baseType: !732, size: 64, offset: 256)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !704, file: !574, line: 138, baseType: !703, size: 64, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !704, file: !574, line: 139, baseType: !703, size: 64, offset: 128)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !699, file: !574, line: 146, baseType: !702, size: 64, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !699, file: !574, line: 152, baseType: !697, size: 64, offset: 128)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !694, file: !318, line: 130, baseType: !900, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !689, file: !318, line: 134, baseType: !645, size: 64, offset: 192)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !689, file: !318, line: 137, baseType: !732, size: 64, offset: 256)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !689, file: !318, line: 138, baseType: !725, size: 32, offset: 320)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !689, file: !318, line: 142, baseType: !7, size: 32, offset: 352)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !689, file: !318, line: 144, baseType: !641, size: 32, offset: 384)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !689, file: !318, line: 145, baseType: !641, size: 32, offset: 416)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !689, file: !318, line: 146, baseType: !1944, size: 64, offset: 448)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !318, line: 119, baseType: !787)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !671, file: !318, line: 220, baseType: !674, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !671, file: !318, line: 223, baseType: !645, size: 64, offset: 128)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !671, file: !318, line: 226, baseType: !664, size: 64, offset: 192)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !671, file: !318, line: 229, baseType: !1949, size: 128, offset: 256)
!1949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1950, size: 128, elements: !968)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !318, line: 229, flags: DIFlagFwdDecl)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !671, file: !318, line: 232, baseType: !670, size: 64, offset: 384)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !671, file: !318, line: 233, baseType: !670, size: 64, offset: 448)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !671, file: !318, line: 238, baseType: !1955, size: 64, offset: 512)
!1955 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !318, line: 235, size: 64, elements: !1956)
!1956 = !{!1957, !1963}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1955, file: !318, line: 236, baseType: !1958, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !318, line: 273, size: 128, elements: !1960)
!1960 = !{!1961, !1962}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1959, file: !318, line: 275, baseType: !697, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1959, file: !318, line: 278, baseType: !697, size: 64, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1955, file: !318, line: 237, baseType: !1964, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !318, line: 259, size: 320, elements: !1966)
!1966 = !{!1967, !1968, !1969, !1970, !1971}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1965, file: !318, line: 261, baseType: !900, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1965, file: !318, line: 262, baseType: !900, size: 64, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1965, file: !318, line: 266, baseType: !900, size: 64, offset: 128)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1965, file: !318, line: 267, baseType: !900, size: 64, offset: 192)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1965, file: !318, line: 270, baseType: !641, size: 32, offset: 256)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !671, file: !318, line: 241, baseType: !1944, size: 64, offset: 576)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !671, file: !318, line: 244, baseType: !641, size: 32, offset: 640)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !671, file: !318, line: 247, baseType: !641, size: 32, offset: 672)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !671, file: !318, line: 250, baseType: !641, size: 32, offset: 704)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !671, file: !318, line: 253, baseType: !641, size: 32, offset: 736)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !671, file: !318, line: 256, baseType: !641, size: 32, offset: 768)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !665, file: !561, line: 111, baseType: !670, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !665, file: !561, line: 114, baseType: !1980, size: 64, offset: 192)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !561, line: 41, size: 64, elements: !1981)
!1981 = !{!1982, !1983}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !1980, file: !561, line: 42, baseType: !560, size: 32)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !1980, file: !561, line: 43, baseType: !7, size: 32, offset: 32)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !665, file: !561, line: 117, baseType: !7, size: 32, offset: 256)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !665, file: !561, line: 120, baseType: !7, size: 32, offset: 288)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !665, file: !561, line: 123, baseType: !1339, size: 64, offset: 320)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !665, file: !561, line: 126, baseType: !664, size: 64, offset: 384)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !665, file: !561, line: 129, baseType: !664, size: 64, offset: 448)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !665, file: !561, line: 132, baseType: !645, size: 64, offset: 512)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !665, file: !561, line: 139, baseType: !732, size: 64, offset: 576)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !665, file: !561, line: 143, baseType: !780, size: 128, offset: 640)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !665, file: !561, line: 146, baseType: !780, size: 128, offset: 768)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !665, file: !561, line: 148, baseType: !640, size: 8, offset: 896)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !665, file: !561, line: 149, baseType: !640, size: 8, offset: 904)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !665, file: !561, line: 153, baseType: !569, size: 32, offset: 928)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !665, file: !561, line: 156, baseType: !1997, size: 64, offset: 960)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !561, line: 48, size: 320, elements: !1999)
!1999 = !{!2000, !2001, !2002, !2003}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1998, file: !561, line: 50, baseType: !707, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1998, file: !561, line: 59, baseType: !780, size: 128, offset: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1998, file: !561, line: 64, baseType: !640, size: 8, offset: 192)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1998, file: !561, line: 67, baseType: !1997, size: 64, offset: 256)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !665, file: !561, line: 159, baseType: !2005, size: 64, offset: 1024)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !561, line: 72, size: 256, elements: !2007)
!2007 = !{!2008, !2009, !2010, !2011}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !2006, file: !561, line: 74, baseType: !688, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2006, file: !561, line: 77, baseType: !2005, size: 64, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2006, file: !561, line: 78, baseType: !2005, size: 64, offset: 128)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !2006, file: !561, line: 81, baseType: !2005, size: 64, offset: 192)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !665, file: !561, line: 162, baseType: !640, size: 8, offset: 1088)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !665, file: !561, line: 166, baseType: !732, size: 64, offset: 1152)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !709)
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !1298, line: 30, baseType: !2018)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !334, line: 1893, baseType: !1322)
!2020 = !{!0, !2021}
!2021 = !DIGlobalVariableExpression(var: !2022, expr: !DIExpression())
!2022 = distinct !DIGlobalVariable(name: "ifc_bbs", scope: !2, file: !3, line: 135, type: !2014, isLocal: true, isDefinition: true)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_opt_pass", file: !6, line: 156, size: 640, elements: !2024)
!2024 = !{!2025}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "pass", scope: !2023, file: !6, line: 158, baseType: !2026, size: 640)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_pass", file: !6, line: 114, size: 640, elements: !2027)
!2027 = !{!2028, !2029, !2030, !2034, !2038, !2040, !2041, !2042, !2044, !2045, !2046, !2047, !2048}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2026, file: !6, line: 117, baseType: !5, size: 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2026, file: !6, line: 121, baseType: !646, size: 64, offset: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "gate", scope: !2026, file: !6, line: 125, baseType: !2031, size: 64, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!640}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "execute", scope: !2026, file: !6, line: 130, baseType: !2035, size: 64, offset: 192)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!7}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "sub", scope: !2026, file: !6, line: 133, baseType: !2039, size: 64, offset: 256)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2026, file: !6, line: 136, baseType: !2039, size: 64, offset: 320)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "static_pass_number", scope: !2026, file: !6, line: 139, baseType: !641, size: 32, offset: 384)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "tv_id", scope: !2026, file: !6, line: 143, baseType: !2043, size: 32, offset: 416)
!2043 = !DIDerivedType(tag: DW_TAG_typedef, name: "timevar_id_t", file: !14, line: 80, baseType: !13)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "properties_required", scope: !2026, file: !6, line: 146, baseType: !7, size: 32, offset: 448)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "properties_provided", scope: !2026, file: !6, line: 147, baseType: !7, size: 32, offset: 480)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "properties_destroyed", scope: !2026, file: !6, line: 148, baseType: !7, size: 32, offset: 512)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_start", scope: !2026, file: !6, line: 151, baseType: !7, size: 32, offset: 544)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "todo_flags_finish", scope: !2026, file: !6, line: 152, baseType: !7, size: 32, offset: 576)
!2049 = !{i32 2, !"Dwarf Version", i32 4}
!2050 = !{i32 2, !"Debug Info Version", i32 3}
!2051 = !{i32 1, !"wchar_size", i32 4}
!2052 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!2053 = distinct !DISubprogram(name: "vprintf", scope: !2054, file: !2054, line: 39, type: !2055, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2065)
!2054 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!641, !2057, !2058}
!2057 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !646)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !2060)
!2060 = !{!2061, !2062, !2063, !2064}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2059, file: !3, baseType: !7, size: 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2059, file: !3, baseType: !7, size: 32, offset: 32)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2059, file: !3, baseType: !645, size: 64, offset: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2059, file: !3, baseType: !645, size: 64, offset: 128)
!2065 = !{!2066, !2067}
!2066 = !DILocalVariable(name: "__fmt", arg: 1, scope: !2053, file: !2054, line: 39, type: !2057)
!2067 = !DILocalVariable(name: "__arg", arg: 2, scope: !2053, file: !2054, line: 39, type: !2058)
!2068 = !DILocation(line: 0, scope: !2053)
!2069 = !DILocation(line: 41, column: 20, scope: !2053)
!2070 = !DILocation(line: 41, column: 10, scope: !2053)
!2071 = !DILocation(line: 41, column: 3, scope: !2053)
!2072 = distinct !DISubprogram(name: "getchar", scope: !2054, file: !2054, line: 47, type: !2073, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2075)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!641}
!2075 = !{}
!2076 = !DILocation(line: 49, column: 16, scope: !2072)
!2077 = !DILocation(line: 49, column: 10, scope: !2072)
!2078 = !DILocation(line: 49, column: 3, scope: !2072)
!2079 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !2054, file: !2054, line: 56, type: !2080, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2133)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!641, !2082}
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2084, line: 7, baseType: !2085)
!2084 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2086, line: 49, size: 1728, elements: !2087)
!2086 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!2087 = !{!2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2103, !2105, !2106, !2107, !2110, !2112, !2113, !2114, !2117, !2119, !2122, !2125, !2126, !2127, !2128, !2129}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2085, file: !2086, line: 51, baseType: !641, size: 32)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2085, file: !2086, line: 54, baseType: !643, size: 64, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2085, file: !2086, line: 55, baseType: !643, size: 64, offset: 128)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2085, file: !2086, line: 56, baseType: !643, size: 64, offset: 192)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2085, file: !2086, line: 57, baseType: !643, size: 64, offset: 256)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2085, file: !2086, line: 58, baseType: !643, size: 64, offset: 320)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2085, file: !2086, line: 59, baseType: !643, size: 64, offset: 384)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2085, file: !2086, line: 60, baseType: !643, size: 64, offset: 448)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2085, file: !2086, line: 61, baseType: !643, size: 64, offset: 512)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2085, file: !2086, line: 64, baseType: !643, size: 64, offset: 576)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2085, file: !2086, line: 65, baseType: !643, size: 64, offset: 640)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2085, file: !2086, line: 66, baseType: !643, size: 64, offset: 704)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2085, file: !2086, line: 68, baseType: !2101, size: 64, offset: 768)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2086, line: 36, flags: DIFlagFwdDecl)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2085, file: !2086, line: 70, baseType: !2104, size: 64, offset: 832)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2085, file: !2086, line: 72, baseType: !641, size: 32, offset: 896)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2085, file: !2086, line: 73, baseType: !641, size: 32, offset: 928)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2085, file: !2086, line: 74, baseType: !2108, size: 64, offset: 960)
!2108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2109, line: 152, baseType: !787)
!2109 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2085, file: !2086, line: 77, baseType: !2111, size: 16, offset: 1024)
!2111 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2085, file: !2086, line: 78, baseType: !1606, size: 8, offset: 1040)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2085, file: !2086, line: 79, baseType: !829, size: 8, offset: 1048)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2085, file: !2086, line: 81, baseType: !2115, size: 64, offset: 1088)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2086, line: 43, baseType: null)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2085, file: !2086, line: 89, baseType: !2118, size: 64, offset: 1152)
!2118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2109, line: 153, baseType: !787)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2085, file: !2086, line: 91, baseType: !2120, size: 64, offset: 1216)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2086, line: 37, flags: DIFlagFwdDecl)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2085, file: !2086, line: 92, baseType: !2123, size: 64, offset: 1280)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2086, line: 38, flags: DIFlagFwdDecl)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2085, file: !2086, line: 93, baseType: !2104, size: 64, offset: 1344)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2085, file: !2086, line: 94, baseType: !645, size: 64, offset: 1408)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2085, file: !2086, line: 95, baseType: !1223, size: 64, offset: 1472)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2085, file: !2086, line: 96, baseType: !641, size: 32, offset: 1536)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2085, file: !2086, line: 98, baseType: !2130, size: 160, offset: 1568)
!2130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 160, elements: !2131)
!2131 = !{!2132}
!2132 = !DISubrange(count: 20)
!2133 = !{!2134}
!2134 = !DILocalVariable(name: "__fp", arg: 1, scope: !2079, file: !2054, line: 56, type: !2082)
!2135 = !DILocation(line: 0, scope: !2079)
!2136 = !DILocation(line: 58, column: 10, scope: !2079)
!2137 = !DILocation(line: 58, column: 3, scope: !2079)
!2138 = distinct !DISubprogram(name: "getc_unlocked", scope: !2054, file: !2054, line: 66, type: !2080, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2139)
!2139 = !{!2140}
!2140 = !DILocalVariable(name: "__fp", arg: 1, scope: !2138, file: !2054, line: 66, type: !2082)
!2141 = !DILocation(line: 0, scope: !2138)
!2142 = !DILocation(line: 68, column: 10, scope: !2138)
!2143 = !DILocation(line: 68, column: 3, scope: !2138)
!2144 = distinct !DISubprogram(name: "getchar_unlocked", scope: !2054, file: !2054, line: 73, type: !2073, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2075)
!2145 = !DILocation(line: 75, column: 10, scope: !2144)
!2146 = !DILocation(line: 75, column: 3, scope: !2144)
!2147 = distinct !DISubprogram(name: "putchar", scope: !2054, file: !2054, line: 82, type: !2148, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2150)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!641, !641}
!2150 = !{!2151}
!2151 = !DILocalVariable(name: "__c", arg: 1, scope: !2147, file: !2054, line: 82, type: !641)
!2152 = !DILocation(line: 0, scope: !2147)
!2153 = !DILocation(line: 84, column: 21, scope: !2147)
!2154 = !DILocation(line: 84, column: 10, scope: !2147)
!2155 = !DILocation(line: 84, column: 3, scope: !2147)
!2156 = distinct !DISubprogram(name: "fputc_unlocked", scope: !2054, file: !2054, line: 91, type: !2157, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2159)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!641, !641, !2082}
!2159 = !{!2160, !2161}
!2160 = !DILocalVariable(name: "__c", arg: 1, scope: !2156, file: !2054, line: 91, type: !641)
!2161 = !DILocalVariable(name: "__stream", arg: 2, scope: !2156, file: !2054, line: 91, type: !2082)
!2162 = !DILocation(line: 0, scope: !2156)
!2163 = !DILocation(line: 93, column: 10, scope: !2156)
!2164 = !DILocation(line: 93, column: 3, scope: !2156)
!2165 = distinct !DISubprogram(name: "putc_unlocked", scope: !2054, file: !2054, line: 101, type: !2157, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2166)
!2166 = !{!2167, !2168}
!2167 = !DILocalVariable(name: "__c", arg: 1, scope: !2165, file: !2054, line: 101, type: !641)
!2168 = !DILocalVariable(name: "__stream", arg: 2, scope: !2165, file: !2054, line: 101, type: !2082)
!2169 = !DILocation(line: 0, scope: !2165)
!2170 = !DILocation(line: 103, column: 10, scope: !2165)
!2171 = !DILocation(line: 103, column: 3, scope: !2165)
!2172 = distinct !DISubprogram(name: "putchar_unlocked", scope: !2054, file: !2054, line: 108, type: !2148, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2173)
!2173 = !{!2174}
!2174 = !DILocalVariable(name: "__c", arg: 1, scope: !2172, file: !2054, line: 108, type: !641)
!2175 = !DILocation(line: 0, scope: !2172)
!2176 = !DILocation(line: 110, column: 10, scope: !2172)
!2177 = !DILocation(line: 110, column: 3, scope: !2172)
!2178 = distinct !DISubprogram(name: "getline", scope: !2054, file: !2054, line: 118, type: !2179, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2183)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!2181, !642, !2182, !2082}
!2181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !2109, line: 193, baseType: !787)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!2183 = !{!2184, !2185, !2186}
!2184 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2178, file: !2054, line: 118, type: !642)
!2185 = !DILocalVariable(name: "__n", arg: 2, scope: !2178, file: !2054, line: 118, type: !2182)
!2186 = !DILocalVariable(name: "__stream", arg: 3, scope: !2178, file: !2054, line: 118, type: !2082)
!2187 = !DILocation(line: 0, scope: !2178)
!2188 = !DILocation(line: 120, column: 10, scope: !2178)
!2189 = !DILocation(line: 120, column: 3, scope: !2178)
!2190 = distinct !DISubprogram(name: "feof_unlocked", scope: !2054, file: !2054, line: 128, type: !2080, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2191)
!2191 = !{!2192}
!2192 = !DILocalVariable(name: "__stream", arg: 1, scope: !2190, file: !2054, line: 128, type: !2082)
!2193 = !DILocation(line: 0, scope: !2190)
!2194 = !DILocation(line: 130, column: 10, scope: !2190)
!2195 = !DILocation(line: 130, column: 3, scope: !2190)
!2196 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2054, file: !2054, line: 135, type: !2080, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2197)
!2197 = !{!2198}
!2198 = !DILocalVariable(name: "__stream", arg: 1, scope: !2196, file: !2054, line: 135, type: !2082)
!2199 = !DILocation(line: 0, scope: !2196)
!2200 = !DILocation(line: 137, column: 10, scope: !2196)
!2201 = !DILocation(line: 137, column: 3, scope: !2196)
!2202 = distinct !DISubprogram(name: "tolower", scope: !2203, file: !2203, line: 207, type: !2148, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2204)
!2203 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2204 = !{!2205}
!2205 = !DILocalVariable(name: "__c", arg: 1, scope: !2202, file: !2203, line: 207, type: !641)
!2206 = !DILocation(line: 0, scope: !2202)
!2207 = !DILocation(line: 209, column: 22, scope: !2202)
!2208 = !DILocation(line: 209, column: 39, scope: !2202)
!2209 = !DILocation(line: 209, column: 38, scope: !2202)
!2210 = !DILocation(line: 209, column: 37, scope: !2202)
!2211 = !DILocation(line: 209, column: 10, scope: !2202)
!2212 = !DILocation(line: 209, column: 3, scope: !2202)
!2213 = distinct !DISubprogram(name: "toupper", scope: !2203, file: !2203, line: 213, type: !2148, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2214)
!2214 = !{!2215}
!2215 = !DILocalVariable(name: "__c", arg: 1, scope: !2213, file: !2203, line: 213, type: !641)
!2216 = !DILocation(line: 0, scope: !2213)
!2217 = !DILocation(line: 215, column: 22, scope: !2213)
!2218 = !DILocation(line: 215, column: 39, scope: !2213)
!2219 = !DILocation(line: 215, column: 38, scope: !2213)
!2220 = !DILocation(line: 215, column: 37, scope: !2213)
!2221 = !DILocation(line: 215, column: 10, scope: !2213)
!2222 = !DILocation(line: 215, column: 3, scope: !2213)
!2223 = distinct !DISubprogram(name: "atoi", scope: !2224, file: !2224, line: 361, type: !2225, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2227)
!2224 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!641, !646}
!2227 = !{!2228}
!2228 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2223, file: !2224, line: 361, type: !646)
!2229 = !DILocation(line: 0, scope: !2223)
!2230 = !DILocation(line: 363, column: 16, scope: !2223)
!2231 = !DILocation(line: 363, column: 10, scope: !2223)
!2232 = !DILocation(line: 363, column: 3, scope: !2223)
!2233 = distinct !DISubprogram(name: "atol", scope: !2224, file: !2224, line: 366, type: !2234, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2236)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!787, !646}
!2236 = !{!2237}
!2237 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2233, file: !2224, line: 366, type: !646)
!2238 = !DILocation(line: 0, scope: !2233)
!2239 = !DILocation(line: 368, column: 10, scope: !2233)
!2240 = !DILocation(line: 368, column: 3, scope: !2233)
!2241 = distinct !DISubprogram(name: "atoll", scope: !2224, file: !2224, line: 373, type: !2242, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2245)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!2244, !646}
!2244 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2245 = !{!2246}
!2246 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2241, file: !2224, line: 373, type: !646)
!2247 = !DILocation(line: 0, scope: !2241)
!2248 = !DILocation(line: 375, column: 10, scope: !2241)
!2249 = !DILocation(line: 375, column: 3, scope: !2241)
!2250 = distinct !DISubprogram(name: "bsearch", scope: !2251, file: !2251, line: 20, type: !2252, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2255)
!2251 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!645, !1208, !1208, !1223, !1223, !2254}
!2254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2224, line: 808, baseType: !1212)
!2255 = !{!2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265}
!2256 = !DILocalVariable(name: "__key", arg: 1, scope: !2250, file: !2251, line: 20, type: !1208)
!2257 = !DILocalVariable(name: "__base", arg: 2, scope: !2250, file: !2251, line: 20, type: !1208)
!2258 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2250, file: !2251, line: 20, type: !1223)
!2259 = !DILocalVariable(name: "__size", arg: 4, scope: !2250, file: !2251, line: 20, type: !1223)
!2260 = !DILocalVariable(name: "__compar", arg: 5, scope: !2250, file: !2251, line: 21, type: !2254)
!2261 = !DILocalVariable(name: "__l", scope: !2250, file: !2251, line: 23, type: !1223)
!2262 = !DILocalVariable(name: "__u", scope: !2250, file: !2251, line: 23, type: !1223)
!2263 = !DILocalVariable(name: "__idx", scope: !2250, file: !2251, line: 23, type: !1223)
!2264 = !DILocalVariable(name: "__p", scope: !2250, file: !2251, line: 24, type: !1208)
!2265 = !DILocalVariable(name: "__comparison", scope: !2250, file: !2251, line: 25, type: !641)
!2266 = !DILocation(line: 0, scope: !2250)
!2267 = !DILocation(line: 29, column: 3, scope: !2250)
!2268 = !DILocation(line: 27, column: 7, scope: !2250)
!2269 = !DILocation(line: 29, column: 14, scope: !2250)
!2270 = !DILocation(line: 31, column: 20, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2250, file: !2251, line: 30, column: 5)
!2272 = !DILocation(line: 31, column: 27, scope: !2271)
!2273 = !DILocation(line: 32, column: 56, scope: !2271)
!2274 = !DILocation(line: 32, column: 47, scope: !2271)
!2275 = !DILocation(line: 33, column: 22, scope: !2271)
!2276 = !DILocation(line: 34, column: 24, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2271, file: !2251, line: 34, column: 11)
!2278 = !DILocation(line: 34, column: 11, scope: !2271)
!2279 = !DILocation(line: 36, column: 29, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2277, file: !2251, line: 36, column: 16)
!2281 = !DILocation(line: 36, column: 16, scope: !2277)
!2282 = !DILocation(line: 37, column: 14, scope: !2280)
!2283 = distinct !{!2283, !2267, !2284}
!2284 = !DILocation(line: 40, column: 5, scope: !2250)
!2285 = !DILocation(line: 43, column: 1, scope: !2250)
!2286 = distinct !DISubprogram(name: "atof", scope: !2287, file: !2287, line: 25, type: !2288, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2291)
!2287 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!2290, !646}
!2290 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2291 = !{!2292}
!2292 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2286, file: !2287, line: 25, type: !646)
!2293 = !DILocation(line: 0, scope: !2286)
!2294 = !DILocation(line: 27, column: 10, scope: !2286)
!2295 = !DILocation(line: 27, column: 3, scope: !2286)
!2296 = distinct !DISubprogram(name: "strtoimax", scope: !2297, file: !2297, line: 324, type: !2298, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2304)
!2297 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!2300, !2057, !2303, !641}
!2300 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2301, line: 101, baseType: !2302)
!2301 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !2109, line: 72, baseType: !787)
!2303 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !642)
!2304 = !{!2305, !2306, !2307}
!2305 = !DILocalVariable(name: "nptr", arg: 1, scope: !2296, file: !2297, line: 324, type: !2057)
!2306 = !DILocalVariable(name: "endptr", arg: 2, scope: !2296, file: !2297, line: 324, type: !2303)
!2307 = !DILocalVariable(name: "base", arg: 3, scope: !2296, file: !2297, line: 324, type: !641)
!2308 = !DILocation(line: 0, scope: !2296)
!2309 = !DILocation(line: 327, column: 10, scope: !2296)
!2310 = !DILocation(line: 327, column: 3, scope: !2296)
!2311 = distinct !DISubprogram(name: "strtoumax", scope: !2297, file: !2297, line: 336, type: !2312, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2316)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!2314, !2057, !2303, !641}
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2301, line: 102, baseType: !2315)
!2315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !2109, line: 73, baseType: !785)
!2316 = !{!2317, !2318, !2319}
!2317 = !DILocalVariable(name: "nptr", arg: 1, scope: !2311, file: !2297, line: 336, type: !2057)
!2318 = !DILocalVariable(name: "endptr", arg: 2, scope: !2311, file: !2297, line: 336, type: !2303)
!2319 = !DILocalVariable(name: "base", arg: 3, scope: !2311, file: !2297, line: 336, type: !641)
!2320 = !DILocation(line: 0, scope: !2311)
!2321 = !DILocation(line: 339, column: 10, scope: !2311)
!2322 = !DILocation(line: 339, column: 3, scope: !2311)
!2323 = distinct !DISubprogram(name: "wcstoimax", scope: !2297, file: !2297, line: 348, type: !2324, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2333)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!2300, !2326, !2330, !641}
!2326 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2327)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2329)
!2329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2297, line: 34, baseType: !641)
!2330 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2331)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2333 = !{!2334, !2335, !2336}
!2334 = !DILocalVariable(name: "nptr", arg: 1, scope: !2323, file: !2297, line: 348, type: !2326)
!2335 = !DILocalVariable(name: "endptr", arg: 2, scope: !2323, file: !2297, line: 348, type: !2330)
!2336 = !DILocalVariable(name: "base", arg: 3, scope: !2323, file: !2297, line: 348, type: !641)
!2337 = !DILocation(line: 0, scope: !2323)
!2338 = !DILocation(line: 351, column: 10, scope: !2323)
!2339 = !DILocation(line: 351, column: 3, scope: !2323)
!2340 = distinct !DISubprogram(name: "wcstoumax", scope: !2297, file: !2297, line: 362, type: !2341, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2343)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!2314, !2326, !2330, !641}
!2343 = !{!2344, !2345, !2346}
!2344 = !DILocalVariable(name: "nptr", arg: 1, scope: !2340, file: !2297, line: 362, type: !2326)
!2345 = !DILocalVariable(name: "endptr", arg: 2, scope: !2340, file: !2297, line: 362, type: !2330)
!2346 = !DILocalVariable(name: "base", arg: 3, scope: !2340, file: !2297, line: 362, type: !641)
!2347 = !DILocation(line: 0, scope: !2340)
!2348 = !DILocation(line: 365, column: 10, scope: !2340)
!2349 = !DILocation(line: 365, column: 3, scope: !2340)
!2350 = distinct !DISubprogram(name: "stat", scope: !2351, file: !2351, line: 453, type: !2352, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2389)
!2351 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!641, !646, !2354}
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2356, line: 46, size: 1152, elements: !2357)
!2356 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2357 = !{!2358, !2360, !2362, !2364, !2366, !2368, !2370, !2371, !2372, !2373, !2375, !2377, !2385, !2386, !2387}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2355, file: !2356, line: 48, baseType: !2359, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !2109, line: 145, baseType: !785)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2355, file: !2356, line: 53, baseType: !2361, size: 64, offset: 64)
!2361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !2109, line: 148, baseType: !785)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2355, file: !2356, line: 61, baseType: !2363, size: 64, offset: 128)
!2363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !2109, line: 151, baseType: !785)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2355, file: !2356, line: 62, baseType: !2365, size: 32, offset: 192)
!2365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !2109, line: 150, baseType: !7)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2355, file: !2356, line: 64, baseType: !2367, size: 32, offset: 224)
!2367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !2109, line: 146, baseType: !7)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2355, file: !2356, line: 65, baseType: !2369, size: 32, offset: 256)
!2369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !2109, line: 147, baseType: !7)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2355, file: !2356, line: 67, baseType: !641, size: 32, offset: 288)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2355, file: !2356, line: 69, baseType: !2359, size: 64, offset: 320)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2355, file: !2356, line: 74, baseType: !2108, size: 64, offset: 384)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2355, file: !2356, line: 78, baseType: !2374, size: 64, offset: 448)
!2374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !2109, line: 174, baseType: !787)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2355, file: !2356, line: 80, baseType: !2376, size: 64, offset: 512)
!2376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !2109, line: 179, baseType: !787)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2355, file: !2356, line: 91, baseType: !2378, size: 128, offset: 576)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2379, line: 10, size: 128, elements: !2380)
!2379 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2380 = !{!2381, !2383}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2378, file: !2379, line: 12, baseType: !2382, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !2109, line: 160, baseType: !787)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2378, file: !2379, line: 16, baseType: !2384, size: 64, offset: 64)
!2384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !2109, line: 196, baseType: !787)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2355, file: !2356, line: 92, baseType: !2378, size: 128, offset: 704)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2355, file: !2356, line: 93, baseType: !2378, size: 128, offset: 832)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2355, file: !2356, line: 106, baseType: !2388, size: 192, offset: 960)
!2388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2384, size: 192, elements: !805)
!2389 = !{!2390, !2391}
!2390 = !DILocalVariable(name: "__path", arg: 1, scope: !2350, file: !2351, line: 453, type: !646)
!2391 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2350, file: !2351, line: 453, type: !2354)
!2392 = !DILocation(line: 0, scope: !2350)
!2393 = !DILocation(line: 455, column: 10, scope: !2350)
!2394 = !DILocation(line: 455, column: 3, scope: !2350)
!2395 = distinct !DISubprogram(name: "lstat", scope: !2351, file: !2351, line: 460, type: !2352, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2396)
!2396 = !{!2397, !2398}
!2397 = !DILocalVariable(name: "__path", arg: 1, scope: !2395, file: !2351, line: 460, type: !646)
!2398 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2395, file: !2351, line: 460, type: !2354)
!2399 = !DILocation(line: 0, scope: !2395)
!2400 = !DILocation(line: 462, column: 10, scope: !2395)
!2401 = !DILocation(line: 462, column: 3, scope: !2395)
!2402 = distinct !DISubprogram(name: "fstat", scope: !2351, file: !2351, line: 467, type: !2403, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2405)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!641, !641, !2354}
!2405 = !{!2406, !2407}
!2406 = !DILocalVariable(name: "__fd", arg: 1, scope: !2402, file: !2351, line: 467, type: !641)
!2407 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2402, file: !2351, line: 467, type: !2354)
!2408 = !DILocation(line: 0, scope: !2402)
!2409 = !DILocation(line: 469, column: 10, scope: !2402)
!2410 = !DILocation(line: 469, column: 3, scope: !2402)
!2411 = distinct !DISubprogram(name: "fstatat", scope: !2351, file: !2351, line: 474, type: !2412, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2414)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!641, !641, !646, !2354, !641}
!2414 = !{!2415, !2416, !2417, !2418}
!2415 = !DILocalVariable(name: "__fd", arg: 1, scope: !2411, file: !2351, line: 474, type: !641)
!2416 = !DILocalVariable(name: "__filename", arg: 2, scope: !2411, file: !2351, line: 474, type: !646)
!2417 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2411, file: !2351, line: 474, type: !2354)
!2418 = !DILocalVariable(name: "__flag", arg: 4, scope: !2411, file: !2351, line: 474, type: !641)
!2419 = !DILocation(line: 0, scope: !2411)
!2420 = !DILocation(line: 477, column: 10, scope: !2411)
!2421 = !DILocation(line: 477, column: 3, scope: !2411)
!2422 = distinct !DISubprogram(name: "mknod", scope: !2351, file: !2351, line: 483, type: !2423, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2425)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!641, !646, !2365, !2359}
!2425 = !{!2426, !2427, !2428}
!2426 = !DILocalVariable(name: "__path", arg: 1, scope: !2422, file: !2351, line: 483, type: !646)
!2427 = !DILocalVariable(name: "__mode", arg: 2, scope: !2422, file: !2351, line: 483, type: !2365)
!2428 = !DILocalVariable(name: "__dev", arg: 3, scope: !2422, file: !2351, line: 483, type: !2359)
!2429 = !DILocation(line: 0, scope: !2422)
!2430 = !DILocation(line: 485, column: 10, scope: !2422)
!2431 = !DILocation(line: 485, column: 3, scope: !2422)
!2432 = distinct !DISubprogram(name: "mknodat", scope: !2351, file: !2351, line: 491, type: !2433, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2435)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!641, !641, !646, !2365, !2359}
!2435 = !{!2436, !2437, !2438, !2439}
!2436 = !DILocalVariable(name: "__fd", arg: 1, scope: !2432, file: !2351, line: 491, type: !641)
!2437 = !DILocalVariable(name: "__path", arg: 2, scope: !2432, file: !2351, line: 491, type: !646)
!2438 = !DILocalVariable(name: "__mode", arg: 3, scope: !2432, file: !2351, line: 491, type: !2365)
!2439 = !DILocalVariable(name: "__dev", arg: 4, scope: !2432, file: !2351, line: 491, type: !2359)
!2440 = !DILocation(line: 0, scope: !2432)
!2441 = !DILocation(line: 494, column: 10, scope: !2432)
!2442 = !DILocation(line: 494, column: 3, scope: !2432)
!2443 = distinct !DISubprogram(name: "stat64", scope: !2351, file: !2351, line: 502, type: !2444, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2466)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!641, !646, !2446}
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2356, line: 119, size: 1152, elements: !2448)
!2448 = !{!2449, !2450, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2462, !2463, !2464, !2465}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2447, file: !2356, line: 121, baseType: !2359, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2447, file: !2356, line: 123, baseType: !2451, size: 64, offset: 64)
!2451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !2109, line: 149, baseType: !785)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2447, file: !2356, line: 124, baseType: !2363, size: 64, offset: 128)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2447, file: !2356, line: 125, baseType: !2365, size: 32, offset: 192)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2447, file: !2356, line: 132, baseType: !2367, size: 32, offset: 224)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2447, file: !2356, line: 133, baseType: !2369, size: 32, offset: 256)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2447, file: !2356, line: 135, baseType: !641, size: 32, offset: 288)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2447, file: !2356, line: 136, baseType: !2359, size: 64, offset: 320)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2447, file: !2356, line: 137, baseType: !2108, size: 64, offset: 384)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2447, file: !2356, line: 143, baseType: !2374, size: 64, offset: 448)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2447, file: !2356, line: 144, baseType: !2461, size: 64, offset: 512)
!2461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !2109, line: 180, baseType: !787)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2447, file: !2356, line: 152, baseType: !2378, size: 128, offset: 576)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2447, file: !2356, line: 153, baseType: !2378, size: 128, offset: 704)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2447, file: !2356, line: 154, baseType: !2378, size: 128, offset: 832)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2447, file: !2356, line: 164, baseType: !2388, size: 192, offset: 960)
!2466 = !{!2467, !2468}
!2467 = !DILocalVariable(name: "__path", arg: 1, scope: !2443, file: !2351, line: 502, type: !646)
!2468 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2443, file: !2351, line: 502, type: !2446)
!2469 = !DILocation(line: 0, scope: !2443)
!2470 = !DILocation(line: 504, column: 10, scope: !2443)
!2471 = !DILocation(line: 504, column: 3, scope: !2443)
!2472 = distinct !DISubprogram(name: "lstat64", scope: !2351, file: !2351, line: 509, type: !2444, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2473)
!2473 = !{!2474, !2475}
!2474 = !DILocalVariable(name: "__path", arg: 1, scope: !2472, file: !2351, line: 509, type: !646)
!2475 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2472, file: !2351, line: 509, type: !2446)
!2476 = !DILocation(line: 0, scope: !2472)
!2477 = !DILocation(line: 511, column: 10, scope: !2472)
!2478 = !DILocation(line: 511, column: 3, scope: !2472)
!2479 = distinct !DISubprogram(name: "fstat64", scope: !2351, file: !2351, line: 516, type: !2480, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2482)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!641, !641, !2446}
!2482 = !{!2483, !2484}
!2483 = !DILocalVariable(name: "__fd", arg: 1, scope: !2479, file: !2351, line: 516, type: !641)
!2484 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2479, file: !2351, line: 516, type: !2446)
!2485 = !DILocation(line: 0, scope: !2479)
!2486 = !DILocation(line: 518, column: 10, scope: !2479)
!2487 = !DILocation(line: 518, column: 3, scope: !2479)
!2488 = distinct !DISubprogram(name: "fstatat64", scope: !2351, file: !2351, line: 523, type: !2489, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2491)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!641, !641, !646, !2446, !641}
!2491 = !{!2492, !2493, !2494, !2495}
!2492 = !DILocalVariable(name: "__fd", arg: 1, scope: !2488, file: !2351, line: 523, type: !641)
!2493 = !DILocalVariable(name: "__filename", arg: 2, scope: !2488, file: !2351, line: 523, type: !646)
!2494 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2488, file: !2351, line: 523, type: !2446)
!2495 = !DILocalVariable(name: "__flag", arg: 4, scope: !2488, file: !2351, line: 523, type: !641)
!2496 = !DILocation(line: 0, scope: !2488)
!2497 = !DILocation(line: 526, column: 10, scope: !2488)
!2498 = !DILocation(line: 526, column: 3, scope: !2488)
!2499 = distinct !DISubprogram(name: "gate_tree_if_conversion", scope: !3, file: !3, line: 1163, type: !2032, scopeLine: 1164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2075)
!2500 = !DILocation(line: 1165, column: 10, scope: !2499)
!2501 = !DILocation(line: 1165, column: 30, scope: !2499)
!2502 = !DILocation(line: 1165, column: 3, scope: !2499)
!2503 = distinct !DISubprogram(name: "main_tree_if_conversion", scope: !3, file: !3, line: 1147, type: !2036, scopeLine: 1148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2504)
!2504 = !{!2505, !2511}
!2505 = !DILocalVariable(name: "li", scope: !2503, file: !3, line: 1149, type: !2506)
!2506 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_iterator", file: !561, line: 515, baseType: !2507)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !561, line: 508, size: 128, elements: !2508)
!2508 = !{!2509, !2510}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "to_visit", scope: !2507, file: !561, line: 511, baseType: !648, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2507, file: !561, line: 514, baseType: !7, size: 32, offset: 64)
!2511 = !DILocalVariable(name: "loop", scope: !2503, file: !3, line: 1150, type: !664)
!2512 = !DILocation(line: 1149, column: 3, scope: !2503)
!2513 = !DILocation(line: 1150, column: 3, scope: !2503)
!2514 = !DILocation(line: 1152, column: 7, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 1152, column: 7)
!2516 = !DILocation(line: 1152, column: 26, scope: !2515)
!2517 = !DILocation(line: 1152, column: 7, scope: !2503)
!2518 = !DILocation(line: 0, scope: !2503)
!2519 = !DILocation(line: 1155, column: 3, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 1155, column: 3)
!2521 = !DILocation(line: 1155, column: 3, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2520, file: !3, line: 1155, column: 3)
!2523 = !DILocation(line: 1157, column: 7, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2522, file: !3, line: 1156, column: 5)
!2525 = distinct !{!2525, !2519, !2526}
!2526 = !DILocation(line: 1158, column: 5, scope: !2520)
!2527 = !DILocation(line: 1160, column: 1, scope: !2503)
!2528 = distinct !DISubprogram(name: "number_of_loops", scope: !561, file: !561, line: 459, type: !2036, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2075)
!2529 = !DILocation(line: 461, column: 8, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2528, file: !561, line: 461, column: 7)
!2531 = !DILocation(line: 461, column: 7, scope: !2528)
!2532 = !DILocation(line: 464, column: 10, scope: !2528)
!2533 = !DILocation(line: 464, column: 3, scope: !2528)
!2534 = !DILocation(line: 0, scope: !2528)
!2535 = !DILocation(line: 465, column: 1, scope: !2528)
!2536 = distinct !DISubprogram(name: "fel_init", scope: !561, file: !561, line: 535, type: !2537, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2541)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{null, !2539, !2540, !7}
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!2541 = !{!2542, !2543, !2544, !2545, !2546, !2547}
!2542 = !DILocalVariable(name: "li", arg: 1, scope: !2536, file: !561, line: 535, type: !2539)
!2543 = !DILocalVariable(name: "loop", arg: 2, scope: !2536, file: !561, line: 535, type: !2540)
!2544 = !DILocalVariable(name: "flags", arg: 3, scope: !2536, file: !561, line: 535, type: !7)
!2545 = !DILocalVariable(name: "aloop", scope: !2536, file: !561, line: 537, type: !664)
!2546 = !DILocalVariable(name: "i", scope: !2536, file: !561, line: 538, type: !7)
!2547 = !DILocalVariable(name: "mn", scope: !2536, file: !561, line: 539, type: !641)
!2548 = !DILocation(line: 0, scope: !2536)
!2549 = !DILocation(line: 541, column: 7, scope: !2536)
!2550 = !DILocation(line: 541, column: 11, scope: !2536)
!2551 = !DILocation(line: 542, column: 8, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2536, file: !561, line: 542, column: 7)
!2553 = !DILocation(line: 542, column: 7, scope: !2536)
!2554 = !DILocation(line: 544, column: 11, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2552, file: !561, line: 543, column: 5)
!2556 = !DILocation(line: 544, column: 20, scope: !2555)
!2557 = !DILocation(line: 545, column: 13, scope: !2555)
!2558 = !DILocation(line: 546, column: 7, scope: !2555)
!2559 = !DILocation(line: 549, column: 18, scope: !2536)
!2560 = !DILocation(line: 549, column: 7, scope: !2536)
!2561 = !DILocation(line: 549, column: 16, scope: !2536)
!2562 = !DILocation(line: 0, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !561, line: 560, column: 12)
!2564 = distinct !DILexicalBlock(scope: !2536, file: !561, line: 552, column: 7)
!2565 = !DILocation(line: 590, column: 7, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2563, file: !561, line: 587, column: 5)
!2567 = !DILocation(line: 592, column: 8, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !561, line: 592, column: 8)
!2569 = distinct !DILexicalBlock(scope: !2566, file: !561, line: 591, column: 2)
!2570 = !DILocation(line: 592, column: 15, scope: !2568)
!2571 = !DILocation(line: 592, column: 19, scope: !2568)
!2572 = !DILocation(line: 592, column: 8, scope: !2569)
!2573 = !DILocation(line: 593, column: 6, scope: !2568)
!2574 = !DILocation(line: 595, column: 15, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2569, file: !561, line: 595, column: 8)
!2576 = !DILocation(line: 595, column: 21, scope: !2575)
!2577 = !DILocation(line: 595, column: 8, scope: !2569)
!2578 = !DILocation(line: 599, column: 8, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2575, file: !561, line: 598, column: 6)
!2580 = !DILocation(line: 596, column: 21, scope: !2575)
!2581 = !DILocation(line: 596, column: 6, scope: !2575)
!2582 = !DILocation(line: 599, column: 15, scope: !2579)
!2583 = !DILocation(line: 599, column: 21, scope: !2579)
!2584 = !DILocation(line: 599, column: 29, scope: !2579)
!2585 = !DILocation(line: 599, column: 39, scope: !2579)
!2586 = !DILocation(line: 599, column: 44, scope: !2579)
!2587 = !DILocation(line: 0, scope: !2579)
!2588 = !DILocation(line: 600, column: 11, scope: !2579)
!2589 = distinct !{!2589, !2578, !2590}
!2590 = !DILocation(line: 600, column: 28, scope: !2579)
!2591 = !DILocation(line: 601, column: 18, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2579, file: !561, line: 601, column: 12)
!2593 = !DILocation(line: 601, column: 12, scope: !2579)
!2594 = !DILocation(line: 603, column: 23, scope: !2579)
!2595 = distinct !{!2595, !2565, !2596}
!2596 = !DILocation(line: 605, column: 2, scope: !2566)
!2597 = !DILocation(line: 608, column: 3, scope: !2536)
!2598 = !DILocation(line: 609, column: 1, scope: !2536)
!2599 = distinct !DISubprogram(name: "tree_if_conversion", scope: !3, file: !3, line: 145, type: !2600, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2602)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!640, !664, !640}
!2602 = !{!2603, !2604, !2605, !2606, !2613, !2614, !2618, !2622}
!2603 = !DILocalVariable(name: "loop", arg: 1, scope: !2599, file: !3, line: 145, type: !664)
!2604 = !DILocalVariable(name: "for_vectorizer", arg: 2, scope: !2599, file: !3, line: 145, type: !640)
!2605 = !DILocalVariable(name: "bb", scope: !2599, file: !3, line: 147, type: !1165)
!2606 = !DILocalVariable(name: "itr", scope: !2599, file: !3, line: 148, type: !2607)
!2607 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !574, line: 265, baseType: !2608)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !574, line: 254, size: 192, elements: !2609)
!2609 = !{!2610, !2611, !2612}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2608, file: !574, line: 257, baseType: !702, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2608, file: !574, line: 263, baseType: !697, size: 64, offset: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2608, file: !574, line: 264, baseType: !1165, size: 64, offset: 128)
!2613 = !DILocalVariable(name: "i", scope: !2599, file: !3, line: 149, type: !7)
!2614 = !DILocalVariable(name: "cond", scope: !2615, file: !3, line: 171, type: !732)
!2615 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 170, column: 5)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !3, line: 169, column: 3)
!2617 = distinct !DILexicalBlock(scope: !2599, file: !3, line: 169, column: 3)
!2618 = !DILocalVariable(name: "t", scope: !2619, file: !3, line: 183, type: !707)
!2619 = distinct !DILexicalBlock(scope: !2620, file: !3, line: 182, column: 2)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !3, line: 181, column: 7)
!2621 = distinct !DILexicalBlock(scope: !2615, file: !3, line: 181, column: 7)
!2622 = !DILocalVariable(name: "bb_n", scope: !2623, file: !3, line: 193, type: !1165)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 192, column: 2)
!2624 = distinct !DILexicalBlock(scope: !2615, file: !3, line: 191, column: 11)
!2625 = !DILocation(line: 0, scope: !2599)
!2626 = !DILocation(line: 148, column: 3, scope: !2599)
!2627 = !DILocation(line: 151, column: 11, scope: !2599)
!2628 = !DILocation(line: 155, column: 8, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2599, file: !3, line: 155, column: 7)
!2630 = !DILocation(line: 155, column: 7, scope: !2599)
!2631 = !DILocation(line: 0, scope: !2616)
!2632 = !DILocation(line: 0, scope: !2621)
!2633 = !DILocation(line: 169, column: 3, scope: !2617)
!2634 = !DILocation(line: 157, column: 11, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 157, column: 11)
!2636 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 156, column: 5)
!2637 = !DILocation(line: 157, column: 21, scope: !2635)
!2638 = !DILocation(line: 157, column: 25, scope: !2635)
!2639 = !DILocation(line: 157, column: 36, scope: !2635)
!2640 = !DILocation(line: 157, column: 11, scope: !2636)
!2641 = !DILocation(line: 158, column: 2, scope: !2635)
!2642 = !DILocation(line: 159, column: 11, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 159, column: 11)
!2644 = !DILocation(line: 159, column: 11, scope: !2636)
!2645 = !DILocation(line: 161, column: 4, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 160, column: 2)
!2647 = !DILocation(line: 162, column: 12, scope: !2646)
!2648 = !DILocation(line: 163, column: 2, scope: !2646)
!2649 = !DILocation(line: 164, column: 7, scope: !2636)
!2650 = !DILocation(line: 165, column: 7, scope: !2636)
!2651 = !DILocation(line: 0, scope: !2617)
!2652 = !DILocation(line: 169, column: 25, scope: !2616)
!2653 = !DILocation(line: 169, column: 17, scope: !2616)
!2654 = !DILocation(line: 173, column: 12, scope: !2615)
!2655 = !DILocation(line: 176, column: 25, scope: !2615)
!2656 = !DILocation(line: 0, scope: !2615)
!2657 = !DILocation(line: 181, column: 18, scope: !2621)
!2658 = !DILocation(line: 181, column: 12, scope: !2621)
!2659 = !DILocation(line: 181, column: 38, scope: !2620)
!2660 = !DILocation(line: 181, column: 37, scope: !2620)
!2661 = !DILocation(line: 181, column: 7, scope: !2621)
!2662 = !DILocation(line: 183, column: 15, scope: !2619)
!2663 = !DILocation(line: 0, scope: !2619)
!2664 = !DILocation(line: 184, column: 11, scope: !2619)
!2665 = !DILocation(line: 185, column: 9, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 185, column: 8)
!2667 = !DILocation(line: 185, column: 8, scope: !2619)
!2668 = !DILocation(line: 186, column: 6, scope: !2666)
!2669 = !DILocation(line: 181, column: 7, scope: !2620)
!2670 = distinct !{!2670, !2661, !2671}
!2671 = !DILocation(line: 187, column: 2, scope: !2621)
!2672 = !DILocation(line: 191, column: 11, scope: !2624)
!2673 = !DILocation(line: 191, column: 11, scope: !2615)
!2674 = !DILocation(line: 193, column: 23, scope: !2623)
!2675 = !DILocation(line: 0, scope: !2623)
!2676 = !DILocation(line: 198, column: 13, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 198, column: 8)
!2678 = !DILocation(line: 199, column: 13, scope: !2677)
!2679 = !DILocation(line: 198, column: 8, scope: !2623)
!2680 = !DILocation(line: 201, column: 4, scope: !2623)
!2681 = !DILocation(line: 202, column: 2, scope: !2623)
!2682 = !DILocation(line: 169, column: 37, scope: !2616)
!2683 = !DILocation(line: 169, column: 3, scope: !2616)
!2684 = distinct !{!2684, !2633, !2685}
!2685 = !DILocation(line: 203, column: 5, scope: !2617)
!2686 = !DILocation(line: 208, column: 3, scope: !2599)
!2687 = !DILocation(line: 211, column: 3, scope: !2599)
!2688 = !DILocation(line: 212, column: 9, scope: !2599)
!2689 = !DILocation(line: 212, column: 3, scope: !2599)
!2690 = !DILocation(line: 213, column: 11, scope: !2599)
!2691 = !DILocation(line: 215, column: 3, scope: !2599)
!2692 = !DILocation(line: 216, column: 1, scope: !2599)
!2693 = distinct !DISubprogram(name: "fel_next", scope: !561, file: !561, line: 518, type: !2694, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2696)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{null, !2539, !2540}
!2696 = !{!2697, !2698, !2699}
!2697 = !DILocalVariable(name: "li", arg: 1, scope: !2693, file: !561, line: 518, type: !2539)
!2698 = !DILocalVariable(name: "loop", arg: 2, scope: !2693, file: !561, line: 518, type: !2540)
!2699 = !DILocalVariable(name: "anum", scope: !2693, file: !561, line: 520, type: !641)
!2700 = !DILocation(line: 0, scope: !2693)
!2701 = !DILocation(line: 520, column: 3, scope: !2693)
!2702 = !DILocation(line: 522, column: 3, scope: !2693)
!2703 = !DILocation(line: 522, column: 10, scope: !2693)
!2704 = !DILocation(line: 524, column: 14, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2693, file: !561, line: 523, column: 5)
!2706 = !DILocation(line: 525, column: 25, scope: !2705)
!2707 = !DILocation(line: 525, column: 15, scope: !2705)
!2708 = !DILocation(line: 525, column: 13, scope: !2705)
!2709 = !DILocation(line: 526, column: 11, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2705, file: !561, line: 526, column: 11)
!2711 = !DILocation(line: 526, column: 11, scope: !2705)
!2712 = distinct !{!2712, !2702, !2713}
!2713 = !DILocation(line: 528, column: 5, scope: !2693)
!2714 = !DILocation(line: 530, column: 3, scope: !2693)
!2715 = !DILocation(line: 531, column: 9, scope: !2693)
!2716 = !DILocation(line: 532, column: 1, scope: !2693)
!2717 = distinct !DISubprogram(name: "VEC_loop_p_base_length", scope: !561, file: !561, line: 85, type: !2718, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2722)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!7, !2720}
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1344)
!2722 = !{!2723}
!2723 = !DILocalVariable(name: "vec_", arg: 1, scope: !2717, file: !561, line: 85, type: !2720)
!2724 = !DILocation(line: 0, scope: !2717)
!2725 = !DILocation(line: 85, column: 1, scope: !2717)
!2726 = distinct !DISubprogram(name: "VEC_int_heap_alloc", scope: !650, file: !650, line: 32, type: !2727, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2729)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!648, !641}
!2729 = !{!2730}
!2730 = !DILocalVariable(name: "alloc_", arg: 1, scope: !2726, file: !650, line: 32, type: !641)
!2731 = !DILocation(line: 0, scope: !2726)
!2732 = !DILocation(line: 32, column: 1, scope: !2726)
!2733 = distinct !DISubprogram(name: "VEC_loop_p_base_iterate", scope: !561, file: !561, line: 85, type: !2734, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2736)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!641, !2720, !7, !2540}
!2736 = !{!2737, !2738, !2739}
!2737 = !DILocalVariable(name: "vec_", arg: 1, scope: !2733, file: !561, line: 85, type: !2720)
!2738 = !DILocalVariable(name: "ix_", arg: 2, scope: !2733, file: !561, line: 85, type: !7)
!2739 = !DILocalVariable(name: "ptr", arg: 3, scope: !2733, file: !561, line: 85, type: !2540)
!2740 = !DILocation(line: 0, scope: !2733)
!2741 = distinct !DISubprogram(name: "VEC_int_base_quick_push", scope: !650, file: !650, line: 31, type: !2742, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2746)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!2744, !2745, !641}
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!2746 = !{!2747, !2748, !2749}
!2747 = !DILocalVariable(name: "vec_", arg: 1, scope: !2741, file: !650, line: 31, type: !2745)
!2748 = !DILocalVariable(name: "obj_", arg: 2, scope: !2741, file: !650, line: 31, type: !641)
!2749 = !DILocalVariable(name: "slot_", scope: !2741, file: !650, line: 31, type: !2744)
!2750 = !DILocation(line: 0, scope: !2741)
!2751 = !DILocation(line: 31, column: 1, scope: !2741)
!2752 = distinct !DISubprogram(name: "loop_outer", scope: !561, file: !561, line: 434, type: !2753, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2757)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!664, !2755}
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !665)
!2757 = !{!2758, !2759}
!2758 = !DILocalVariable(name: "loop", arg: 1, scope: !2752, file: !561, line: 434, type: !2755)
!2759 = !DILocalVariable(name: "n", scope: !2752, file: !561, line: 436, type: !7)
!2760 = !DILocation(line: 0, scope: !2752)
!2761 = !DILocation(line: 436, column: 16, scope: !2752)
!2762 = !DILocation(line: 438, column: 9, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2752, file: !561, line: 438, column: 7)
!2764 = !DILocation(line: 438, column: 7, scope: !2752)
!2765 = !DILocation(line: 441, column: 10, scope: !2752)
!2766 = !DILocation(line: 441, column: 3, scope: !2752)
!2767 = !DILocation(line: 442, column: 1, scope: !2752)
!2768 = distinct !DISubprogram(name: "VEC_loop_p_base_index", scope: !561, file: !561, line: 85, type: !2769, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2771)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!663, !2720, !7}
!2771 = !{!2772, !2773}
!2772 = !DILocalVariable(name: "vec_", arg: 1, scope: !2768, file: !561, line: 85, type: !2720)
!2773 = !DILocalVariable(name: "ix_", arg: 2, scope: !2768, file: !561, line: 85, type: !7)
!2774 = !DILocation(line: 0, scope: !2768)
!2775 = !DILocation(line: 85, column: 1, scope: !2768)
!2776 = distinct !DISubprogram(name: "if_convertible_loop_p", scope: !3, file: !3, line: 527, type: !2600, scopeLine: 528, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2777)
!2777 = !{!2778, !2779, !2780, !2781, !2782, !2783, !2784, !2791}
!2778 = !DILocalVariable(name: "loop", arg: 1, scope: !2776, file: !3, line: 527, type: !664)
!2779 = !DILocalVariable(name: "for_vectorizer", arg: 2, scope: !2776, file: !3, line: 527, type: !640)
!2780 = !DILocalVariable(name: "bb", scope: !2776, file: !3, line: 529, type: !1165)
!2781 = !DILocalVariable(name: "itr", scope: !2776, file: !3, line: 530, type: !2607)
!2782 = !DILocalVariable(name: "i", scope: !2776, file: !3, line: 531, type: !7)
!2783 = !DILocalVariable(name: "e", scope: !2776, file: !3, line: 532, type: !686)
!2784 = !DILocalVariable(name: "ei", scope: !2776, file: !3, line: 533, type: !2785)
!2785 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !318, line: 682, baseType: !2786)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !318, line: 679, size: 128, elements: !2787)
!2787 = !{!2788, !2789}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2786, file: !318, line: 680, baseType: !7, size: 32)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !2786, file: !318, line: 681, baseType: !2790, size: 64, offset: 64)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!2791 = !DILocalVariable(name: "exit_bb", scope: !2776, file: !3, line: 534, type: !1165)
!2792 = !DILocation(line: 0, scope: !2776)
!2793 = !DILocation(line: 530, column: 3, scope: !2776)
!2794 = !DILocation(line: 532, column: 3, scope: !2776)
!2795 = !DILocation(line: 533, column: 3, scope: !2776)
!2796 = !DILocation(line: 537, column: 8, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 537, column: 7)
!2798 = !DILocation(line: 537, column: 13, scope: !2797)
!2799 = !DILocation(line: 537, column: 22, scope: !2797)
!2800 = !DILocation(line: 537, column: 16, scope: !2797)
!2801 = !DILocation(line: 537, column: 7, scope: !2776)
!2802 = !DILocation(line: 539, column: 11, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !3, line: 539, column: 11)
!2804 = distinct !DILexicalBlock(scope: !2797, file: !3, line: 538, column: 5)
!2805 = !DILocation(line: 539, column: 21, scope: !2803)
!2806 = !DILocation(line: 539, column: 25, scope: !2803)
!2807 = !DILocation(line: 539, column: 36, scope: !2803)
!2808 = !DILocation(line: 539, column: 11, scope: !2804)
!2809 = !DILocation(line: 540, column: 2, scope: !2803)
!2810 = !DILocation(line: 545, column: 13, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 545, column: 7)
!2812 = !DILocation(line: 545, column: 23, scope: !2811)
!2813 = !DILocation(line: 545, column: 7, scope: !2776)
!2814 = !DILocation(line: 547, column: 11, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2816, file: !3, line: 547, column: 11)
!2816 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 546, column: 5)
!2817 = !DILocation(line: 547, column: 21, scope: !2815)
!2818 = !DILocation(line: 547, column: 25, scope: !2815)
!2819 = !DILocation(line: 547, column: 36, scope: !2815)
!2820 = !DILocation(line: 547, column: 11, scope: !2816)
!2821 = !DILocation(line: 548, column: 2, scope: !2815)
!2822 = !DILocation(line: 553, column: 8, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 553, column: 7)
!2824 = !DILocation(line: 553, column: 7, scope: !2776)
!2825 = !DILocation(line: 555, column: 11, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2827, file: !3, line: 555, column: 11)
!2827 = distinct !DILexicalBlock(scope: !2823, file: !3, line: 554, column: 5)
!2828 = !DILocation(line: 555, column: 21, scope: !2826)
!2829 = !DILocation(line: 555, column: 25, scope: !2826)
!2830 = !DILocation(line: 555, column: 36, scope: !2826)
!2831 = !DILocation(line: 555, column: 11, scope: !2827)
!2832 = !DILocation(line: 556, column: 2, scope: !2826)
!2833 = !DILocation(line: 564, column: 3, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 564, column: 3)
!2835 = !DILocation(line: 0, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2834, file: !3, line: 564, column: 3)
!2837 = !DILocation(line: 564, column: 3, scope: !2836)
!2838 = !DILocation(line: 566, column: 35, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 566, column: 11)
!2840 = distinct !DILexicalBlock(scope: !2836, file: !3, line: 565, column: 5)
!2841 = !DILocation(line: 566, column: 11, scope: !2839)
!2842 = !DILocation(line: 566, column: 11, scope: !2840)
!2843 = distinct !{!2843, !2833, !2844}
!2844 = !DILocation(line: 568, column: 5, scope: !2834)
!2845 = !DILocation(line: 570, column: 3, scope: !2776)
!2846 = !DILocation(line: 571, column: 3, scope: !2776)
!2847 = !DILocation(line: 574, column: 13, scope: !2776)
!2848 = !DILocation(line: 574, column: 11, scope: !2776)
!2849 = !DILocation(line: 575, column: 8, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 575, column: 7)
!2851 = !DILocation(line: 575, column: 7, scope: !2776)
!2852 = !DILocation(line: 0, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !3, line: 591, column: 7)
!2854 = distinct !DILexicalBlock(scope: !2855, file: !3, line: 584, column: 5)
!2855 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 583, column: 3)
!2856 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 583, column: 3)
!2857 = !DILocation(line: 0, scope: !2854)
!2858 = !DILocation(line: 0, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2860, file: !3, line: 601, column: 2)
!2860 = distinct !DILexicalBlock(scope: !2854, file: !3, line: 600, column: 11)
!2861 = !DILocation(line: 583, column: 3, scope: !2856)
!2862 = !DILocation(line: 577, column: 11, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2864, file: !3, line: 577, column: 11)
!2864 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 576, column: 5)
!2865 = !DILocation(line: 577, column: 21, scope: !2863)
!2866 = !DILocation(line: 577, column: 25, scope: !2863)
!2867 = !DILocation(line: 577, column: 36, scope: !2863)
!2868 = !DILocation(line: 577, column: 11, scope: !2864)
!2869 = !DILocation(line: 578, column: 2, scope: !2863)
!2870 = !DILocation(line: 579, column: 7, scope: !2864)
!2871 = !DILocation(line: 580, column: 7, scope: !2864)
!2872 = !DILocation(line: 0, scope: !2856)
!2873 = !DILocation(line: 583, column: 25, scope: !2855)
!2874 = !DILocation(line: 583, column: 17, scope: !2855)
!2875 = !DILocation(line: 585, column: 12, scope: !2854)
!2876 = !DILocation(line: 587, column: 12, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2854, file: !3, line: 587, column: 11)
!2878 = !DILocation(line: 587, column: 11, scope: !2854)
!2879 = !DILocation(line: 591, column: 18, scope: !2853)
!2880 = !DILocation(line: 591, column: 12, scope: !2853)
!2881 = !DILocation(line: 591, column: 38, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2853, file: !3, line: 591, column: 7)
!2883 = !DILocation(line: 591, column: 37, scope: !2882)
!2884 = !DILocation(line: 591, column: 7, scope: !2853)
!2885 = !DILocation(line: 592, column: 40, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2882, file: !3, line: 592, column: 6)
!2887 = !DILocation(line: 592, column: 7, scope: !2886)
!2888 = !DILocation(line: 592, column: 6, scope: !2882)
!2889 = !DILocation(line: 591, column: 55, scope: !2882)
!2890 = !DILocation(line: 591, column: 7, scope: !2882)
!2891 = distinct !{!2891, !2884, !2892}
!2892 = !DILocation(line: 593, column: 11, scope: !2853)
!2893 = !DILocation(line: 597, column: 13, scope: !2854)
!2894 = !DILocation(line: 600, column: 12, scope: !2860)
!2895 = !DILocation(line: 600, column: 11, scope: !2854)
!2896 = !DILocation(line: 601, column: 2, scope: !2859)
!2897 = !DILocation(line: 601, column: 2, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2859, file: !3, line: 601, column: 2)
!2899 = !DILocation(line: 602, column: 4, scope: !2898)
!2900 = !DILocation(line: 602, column: 7, scope: !2898)
!2901 = !DILocation(line: 602, column: 11, scope: !2898)
!2902 = distinct !{!2902, !2896, !2903}
!2903 = !DILocation(line: 602, column: 13, scope: !2859)
!2904 = !DILocation(line: 605, column: 7, scope: !2854)
!2905 = !DILocation(line: 605, column: 15, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 605, column: 7)
!2907 = distinct !DILexicalBlock(scope: !2854, file: !3, line: 605, column: 7)
!2908 = !DILocation(line: 605, column: 14, scope: !2906)
!2909 = !DILocation(line: 605, column: 7, scope: !2907)
!2910 = !DILocation(line: 606, column: 39, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2906, file: !3, line: 606, column: 6)
!2912 = !DILocation(line: 606, column: 7, scope: !2911)
!2913 = !DILocation(line: 606, column: 6, scope: !2906)
!2914 = !DILocation(line: 605, column: 32, scope: !2906)
!2915 = !DILocation(line: 605, column: 7, scope: !2906)
!2916 = distinct !{!2916, !2909, !2917}
!2917 = !DILocation(line: 607, column: 11, scope: !2907)
!2918 = !DILocation(line: 609, column: 11, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2854, file: !3, line: 609, column: 11)
!2920 = !DILocation(line: 609, column: 11, scope: !2854)
!2921 = !DILocation(line: 583, column: 37, scope: !2855)
!2922 = !DILocation(line: 583, column: 3, scope: !2855)
!2923 = distinct !{!2923, !2861, !2924}
!2924 = !DILocation(line: 611, column: 5, scope: !2856)
!2925 = !DILocation(line: 615, column: 7, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 615, column: 7)
!2927 = !DILocation(line: 615, column: 7, scope: !2776)
!2928 = !DILocation(line: 616, column: 5, scope: !2926)
!2929 = !DILocation(line: 618, column: 3, scope: !2776)
!2930 = !DILocation(line: 619, column: 3, scope: !2776)
!2931 = !DILocation(line: 620, column: 1, scope: !2776)
!2932 = distinct !DISubprogram(name: "gsi_start_bb", scope: !574, file: !574, line: 4418, type: !2933, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2935)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!2607, !1165}
!2935 = !{!2936, !2937, !2938}
!2936 = !DILocalVariable(name: "bb", arg: 1, scope: !2932, file: !574, line: 4418, type: !1165)
!2937 = !DILocalVariable(name: "i", scope: !2932, file: !574, line: 4420, type: !2607)
!2938 = !DILocalVariable(name: "seq", scope: !2932, file: !574, line: 4421, type: !697)
!2939 = !DILocation(line: 0, scope: !2932)
!2940 = !DILocation(line: 4420, column: 24, scope: !2932)
!2941 = !DILocation(line: 4423, column: 9, scope: !2932)
!2942 = !DILocation(line: 4424, column: 11, scope: !2932)
!2943 = !DILocation(line: 4424, column: 5, scope: !2932)
!2944 = !DILocation(line: 4424, column: 9, scope: !2932)
!2945 = !DILocation(line: 4425, column: 5, scope: !2932)
!2946 = !DILocation(line: 4425, column: 9, scope: !2932)
!2947 = !DILocation(line: 4426, column: 5, scope: !2932)
!2948 = !DILocation(line: 4426, column: 8, scope: !2932)
!2949 = !DILocation(line: 4429, column: 1, scope: !2932)
!2950 = distinct !DISubprogram(name: "gsi_end_p", scope: !574, file: !574, line: 4467, type: !2951, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2953)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!640, !2607}
!2953 = !{!2954}
!2954 = !DILocalVariable(name: "i", arg: 1, scope: !2950, file: !574, line: 4467, type: !2607)
!2955 = !DILocation(line: 4467, column: 33, scope: !2950)
!2956 = !DILocation(line: 4469, column: 12, scope: !2950)
!2957 = !DILocation(line: 4469, column: 16, scope: !2950)
!2958 = !DILocation(line: 4469, column: 10, scope: !2950)
!2959 = !DILocation(line: 4469, column: 3, scope: !2950)
!2960 = distinct !DISubprogram(name: "gsi_stmt", scope: !574, file: !574, line: 4501, type: !2961, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2963)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!707, !2607}
!2963 = !{!2964}
!2964 = !DILocalVariable(name: "i", arg: 1, scope: !2960, file: !574, line: 4501, type: !2607)
!2965 = !DILocation(line: 4501, column: 32, scope: !2960)
!2966 = !DILocation(line: 4503, column: 12, scope: !2960)
!2967 = !DILocation(line: 4503, column: 17, scope: !2960)
!2968 = !DILocation(line: 4503, column: 3, scope: !2960)
!2969 = distinct !DISubprogram(name: "tree_if_convert_stmt", scope: !3, file: !3, line: 226, type: !2970, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2973)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!732, !664, !707, !732, !2972}
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2973 = !{!2974, !2975, !2976, !2977}
!2974 = !DILocalVariable(name: "loop", arg: 1, scope: !2969, file: !3, line: 226, type: !664)
!2975 = !DILocalVariable(name: "t", arg: 2, scope: !2969, file: !3, line: 226, type: !707)
!2976 = !DILocalVariable(name: "cond", arg: 3, scope: !2969, file: !3, line: 226, type: !732)
!2977 = !DILocalVariable(name: "gsi", arg: 4, scope: !2969, file: !3, line: 227, type: !2972)
!2978 = !DILocation(line: 0, scope: !2969)
!2979 = !DILocation(line: 229, column: 7, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 229, column: 7)
!2981 = !DILocation(line: 229, column: 17, scope: !2980)
!2982 = !DILocation(line: 229, column: 21, scope: !2980)
!2983 = !DILocation(line: 229, column: 32, scope: !2980)
!2984 = !DILocation(line: 229, column: 7, scope: !2969)
!2985 = !DILocation(line: 231, column: 7, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2980, file: !3, line: 230, column: 5)
!2987 = !DILocation(line: 232, column: 26, scope: !2986)
!2988 = !DILocation(line: 232, column: 7, scope: !2986)
!2989 = !DILocation(line: 233, column: 27, scope: !2986)
!2990 = !DILocation(line: 233, column: 7, scope: !2986)
!2991 = !DILocation(line: 234, column: 5, scope: !2986)
!2992 = !DILocation(line: 236, column: 11, scope: !2969)
!2993 = !DILocation(line: 236, column: 3, scope: !2969)
!2994 = !DILocation(line: 244, column: 32, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2996, file: !3, line: 244, column: 11)
!2996 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 237, column: 5)
!2997 = !DILocation(line: 244, column: 11, scope: !2995)
!2998 = !DILocation(line: 244, column: 11, scope: !2996)
!2999 = !DILocation(line: 246, column: 35, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2995, file: !3, line: 245, column: 2)
!3001 = !DILocation(line: 246, column: 4, scope: !3000)
!3002 = !DILocation(line: 247, column: 17, scope: !3000)
!3003 = !DILocation(line: 247, column: 4, scope: !3000)
!3004 = !DILocation(line: 248, column: 2, scope: !3000)
!3005 = !DILocation(line: 262, column: 7, scope: !2996)
!3006 = !DILocation(line: 264, column: 7, scope: !2996)
!3007 = !DILocation(line: 267, column: 7, scope: !2996)
!3008 = !DILocation(line: 268, column: 5, scope: !2996)
!3009 = !DILocation(line: 269, column: 3, scope: !2969)
!3010 = distinct !DISubprogram(name: "gsi_next", scope: !574, file: !574, line: 4485, type: !3011, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3013)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{null, !2972}
!3013 = !{!3014}
!3014 = !DILocalVariable(name: "i", arg: 1, scope: !3010, file: !574, line: 4485, type: !2972)
!3015 = !DILocation(line: 0, scope: !3010)
!3016 = !DILocation(line: 4487, column: 15, scope: !3010)
!3017 = !DILocation(line: 4487, column: 20, scope: !3010)
!3018 = !DILocation(line: 4487, column: 10, scope: !3010)
!3019 = !DILocation(line: 4488, column: 1, scope: !3010)
!3020 = distinct !DISubprogram(name: "single_succ_p", scope: !318, file: !318, line: 626, type: !3021, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3026)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!640, !3023}
!3023 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !687, line: 112, baseType: !3024)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !671)
!3026 = !{!3027}
!3027 = !DILocalVariable(name: "bb", arg: 1, scope: !3020, file: !318, line: 626, type: !3023)
!3028 = !DILocation(line: 0, scope: !3020)
!3029 = !DILocation(line: 628, column: 10, scope: !3020)
!3030 = !DILocation(line: 628, column: 33, scope: !3020)
!3031 = !DILocation(line: 628, column: 3, scope: !3020)
!3032 = distinct !DISubprogram(name: "single_succ", scope: !318, file: !318, line: 663, type: !3033, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3035)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!1165, !3023}
!3035 = !{!3036}
!3036 = !DILocalVariable(name: "bb", arg: 1, scope: !3032, file: !318, line: 663, type: !3023)
!3037 = !DILocation(line: 0, scope: !3032)
!3038 = !DILocation(line: 665, column: 10, scope: !3032)
!3039 = !DILocation(line: 665, column: 33, scope: !3032)
!3040 = !DILocation(line: 665, column: 3, scope: !3032)
!3041 = distinct !DISubprogram(name: "add_to_predicate_list", scope: !3, file: !3, line: 625, type: !3042, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3044)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{null, !1165, !732}
!3044 = !{!3045, !3046, !3047}
!3045 = !DILocalVariable(name: "bb", arg: 1, scope: !3041, file: !3, line: 625, type: !1165)
!3046 = !DILocalVariable(name: "new_cond", arg: 2, scope: !3041, file: !3, line: 625, type: !732)
!3047 = !DILocalVariable(name: "cond", scope: !3041, file: !3, line: 627, type: !732)
!3048 = !DILocation(line: 0, scope: !3041)
!3049 = !DILocation(line: 627, column: 26, scope: !3041)
!3050 = !DILocation(line: 629, column: 7, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 629, column: 7)
!3052 = !DILocation(line: 629, column: 7, scope: !3041)
!3053 = !DILocation(line: 630, column: 12, scope: !3051)
!3054 = !DILocation(line: 630, column: 5, scope: !3051)
!3055 = !DILocation(line: 0, scope: !3051)
!3056 = !DILocation(line: 636, column: 11, scope: !3041)
!3057 = !DILocation(line: 637, column: 1, scope: !3041)
!3058 = distinct !DISubprogram(name: "combine_blocks", scope: !3, file: !3, line: 922, type: !3059, scopeLine: 923, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3061)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{null, !664}
!3061 = !{!3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3074}
!3062 = !DILocalVariable(name: "loop", arg: 1, scope: !3058, file: !3, line: 922, type: !664)
!3063 = !DILocalVariable(name: "bb", scope: !3058, file: !3, line: 924, type: !1165)
!3064 = !DILocalVariable(name: "exit_bb", scope: !3058, file: !3, line: 924, type: !1165)
!3065 = !DILocalVariable(name: "merge_target_bb", scope: !3058, file: !3, line: 924, type: !1165)
!3066 = !DILocalVariable(name: "orig_loop_num_nodes", scope: !3058, file: !3, line: 925, type: !7)
!3067 = !DILocalVariable(name: "i", scope: !3058, file: !3, line: 926, type: !7)
!3068 = !DILocalVariable(name: "e", scope: !3058, file: !3, line: 927, type: !686)
!3069 = !DILocalVariable(name: "ei", scope: !3058, file: !3, line: 928, type: !2785)
!3070 = !DILocalVariable(name: "gsi", scope: !3071, file: !3, line: 987, type: !2607)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !3, line: 986, column: 5)
!3072 = distinct !DILexicalBlock(scope: !3073, file: !3, line: 985, column: 3)
!3073 = distinct !DILexicalBlock(scope: !3058, file: !3, line: 985, column: 3)
!3074 = !DILocalVariable(name: "last", scope: !3071, file: !3, line: 988, type: !2607)
!3075 = !DILocation(line: 0, scope: !3058)
!3076 = !DILocation(line: 925, column: 44, scope: !3058)
!3077 = !DILocation(line: 927, column: 3, scope: !3058)
!3078 = !DILocation(line: 928, column: 3, scope: !3058)
!3079 = !DILocation(line: 931, column: 3, scope: !3058)
!3080 = !DILocation(line: 936, column: 17, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 936, column: 3)
!3082 = distinct !DILexicalBlock(scope: !3058, file: !3, line: 936, column: 3)
!3083 = !DILocation(line: 936, column: 8, scope: !3082)
!3084 = !DILocation(line: 0, scope: !3082)
!3085 = !DILocation(line: 936, column: 3, scope: !3082)
!3086 = !DILocation(line: 938, column: 12, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 937, column: 5)
!3088 = !DILocation(line: 939, column: 11, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 939, column: 11)
!3090 = !DILocation(line: 939, column: 11, scope: !3087)
!3091 = !DILocation(line: 936, column: 41, scope: !3081)
!3092 = !DILocation(line: 936, column: 3, scope: !3081)
!3093 = distinct !{!3093, !3085, !3094}
!3094 = !DILocation(line: 944, column: 5, scope: !3082)
!3095 = !DILocation(line: 945, column: 3, scope: !3058)
!3096 = !DILocation(line: 0, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !3, line: 951, column: 7)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 948, column: 5)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 947, column: 3)
!3100 = distinct !DILexicalBlock(scope: !3058, file: !3, line: 947, column: 3)
!3101 = !DILocation(line: 0, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3097, file: !3, line: 951, column: 7)
!3103 = !DILocation(line: 947, column: 8, scope: !3100)
!3104 = !DILocation(line: 0, scope: !3100)
!3105 = !DILocation(line: 947, column: 17, scope: !3099)
!3106 = !DILocation(line: 947, column: 3, scope: !3100)
!3107 = !DILocation(line: 949, column: 12, scope: !3098)
!3108 = !DILocation(line: 951, column: 17, scope: !3097)
!3109 = !DILocation(line: 951, column: 12, scope: !3097)
!3110 = !DILocation(line: 951, column: 44, scope: !3102)
!3111 = !DILocation(line: 951, column: 42, scope: !3102)
!3112 = !DILocation(line: 951, column: 7, scope: !3097)
!3113 = !DILocation(line: 953, column: 11, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !3, line: 953, column: 8)
!3115 = distinct !DILexicalBlock(scope: !3102, file: !3, line: 952, column: 2)
!3116 = !DILocation(line: 953, column: 15, scope: !3114)
!3117 = !DILocation(line: 953, column: 8, scope: !3115)
!3118 = !DILocation(line: 954, column: 6, scope: !3114)
!3119 = !DILocation(line: 956, column: 6, scope: !3114)
!3120 = !DILocation(line: 951, column: 7, scope: !3102)
!3121 = distinct !{!3121, !3112, !3122}
!3122 = !DILocation(line: 957, column: 2, scope: !3097)
!3123 = !DILocation(line: 947, column: 41, scope: !3099)
!3124 = !DILocation(line: 947, column: 3, scope: !3099)
!3125 = distinct !{!3125, !3106, !3126}
!3126 = !DILocation(line: 958, column: 5, scope: !3100)
!3127 = !DILocation(line: 960, column: 15, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3058, file: !3, line: 960, column: 7)
!3129 = !DILocation(line: 0, scope: !3128)
!3130 = !DILocation(line: 960, column: 7, scope: !3058)
!3131 = !DILocation(line: 962, column: 19, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !3, line: 962, column: 11)
!3133 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 961, column: 5)
!3134 = !DILocation(line: 962, column: 11, scope: !3133)
!3135 = !DILocation(line: 965, column: 4, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3132, file: !3, line: 963, column: 2)
!3137 = !DILocation(line: 966, column: 60, scope: !3136)
!3138 = !DILocation(line: 966, column: 4, scope: !3136)
!3139 = !DILocation(line: 967, column: 2, scope: !3136)
!3140 = !DILocation(line: 970, column: 7, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3133, file: !3, line: 970, column: 7)
!3142 = !DILocation(line: 970, column: 7, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3141, file: !3, line: 970, column: 7)
!3144 = !DILocation(line: 972, column: 33, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !3, line: 972, column: 8)
!3146 = distinct !DILexicalBlock(scope: !3143, file: !3, line: 971, column: 2)
!3147 = !DILocation(line: 972, column: 9, scope: !3145)
!3148 = !DILocation(line: 972, column: 8, scope: !3146)
!3149 = !DILocation(line: 973, column: 32, scope: !3145)
!3150 = !DILocation(line: 973, column: 41, scope: !3145)
!3151 = !DILocation(line: 973, column: 6, scope: !3145)
!3152 = distinct !{!3152, !3140, !3153}
!3153 = !DILocation(line: 974, column: 2, scope: !3141)
!3154 = !DILocation(line: 975, column: 54, scope: !3133)
!3155 = !DILocation(line: 975, column: 7, scope: !3133)
!3156 = !DILocation(line: 976, column: 5, scope: !3133)
!3157 = !DILocation(line: 980, column: 38, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 978, column: 5)
!3159 = !DILocation(line: 980, column: 7, scope: !3158)
!3160 = !DILocation(line: 981, column: 54, scope: !3158)
!3161 = !DILocation(line: 981, column: 67, scope: !3158)
!3162 = !DILocation(line: 981, column: 7, scope: !3158)
!3163 = !DILocation(line: 984, column: 27, scope: !3058)
!3164 = !DILocation(line: 0, scope: !3071)
!3165 = !DILocation(line: 0, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3071, file: !3, line: 996, column: 7)
!3167 = !DILocation(line: 985, column: 8, scope: !3073)
!3168 = !DILocation(line: 0, scope: !3073)
!3169 = !DILocation(line: 985, column: 17, scope: !3072)
!3170 = !DILocation(line: 985, column: 3, scope: !3073)
!3171 = !DILocation(line: 987, column: 7, scope: !3071)
!3172 = !DILocation(line: 988, column: 7, scope: !3071)
!3173 = !DILocation(line: 990, column: 12, scope: !3071)
!3174 = !DILocation(line: 992, column: 14, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3071, file: !3, line: 992, column: 11)
!3176 = !DILocation(line: 992, column: 25, scope: !3175)
!3177 = !DILocation(line: 992, column: 40, scope: !3175)
!3178 = !DILocation(line: 992, column: 31, scope: !3175)
!3179 = !DILocation(line: 992, column: 11, scope: !3071)
!3180 = !DILocation(line: 996, column: 18, scope: !3166)
!3181 = !DILocation(line: 996, column: 12, scope: !3166)
!3182 = !DILocation(line: 996, column: 38, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3166, file: !3, line: 996, column: 7)
!3184 = !DILocation(line: 996, column: 37, scope: !3183)
!3185 = !DILocation(line: 996, column: 7, scope: !3166)
!3186 = !DILocation(line: 998, column: 21, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3188, file: !3, line: 998, column: 8)
!3188 = distinct !DILexicalBlock(scope: !3183, file: !3, line: 997, column: 2)
!3189 = !DILocation(line: 998, column: 8, scope: !3187)
!3190 = !DILocation(line: 998, column: 37, scope: !3187)
!3191 = !DILocation(line: 998, column: 8, scope: !3188)
!3192 = !DILocation(line: 999, column: 6, scope: !3187)
!3193 = !DILocation(line: 1002, column: 23, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3187, file: !3, line: 1001, column: 6)
!3195 = !DILocation(line: 1002, column: 8, scope: !3194)
!3196 = !DILocation(line: 1003, column: 8, scope: !3194)
!3197 = !DILocation(line: 996, column: 7, scope: !3183)
!3198 = distinct !{!3198, !3185, !3199}
!3199 = !DILocation(line: 1005, column: 2, scope: !3166)
!3200 = !DILocation(line: 1008, column: 14, scope: !3071)
!3201 = !DILocation(line: 1009, column: 36, scope: !3071)
!3202 = !DILocation(line: 1009, column: 7, scope: !3071)
!3203 = !DILocation(line: 1010, column: 7, scope: !3071)
!3204 = !DILocation(line: 1012, column: 7, scope: !3071)
!3205 = !DILocation(line: 1013, column: 5, scope: !3072)
!3206 = !DILocation(line: 985, column: 41, scope: !3072)
!3207 = !DILocation(line: 985, column: 3, scope: !3072)
!3208 = distinct !{!3208, !3170, !3209}
!3209 = !DILocation(line: 1013, column: 5, scope: !3073)
!3210 = !DILocation(line: 1019, column: 7, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3058, file: !3, line: 1018, column: 7)
!3212 = !DILocation(line: 1019, column: 27, scope: !3211)
!3213 = !DILocation(line: 1019, column: 18, scope: !3211)
!3214 = !DILocation(line: 1020, column: 7, scope: !3211)
!3215 = !DILocation(line: 1020, column: 10, scope: !3211)
!3216 = !DILocation(line: 1018, column: 7, scope: !3058)
!3217 = !DILocation(line: 1021, column: 25, scope: !3211)
!3218 = !DILocation(line: 1021, column: 5, scope: !3211)
!3219 = !DILocation(line: 1022, column: 1, scope: !3058)
!3220 = distinct !DISubprogram(name: "clean_predicate_lists", scope: !3, file: !3, line: 687, type: !3059, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3221)
!3221 = !{!3222, !3223, !3224, !3225, !3226}
!3222 = !DILocalVariable(name: "loop", arg: 1, scope: !3220, file: !3, line: 687, type: !664)
!3223 = !DILocalVariable(name: "bb", scope: !3220, file: !3, line: 689, type: !2014)
!3224 = !DILocalVariable(name: "i", scope: !3220, file: !3, line: 690, type: !7)
!3225 = !DILocalVariable(name: "e", scope: !3220, file: !3, line: 691, type: !686)
!3226 = !DILocalVariable(name: "ei", scope: !3220, file: !3, line: 692, type: !2785)
!3227 = !DILocation(line: 0, scope: !3220)
!3228 = !DILocation(line: 691, column: 3, scope: !3220)
!3229 = !DILocation(line: 692, column: 3, scope: !3220)
!3230 = !DILocation(line: 694, column: 8, scope: !3220)
!3231 = !DILocation(line: 0, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !3, line: 695, column: 3)
!3233 = distinct !DILexicalBlock(scope: !3220, file: !3, line: 695, column: 3)
!3234 = !DILocation(line: 0, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3236, file: !3, line: 698, column: 7)
!3236 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 696, column: 5)
!3237 = !DILocation(line: 0, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3235, file: !3, line: 698, column: 7)
!3239 = !DILocation(line: 695, column: 8, scope: !3233)
!3240 = !DILocation(line: 0, scope: !3233)
!3241 = !DILocation(line: 695, column: 25, scope: !3232)
!3242 = !DILocation(line: 695, column: 17, scope: !3232)
!3243 = !DILocation(line: 695, column: 3, scope: !3233)
!3244 = !DILocation(line: 697, column: 7, scope: !3236)
!3245 = !DILocation(line: 697, column: 14, scope: !3236)
!3246 = !DILocation(line: 697, column: 18, scope: !3236)
!3247 = !DILocation(line: 698, column: 7, scope: !3235)
!3248 = !DILocation(line: 698, column: 7, scope: !3238)
!3249 = !DILocation(line: 699, column: 2, scope: !3238)
!3250 = !DILocation(line: 699, column: 5, scope: !3238)
!3251 = !DILocation(line: 699, column: 9, scope: !3238)
!3252 = distinct !{!3252, !3247, !3253}
!3253 = !DILocation(line: 699, column: 11, scope: !3235)
!3254 = !DILocation(line: 695, column: 37, scope: !3232)
!3255 = !DILocation(line: 695, column: 3, scope: !3232)
!3256 = distinct !{!3256, !3243, !3257}
!3257 = !DILocation(line: 700, column: 5, scope: !3233)
!3258 = !DILocation(line: 701, column: 9, scope: !3220)
!3259 = !DILocation(line: 701, column: 3, scope: !3220)
!3260 = !DILocation(line: 702, column: 1, scope: !3220)
!3261 = distinct !DISubprogram(name: "ei_start_1", scope: !318, file: !318, line: 696, type: !3262, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3264)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!2785, !2790}
!3264 = !{!3265, !3266}
!3265 = !DILocalVariable(name: "ev", arg: 1, scope: !3261, file: !318, line: 696, type: !2790)
!3266 = !DILocalVariable(name: "i", scope: !3261, file: !318, line: 698, type: !2785)
!3267 = !DILocation(line: 0, scope: !3261)
!3268 = !DILocation(line: 700, column: 5, scope: !3261)
!3269 = !DILocation(line: 700, column: 11, scope: !3261)
!3270 = !DILocation(line: 701, column: 5, scope: !3261)
!3271 = !DILocation(line: 701, column: 15, scope: !3261)
!3272 = !DILocation(line: 703, column: 3, scope: !3261)
!3273 = distinct !DISubprogram(name: "ei_cond", scope: !318, file: !318, line: 771, type: !3274, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3277)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!640, !2785, !3276}
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!3277 = !{!3278, !3279}
!3278 = !DILocalVariable(name: "ei", arg: 1, scope: !3273, file: !318, line: 771, type: !2785)
!3279 = !DILocalVariable(name: "p", arg: 2, scope: !3273, file: !318, line: 771, type: !3276)
!3280 = !DILocation(line: 0, scope: !3273)
!3281 = !DILocation(line: 773, column: 8, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3273, file: !318, line: 773, column: 7)
!3283 = !DILocation(line: 773, column: 7, scope: !3273)
!3284 = !DILocation(line: 775, column: 12, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3282, file: !318, line: 774, column: 5)
!3286 = !DILocation(line: 776, column: 7, scope: !3285)
!3287 = !DILocation(line: 781, column: 7, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3282, file: !318, line: 779, column: 5)
!3289 = !DILocation(line: 0, scope: !3282)
!3290 = !DILocation(line: 783, column: 1, scope: !3273)
!3291 = distinct !DISubprogram(name: "ei_next", scope: !318, file: !318, line: 736, type: !3292, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3295)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{null, !3294}
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!3295 = !{!3296}
!3296 = !DILocalVariable(name: "i", arg: 1, scope: !3291, file: !318, line: 736, type: !3294)
!3297 = !DILocation(line: 0, scope: !3291)
!3298 = !DILocation(line: 738, column: 3, scope: !3291)
!3299 = !DILocation(line: 739, column: 11, scope: !3291)
!3300 = !DILocation(line: 740, column: 1, scope: !3291)
!3301 = distinct !DISubprogram(name: "get_loop_body_in_if_conv_order", scope: !3, file: !3, line: 1074, type: !3302, scopeLine: 1075, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3304)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!2014, !2755}
!3304 = !{!3305, !3306, !3307, !3308, !3309, !3310, !3311}
!3305 = !DILocalVariable(name: "loop", arg: 1, scope: !3301, file: !3, line: 1074, type: !2755)
!3306 = !DILocalVariable(name: "blocks", scope: !3301, file: !3, line: 1076, type: !2014)
!3307 = !DILocalVariable(name: "blocks_in_bfs_order", scope: !3301, file: !3, line: 1076, type: !2014)
!3308 = !DILocalVariable(name: "bb", scope: !3301, file: !3, line: 1077, type: !1165)
!3309 = !DILocalVariable(name: "visited", scope: !3301, file: !3, line: 1078, type: !1286)
!3310 = !DILocalVariable(name: "index", scope: !3301, file: !3, line: 1079, type: !7)
!3311 = !DILocalVariable(name: "visited_count", scope: !3301, file: !3, line: 1080, type: !7)
!3312 = !DILocation(line: 0, scope: !3301)
!3313 = !DILocation(line: 1078, column: 3, scope: !3301)
!3314 = !DILocation(line: 1082, column: 3, scope: !3301)
!3315 = !DILocation(line: 1083, column: 3, scope: !3301)
!3316 = !DILocation(line: 1085, column: 12, scope: !3301)
!3317 = !DILocation(line: 1086, column: 13, scope: !3301)
!3318 = !DILocation(line: 1086, column: 11, scope: !3301)
!3319 = !DILocation(line: 1088, column: 25, scope: !3301)
!3320 = !DILocation(line: 0, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 1104, column: 8)
!3322 = distinct !DILexicalBlock(scope: !3323, file: !3, line: 1103, column: 2)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !3, line: 1102, column: 11)
!3324 = distinct !DILexicalBlock(scope: !3301, file: !3, line: 1092, column: 5)
!3325 = !DILocation(line: 1091, column: 24, scope: !3301)
!3326 = !DILocation(line: 1091, column: 3, scope: !3301)
!3327 = !DILocation(line: 1080, column: 16, scope: !3301)
!3328 = !DILocation(line: 1091, column: 16, scope: !3301)
!3329 = !DILocation(line: 1093, column: 12, scope: !3324)
!3330 = !DILocation(line: 1095, column: 15, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3324, file: !3, line: 1095, column: 11)
!3332 = !DILocation(line: 1095, column: 21, scope: !3331)
!3333 = !DILocation(line: 1095, column: 11, scope: !3324)
!3334 = !DILocation(line: 1097, column: 10, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3331, file: !3, line: 1096, column: 2)
!3336 = !DILocation(line: 1097, column: 4, scope: !3335)
!3337 = !DILocation(line: 1098, column: 4, scope: !3335)
!3338 = !DILocation(line: 1099, column: 4, scope: !3335)
!3339 = !DILocation(line: 1100, column: 4, scope: !3335)
!3340 = !DILocation(line: 1102, column: 26, scope: !3323)
!3341 = !DILocation(line: 1102, column: 39, scope: !3323)
!3342 = !DILocation(line: 1102, column: 12, scope: !3323)
!3343 = !DILocation(line: 1102, column: 11, scope: !3324)
!3344 = !DILocation(line: 1104, column: 8, scope: !3321)
!3345 = !DILocation(line: 1105, column: 8, scope: !3321)
!3346 = !DILocation(line: 1105, column: 23, scope: !3321)
!3347 = !DILocation(line: 1105, column: 14, scope: !3321)
!3348 = !DILocation(line: 1104, column: 8, scope: !3322)
!3349 = !DILocation(line: 1108, column: 24, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3321, file: !3, line: 1106, column: 6)
!3351 = !DILocation(line: 1108, column: 37, scope: !3350)
!3352 = !DILocation(line: 1108, column: 8, scope: !3350)
!3353 = !DILocation(line: 1109, column: 28, scope: !3350)
!3354 = !DILocation(line: 1109, column: 8, scope: !3350)
!3355 = !DILocation(line: 1109, column: 32, scope: !3350)
!3356 = !DILocation(line: 1110, column: 6, scope: !3350)
!3357 = !DILocation(line: 1112, column: 12, scope: !3324)
!3358 = !DILocation(line: 1113, column: 26, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3324, file: !3, line: 1113, column: 11)
!3360 = !DILocation(line: 1113, column: 17, scope: !3359)
!3361 = !DILocation(line: 1114, column: 4, scope: !3359)
!3362 = !DILocation(line: 1114, column: 21, scope: !3359)
!3363 = !DILocation(line: 1113, column: 11, scope: !3324)
!3364 = !DILocation(line: 0, scope: !3324)
!3365 = distinct !{!3365, !3326, !3366}
!3366 = !DILocation(line: 1119, column: 5, scope: !3301)
!3367 = !DILocation(line: 1120, column: 9, scope: !3301)
!3368 = !DILocation(line: 1120, column: 3, scope: !3301)
!3369 = !DILocation(line: 1121, column: 3, scope: !3301)
!3370 = !DILocation(line: 1122, column: 3, scope: !3301)
!3371 = !DILocation(line: 1123, column: 1, scope: !3301)
!3372 = distinct !DISubprogram(name: "if_convertible_bb_p", scope: !3, file: !3, line: 470, type: !3373, scopeLine: 471, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3375)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!640, !664, !1165, !1165}
!3375 = !{!3376, !3377, !3378, !3379, !3380}
!3376 = !DILocalVariable(name: "loop", arg: 1, scope: !3372, file: !3, line: 470, type: !664)
!3377 = !DILocalVariable(name: "bb", arg: 2, scope: !3372, file: !3, line: 470, type: !1165)
!3378 = !DILocalVariable(name: "exit_bb", arg: 3, scope: !3372, file: !3, line: 470, type: !1165)
!3379 = !DILocalVariable(name: "e", scope: !3372, file: !3, line: 472, type: !686)
!3380 = !DILocalVariable(name: "ei", scope: !3372, file: !3, line: 473, type: !2785)
!3381 = !DILocation(line: 0, scope: !3372)
!3382 = !DILocation(line: 472, column: 3, scope: !3372)
!3383 = !DILocation(line: 473, column: 3, scope: !3372)
!3384 = !DILocation(line: 475, column: 7, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3372, file: !3, line: 475, column: 7)
!3386 = !DILocation(line: 475, column: 17, scope: !3385)
!3387 = !DILocation(line: 475, column: 21, scope: !3385)
!3388 = !DILocation(line: 475, column: 32, scope: !3385)
!3389 = !DILocation(line: 475, column: 7, scope: !3372)
!3390 = !DILocation(line: 476, column: 62, scope: !3385)
!3391 = !DILocation(line: 476, column: 5, scope: !3385)
!3392 = !DILocation(line: 478, column: 7, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3372, file: !3, line: 478, column: 7)
!3394 = !DILocation(line: 478, column: 7, scope: !3372)
!3395 = !DILocation(line: 480, column: 23, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !3, line: 480, column: 11)
!3397 = distinct !DILexicalBlock(scope: !3393, file: !3, line: 479, column: 5)
!3398 = !DILocation(line: 480, column: 14, scope: !3396)
!3399 = !DILocation(line: 480, column: 11, scope: !3397)
!3400 = !DILocation(line: 482, column: 8, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 482, column: 8)
!3402 = distinct !DILexicalBlock(scope: !3396, file: !3, line: 481, column: 2)
!3403 = !DILocation(line: 482, column: 18, scope: !3401)
!3404 = !DILocation(line: 482, column: 22, scope: !3401)
!3405 = !DILocation(line: 482, column: 33, scope: !3401)
!3406 = !DILocation(line: 482, column: 8, scope: !3402)
!3407 = !DILocation(line: 483, column: 6, scope: !3401)
!3408 = !DILocation(line: 486, column: 17, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3396, file: !3, line: 486, column: 16)
!3410 = !DILocation(line: 486, column: 16, scope: !3396)
!3411 = !DILocation(line: 488, column: 8, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3413, file: !3, line: 488, column: 8)
!3413 = distinct !DILexicalBlock(scope: !3409, file: !3, line: 487, column: 2)
!3414 = !DILocation(line: 488, column: 18, scope: !3412)
!3415 = !DILocation(line: 488, column: 22, scope: !3412)
!3416 = !DILocation(line: 488, column: 33, scope: !3412)
!3417 = !DILocation(line: 488, column: 8, scope: !3413)
!3418 = !DILocation(line: 489, column: 6, scope: !3412)
!3419 = !DILocation(line: 492, column: 28, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3409, file: !3, line: 492, column: 16)
!3421 = !DILocation(line: 492, column: 19, scope: !3420)
!3422 = !DILocation(line: 493, column: 15, scope: !3420)
!3423 = !DILocation(line: 493, column: 9, scope: !3420)
!3424 = !DILocation(line: 494, column: 13, scope: !3420)
!3425 = !DILocation(line: 492, column: 16, scope: !3409)
!3426 = !DILocation(line: 496, column: 10, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3428, file: !3, line: 496, column: 10)
!3428 = distinct !DILexicalBlock(scope: !3420, file: !3, line: 495, column: 4)
!3429 = !DILocation(line: 496, column: 20, scope: !3427)
!3430 = !DILocation(line: 496, column: 24, scope: !3427)
!3431 = !DILocation(line: 496, column: 35, scope: !3427)
!3432 = !DILocation(line: 496, column: 10, scope: !3428)
!3433 = !DILocation(line: 497, column: 8, scope: !3427)
!3434 = !DILocation(line: 503, column: 3, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3372, file: !3, line: 503, column: 3)
!3436 = !DILocation(line: 0, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3435, file: !3, line: 503, column: 3)
!3438 = !DILocation(line: 503, column: 3, scope: !3437)
!3439 = !DILocation(line: 504, column: 9, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3437, file: !3, line: 504, column: 9)
!3441 = !DILocation(line: 504, column: 12, scope: !3440)
!3442 = !DILocation(line: 504, column: 18, scope: !3440)
!3443 = !DILocation(line: 504, column: 9, scope: !3437)
!3444 = !DILocation(line: 507, column: 6, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3446, file: !3, line: 507, column: 6)
!3446 = distinct !DILexicalBlock(scope: !3440, file: !3, line: 506, column: 7)
!3447 = !DILocation(line: 507, column: 16, scope: !3445)
!3448 = !DILocation(line: 507, column: 20, scope: !3445)
!3449 = !DILocation(line: 507, column: 31, scope: !3445)
!3450 = !DILocation(line: 507, column: 6, scope: !3446)
!3451 = !DILocation(line: 508, column: 4, scope: !3445)
!3452 = distinct !{!3452, !3434, !3453}
!3453 = !DILocation(line: 510, column: 7, scope: !3435)
!3454 = !DILocation(line: 513, column: 1, scope: !3372)
!3455 = distinct !DISubprogram(name: "if_convertible_stmt_p", scope: !3, file: !3, line: 428, type: !3456, scopeLine: 429, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3458)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!640, !664, !1165, !707}
!3458 = !{!3459, !3460, !3461}
!3459 = !DILocalVariable(name: "loop", arg: 1, scope: !3455, file: !3, line: 428, type: !664)
!3460 = !DILocalVariable(name: "bb", arg: 2, scope: !3455, file: !3, line: 428, type: !1165)
!3461 = !DILocalVariable(name: "stmt", arg: 3, scope: !3455, file: !3, line: 428, type: !707)
!3462 = !DILocation(line: 0, scope: !3455)
!3463 = !DILocation(line: 430, column: 11, scope: !3455)
!3464 = !DILocation(line: 430, column: 3, scope: !3455)
!3465 = !DILocation(line: 439, column: 12, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3467, file: !3, line: 439, column: 11)
!3467 = distinct !DILexicalBlock(scope: !3455, file: !3, line: 431, column: 5)
!3468 = !DILocation(line: 439, column: 11, scope: !3467)
!3469 = !DILocation(line: 448, column: 11, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3467, file: !3, line: 448, column: 11)
!3471 = !DILocation(line: 448, column: 21, scope: !3470)
!3472 = !DILocation(line: 448, column: 25, scope: !3470)
!3473 = !DILocation(line: 448, column: 36, scope: !3470)
!3474 = !DILocation(line: 448, column: 11, scope: !3467)
!3475 = !DILocation(line: 450, column: 4, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3470, file: !3, line: 449, column: 2)
!3477 = !DILocation(line: 451, column: 23, scope: !3476)
!3478 = !DILocation(line: 451, column: 4, scope: !3476)
!3479 = !DILocation(line: 452, column: 2, scope: !3476)
!3480 = !DILocation(line: 457, column: 3, scope: !3455)
!3481 = !DILocation(line: 458, column: 1, scope: !3455)
!3482 = distinct !DISubprogram(name: "if_convertible_phi_p", scope: !3, file: !3, line: 321, type: !3456, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3483)
!3483 = !{!3484, !3485, !3486, !3487, !3497}
!3484 = !DILocalVariable(name: "loop", arg: 1, scope: !3482, file: !3, line: 321, type: !664)
!3485 = !DILocalVariable(name: "bb", arg: 2, scope: !3482, file: !3, line: 321, type: !1165)
!3486 = !DILocalVariable(name: "phi", arg: 3, scope: !3482, file: !3, line: 321, type: !707)
!3487 = !DILocalVariable(name: "imm_iter", scope: !3488, file: !3, line: 338, type: !3490)
!3488 = distinct !DILexicalBlock(scope: !3489, file: !3, line: 337, column: 5)
!3489 = distinct !DILexicalBlock(scope: !3482, file: !3, line: 336, column: 7)
!3490 = !DIDerivedType(tag: DW_TAG_typedef, name: "imm_use_iterator", file: !1105, line: 249, baseType: !3491)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "immediate_use_iterator_d", file: !1105, line: 238, size: 448, elements: !3492)
!3492 = !{!3493, !3494, !3495, !3496}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !3491, file: !1105, line: 241, baseType: !2018, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "end_p", scope: !3491, file: !1105, line: 243, baseType: !2018, size: 64, offset: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "iter_node", scope: !3491, file: !1105, line: 245, baseType: !2019, size: 256, offset: 128)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "next_imm_name", scope: !3491, file: !1105, line: 248, baseType: !2018, size: 64, offset: 384)
!3497 = !DILocalVariable(name: "use_p", scope: !3488, file: !3, line: 339, type: !2017)
!3498 = !DILocation(line: 0, scope: !3482)
!3499 = !DILocation(line: 323, column: 7, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3482, file: !3, line: 323, column: 7)
!3501 = !DILocation(line: 323, column: 17, scope: !3500)
!3502 = !DILocation(line: 323, column: 21, scope: !3500)
!3503 = !DILocation(line: 323, column: 32, scope: !3500)
!3504 = !DILocation(line: 323, column: 7, scope: !3482)
!3505 = !DILocation(line: 325, column: 7, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3500, file: !3, line: 324, column: 5)
!3507 = !DILocation(line: 326, column: 26, scope: !3506)
!3508 = !DILocation(line: 326, column: 7, scope: !3506)
!3509 = !DILocation(line: 327, column: 5, scope: !3506)
!3510 = !DILocation(line: 329, column: 19, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3482, file: !3, line: 329, column: 7)
!3512 = !DILocation(line: 329, column: 10, scope: !3511)
!3513 = !DILocation(line: 329, column: 26, scope: !3511)
!3514 = !DILocation(line: 329, column: 29, scope: !3511)
!3515 = !DILocation(line: 329, column: 55, scope: !3511)
!3516 = !DILocation(line: 329, column: 7, scope: !3482)
!3517 = !DILocation(line: 331, column: 11, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3519, file: !3, line: 331, column: 11)
!3519 = distinct !DILexicalBlock(scope: !3511, file: !3, line: 330, column: 5)
!3520 = !DILocation(line: 331, column: 21, scope: !3518)
!3521 = !DILocation(line: 331, column: 25, scope: !3518)
!3522 = !DILocation(line: 331, column: 36, scope: !3518)
!3523 = !DILocation(line: 331, column: 11, scope: !3519)
!3524 = !DILocation(line: 332, column: 2, scope: !3518)
!3525 = !DILocation(line: 336, column: 23, scope: !3489)
!3526 = !DILocation(line: 336, column: 8, scope: !3489)
!3527 = !DILocation(line: 336, column: 7, scope: !3482)
!3528 = !DILocation(line: 338, column: 7, scope: !3488)
!3529 = !DILocation(line: 341, column: 23, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3488, file: !3, line: 341, column: 11)
!3531 = !DILocation(line: 341, column: 14, scope: !3530)
!3532 = !DILocation(line: 341, column: 11, scope: !3488)
!3533 = !DILocation(line: 343, column: 8, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 343, column: 8)
!3535 = distinct !DILexicalBlock(scope: !3530, file: !3, line: 342, column: 2)
!3536 = !DILocation(line: 343, column: 18, scope: !3534)
!3537 = !DILocation(line: 343, column: 22, scope: !3534)
!3538 = !DILocation(line: 343, column: 33, scope: !3534)
!3539 = !DILocation(line: 343, column: 8, scope: !3535)
!3540 = !DILocation(line: 344, column: 6, scope: !3534)
!3541 = !DILocation(line: 347, column: 7, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3488, file: !3, line: 347, column: 7)
!3543 = !DILocation(line: 0, scope: !3488)
!3544 = !DILocation(line: 0, scope: !3542)
!3545 = !DILocation(line: 347, column: 7, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3542, file: !3, line: 347, column: 7)
!3547 = !DILocation(line: 349, column: 21, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3549, file: !3, line: 349, column: 8)
!3549 = distinct !DILexicalBlock(scope: !3546, file: !3, line: 348, column: 2)
!3550 = !DILocation(line: 349, column: 8, scope: !3548)
!3551 = !DILocation(line: 349, column: 39, scope: !3548)
!3552 = !DILocation(line: 349, column: 8, scope: !3549)
!3553 = !DILocation(line: 351, column: 12, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 351, column: 12)
!3555 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 350, column: 6)
!3556 = !DILocation(line: 351, column: 22, scope: !3554)
!3557 = !DILocation(line: 351, column: 26, scope: !3554)
!3558 = !DILocation(line: 351, column: 37, scope: !3554)
!3559 = !DILocation(line: 351, column: 12, scope: !3555)
!3560 = !DILocation(line: 352, column: 3, scope: !3554)
!3561 = distinct !{!3561, !3541, !3562}
!3562 = !DILocation(line: 355, column: 2, scope: !3542)
!3563 = !DILocation(line: 356, column: 5, scope: !3489)
!3564 = !DILocation(line: 358, column: 3, scope: !3482)
!3565 = !DILocation(line: 359, column: 1, scope: !3482)
!3566 = distinct !DISubprogram(name: "bb_with_exit_edge_p", scope: !3, file: !3, line: 1128, type: !3567, scopeLine: 1129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3569)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!640, !664, !1165}
!3569 = !{!3570, !3571, !3572, !3573, !3574}
!3570 = !DILocalVariable(name: "loop", arg: 1, scope: !3566, file: !3, line: 1128, type: !664)
!3571 = !DILocalVariable(name: "bb", arg: 2, scope: !3566, file: !3, line: 1128, type: !1165)
!3572 = !DILocalVariable(name: "e", scope: !3566, file: !3, line: 1130, type: !686)
!3573 = !DILocalVariable(name: "ei", scope: !3566, file: !3, line: 1131, type: !2785)
!3574 = !DILocalVariable(name: "exit_edge_found", scope: !3566, file: !3, line: 1132, type: !640)
!3575 = !DILocation(line: 0, scope: !3566)
!3576 = !DILocation(line: 1130, column: 3, scope: !3566)
!3577 = !DILocation(line: 1131, column: 3, scope: !3566)
!3578 = !DILocation(line: 1134, column: 3, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3566, file: !3, line: 1134, column: 3)
!3580 = !DILocation(line: 0, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3579, file: !3, line: 1134, column: 3)
!3582 = !DILocation(line: 1134, column: 3, scope: !3581)
!3583 = !DILocation(line: 1135, column: 33, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3581, file: !3, line: 1135, column: 9)
!3585 = !DILocation(line: 1135, column: 9, scope: !3584)
!3586 = !DILocation(line: 1135, column: 9, scope: !3581)
!3587 = distinct !{!3587, !3578, !3588}
!3588 = !DILocation(line: 1139, column: 7, scope: !3579)
!3589 = !DILocation(line: 1142, column: 1, scope: !3566)
!3590 = !DILocation(line: 1141, column: 3, scope: !3566)
!3591 = distinct !DISubprogram(name: "ei_end_p", scope: !318, file: !318, line: 721, type: !3592, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3594)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!640, !2785}
!3594 = !{!3595}
!3595 = !DILocalVariable(name: "i", arg: 1, scope: !3591, file: !318, line: 721, type: !2785)
!3596 = !DILocation(line: 723, column: 22, scope: !3591)
!3597 = !DILocation(line: 723, column: 19, scope: !3591)
!3598 = !DILocation(line: 723, column: 10, scope: !3591)
!3599 = !DILocation(line: 723, column: 3, scope: !3591)
!3600 = distinct !DISubprogram(name: "ei_edge", scope: !318, file: !318, line: 752, type: !3601, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3603)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!686, !2785}
!3603 = !{!3604}
!3604 = !DILocalVariable(name: "i", arg: 1, scope: !3600, file: !318, line: 752, type: !2785)
!3605 = !DILocation(line: 754, column: 10, scope: !3600)
!3606 = !DILocation(line: 754, column: 3, scope: !3600)
!3607 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !318, file: !318, line: 150, type: !3608, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3612)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!7, !3610}
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !679)
!3612 = !{!3613}
!3613 = !DILocalVariable(name: "vec_", arg: 1, scope: !3607, file: !318, line: 150, type: !3610)
!3614 = !DILocation(line: 0, scope: !3607)
!3615 = !DILocation(line: 150, column: 1, scope: !3607)
!3616 = distinct !DISubprogram(name: "ei_container", scope: !318, file: !318, line: 685, type: !3617, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3619)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!674, !2785}
!3619 = !{!3620}
!3620 = !DILocalVariable(name: "i", arg: 1, scope: !3616, file: !318, line: 685, type: !2785)
!3621 = !DILocation(line: 687, column: 3, scope: !3616)
!3622 = !DILocation(line: 688, column: 10, scope: !3616)
!3623 = !DILocation(line: 688, column: 3, scope: !3616)
!3624 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !318, file: !318, line: 150, type: !3625, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3627)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!686, !3610, !7}
!3627 = !{!3628, !3629}
!3628 = !DILocalVariable(name: "vec_", arg: 1, scope: !3624, file: !318, line: 150, type: !3610)
!3629 = !DILocalVariable(name: "ix_", arg: 2, scope: !3624, file: !318, line: 150, type: !7)
!3630 = !DILocation(line: 0, scope: !3624)
!3631 = !DILocation(line: 150, column: 1, scope: !3624)
!3632 = distinct !DISubprogram(name: "pred_blocks_visited_p", scope: !3, file: !3, line: 1056, type: !3633, scopeLine: 1057, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3636)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!640, !1165, !3635}
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!3636 = !{!3637, !3638, !3639, !3640}
!3637 = !DILocalVariable(name: "bb", arg: 1, scope: !3632, file: !3, line: 1056, type: !1165)
!3638 = !DILocalVariable(name: "visited", arg: 2, scope: !3632, file: !3, line: 1056, type: !3635)
!3639 = !DILocalVariable(name: "e", scope: !3632, file: !3, line: 1058, type: !686)
!3640 = !DILocalVariable(name: "ei", scope: !3632, file: !3, line: 1059, type: !2785)
!3641 = !DILocation(line: 0, scope: !3632)
!3642 = !DILocation(line: 1058, column: 3, scope: !3632)
!3643 = !DILocation(line: 1059, column: 3, scope: !3632)
!3644 = !DILocation(line: 1060, column: 3, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3632, file: !3, line: 1060, column: 3)
!3646 = !DILocation(line: 0, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3645, file: !3, line: 1060, column: 3)
!3648 = !DILocation(line: 1060, column: 3, scope: !3647)
!3649 = !DILocation(line: 1061, column: 24, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3647, file: !3, line: 1061, column: 9)
!3651 = !DILocation(line: 1061, column: 34, scope: !3650)
!3652 = !DILocation(line: 1061, column: 37, scope: !3650)
!3653 = !DILocation(line: 1061, column: 42, scope: !3650)
!3654 = !DILocation(line: 1061, column: 10, scope: !3650)
!3655 = !DILocation(line: 1061, column: 9, scope: !3647)
!3656 = distinct !{!3656, !3644, !3657}
!3657 = !DILocation(line: 1062, column: 14, scope: !3645)
!3658 = !DILocation(line: 1065, column: 1, scope: !3632)
!3659 = distinct !DISubprogram(name: "gimple_code", scope: !574, file: !574, line: 1052, type: !3660, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3663)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!573, !3662}
!3662 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !687, line: 60, baseType: !2015)
!3663 = !{!3664}
!3664 = !DILocalVariable(name: "g", arg: 1, scope: !3659, file: !574, line: 1052, type: !3662)
!3665 = !DILocation(line: 0, scope: !3659)
!3666 = !DILocation(line: 1054, column: 20, scope: !3659)
!3667 = !DILocation(line: 1054, column: 3, scope: !3659)
!3668 = distinct !DISubprogram(name: "if_convertible_gimple_assign_stmt_p", scope: !3, file: !3, line: 369, type: !3456, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3669)
!3669 = !{!3670, !3671, !3672, !3673}
!3670 = !DILocalVariable(name: "loop", arg: 1, scope: !3668, file: !3, line: 369, type: !664)
!3671 = !DILocalVariable(name: "bb", arg: 2, scope: !3668, file: !3, line: 369, type: !1165)
!3672 = !DILocalVariable(name: "stmt", arg: 3, scope: !3668, file: !3, line: 370, type: !707)
!3673 = !DILocalVariable(name: "lhs", scope: !3668, file: !3, line: 372, type: !732)
!3674 = !DILocation(line: 0, scope: !3668)
!3675 = !DILocation(line: 374, column: 8, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3668, file: !3, line: 374, column: 7)
!3677 = !DILocation(line: 374, column: 7, scope: !3668)
!3678 = !DILocation(line: 377, column: 7, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3668, file: !3, line: 377, column: 7)
!3680 = !DILocation(line: 377, column: 17, scope: !3679)
!3681 = !DILocation(line: 377, column: 21, scope: !3679)
!3682 = !DILocation(line: 377, column: 32, scope: !3679)
!3683 = !DILocation(line: 377, column: 7, scope: !3668)
!3684 = !DILocation(line: 379, column: 7, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3679, file: !3, line: 378, column: 5)
!3686 = !DILocation(line: 380, column: 26, scope: !3685)
!3687 = !DILocation(line: 380, column: 7, scope: !3685)
!3688 = !DILocation(line: 381, column: 5, scope: !3685)
!3689 = !DILocation(line: 383, column: 9, scope: !3668)
!3690 = !DILocation(line: 386, column: 7, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3668, file: !3, line: 386, column: 7)
!3692 = !DILocation(line: 387, column: 7, scope: !3691)
!3693 = !DILocation(line: 387, column: 10, scope: !3691)
!3694 = !DILocation(line: 388, column: 7, scope: !3691)
!3695 = !DILocation(line: 388, column: 11, scope: !3691)
!3696 = !DILocation(line: 388, column: 27, scope: !3691)
!3697 = !DILocation(line: 389, column: 11, scope: !3691)
!3698 = !DILocation(line: 389, column: 14, scope: !3691)
!3699 = !DILocation(line: 390, column: 7, scope: !3691)
!3700 = !DILocation(line: 390, column: 10, scope: !3691)
!3701 = !DILocation(line: 386, column: 7, scope: !3668)
!3702 = !DILocation(line: 392, column: 11, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3704, file: !3, line: 392, column: 11)
!3704 = distinct !DILexicalBlock(scope: !3691, file: !3, line: 391, column: 5)
!3705 = !DILocation(line: 392, column: 21, scope: !3703)
!3706 = !DILocation(line: 392, column: 25, scope: !3703)
!3707 = !DILocation(line: 392, column: 36, scope: !3703)
!3708 = !DILocation(line: 392, column: 11, scope: !3704)
!3709 = !DILocation(line: 393, column: 9, scope: !3703)
!3710 = !DILocation(line: 398, column: 19, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3668, file: !3, line: 398, column: 7)
!3712 = !DILocation(line: 398, column: 10, scope: !3711)
!3713 = !DILocation(line: 399, column: 7, scope: !3711)
!3714 = !DILocation(line: 399, column: 10, scope: !3711)
!3715 = !DILocation(line: 398, column: 7, scope: !3668)
!3716 = !DILocation(line: 401, column: 11, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3718, file: !3, line: 401, column: 11)
!3718 = distinct !DILexicalBlock(scope: !3711, file: !3, line: 400, column: 5)
!3719 = !DILocation(line: 401, column: 21, scope: !3717)
!3720 = !DILocation(line: 401, column: 25, scope: !3717)
!3721 = !DILocation(line: 401, column: 36, scope: !3717)
!3722 = !DILocation(line: 401, column: 11, scope: !3718)
!3723 = !DILocation(line: 402, column: 2, scope: !3717)
!3724 = !DILocation(line: 406, column: 7, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3668, file: !3, line: 406, column: 7)
!3726 = !DILocation(line: 406, column: 23, scope: !3725)
!3727 = !DILocation(line: 407, column: 7, scope: !3725)
!3728 = !DILocation(line: 407, column: 22, scope: !3725)
!3729 = !DILocation(line: 407, column: 13, scope: !3725)
!3730 = !DILocation(line: 408, column: 7, scope: !3725)
!3731 = !DILocation(line: 408, column: 11, scope: !3725)
!3732 = !DILocation(line: 406, column: 7, scope: !3668)
!3733 = !DILocation(line: 410, column: 11, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3735, file: !3, line: 410, column: 11)
!3735 = distinct !DILexicalBlock(scope: !3725, file: !3, line: 409, column: 5)
!3736 = !DILocation(line: 410, column: 21, scope: !3734)
!3737 = !DILocation(line: 410, column: 25, scope: !3734)
!3738 = !DILocation(line: 410, column: 36, scope: !3734)
!3739 = !DILocation(line: 410, column: 11, scope: !3735)
!3740 = !DILocation(line: 412, column: 4, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3734, file: !3, line: 411, column: 2)
!3742 = !DILocation(line: 413, column: 23, scope: !3741)
!3743 = !DILocation(line: 413, column: 4, scope: !3741)
!3744 = !DILocation(line: 414, column: 2, scope: !3741)
!3745 = !DILocation(line: 419, column: 1, scope: !3668)
!3746 = distinct !DISubprogram(name: "is_gimple_assign", scope: !574, file: !574, line: 1677, type: !3747, scopeLine: 1678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3749)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!640, !3662}
!3749 = !{!3750}
!3750 = !DILocalVariable(name: "gs", arg: 1, scope: !3746, file: !574, line: 1677, type: !3662)
!3751 = !DILocation(line: 0, scope: !3746)
!3752 = !DILocation(line: 1679, column: 10, scope: !3746)
!3753 = !DILocation(line: 1679, column: 27, scope: !3746)
!3754 = !DILocation(line: 1679, column: 3, scope: !3746)
!3755 = distinct !DISubprogram(name: "gimple_assign_lhs", scope: !574, file: !574, line: 1694, type: !3756, scopeLine: 1695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3758)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!732, !3662}
!3758 = !{!3759}
!3759 = !DILocalVariable(name: "gs", arg: 1, scope: !3755, file: !574, line: 1694, type: !3662)
!3760 = !DILocation(line: 0, scope: !3755)
!3761 = !DILocation(line: 1697, column: 10, scope: !3755)
!3762 = !DILocation(line: 1697, column: 3, scope: !3755)
!3763 = distinct !DISubprogram(name: "gimple_has_volatile_ops", scope: !574, file: !574, line: 1477, type: !3747, scopeLine: 1478, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3764)
!3764 = !{!3765}
!3765 = !DILocalVariable(name: "stmt", arg: 1, scope: !3763, file: !574, line: 1477, type: !3662)
!3766 = !DILocation(line: 0, scope: !3763)
!3767 = !DILocation(line: 1479, column: 7, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3763, file: !574, line: 1479, column: 7)
!3769 = !DILocation(line: 1479, column: 7, scope: !3763)
!3770 = !DILocation(line: 1480, column: 25, scope: !3768)
!3771 = !DILocation(line: 1480, column: 12, scope: !3768)
!3772 = !DILocation(line: 1480, column: 5, scope: !3768)
!3773 = !DILocation(line: 0, scope: !3768)
!3774 = !DILocation(line: 1483, column: 1, scope: !3763)
!3775 = distinct !DISubprogram(name: "gimple_op", scope: !574, file: !574, line: 1631, type: !3776, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3778)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!732, !3662, !7}
!3778 = !{!3779, !3780}
!3779 = !DILocalVariable(name: "gs", arg: 1, scope: !3775, file: !574, line: 1631, type: !3662)
!3780 = !DILocalVariable(name: "i", arg: 2, scope: !3775, file: !574, line: 1631, type: !7)
!3781 = !DILocation(line: 0, scope: !3775)
!3782 = !DILocation(line: 1633, column: 7, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3775, file: !574, line: 1633, column: 7)
!3784 = !DILocation(line: 1633, column: 7, scope: !3775)
!3785 = !DILocation(line: 1638, column: 14, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3783, file: !574, line: 1634, column: 5)
!3787 = !DILocation(line: 1638, column: 7, scope: !3786)
!3788 = !DILocation(line: 0, scope: !3783)
!3789 = !DILocation(line: 1642, column: 1, scope: !3775)
!3790 = distinct !DISubprogram(name: "gimple_has_ops", scope: !574, file: !574, line: 1274, type: !3747, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3791)
!3791 = !{!3792}
!3792 = !DILocalVariable(name: "g", arg: 1, scope: !3790, file: !574, line: 1274, type: !3662)
!3793 = !DILocation(line: 0, scope: !3790)
!3794 = !DILocation(line: 1276, column: 10, scope: !3790)
!3795 = !DILocation(line: 1276, column: 26, scope: !3790)
!3796 = !DILocation(line: 1276, column: 41, scope: !3790)
!3797 = !DILocation(line: 1276, column: 44, scope: !3790)
!3798 = !DILocation(line: 1276, column: 60, scope: !3790)
!3799 = !DILocation(line: 1276, column: 3, scope: !3790)
!3800 = distinct !DISubprogram(name: "gimple_ops", scope: !574, file: !574, line: 1614, type: !3801, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3803)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!1315, !707}
!3803 = !{!3804, !3805}
!3804 = !DILocalVariable(name: "gs", arg: 1, scope: !3800, file: !574, line: 1614, type: !707)
!3805 = !DILocalVariable(name: "off", scope: !3800, file: !574, line: 1616, type: !1223)
!3806 = !DILocation(line: 0, scope: !3800)
!3807 = !DILocation(line: 1621, column: 28, scope: !3800)
!3808 = !DILocation(line: 1621, column: 9, scope: !3800)
!3809 = !DILocation(line: 1622, column: 3, scope: !3800)
!3810 = !DILocation(line: 1624, column: 20, scope: !3800)
!3811 = !DILocation(line: 1624, column: 32, scope: !3800)
!3812 = !DILocation(line: 1624, column: 10, scope: !3800)
!3813 = !DILocation(line: 1624, column: 3, scope: !3800)
!3814 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !574, file: !574, line: 1073, type: !3815, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3817)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!612, !707}
!3817 = !{!3818}
!3818 = !DILocalVariable(name: "gs", arg: 1, scope: !3814, file: !574, line: 1073, type: !707)
!3819 = !DILocation(line: 0, scope: !3814)
!3820 = !DILocation(line: 1075, column: 24, scope: !3814)
!3821 = !DILocation(line: 1075, column: 10, scope: !3814)
!3822 = !DILocation(line: 1075, column: 3, scope: !3814)
!3823 = distinct !DISubprogram(name: "gss_for_code", scope: !574, file: !574, line: 1061, type: !3824, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3826)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!612, !573}
!3826 = !{!3827}
!3827 = !DILocalVariable(name: "code", arg: 1, scope: !3823, file: !574, line: 1061, type: !573)
!3828 = !DILocation(line: 0, scope: !3823)
!3829 = !DILocation(line: 1066, column: 10, scope: !3823)
!3830 = !DILocation(line: 1066, column: 3, scope: !3823)
!3831 = distinct !DISubprogram(name: "gimple_has_mem_ops", scope: !574, file: !574, line: 1283, type: !3747, scopeLine: 1284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3832)
!3832 = !{!3833}
!3833 = !DILocalVariable(name: "g", arg: 1, scope: !3831, file: !574, line: 1283, type: !3662)
!3834 = !DILocation(line: 0, scope: !3831)
!3835 = !DILocation(line: 1285, column: 10, scope: !3831)
!3836 = !DILocation(line: 1285, column: 26, scope: !3831)
!3837 = !DILocation(line: 1285, column: 43, scope: !3831)
!3838 = !DILocation(line: 1285, column: 46, scope: !3831)
!3839 = !DILocation(line: 1285, column: 62, scope: !3831)
!3840 = !DILocation(line: 1285, column: 3, scope: !3831)
!3841 = distinct !DISubprogram(name: "gimple_phi_num_args", scope: !574, file: !574, line: 3061, type: !3842, scopeLine: 3062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3844)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!7, !3662}
!3844 = !{!3845}
!3845 = !DILocalVariable(name: "gs", arg: 1, scope: !3841, file: !574, line: 3061, type: !3662)
!3846 = !DILocation(line: 0, scope: !3841)
!3847 = !DILocation(line: 3064, column: 25, scope: !3841)
!3848 = !DILocation(line: 3064, column: 3, scope: !3841)
!3849 = distinct !DISubprogram(name: "gimple_phi_result", scope: !574, file: !574, line: 3071, type: !3756, scopeLine: 3072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3850)
!3850 = !{!3851}
!3851 = !DILocalVariable(name: "gs", arg: 1, scope: !3849, file: !574, line: 3071, type: !3662)
!3852 = !DILocation(line: 0, scope: !3849)
!3853 = !DILocation(line: 3074, column: 25, scope: !3849)
!3854 = !DILocation(line: 3074, column: 3, scope: !3849)
!3855 = distinct !DISubprogram(name: "first_readonly_imm_use", scope: !3856, file: !3856, line: 292, type: !3857, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3860)
!3856 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!2017, !3859, !732}
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3860 = !{!3861, !3862}
!3861 = !DILocalVariable(name: "imm", arg: 1, scope: !3855, file: !3856, line: 292, type: !3859)
!3862 = !DILocalVariable(name: "var", arg: 2, scope: !3855, file: !3856, line: 292, type: !732)
!3863 = !DILocation(line: 0, scope: !3855)
!3864 = !DILocation(line: 294, column: 18, scope: !3855)
!3865 = !DILocation(line: 294, column: 8, scope: !3855)
!3866 = !DILocation(line: 294, column: 14, scope: !3855)
!3867 = !DILocation(line: 295, column: 30, scope: !3855)
!3868 = !DILocation(line: 295, column: 16, scope: !3855)
!3869 = !DILocation(line: 299, column: 7, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3855, file: !3856, line: 299, column: 7)
!3871 = !DILocation(line: 299, column: 7, scope: !3855)
!3872 = !DILocation(line: 301, column: 15, scope: !3855)
!3873 = !DILocation(line: 301, column: 3, scope: !3855)
!3874 = !DILocation(line: 302, column: 1, scope: !3855)
!3875 = distinct !DISubprogram(name: "end_readonly_imm_use_p", scope: !3856, file: !3856, line: 285, type: !3876, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3880)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!640, !3878}
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3490)
!3880 = !{!3881}
!3881 = !DILocalVariable(name: "imm", arg: 1, scope: !3875, file: !3856, line: 285, type: !3878)
!3882 = !DILocation(line: 0, scope: !3875)
!3883 = !DILocation(line: 287, column: 16, scope: !3875)
!3884 = !DILocation(line: 287, column: 32, scope: !3875)
!3885 = !DILocation(line: 287, column: 24, scope: !3875)
!3886 = !DILocation(line: 287, column: 10, scope: !3875)
!3887 = !DILocation(line: 287, column: 3, scope: !3875)
!3888 = distinct !DISubprogram(name: "next_readonly_imm_use", scope: !3856, file: !3856, line: 306, type: !3889, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3891)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!2017, !3859}
!3891 = !{!3892, !3893}
!3892 = !DILocalVariable(name: "imm", arg: 1, scope: !3888, file: !3856, line: 306, type: !3859)
!3893 = !DILocalVariable(name: "old", scope: !3888, file: !3856, line: 308, type: !2017)
!3894 = !DILocation(line: 0, scope: !3888)
!3895 = !DILocation(line: 308, column: 28, scope: !3888)
!3896 = !DILocation(line: 319, column: 23, scope: !3888)
!3897 = !DILocation(line: 319, column: 16, scope: !3888)
!3898 = !DILocation(line: 320, column: 7, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3888, file: !3856, line: 320, column: 7)
!3900 = !DILocation(line: 320, column: 7, scope: !3888)
!3901 = !DILocation(line: 322, column: 15, scope: !3888)
!3902 = !DILocation(line: 322, column: 3, scope: !3888)
!3903 = !DILocation(line: 323, column: 1, scope: !3888)
!3904 = distinct !DISubprogram(name: "bb_seq", scope: !574, file: !574, line: 237, type: !3905, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3907)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!697, !3023}
!3907 = !{!3908}
!3908 = !DILocalVariable(name: "bb", arg: 1, scope: !3904, file: !574, line: 237, type: !3023)
!3909 = !DILocation(line: 0, scope: !3904)
!3910 = !DILocation(line: 239, column: 17, scope: !3904)
!3911 = !DILocation(line: 239, column: 23, scope: !3904)
!3912 = !DILocation(line: 239, column: 33, scope: !3904)
!3913 = !DILocation(line: 239, column: 43, scope: !3904)
!3914 = !DILocation(line: 239, column: 36, scope: !3904)
!3915 = !DILocation(line: 239, column: 10, scope: !3904)
!3916 = !DILocation(line: 239, column: 68, scope: !3904)
!3917 = !DILocation(line: 239, column: 3, scope: !3904)
!3918 = distinct !DISubprogram(name: "gimple_seq_first", scope: !574, file: !574, line: 159, type: !3919, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3924)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!702, !3921}
!3921 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !687, line: 67, baseType: !3922)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !699)
!3924 = !{!3925}
!3925 = !DILocalVariable(name: "s", arg: 1, scope: !3918, file: !574, line: 159, type: !3921)
!3926 = !DILocation(line: 0, scope: !3918)
!3927 = !DILocation(line: 161, column: 10, scope: !3918)
!3928 = !DILocation(line: 161, column: 17, scope: !3918)
!3929 = !DILocation(line: 161, column: 3, scope: !3918)
!3930 = distinct !DISubprogram(name: "gimple_debug_bind_p", scope: !574, file: !574, line: 3257, type: !3747, scopeLine: 3258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3931)
!3931 = !{!3932}
!3932 = !DILocalVariable(name: "s", arg: 1, scope: !3930, file: !574, line: 3257, type: !3662)
!3933 = !DILocation(line: 0, scope: !3930)
!3934 = !DILocation(line: 3259, column: 7, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3930, file: !574, line: 3259, column: 7)
!3936 = !DILocation(line: 3259, column: 7, scope: !3930)
!3937 = !DILocation(line: 3260, column: 22, scope: !3935)
!3938 = !DILocation(line: 3260, column: 30, scope: !3935)
!3939 = !DILocation(line: 3260, column: 12, scope: !3935)
!3940 = !DILocation(line: 3260, column: 5, scope: !3935)
!3941 = !DILocation(line: 3263, column: 1, scope: !3930)
!3942 = distinct !DISubprogram(name: "gimple_debug_bind_reset_value", scope: !574, file: !574, line: 3336, type: !3943, scopeLine: 3337, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3945)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{null, !707}
!3945 = !{!3946}
!3946 = !DILocalVariable(name: "dbg", arg: 1, scope: !3942, file: !574, line: 3336, type: !707)
!3947 = !DILocation(line: 0, scope: !3942)
!3948 = !DILocation(line: 3342, column: 3, scope: !3942)
!3949 = !DILocation(line: 3343, column: 1, scope: !3942)
!3950 = distinct !DISubprogram(name: "update_stmt", scope: !574, file: !574, line: 1456, type: !3943, scopeLine: 1457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3951)
!3951 = !{!3952}
!3952 = !DILocalVariable(name: "s", arg: 1, scope: !3950, file: !574, line: 1456, type: !707)
!3953 = !DILocation(line: 0, scope: !3950)
!3954 = !DILocation(line: 1458, column: 7, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3950, file: !574, line: 1458, column: 7)
!3956 = !DILocation(line: 1458, column: 7, scope: !3950)
!3957 = !DILocation(line: 1460, column: 7, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3955, file: !574, line: 1459, column: 5)
!3959 = !DILocation(line: 1461, column: 7, scope: !3958)
!3960 = !DILocation(line: 1462, column: 5, scope: !3958)
!3961 = !DILocation(line: 1463, column: 1, scope: !3950)
!3962 = distinct !DISubprogram(name: "tree_if_convert_cond_stmt", scope: !3, file: !3, line: 278, type: !3963, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3965)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{null, !664, !707, !732, !2972}
!3965 = !{!3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974}
!3966 = !DILocalVariable(name: "loop", arg: 1, scope: !3962, file: !3, line: 278, type: !664)
!3967 = !DILocalVariable(name: "stmt", arg: 2, scope: !3962, file: !3, line: 278, type: !707)
!3968 = !DILocalVariable(name: "cond", arg: 3, scope: !3962, file: !3, line: 278, type: !732)
!3969 = !DILocalVariable(name: "gsi", arg: 4, scope: !3962, file: !3, line: 279, type: !2972)
!3970 = !DILocalVariable(name: "c", scope: !3962, file: !3, line: 281, type: !732)
!3971 = !DILocalVariable(name: "c2", scope: !3962, file: !3, line: 281, type: !732)
!3972 = !DILocalVariable(name: "true_edge", scope: !3962, file: !3, line: 282, type: !686)
!3973 = !DILocalVariable(name: "false_edge", scope: !3962, file: !3, line: 282, type: !686)
!3974 = !DILocalVariable(name: "loc", scope: !3962, file: !3, line: 283, type: !725)
!3975 = !DILocation(line: 0, scope: !3962)
!3976 = !DILocation(line: 282, column: 3, scope: !3962)
!3977 = !DILocation(line: 283, column: 20, scope: !3962)
!3978 = !DILocation(line: 285, column: 3, scope: !3962)
!3979 = !DILocation(line: 287, column: 7, scope: !3962)
!3980 = !DILocation(line: 290, column: 40, scope: !3962)
!3981 = !DILocation(line: 290, column: 3, scope: !3962)
!3982 = !DILocation(line: 296, column: 36, scope: !3962)
!3983 = !DILocation(line: 296, column: 3, scope: !3962)
!3984 = !DILocation(line: 299, column: 36, scope: !3962)
!3985 = !DILocation(line: 299, column: 8, scope: !3962)
!3986 = !DILocation(line: 300, column: 36, scope: !3962)
!3987 = !DILocation(line: 300, column: 3, scope: !3962)
!3988 = !DILocation(line: 305, column: 35, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3962, file: !3, line: 305, column: 7)
!3990 = !DILocation(line: 305, column: 8, scope: !3989)
!3991 = !DILocation(line: 305, column: 7, scope: !3962)
!3992 = !DILocation(line: 307, column: 7, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3989, file: !3, line: 306, column: 5)
!3994 = !DILocation(line: 309, column: 5, scope: !3993)
!3995 = !DILocation(line: 311, column: 1, scope: !3962)
!3996 = distinct !DISubprogram(name: "is_gimple_debug", scope: !574, file: !574, line: 3249, type: !3747, scopeLine: 3250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3997)
!3997 = !{!3998}
!3998 = !DILocalVariable(name: "gs", arg: 1, scope: !3996, file: !574, line: 3249, type: !3662)
!3999 = !DILocation(line: 0, scope: !3996)
!4000 = !DILocation(line: 3251, column: 10, scope: !3996)
!4001 = !DILocation(line: 3251, column: 27, scope: !3996)
!4002 = !DILocation(line: 3251, column: 3, scope: !3996)
!4003 = distinct !DISubprogram(name: "gimple_set_op", scope: !574, file: !574, line: 1663, type: !4004, scopeLine: 1664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4006)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{null, !707, !7, !732}
!4006 = !{!4007, !4008, !4009}
!4007 = !DILocalVariable(name: "gs", arg: 1, scope: !4003, file: !574, line: 1663, type: !707)
!4008 = !DILocalVariable(name: "i", arg: 2, scope: !4003, file: !574, line: 1663, type: !7)
!4009 = !DILocalVariable(name: "op", arg: 3, scope: !4003, file: !574, line: 1663, type: !732)
!4010 = !DILocation(line: 0, scope: !4003)
!4011 = !DILocation(line: 1665, column: 3, scope: !4003)
!4012 = !DILocation(line: 1671, column: 3, scope: !4003)
!4013 = !DILocation(line: 1671, column: 22, scope: !4003)
!4014 = !DILocation(line: 1672, column: 1, scope: !4003)
!4015 = distinct !DISubprogram(name: "gimple_num_ops", scope: !574, file: !574, line: 1596, type: !3842, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4016)
!4016 = !{!4017}
!4017 = !DILocalVariable(name: "gs", arg: 1, scope: !4015, file: !574, line: 1596, type: !3662)
!4018 = !DILocation(line: 0, scope: !4015)
!4019 = !DILocation(line: 1598, column: 21, scope: !4015)
!4020 = !DILocation(line: 1598, column: 3, scope: !4015)
!4021 = distinct !DISubprogram(name: "gimple_location", scope: !574, file: !574, line: 1139, type: !4022, scopeLine: 1140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4024)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!725, !3662}
!4024 = !{!4025}
!4025 = !DILocalVariable(name: "g", arg: 1, scope: !4021, file: !574, line: 1139, type: !3662)
!4026 = !DILocation(line: 0, scope: !4021)
!4027 = !DILocation(line: 1141, column: 20, scope: !4021)
!4028 = !DILocation(line: 1141, column: 3, scope: !4021)
!4029 = distinct !DISubprogram(name: "gimple_cond_code", scope: !574, file: !574, line: 2221, type: !4030, scopeLine: 2222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4032)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!366, !3662}
!4032 = !{!4033}
!4033 = !DILocalVariable(name: "gs", arg: 1, scope: !4029, file: !574, line: 2221, type: !3662)
!4034 = !DILocation(line: 0, scope: !4029)
!4035 = !DILocation(line: 2224, column: 38, scope: !4029)
!4036 = !DILocation(line: 2224, column: 3, scope: !4029)
!4037 = distinct !DISubprogram(name: "gimple_cond_lhs", scope: !574, file: !574, line: 2241, type: !3756, scopeLine: 2242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4038)
!4038 = !{!4039}
!4039 = !DILocalVariable(name: "gs", arg: 1, scope: !4037, file: !574, line: 2241, type: !3662)
!4040 = !DILocation(line: 0, scope: !4037)
!4041 = !DILocation(line: 2244, column: 10, scope: !4037)
!4042 = !DILocation(line: 2244, column: 3, scope: !4037)
!4043 = distinct !DISubprogram(name: "gimple_cond_rhs", scope: !574, file: !574, line: 2271, type: !3756, scopeLine: 2272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4044)
!4044 = !{!4045}
!4045 = !DILocalVariable(name: "gs", arg: 1, scope: !4043, file: !574, line: 2271, type: !3662)
!4046 = !DILocation(line: 0, scope: !4043)
!4047 = !DILocation(line: 2274, column: 10, scope: !4043)
!4048 = !DILocation(line: 2274, column: 3, scope: !4043)
!4049 = distinct !DISubprogram(name: "gimple_bb", scope: !574, file: !574, line: 1112, type: !4050, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4052)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!670, !3662}
!4052 = !{!4053}
!4053 = !DILocalVariable(name: "g", arg: 1, scope: !4049, file: !574, line: 1112, type: !3662)
!4054 = !DILocation(line: 0, scope: !4049)
!4055 = !DILocation(line: 1114, column: 20, scope: !4049)
!4056 = !DILocation(line: 1114, column: 3, scope: !4049)
!4057 = distinct !DISubprogram(name: "add_to_dst_predicate_list", scope: !3, file: !3, line: 643, type: !4058, scopeLine: 646, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4060)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!732, !664, !686, !732, !732, !2972}
!4060 = !{!4061, !4062, !4063, !4064, !4065, !4066, !4067, !4070}
!4061 = !DILocalVariable(name: "loop", arg: 1, scope: !4057, file: !3, line: 643, type: !664)
!4062 = !DILocalVariable(name: "e", arg: 2, scope: !4057, file: !3, line: 643, type: !686)
!4063 = !DILocalVariable(name: "prev_cond", arg: 3, scope: !4057, file: !3, line: 644, type: !732)
!4064 = !DILocalVariable(name: "cond", arg: 4, scope: !4057, file: !3, line: 644, type: !732)
!4065 = !DILocalVariable(name: "gsi", arg: 5, scope: !4057, file: !3, line: 645, type: !2972)
!4066 = !DILocalVariable(name: "new_cond", scope: !4057, file: !3, line: 647, type: !732)
!4067 = !DILocalVariable(name: "tmp", scope: !4068, file: !3, line: 656, type: !732)
!4068 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 655, column: 5)
!4069 = distinct !DILexicalBlock(scope: !4057, file: !3, line: 652, column: 7)
!4070 = !DILocalVariable(name: "tmp_stmt", scope: !4068, file: !3, line: 657, type: !707)
!4071 = !DILocation(line: 0, scope: !4057)
!4072 = !DILocation(line: 649, column: 40, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4057, file: !3, line: 649, column: 7)
!4074 = !DILocation(line: 649, column: 8, scope: !4073)
!4075 = !DILocation(line: 649, column: 7, scope: !4057)
!4076 = !DILocation(line: 652, column: 20, scope: !4069)
!4077 = !DILocation(line: 652, column: 17, scope: !4069)
!4078 = !DILocation(line: 652, column: 42, scope: !4069)
!4079 = !DILocation(line: 652, column: 38, scope: !4069)
!4080 = !DILocation(line: 653, column: 16, scope: !4069)
!4081 = !DILocation(line: 653, column: 5, scope: !4069)
!4082 = !DILocation(line: 0, scope: !4068)
!4083 = !DILocation(line: 659, column: 50, scope: !4068)
!4084 = !DILocation(line: 659, column: 19, scope: !4068)
!4085 = !DILocation(line: 662, column: 45, scope: !4068)
!4086 = !DILocation(line: 662, column: 14, scope: !4068)
!4087 = !DILocation(line: 668, column: 10, scope: !4068)
!4088 = !DILocation(line: 668, column: 14, scope: !4068)
!4089 = !DILocation(line: 671, column: 13, scope: !4068)
!4090 = !DILocation(line: 673, column: 32, scope: !4068)
!4091 = !DILocation(line: 673, column: 18, scope: !4068)
!4092 = !DILocation(line: 674, column: 7, scope: !4068)
!4093 = !DILocation(line: 675, column: 18, scope: !4068)
!4094 = !DILocation(line: 0, scope: !4069)
!4095 = !DILocation(line: 677, column: 29, scope: !4057)
!4096 = !DILocation(line: 677, column: 3, scope: !4057)
!4097 = !DILocation(line: 678, column: 3, scope: !4057)
!4098 = !DILocation(line: 679, column: 1, scope: !4057)
!4099 = distinct !DISubprogram(name: "ifc_temp_var", scope: !3, file: !3, line: 1028, type: !4100, scopeLine: 1029, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4102)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!707, !732, !732}
!4102 = !{!4103, !4104, !4105, !4106, !4107, !4108}
!4103 = !DILocalVariable(name: "type", arg: 1, scope: !4099, file: !3, line: 1028, type: !732)
!4104 = !DILocalVariable(name: "exp", arg: 2, scope: !4099, file: !3, line: 1028, type: !732)
!4105 = !DILocalVariable(name: "name", scope: !4099, file: !3, line: 1030, type: !646)
!4106 = !DILocalVariable(name: "var", scope: !4099, file: !3, line: 1031, type: !732)
!4107 = !DILocalVariable(name: "new_name", scope: !4099, file: !3, line: 1031, type: !732)
!4108 = !DILocalVariable(name: "stmt", scope: !4099, file: !3, line: 1032, type: !707)
!4109 = !DILocation(line: 0, scope: !4099)
!4110 = !DILocation(line: 1035, column: 9, scope: !4099)
!4111 = !DILocation(line: 1036, column: 3, scope: !4099)
!4112 = !DILocation(line: 1039, column: 10, scope: !4099)
!4113 = !DILocation(line: 1043, column: 14, scope: !4099)
!4114 = !DILocation(line: 1044, column: 3, scope: !4099)
!4115 = !DILocation(line: 1045, column: 3, scope: !4099)
!4116 = !DILocation(line: 1045, column: 32, scope: !4099)
!4117 = !DILocation(line: 1046, column: 3, scope: !4099)
!4118 = !DILocation(line: 1048, column: 3, scope: !4099)
!4119 = distinct !DISubprogram(name: "make_ssa_name", scope: !3856, file: !3856, line: 1245, type: !4120, scopeLine: 1246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4122)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!732, !732, !707}
!4122 = !{!4123, !4124}
!4123 = !DILocalVariable(name: "var", arg: 1, scope: !4119, file: !3856, line: 1245, type: !732)
!4124 = !DILocalVariable(name: "stmt", arg: 2, scope: !4119, file: !3856, line: 1245, type: !707)
!4125 = !DILocation(line: 0, scope: !4119)
!4126 = !DILocation(line: 1247, column: 28, scope: !4119)
!4127 = !DILocation(line: 1247, column: 10, scope: !4119)
!4128 = !DILocation(line: 1247, column: 3, scope: !4119)
!4129 = distinct !DISubprogram(name: "gimple_assign_set_lhs", scope: !574, file: !574, line: 1714, type: !4130, scopeLine: 1715, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4132)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{null, !707, !732}
!4132 = !{!4133, !4134}
!4133 = !DILocalVariable(name: "gs", arg: 1, scope: !4129, file: !574, line: 1714, type: !707)
!4134 = !DILocalVariable(name: "lhs", arg: 2, scope: !4129, file: !574, line: 1714, type: !732)
!4135 = !DILocation(line: 0, scope: !4129)
!4136 = !DILocation(line: 1717, column: 3, scope: !4129)
!4137 = !DILocation(line: 1719, column: 7, scope: !4138)
!4138 = distinct !DILexicalBlock(scope: !4129, file: !574, line: 1719, column: 7)
!4139 = !DILocation(line: 1719, column: 11, scope: !4138)
!4140 = !DILocation(line: 1719, column: 14, scope: !4138)
!4141 = !DILocation(line: 1719, column: 30, scope: !4138)
!4142 = !DILocation(line: 1719, column: 7, scope: !4129)
!4143 = !DILocation(line: 1720, column: 5, scope: !4138)
!4144 = !DILocation(line: 1720, column: 29, scope: !4138)
!4145 = !DILocation(line: 1721, column: 1, scope: !4129)
!4146 = distinct !DISubprogram(name: "single_succ_edge", scope: !318, file: !318, line: 643, type: !4147, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4149)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!686, !3023}
!4149 = !{!4150}
!4150 = !DILocalVariable(name: "bb", arg: 1, scope: !4146, file: !318, line: 643, type: !3023)
!4151 = !DILocation(line: 0, scope: !4146)
!4152 = !DILocation(line: 645, column: 3, scope: !4146)
!4153 = !DILocation(line: 646, column: 10, scope: !4146)
!4154 = !DILocation(line: 646, column: 3, scope: !4146)
!4155 = distinct !DISubprogram(name: "process_phi_nodes", scope: !3, file: !3, line: 880, type: !3059, scopeLine: 881, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4156)
!4156 = !{!4157, !4158, !4159, !4160, !4161, !4165, !4166, !4167, !4168}
!4157 = !DILocalVariable(name: "loop", arg: 1, scope: !4155, file: !3, line: 880, type: !664)
!4158 = !DILocalVariable(name: "bb", scope: !4155, file: !3, line: 882, type: !1165)
!4159 = !DILocalVariable(name: "orig_loop_num_nodes", scope: !4155, file: !3, line: 883, type: !7)
!4160 = !DILocalVariable(name: "i", scope: !4155, file: !3, line: 884, type: !7)
!4161 = !DILocalVariable(name: "phi", scope: !4162, file: !3, line: 889, type: !707)
!4162 = distinct !DILexicalBlock(scope: !4163, file: !3, line: 888, column: 5)
!4163 = distinct !DILexicalBlock(scope: !4164, file: !3, line: 887, column: 3)
!4164 = distinct !DILexicalBlock(scope: !4155, file: !3, line: 887, column: 3)
!4165 = !DILocalVariable(name: "cond", scope: !4162, file: !3, line: 890, type: !732)
!4166 = !DILocalVariable(name: "gsi", scope: !4162, file: !3, line: 891, type: !2607)
!4167 = !DILocalVariable(name: "phi_gsi", scope: !4162, file: !3, line: 891, type: !2607)
!4168 = !DILocalVariable(name: "true_bb", scope: !4162, file: !3, line: 892, type: !1165)
!4169 = !DILocation(line: 0, scope: !4155)
!4170 = !DILocation(line: 883, column: 44, scope: !4155)
!4171 = !DILocation(line: 0, scope: !4162)
!4172 = !DILocation(line: 0, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 895, column: 11)
!4174 = !DILocation(line: 887, column: 8, scope: !4164)
!4175 = !DILocation(line: 0, scope: !4164)
!4176 = !DILocation(line: 887, column: 17, scope: !4163)
!4177 = !DILocation(line: 887, column: 3, scope: !4164)
!4178 = !DILocation(line: 890, column: 7, scope: !4162)
!4179 = !DILocation(line: 890, column: 12, scope: !4162)
!4180 = !DILocation(line: 891, column: 7, scope: !4162)
!4181 = !DILocation(line: 893, column: 12, scope: !4162)
!4182 = !DILocation(line: 895, column: 23, scope: !4173)
!4183 = !DILocation(line: 895, column: 14, scope: !4173)
!4184 = !DILocation(line: 895, column: 11, scope: !4162)
!4185 = !DILocation(line: 898, column: 17, scope: !4162)
!4186 = !DILocation(line: 899, column: 13, scope: !4162)
!4187 = !DILocation(line: 903, column: 12, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 903, column: 11)
!4189 = !DILocation(line: 903, column: 11, scope: !4162)
!4190 = !DILocation(line: 904, column: 12, scope: !4188)
!4191 = !DILocation(line: 904, column: 2, scope: !4188)
!4192 = !DILocation(line: 906, column: 7, scope: !4162)
!4193 = !DILocation(line: 906, column: 15, scope: !4162)
!4194 = !DILocation(line: 906, column: 14, scope: !4162)
!4195 = !DILocation(line: 908, column: 10, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 907, column: 2)
!4197 = !DILocation(line: 909, column: 51, scope: !4196)
!4198 = !DILocation(line: 909, column: 4, scope: !4196)
!4199 = !DILocation(line: 910, column: 4, scope: !4196)
!4200 = !DILocation(line: 911, column: 4, scope: !4196)
!4201 = distinct !{!4201, !4192, !4202}
!4202 = !DILocation(line: 912, column: 2, scope: !4162)
!4203 = !DILocation(line: 913, column: 7, scope: !4162)
!4204 = !DILocation(line: 914, column: 5, scope: !4163)
!4205 = !DILocation(line: 887, column: 41, scope: !4163)
!4206 = !DILocation(line: 887, column: 3, scope: !4163)
!4207 = distinct !{!4207, !4177, !4208}
!4208 = !DILocation(line: 914, column: 5, scope: !4164)
!4209 = !DILocation(line: 916, column: 1, scope: !4155)
!4210 = distinct !DISubprogram(name: "ei_safe_edge", scope: !318, file: !318, line: 761, type: !3601, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4211)
!4211 = !{!4212}
!4212 = !DILocalVariable(name: "i", arg: 1, scope: !4210, file: !318, line: 761, type: !2785)
!4213 = !DILocation(line: 763, column: 11, scope: !4210)
!4214 = !DILocation(line: 763, column: 10, scope: !4210)
!4215 = !DILocation(line: 763, column: 26, scope: !4210)
!4216 = !DILocation(line: 763, column: 3, scope: !4210)
!4217 = distinct !DISubprogram(name: "gsi_last_bb", scope: !574, file: !574, line: 4450, type: !2933, scopeLine: 4451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4218)
!4218 = !{!4219, !4220, !4221}
!4219 = !DILocalVariable(name: "bb", arg: 1, scope: !4217, file: !574, line: 4450, type: !1165)
!4220 = !DILocalVariable(name: "i", scope: !4217, file: !574, line: 4452, type: !2607)
!4221 = !DILocalVariable(name: "seq", scope: !4217, file: !574, line: 4453, type: !697)
!4222 = !DILocation(line: 0, scope: !4217)
!4223 = !DILocation(line: 4452, column: 24, scope: !4217)
!4224 = !DILocation(line: 4455, column: 9, scope: !4217)
!4225 = !DILocation(line: 4456, column: 11, scope: !4217)
!4226 = !DILocation(line: 4456, column: 5, scope: !4217)
!4227 = !DILocation(line: 4456, column: 9, scope: !4217)
!4228 = !DILocation(line: 4457, column: 5, scope: !4217)
!4229 = !DILocation(line: 4457, column: 9, scope: !4217)
!4230 = !DILocation(line: 4458, column: 5, scope: !4217)
!4231 = !DILocation(line: 4458, column: 8, scope: !4217)
!4232 = !DILocation(line: 4461, column: 1, scope: !4217)
!4233 = distinct !DISubprogram(name: "set_bb_seq", scope: !574, file: !574, line: 246, type: !4234, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4236)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{null, !1165, !697}
!4236 = !{!4237, !4238}
!4237 = !DILocalVariable(name: "bb", arg: 1, scope: !4233, file: !574, line: 246, type: !1165)
!4238 = !DILocalVariable(name: "seq", arg: 2, scope: !4233, file: !574, line: 246, type: !697)
!4239 = !DILocation(line: 0, scope: !4233)
!4240 = !DILocation(line: 248, column: 3, scope: !4233)
!4241 = !DILocation(line: 249, column: 10, scope: !4233)
!4242 = !DILocation(line: 249, column: 18, scope: !4233)
!4243 = !DILocation(line: 249, column: 22, scope: !4233)
!4244 = !DILocation(line: 250, column: 1, scope: !4233)
!4245 = distinct !DISubprogram(name: "gsi_after_labels", scope: !574, file: !574, line: 4510, type: !2933, scopeLine: 4511, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4246)
!4246 = !{!4247, !4248}
!4247 = !DILocalVariable(name: "bb", arg: 1, scope: !4245, file: !574, line: 4510, type: !1165)
!4248 = !DILocalVariable(name: "gsi", scope: !4245, file: !574, line: 4512, type: !2607)
!4249 = !DILocation(line: 0, scope: !4245)
!4250 = !DILocation(line: 4512, column: 24, scope: !4245)
!4251 = !DILocation(line: 4512, column: 30, scope: !4245)
!4252 = !DILocation(line: 4514, column: 3, scope: !4245)
!4253 = !DILocation(line: 4514, column: 11, scope: !4245)
!4254 = !DILocation(line: 4514, column: 27, scope: !4245)
!4255 = !DILocation(line: 4514, column: 43, scope: !4245)
!4256 = !DILocation(line: 4514, column: 30, scope: !4245)
!4257 = !DILocation(line: 4514, column: 59, scope: !4245)
!4258 = !DILocation(line: 4515, column: 5, scope: !4245)
!4259 = distinct !{!4259, !4252, !4260}
!4260 = !DILocation(line: 4515, column: 19, scope: !4245)
!4261 = !DILocation(line: 4517, column: 3, scope: !4245)
!4262 = distinct !DISubprogram(name: "find_phi_replacement_condition", scope: !3, file: !3, line: 709, type: !4263, scopeLine: 712, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4265)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{!1165, !664, !1165, !1315, !2972}
!4265 = !{!4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4276}
!4266 = !DILocalVariable(name: "loop", arg: 1, scope: !4262, file: !3, line: 709, type: !664)
!4267 = !DILocalVariable(name: "bb", arg: 2, scope: !4262, file: !3, line: 710, type: !1165)
!4268 = !DILocalVariable(name: "cond", arg: 3, scope: !4262, file: !3, line: 710, type: !1315)
!4269 = !DILocalVariable(name: "gsi", arg: 4, scope: !4262, file: !3, line: 711, type: !2972)
!4270 = !DILocalVariable(name: "first_edge", scope: !4262, file: !3, line: 713, type: !686)
!4271 = !DILocalVariable(name: "second_edge", scope: !4262, file: !3, line: 713, type: !686)
!4272 = !DILocalVariable(name: "tmp_cond", scope: !4262, file: !3, line: 714, type: !732)
!4273 = !DILocalVariable(name: "tmp_edge", scope: !4274, file: !3, line: 750, type: !686)
!4274 = distinct !DILexicalBlock(scope: !4275, file: !3, line: 749, column: 5)
!4275 = distinct !DILexicalBlock(scope: !4262, file: !3, line: 748, column: 7)
!4276 = !DILocalVariable(name: "new_stmt", scope: !4277, file: !3, line: 801, type: !707)
!4277 = distinct !DILexicalBlock(scope: !4278, file: !3, line: 800, column: 5)
!4278 = distinct !DILexicalBlock(scope: !4262, file: !3, line: 799, column: 7)
!4279 = !DILocation(line: 0, scope: !4262)
!4280 = !DILocation(line: 716, column: 3, scope: !4262)
!4281 = !DILocation(line: 717, column: 16, scope: !4262)
!4282 = !DILocation(line: 718, column: 17, scope: !4262)
!4283 = !DILocation(line: 745, column: 34, scope: !4262)
!4284 = !DILocation(line: 745, column: 40, scope: !4262)
!4285 = !DILocation(line: 746, column: 3, scope: !4262)
!4286 = !DILocation(line: 748, column: 7, scope: !4275)
!4287 = !DILocation(line: 748, column: 28, scope: !4275)
!4288 = !DILocation(line: 748, column: 7, scope: !4262)
!4289 = !DILocation(line: 759, column: 19, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4262, file: !3, line: 759, column: 7)
!4291 = !DILocation(line: 759, column: 32, scope: !4290)
!4292 = !DILocation(line: 759, column: 23, scope: !4290)
!4293 = !DILocation(line: 760, column: 7, scope: !4290)
!4294 = !DILocation(line: 761, column: 18, scope: !4290)
!4295 = !DILocation(line: 760, column: 10, scope: !4290)
!4296 = !DILocation(line: 759, column: 7, scope: !4262)
!4297 = !DILocation(line: 763, column: 36, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4290, file: !3, line: 762, column: 5)
!4299 = !DILocation(line: 763, column: 42, scope: !4298)
!4300 = !DILocation(line: 763, column: 13, scope: !4298)
!4301 = !DILocation(line: 767, column: 24, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4298, file: !3, line: 767, column: 11)
!4303 = !DILocation(line: 767, column: 11, scope: !4302)
!4304 = !DILocation(line: 767, column: 11, scope: !4298)
!4305 = !DILocation(line: 768, column: 10, scope: !4302)
!4306 = !DILocation(line: 768, column: 8, scope: !4302)
!4307 = !DILocation(line: 768, column: 2, scope: !4302)
!4308 = !DILocation(line: 771, column: 11, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4298, file: !3, line: 771, column: 11)
!4310 = !DILocation(line: 771, column: 29, scope: !4309)
!4311 = !DILocation(line: 771, column: 11, scope: !4298)
!4312 = !DILocation(line: 774, column: 10, scope: !4309)
!4313 = !DILocation(line: 774, column: 8, scope: !4309)
!4314 = !DILocation(line: 774, column: 2, scope: !4309)
!4315 = !DILocation(line: 782, column: 35, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4290, file: !3, line: 780, column: 5)
!4317 = !DILocation(line: 782, column: 41, scope: !4316)
!4318 = !DILocation(line: 782, column: 13, scope: !4316)
!4319 = !DILocation(line: 786, column: 23, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4316, file: !3, line: 786, column: 11)
!4321 = !DILocation(line: 786, column: 11, scope: !4320)
!4322 = !DILocation(line: 786, column: 11, scope: !4316)
!4323 = !DILocation(line: 787, column: 10, scope: !4320)
!4324 = !DILocation(line: 787, column: 8, scope: !4320)
!4325 = !DILocation(line: 787, column: 2, scope: !4320)
!4326 = !DILocation(line: 796, column: 56, scope: !4262)
!4327 = !DILocation(line: 753, column: 18, scope: !4274)
!4328 = !DILocation(line: 796, column: 42, scope: !4262)
!4329 = !DILocation(line: 796, column: 11, scope: !4262)
!4330 = !DILocation(line: 796, column: 9, scope: !4262)
!4331 = !DILocation(line: 799, column: 8, scope: !4278)
!4332 = !DILocation(line: 799, column: 30, scope: !4278)
!4333 = !DILocation(line: 799, column: 54, scope: !4278)
!4334 = !DILocation(line: 799, column: 34, scope: !4278)
!4335 = !DILocation(line: 799, column: 7, scope: !4262)
!4336 = !DILocation(line: 803, column: 32, scope: !4277)
!4337 = !DILocation(line: 803, column: 65, scope: !4277)
!4338 = !DILocation(line: 803, column: 51, scope: !4277)
!4339 = !DILocation(line: 803, column: 18, scope: !4277)
!4340 = !DILocation(line: 0, scope: !4277)
!4341 = !DILocation(line: 804, column: 7, scope: !4277)
!4342 = !DILocation(line: 805, column: 15, scope: !4277)
!4343 = !DILocation(line: 805, column: 13, scope: !4277)
!4344 = !DILocation(line: 806, column: 5, scope: !4277)
!4345 = !DILocation(line: 808, column: 3, scope: !4262)
!4346 = !DILocation(line: 810, column: 22, scope: !4262)
!4347 = !DILocation(line: 810, column: 3, scope: !4262)
!4348 = distinct !DISubprogram(name: "replace_phi_with_cond_gimple_assign_stmt", scope: !3, file: !3, line: 825, type: !4349, scopeLine: 828, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4351)
!4349 = !DISubroutineType(types: !4350)
!4350 = !{null, !707, !732, !1165, !2972}
!4351 = !{!4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360}
!4352 = !DILocalVariable(name: "phi", arg: 1, scope: !4348, file: !3, line: 825, type: !707)
!4353 = !DILocalVariable(name: "cond", arg: 2, scope: !4348, file: !3, line: 825, type: !732)
!4354 = !DILocalVariable(name: "true_bb", arg: 3, scope: !4348, file: !3, line: 826, type: !1165)
!4355 = !DILocalVariable(name: "gsi", arg: 4, scope: !4348, file: !3, line: 827, type: !2972)
!4356 = !DILocalVariable(name: "new_stmt", scope: !4348, file: !3, line: 829, type: !707)
!4357 = !DILocalVariable(name: "bb", scope: !4348, file: !3, line: 830, type: !1165)
!4358 = !DILocalVariable(name: "rhs", scope: !4348, file: !3, line: 831, type: !732)
!4359 = !DILocalVariable(name: "arg_0", scope: !4348, file: !3, line: 832, type: !732)
!4360 = !DILocalVariable(name: "arg_1", scope: !4348, file: !3, line: 832, type: !732)
!4361 = !DILocation(line: 0, scope: !4348)
!4362 = !DILocation(line: 834, column: 3, scope: !4348)
!4363 = !DILocation(line: 837, column: 3, scope: !4348)
!4364 = !DILocation(line: 840, column: 8, scope: !4348)
!4365 = !DILocation(line: 843, column: 7, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4348, file: !3, line: 843, column: 7)
!4367 = !DILocation(line: 843, column: 26, scope: !4366)
!4368 = !DILocation(line: 843, column: 30, scope: !4366)
!4369 = !DILocation(line: 843, column: 7, scope: !4348)
!4370 = !DILocation(line: 845, column: 15, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4366, file: !3, line: 844, column: 5)
!4372 = !DILocation(line: 846, column: 15, scope: !4371)
!4373 = !DILocation(line: 847, column: 5, scope: !4371)
!4374 = !DILocation(line: 850, column: 15, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4366, file: !3, line: 849, column: 5)
!4376 = !DILocation(line: 851, column: 15, scope: !4375)
!4377 = !DILocation(line: 0, scope: !4366)
!4378 = !DILocation(line: 855, column: 9, scope: !4348)
!4379 = !DILocation(line: 860, column: 14, scope: !4348)
!4380 = !DILocation(line: 863, column: 3, scope: !4348)
!4381 = !DILocation(line: 863, column: 47, scope: !4348)
!4382 = !DILocation(line: 866, column: 3, scope: !4348)
!4383 = !DILocation(line: 867, column: 3, scope: !4348)
!4384 = !DILocation(line: 869, column: 7, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4348, file: !3, line: 869, column: 7)
!4386 = !DILocation(line: 869, column: 17, scope: !4385)
!4387 = !DILocation(line: 869, column: 21, scope: !4385)
!4388 = !DILocation(line: 869, column: 32, scope: !4385)
!4389 = !DILocation(line: 869, column: 7, scope: !4348)
!4390 = !DILocation(line: 871, column: 7, scope: !4391)
!4391 = distinct !DILexicalBlock(scope: !4385, file: !3, line: 870, column: 5)
!4392 = !DILocation(line: 872, column: 26, scope: !4391)
!4393 = !DILocation(line: 872, column: 7, scope: !4391)
!4394 = !DILocation(line: 873, column: 5, scope: !4391)
!4395 = !DILocation(line: 874, column: 1, scope: !4348)
!4396 = distinct !DISubprogram(name: "set_phi_nodes", scope: !3856, file: !3856, line: 519, type: !4234, scopeLine: 520, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4397)
!4397 = !{!4398, !4399, !4400}
!4398 = !DILocalVariable(name: "bb", arg: 1, scope: !4396, file: !3856, line: 519, type: !1165)
!4399 = !DILocalVariable(name: "seq", arg: 2, scope: !4396, file: !3856, line: 519, type: !697)
!4400 = !DILocalVariable(name: "i", scope: !4396, file: !3856, line: 521, type: !2607)
!4401 = !DILocation(line: 0, scope: !4396)
!4402 = !DILocation(line: 523, column: 3, scope: !4396)
!4403 = !DILocation(line: 524, column: 10, scope: !4396)
!4404 = !DILocation(line: 524, column: 18, scope: !4396)
!4405 = !DILocation(line: 524, column: 28, scope: !4396)
!4406 = !DILocation(line: 528, column: 1, scope: !4396)
!4407 = distinct !DISubprogram(name: "gimple_phi_arg_def", scope: !3856, file: !3856, line: 450, type: !4408, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4410)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{!732, !707, !1223}
!4410 = !{!4411, !4412, !4413}
!4411 = !DILocalVariable(name: "gs", arg: 1, scope: !4407, file: !3856, line: 450, type: !707)
!4412 = !DILocalVariable(name: "index", arg: 2, scope: !4407, file: !3856, line: 450, type: !1223)
!4413 = !DILocalVariable(name: "pd", scope: !4407, file: !3856, line: 452, type: !4414)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!4415 = !DILocation(line: 0, scope: !4407)
!4416 = !DILocation(line: 452, column: 46, scope: !4407)
!4417 = !DILocation(line: 452, column: 26, scope: !4407)
!4418 = !DILocation(line: 453, column: 33, scope: !4407)
!4419 = !DILocation(line: 453, column: 10, scope: !4407)
!4420 = !DILocation(line: 453, column: 3, scope: !4407)
!4421 = distinct !DISubprogram(name: "get_def_from_ptr", scope: !3856, file: !3856, line: 434, type: !4422, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4425)
!4422 = !DISubroutineType(types: !4423)
!4423 = !{!732, !4424}
!4424 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_operand_p", file: !1298, line: 27, baseType: !1315)
!4425 = !{!4426}
!4426 = !DILocalVariable(name: "def", arg: 1, scope: !4421, file: !3856, line: 434, type: !4424)
!4427 = !DILocation(line: 0, scope: !4421)
!4428 = !DILocation(line: 436, column: 10, scope: !4421)
!4429 = !DILocation(line: 436, column: 3, scope: !4421)
!4430 = distinct !DISubprogram(name: "gimple_phi_result_ptr", scope: !574, file: !574, line: 3080, type: !3801, scopeLine: 3081, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4431)
!4431 = !{!4432}
!4432 = !DILocalVariable(name: "gs", arg: 1, scope: !4430, file: !574, line: 3080, type: !707)
!4433 = !DILocation(line: 0, scope: !4430)
!4434 = !DILocation(line: 3083, column: 26, scope: !4430)
!4435 = !DILocation(line: 3083, column: 3, scope: !4430)
!4436 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !574, file: !574, line: 3100, type: !4437, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4439)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!4414, !707, !7}
!4439 = !{!4440, !4441}
!4440 = !DILocalVariable(name: "gs", arg: 1, scope: !4436, file: !574, line: 3100, type: !707)
!4441 = !DILocalVariable(name: "index", arg: 2, scope: !4436, file: !574, line: 3100, type: !7)
!4442 = !DILocation(line: 0, scope: !4436)
!4443 = !DILocation(line: 3103, column: 3, scope: !4436)
!4444 = !DILocation(line: 3104, column: 12, scope: !4436)
!4445 = !DILocation(line: 3104, column: 3, scope: !4436)
!4446 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !3856, file: !3856, line: 427, type: !4447, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4449)
!4447 = !DISubroutineType(types: !4448)
!4448 = !{!732, !2017}
!4449 = !{!4450}
!4450 = !DILocalVariable(name: "use", arg: 1, scope: !4446, file: !3856, line: 427, type: !2017)
!4451 = !DILocation(line: 0, scope: !4446)
!4452 = !DILocation(line: 429, column: 17, scope: !4446)
!4453 = !DILocation(line: 429, column: 10, scope: !4446)
!4454 = !DILocation(line: 429, column: 3, scope: !4446)
!4455 = distinct !DISubprogram(name: "gsi_start", scope: !574, file: !574, line: 4403, type: !4456, scopeLine: 4404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4458)
!4456 = !DISubroutineType(types: !4457)
!4457 = !{!2607, !697}
!4458 = !{!4459, !4460}
!4459 = !DILocalVariable(name: "seq", arg: 1, scope: !4455, file: !574, line: 4403, type: !697)
!4460 = !DILocalVariable(name: "i", scope: !4455, file: !574, line: 4405, type: !2607)
!4461 = !DILocation(line: 0, scope: !4455)
!4462 = distinct !DISubprogram(name: "gimple_seq_last", scope: !574, file: !574, line: 178, type: !3919, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4463)
!4463 = !{!4464}
!4464 = !DILocalVariable(name: "s", arg: 1, scope: !4462, file: !574, line: 178, type: !3921)
!4465 = !DILocation(line: 0, scope: !4462)
!4466 = !DILocation(line: 180, column: 10, scope: !4462)
!4467 = !DILocation(line: 180, column: 17, scope: !4462)
!4468 = !DILocation(line: 180, column: 3, scope: !4462)
!4469 = distinct !DISubprogram(name: "VEC_int_base_iterate", scope: !650, file: !650, line: 31, type: !4470, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4474)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{!641, !4472, !7, !2744}
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !654)
!4474 = !{!4475, !4476, !4477}
!4475 = !DILocalVariable(name: "vec_", arg: 1, scope: !4469, file: !650, line: 31, type: !4472)
!4476 = !DILocalVariable(name: "ix_", arg: 2, scope: !4469, file: !650, line: 31, type: !7)
!4477 = !DILocalVariable(name: "ptr", arg: 3, scope: !4469, file: !650, line: 31, type: !2744)
!4478 = !DILocation(line: 0, scope: !4469)
!4479 = !DILocation(line: 31, column: 1, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4469, file: !650, line: 31, column: 1)
!4481 = !DILocation(line: 31, column: 1, scope: !4469)
!4482 = !DILocation(line: 31, column: 1, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4480, file: !650, line: 31, column: 1)
!4484 = !DILocation(line: 31, column: 1, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4480, file: !650, line: 31, column: 1)
!4486 = !DILocation(line: 0, scope: !4480)
!4487 = distinct !DISubprogram(name: "get_loop", scope: !561, file: !561, line: 417, type: !4488, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4490)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{!664, !7}
!4490 = !{!4491}
!4491 = !DILocalVariable(name: "num", arg: 1, scope: !4487, file: !561, line: 417, type: !7)
!4492 = !DILocation(line: 0, scope: !4487)
!4493 = !DILocation(line: 419, column: 10, scope: !4487)
!4494 = !DILocation(line: 419, column: 3, scope: !4487)
!4495 = distinct !DISubprogram(name: "VEC_int_heap_free", scope: !650, file: !650, line: 32, type: !4496, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4499)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{null, !4498}
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!4499 = !{!4500}
!4500 = !DILocalVariable(name: "vec_", arg: 1, scope: !4495, file: !650, line: 32, type: !4498)
!4501 = !DILocation(line: 0, scope: !4495)
!4502 = !DILocation(line: 32, column: 1, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4495, file: !650, line: 32, column: 1)
!4504 = !DILocation(line: 32, column: 1, scope: !4495)
