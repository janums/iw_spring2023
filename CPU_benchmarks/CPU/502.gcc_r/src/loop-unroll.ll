; ModuleID = 'loop-unroll.bc'
source_filename = "loop-unroll.c"
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
%union.gimple_statement_d = type opaque
%struct.loop_exit = type { %struct.edge_def*, %struct.loop_exit*, %struct.loop_exit*, %struct.loop_exit* }
%struct.et_node = type opaque
%union.basic_block_il_dependent = type { %struct.gimple_bb_info* }
%struct.gimple_bb_info = type { %struct.gimple_seq_d*, %struct.gimple_seq_d* }
%struct.VEC_basic_block_gc = type { %struct.VEC_basic_block_base }
%struct.VEC_basic_block_base = type { i32, i32, [1 x %struct.basic_block_def*] }
%struct.gimple_seq_d = type opaque
%struct.gimple_df = type opaque
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
%struct.param_info = type { i8*, i32, i8, i32, i32, i8* }
%struct.real_format = type { void (%struct.real_format*, i64*, %struct.real_value*)*, void (%struct.real_format*, %struct.real_value*, i64*)*, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.real_value = type { i32, [3 x i64] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.loop_iterator = type { %struct.VEC_int_heap*, i32 }
%struct.VEC_int_heap = type { %struct.VEC_int_base }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.niter_desc = type { %struct.edge_def*, %struct.edge_def*, i8, i8, i64, i64, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i8, i32, %struct.rtx_def* }
%struct.opt_info = type { %struct.htab*, %struct.iv_to_split*, %struct.iv_to_split**, %struct.htab*, %struct.var_to_expand*, %struct.var_to_expand**, i32, %struct.basic_block_def*, %struct.basic_block_def* }
%struct.iv_to_split = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.iv_to_split*, i32, [3 x i32] }
%struct.var_to_expand = type { %struct.rtx_def*, %struct.rtx_def*, %struct.VEC_rtx_heap*, %struct.var_to_expand*, i32, i32, i32, i32 }
%struct.VEC_rtx_heap = type { %struct.VEC_rtx_base }
%struct.simple_bitmap_def = type { i8*, i32, i32, [1 x i64] }
%struct.VEC_edge_heap = type { %struct.VEC_edge_base }
%struct.VEC_basic_block_heap = type { %struct.VEC_basic_block_base }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.rtx_iv = type { %struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def*, %struct.rtx_def*, i32, i32, i8 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [14 x i8] c"loop-unroll.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c"\0A;; *** Considering loop %d for complete peeling ***\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"\0A;; Considering peeling once rolling loop\0A\00", align 1
@compiler_params = external dso_local local_unnamed_addr global %struct.param_info*, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c";; Not considering loop, is too big\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c";; Unable to prove that the loop rolls exactly once\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c";; Decided to peel exactly once rolling loop\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"\0A;; Considering peeling completely\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c";; Not considering loop, is not innermost\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c";; Not considering loop, cold area\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c";; Not considering loop, cannot duplicate\0A\00", align 1
@.str.11 = private unnamed_addr constant [58 x i8] c";; Unable to prove that the loop iterates constant times\0A\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c";; Not peeling loop completely, rolls too much (\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c" iterations > %d [maximum peelings])\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c";; Decided to peel loop completely\0A\00", align 1
@flag_split_ivs_in_unroller = external dso_local local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [37 x i8] c";; Peeled loop completely, %d times\0A\00", align 1
@flag_variable_expansion_in_unroller = external dso_local local_unnamed_addr global i32, align 4
@const_int_rtx = external dso_local local_unnamed_addr global [129 x %struct.rtx_def*], align 16
@mode_class = external dso_local local_unnamed_addr constant [87 x i8], align 16
@flag_associative_math = external dso_local local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [27 x i8] c"\0A;; Expanding Accumulator \00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@real_format_for_mode = external dso_local local_unnamed_addr global [7 x %struct.real_format*], align 16
@mode_inner = external dso_local local_unnamed_addr constant [87 x i8], align 16
@flag_signed_zeros = external dso_local local_unnamed_addr global i32, align 4
@const_tiny_rtx = external dso_local local_unnamed_addr global [3 x [87 x %struct.rtx_def*]], align 16
@.str.19 = private unnamed_addr constant [33 x i8] c"\0A;; *** Considering loop %d ***\0A\00", align 1
@.str.20 = private unnamed_addr constant [67 x i8] c"\0A;; Considering unrolling loop with constant number of iterations\0A\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c";; Not unrolling loop, doesn't roll\0A\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c";; max_unroll %d (%d copies, initial %d).\0A\00", align 1
@.str.23 = private unnamed_addr constant [65 x i8] c";; Decided to unroll the constant times rolling loop, %d times.\0A\00", align 1
@.str.24 = private unnamed_addr constant [77 x i8] c"\0A;; Considering unrolling loop with runtime computable number of iterations\0A\00", align 1
@.str.25 = private unnamed_addr constant [76 x i8] c";; Unable to prove that the number of iterations can be counted in runtime\0A\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c";; Loop iterates constant times\0A\00", align 1
@.str.27 = private unnamed_addr constant [75 x i8] c";; Decided to unroll the runtime computable times rolling loop, %d times.\0A\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"\0A;; Considering unrolling loop stupidly\0A\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c";; The loop is simple\0A\00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c";; Not unrolling, contains branches\0A\00", align 1
@.str.31 = private unnamed_addr constant [51 x i8] c";; Decided to unroll the loop stupidly, %d times.\0A\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"\0A;; Considering simply peeling loop\0A\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c";; Not peeling, contains branches\0A\00", align 1
@.str.34 = private unnamed_addr constant [38 x i8] c";; Not peeling loop, rolls too much (\00", align 1
@.str.35 = private unnamed_addr constant [56 x i8] c";; Not peeling loop, no evidence it will be profitable\0A\00", align 1
@.str.36 = private unnamed_addr constant [47 x i8] c";; Decided to simply peel the loop, %d times.\0A\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c";; Condition on beginning of loop.\0A\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c";; Condition on end of loop.\0A\00", align 1
@.str.39 = private unnamed_addr constant [62 x i8] c";; Unrolled loop %d times, constant # of iterations %i insns\0A\00", align 1
@.str.40 = private unnamed_addr constant [74 x i8] c";; Unrolled loop %d times, counting # of iterations in runtime, %i insns\0A\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c";; Peeling loop %d times\0A\00", align 1
@.str.43 = private unnamed_addr constant [37 x i8] c";; Unrolled loop %d times, %i insns\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1757 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1770, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1771, metadata !DIExpression()), !dbg !1772
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1773
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1774
  ret i32 %call, !dbg !1775
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1776 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1780
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1781
  ret i32 %call, !dbg !1782
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1783 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1838, metadata !DIExpression()), !dbg !1839
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1840
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1840
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1840
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1840
  %cmp = icmp uge i8* %0, %1, !dbg !1840
  %conv1 = zext i1 %cmp to i64, !dbg !1840
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1840
  %tobool = icmp eq i64 %expval, 0, !dbg !1840
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1840

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1840
  br label %cond.end, !dbg !1840

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1840
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1840
  %2 = load i8, i8* %0, align 1, !dbg !1840
  %conv3 = zext i8 %2 to i32, !dbg !1840
  br label %cond.end, !dbg !1840

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1840
  ret i32 %cond, !dbg !1841
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1842 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1844, metadata !DIExpression()), !dbg !1845
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1846
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1846
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1846
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1846
  %cmp = icmp uge i8* %0, %1, !dbg !1846
  %conv1 = zext i1 %cmp to i64, !dbg !1846
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1846
  %tobool = icmp eq i64 %expval, 0, !dbg !1846
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1846

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1846
  br label %cond.end, !dbg !1846

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1846
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1846
  %2 = load i8, i8* %0, align 1, !dbg !1846
  %conv3 = zext i8 %2 to i32, !dbg !1846
  br label %cond.end, !dbg !1846

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1846
  ret i32 %cond, !dbg !1847
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1848 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1849
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1849
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1849
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1849
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1849
  %cmp = icmp uge i8* %1, %2, !dbg !1849
  %conv1 = zext i1 %cmp to i64, !dbg !1849
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1849
  %tobool = icmp eq i64 %expval, 0, !dbg !1849
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1849

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1849
  br label %cond.end, !dbg !1849

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1849
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1849
  %3 = load i8, i8* %1, align 1, !dbg !1849
  %conv3 = zext i8 %3 to i32, !dbg !1849
  br label %cond.end, !dbg !1849

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1849
  ret i32 %cond, !dbg !1850
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1851 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1855, metadata !DIExpression()), !dbg !1856
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1857
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1858
  ret i32 %call, !dbg !1859
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1860 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1864, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1865, metadata !DIExpression()), !dbg !1866
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1867
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1867
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1867
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1867
  %cmp = icmp uge i8* %0, %1, !dbg !1867
  %conv1 = zext i1 %cmp to i64, !dbg !1867
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1867
  %tobool = icmp eq i64 %expval, 0, !dbg !1867
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1867

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1867
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1867
  br label %cond.end, !dbg !1867

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1867
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1867
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1867
  store i8 %conv2, i8* %0, align 1, !dbg !1867
  %conv6 = and i32 %__c, 255, !dbg !1867
  br label %cond.end, !dbg !1867

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1867
  ret i32 %cond, !dbg !1868
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1869 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1871, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1872, metadata !DIExpression()), !dbg !1873
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1874
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1874
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1874
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1874
  %cmp = icmp uge i8* %0, %1, !dbg !1874
  %conv1 = zext i1 %cmp to i64, !dbg !1874
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1874
  %tobool = icmp eq i64 %expval, 0, !dbg !1874
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1874

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1874
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1874
  br label %cond.end, !dbg !1874

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1874
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1874
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1874
  store i8 %conv2, i8* %0, align 1, !dbg !1874
  %conv6 = and i32 %__c, 255, !dbg !1874
  br label %cond.end, !dbg !1874

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1874
  ret i32 %cond, !dbg !1875
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1876 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1878, metadata !DIExpression()), !dbg !1879
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1880
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1880
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1880
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1880
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1880
  %cmp = icmp uge i8* %1, %2, !dbg !1880
  %conv1 = zext i1 %cmp to i64, !dbg !1880
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1880
  %tobool = icmp eq i64 %expval, 0, !dbg !1880
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1880

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1880
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1880
  br label %cond.end, !dbg !1880

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1880
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1880
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1880
  store i8 %conv4, i8* %1, align 1, !dbg !1880
  %conv6 = and i32 %__c, 255, !dbg !1880
  br label %cond.end, !dbg !1880

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1880
  ret i32 %cond, !dbg !1881
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1882 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1888, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1889, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1890, metadata !DIExpression()), !dbg !1891
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1892
  ret i64 %call, !dbg !1893
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1894 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1896, metadata !DIExpression()), !dbg !1897
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1898
  %0 = load i32, i32* %_flags, align 8, !dbg !1898
  %and = lshr i32 %0, 4, !dbg !1898
  %and.lobit = and i32 %and, 1, !dbg !1898
  ret i32 %and.lobit, !dbg !1899
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1900 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1902, metadata !DIExpression()), !dbg !1903
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1904
  %0 = load i32, i32* %_flags, align 8, !dbg !1904
  %and = lshr i32 %0, 5, !dbg !1904
  %and.lobit = and i32 %and, 1, !dbg !1904
  ret i32 %and.lobit, !dbg !1905
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1906 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1909, metadata !DIExpression()), !dbg !1910
  %__c.off = add i32 %__c, 128, !dbg !1911
  %0 = icmp ult i32 %__c.off, 384, !dbg !1911
  br i1 %0, label %cond.true, label %cond.end, !dbg !1911

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1912
  %1 = load i32*, i32** %call, align 8, !dbg !1913
  %idxprom = sext i32 %__c to i64, !dbg !1914
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1914
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1914
  br label %cond.end, !dbg !1915

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1915
  ret i32 %cond, !dbg !1916
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1917 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1919, metadata !DIExpression()), !dbg !1920
  %__c.off = add i32 %__c, 128, !dbg !1921
  %0 = icmp ult i32 %__c.off, 384, !dbg !1921
  br i1 %0, label %cond.true, label %cond.end, !dbg !1921

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1922
  %1 = load i32*, i32** %call, align 8, !dbg !1923
  %idxprom = sext i32 %__c to i64, !dbg !1924
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1924
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1924
  br label %cond.end, !dbg !1925

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1925
  ret i32 %cond, !dbg !1926
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1927 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1932, metadata !DIExpression()), !dbg !1933
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1934
  %conv = trunc i64 %call to i32, !dbg !1935
  ret i32 %conv, !dbg !1936
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1937 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1941, metadata !DIExpression()), !dbg !1942
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1943
  ret i64 %call, !dbg !1944
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1945 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1950, metadata !DIExpression()), !dbg !1951
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1952
  ret i64 %call, !dbg !1953
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1954 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1960, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1961, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1962, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1963, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1964, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 0, metadata !1965, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1966, metadata !DIExpression()), !dbg !1970
  br label %while.cond, !dbg !1971

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1972
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1970
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1966, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1965, metadata !DIExpression()), !dbg !1970
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1973
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1971

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1974
  %div = lshr i64 %add, 1, !dbg !1976
  call void @llvm.dbg.value(metadata i64 %div, metadata !1967, metadata !DIExpression()), !dbg !1970
  %mul = mul i64 %div, %__size, !dbg !1977
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1978
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1968, metadata !DIExpression()), !dbg !1970
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1979
  call void @llvm.dbg.value(metadata i32 %call, metadata !1969, metadata !DIExpression()), !dbg !1970
  %cmp1 = icmp slt i32 %call, 0, !dbg !1980
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1982

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1983
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1985

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1986
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1965, metadata !DIExpression()), !dbg !1970
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1970
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1970
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1966, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1965, metadata !DIExpression()), !dbg !1970
  br label %while.cond, !dbg !1971, !llvm.loop !1987

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1970
  ret i8* %retval.0, !dbg !1989
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1990 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1996, metadata !DIExpression()), !dbg !1997
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1998
  ret double %call, !dbg !1999
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2000 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2009, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2010, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i32 %base, metadata !2011, metadata !DIExpression()), !dbg !2012
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2013
  ret i64 %call, !dbg !2014
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2015 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2021, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2022, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata i32 %base, metadata !2023, metadata !DIExpression()), !dbg !2024
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2025
  ret i64 %call, !dbg !2026
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2027 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2038, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2039, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i32 %base, metadata !2040, metadata !DIExpression()), !dbg !2041
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2042
  ret i64 %call, !dbg !2043
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2044 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2048, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2049, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i32 %base, metadata !2050, metadata !DIExpression()), !dbg !2051
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2052
  ret i64 %call, !dbg !2053
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2054 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2094, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2095, metadata !DIExpression()), !dbg !2096
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2097
  ret i32 %call, !dbg !2098
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2099 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2101, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2102, metadata !DIExpression()), !dbg !2103
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2104
  ret i32 %call, !dbg !2105
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2106 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2110, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2111, metadata !DIExpression()), !dbg !2112
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2113
  ret i32 %call, !dbg !2114
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2115 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2119, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2120, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2121, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2122, metadata !DIExpression()), !dbg !2123
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2124
  ret i32 %call, !dbg !2125
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2126 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2130, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2131, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2132, metadata !DIExpression()), !dbg !2133
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2132, metadata !DIExpression(DW_OP_deref)), !dbg !2133
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2134
  ret i32 %call, !dbg !2135
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2136 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2140, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2141, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2142, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2143, metadata !DIExpression()), !dbg !2144
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2143, metadata !DIExpression(DW_OP_deref)), !dbg !2144
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2145
  ret i32 %call, !dbg !2146
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2147 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2171, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2172, metadata !DIExpression()), !dbg !2173
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2174
  ret i32 %call, !dbg !2175
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2176 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2178, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2179, metadata !DIExpression()), !dbg !2180
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2181
  ret i32 %call, !dbg !2182
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2183 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2187, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2188, metadata !DIExpression()), !dbg !2189
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2190
  ret i32 %call, !dbg !2191
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2192 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2196, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2197, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2198, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2199, metadata !DIExpression()), !dbg !2200
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2201
  ret i32 %call, !dbg !2202
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @unroll_and_peel_loops(i32 %flags) local_unnamed_addr #4 !dbg !2203 {
entry:
  %loop = alloca %struct.loop*, align 8
  %li = alloca %struct.loop_iterator, align 8
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2207, metadata !DIExpression()), !dbg !2216
  %0 = bitcast %struct.loop** %loop to i8*, !dbg !2217
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2217
  %1 = bitcast %struct.loop_iterator* %li to i8*, !dbg !2218
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !2218
  tail call fastcc void @peel_loops_completely(i32 %flags) #8, !dbg !2219
  tail call fastcc void @decide_unrolling_and_peeling(i32 %flags) #8, !dbg !2220
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2208, metadata !DIExpression(DW_OP_deref)), !dbg !2216
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2210, metadata !DIExpression(DW_OP_deref)), !dbg !2216
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop, i32 2) #8, !dbg !2221
  br label %for.cond, !dbg !2221

for.cond:                                         ; preds = %sw.epilog, %entry
  %2 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2223
  call void @llvm.dbg.value(metadata %struct.loop* %2, metadata !2208, metadata !DIExpression()), !dbg !2216
  %tobool = icmp eq %struct.loop* %2, null, !dbg !2221
  br i1 %tobool, label %for.end, label %for.body, !dbg !2221

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i8 1, metadata !2209, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata %struct.loop* %2, metadata !2208, metadata !DIExpression()), !dbg !2216
  %decision = getelementptr inbounds %struct.loop, %struct.loop* %2, i64 0, i32 4, i32 0, !dbg !2225
  %3 = load i32, i32* %decision, align 8, !dbg !2225
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 0, label %sw.epilog
  ], !dbg !2227

sw.bb:                                            ; preds = %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 178, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2228
  %.pre = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2230
  br label %sw.bb1, !dbg !2228

sw.bb1:                                           ; preds = %for.body, %sw.bb
  %4 = phi %struct.loop* [ %2, %for.body ], [ %.pre, %sw.bb ], !dbg !2230
  call void @llvm.dbg.value(metadata %struct.loop* %4, metadata !2208, metadata !DIExpression()), !dbg !2216
  call fastcc void @peel_loop_simple(%struct.loop* %4) #8, !dbg !2231
  br label %sw.epilog, !dbg !2232

sw.bb2:                                           ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.loop* %2, metadata !2208, metadata !DIExpression()), !dbg !2216
  call fastcc void @unroll_loop_constant_iterations(%struct.loop* nonnull %2) #8, !dbg !2233
  br label %sw.epilog, !dbg !2234

sw.bb3:                                           ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.loop* %2, metadata !2208, metadata !DIExpression()), !dbg !2216
  call fastcc void @unroll_loop_runtime_iterations(%struct.loop* nonnull %2) #8, !dbg !2235
  br label %sw.epilog, !dbg !2236

sw.bb4:                                           ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.loop* %2, metadata !2208, metadata !DIExpression()), !dbg !2216
  call fastcc void @unroll_loop_stupid(%struct.loop* nonnull %2) #8, !dbg !2237
  br label %sw.epilog, !dbg !2238

sw.default:                                       ; preds = %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 195, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2239
  br label %sw.epilog, !dbg !2240

sw.epilog:                                        ; preds = %for.body, %sw.default, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2208, metadata !DIExpression(DW_OP_deref)), !dbg !2216
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2210, metadata !DIExpression(DW_OP_deref)), !dbg !2216
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #8, !dbg !2223
  br label %for.cond, !dbg !2223, !llvm.loop !2241

for.end:                                          ; preds = %for.cond
  call void @iv_analysis_done() #6, !dbg !2243
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !2244
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2244
  ret void, !dbg !2244
}

; Function Attrs: nounwind uwtable
define internal fastcc void @peel_loops_completely(i32 %flags) unnamed_addr #4 !dbg !2245 {
entry:
  %loop = alloca %struct.loop*, align 8
  %li = alloca %struct.loop_iterator, align 8
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2247, metadata !DIExpression()), !dbg !2250
  %0 = bitcast %struct.loop** %loop to i8*, !dbg !2251
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2251
  %1 = bitcast %struct.loop_iterator* %li to i8*, !dbg !2252
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !2252
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2248, metadata !DIExpression(DW_OP_deref)), !dbg !2250
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2249, metadata !DIExpression(DW_OP_deref)), !dbg !2250
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop, i32 2) #8, !dbg !2253
  br label %for.cond, !dbg !2253

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2255
  call void @llvm.dbg.value(metadata %struct.loop* %2, metadata !2248, metadata !DIExpression()), !dbg !2250
  %tobool = icmp eq %struct.loop* %2, null, !dbg !2253
  br i1 %tobool, label %for.end, label %for.body, !dbg !2253

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.loop* %2, metadata !2248, metadata !DIExpression()), !dbg !2250
  %decision = getelementptr inbounds %struct.loop, %struct.loop* %2, i64 0, i32 4, i32 0, !dbg !2257
  store i32 0, i32* %decision, align 8, !dbg !2259
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2260
  %tobool1 = icmp eq %struct._IO_FILE* %3, null, !dbg !2260
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2262

if.then:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.loop* %2, metadata !2248, metadata !DIExpression()), !dbg !2250
  %num = getelementptr inbounds %struct.loop, %struct.loop* %2, i64 0, i32 0, !dbg !2263
  %4 = load i32, i32* %num, align 8, !dbg !2263
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %3, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %4) #6, !dbg !2264
  %.pre = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2265
  br label %if.end, !dbg !2264

if.end:                                           ; preds = %for.body, %if.then
  %5 = phi %struct.loop* [ %2, %for.body ], [ %.pre, %if.then ], !dbg !2265
  call void @llvm.dbg.value(metadata %struct.loop* %5, metadata !2248, metadata !DIExpression()), !dbg !2250
  %call2 = call i32 @num_loop_insns(%struct.loop* %5) #6, !dbg !2266
  %6 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2267
  call void @llvm.dbg.value(metadata %struct.loop* %6, metadata !2248, metadata !DIExpression()), !dbg !2250
  %ninsns = getelementptr inbounds %struct.loop, %struct.loop* %6, i64 0, i32 1, !dbg !2268
  store i32 %call2, i32* %ninsns, align 4, !dbg !2269
  %7 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2270
  call void @llvm.dbg.value(metadata %struct.loop* %7, metadata !2248, metadata !DIExpression()), !dbg !2250
  call fastcc void @decide_peel_once_rolling(%struct.loop* %7, i32 %flags) #8, !dbg !2271
  %8 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2272
  call void @llvm.dbg.value(metadata %struct.loop* %8, metadata !2248, metadata !DIExpression()), !dbg !2250
  %decision4 = getelementptr inbounds %struct.loop, %struct.loop* %8, i64 0, i32 4, i32 0, !dbg !2274
  %9 = load i32, i32* %decision4, align 8, !dbg !2274
  %cmp = icmp eq i32 %9, 0, !dbg !2275
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !2276

if.then5:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.loop* %8, metadata !2248, metadata !DIExpression()), !dbg !2250
  call fastcc void @decide_peel_completely(%struct.loop* %8, i32 %flags) #8, !dbg !2277
  %.pre1 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2278
  %decision8.phi.trans.insert = getelementptr inbounds %struct.loop, %struct.loop* %.pre1, i64 0, i32 4, i32 0, !dbg !2280
  %.pre2 = load i32, i32* %decision8.phi.trans.insert, align 8, !dbg !2281
  br label %if.end6, !dbg !2277

if.end6:                                          ; preds = %if.then5, %if.end
  %10 = phi i32 [ %.pre2, %if.then5 ], [ %9, %if.end ], !dbg !2281
  %11 = phi %struct.loop* [ %.pre1, %if.then5 ], [ %8, %if.end ], !dbg !2278
  call void @llvm.dbg.value(metadata %struct.loop* %11, metadata !2248, metadata !DIExpression()), !dbg !2250
  %cmp9 = icmp eq i32 %10, 1, !dbg !2282
  br i1 %cmp9, label %if.then10, label %for.inc, !dbg !2283

if.then10:                                        ; preds = %if.end6
  call void @llvm.dbg.value(metadata %struct.loop* %11, metadata !2248, metadata !DIExpression()), !dbg !2250
  call fastcc void @peel_loop_completely(%struct.loop* %11) #8, !dbg !2284
  br label %for.inc, !dbg !2286

for.inc:                                          ; preds = %if.end6, %if.then10
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2248, metadata !DIExpression(DW_OP_deref)), !dbg !2250
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2249, metadata !DIExpression(DW_OP_deref)), !dbg !2250
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #8, !dbg !2255
  br label %for.cond, !dbg !2255, !llvm.loop !2287

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !2289
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2289
  ret void, !dbg !2289
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decide_unrolling_and_peeling(i32 %flags) unnamed_addr #4 !dbg !2290 {
entry:
  %loop = alloca %struct.loop*, align 8
  %li = alloca %struct.loop_iterator, align 8
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2292, metadata !DIExpression()), !dbg !2295
  %0 = bitcast %struct.loop** %loop to i8*, !dbg !2296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2296
  %1 = bitcast %struct.loop_iterator* %li to i8*, !dbg !2297
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !2297
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2293, metadata !DIExpression(DW_OP_deref)), !dbg !2295
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2294, metadata !DIExpression(DW_OP_deref)), !dbg !2295
  call fastcc void @fel_init(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop, i32 2) #8, !dbg !2298
  br label %for.cond, !dbg !2298

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2300
  call void @llvm.dbg.value(metadata %struct.loop* %2, metadata !2293, metadata !DIExpression()), !dbg !2295
  %tobool = icmp eq %struct.loop* %2, null, !dbg !2298
  br i1 %tobool, label %for.end, label %for.body, !dbg !2298

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.loop* %2, metadata !2293, metadata !DIExpression()), !dbg !2295
  %decision = getelementptr inbounds %struct.loop, %struct.loop* %2, i64 0, i32 4, i32 0, !dbg !2302
  store i32 0, i32* %decision, align 8, !dbg !2304
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2305
  %tobool1 = icmp eq %struct._IO_FILE* %3, null, !dbg !2305
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2307

if.then:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.loop* %2, metadata !2293, metadata !DIExpression()), !dbg !2295
  %num = getelementptr inbounds %struct.loop, %struct.loop* %2, i64 0, i32 0, !dbg !2308
  %4 = load i32, i32* %num, align 8, !dbg !2308
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0), i32 %4) #6, !dbg !2309
  %.pre = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2310
  br label %if.end, !dbg !2309

if.end:                                           ; preds = %for.body, %if.then
  %5 = phi %struct.loop* [ %2, %for.body ], [ %.pre, %if.then ], !dbg !2310
  call void @llvm.dbg.value(metadata %struct.loop* %5, metadata !2293, metadata !DIExpression()), !dbg !2295
  %call2 = call zeroext i8 @optimize_loop_for_size_p(%struct.loop* %5) #6, !dbg !2312
  %tobool3 = icmp eq i8 %call2, 0, !dbg !2312
  br i1 %tobool3, label %if.end9, label %if.then4, !dbg !2313

if.then4:                                         ; preds = %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2314
  %tobool5 = icmp eq %struct._IO_FILE* %6, null, !dbg !2314
  br i1 %tobool5, label %for.inc, label %if.then6, !dbg !2317

if.then6:                                         ; preds = %if.then4
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !2318
  br label %for.inc, !dbg !2318

if.end9:                                          ; preds = %if.end
  %7 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2319
  call void @llvm.dbg.value(metadata %struct.loop* %7, metadata !2293, metadata !DIExpression()), !dbg !2295
  %call10 = call zeroext i8 @can_duplicate_loop_p(%struct.loop* %7) #6, !dbg !2321
  %tobool11 = icmp eq i8 %call10, 0, !dbg !2321
  br i1 %tobool11, label %if.then12, label %if.end17, !dbg !2322

if.then12:                                        ; preds = %if.end9
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2323
  %tobool13 = icmp eq %struct._IO_FILE* %8, null, !dbg !2323
  br i1 %tobool13, label %for.inc, label %if.then14, !dbg !2326

if.then14:                                        ; preds = %if.then12
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %8, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !2327
  br label %for.inc, !dbg !2327

if.end17:                                         ; preds = %if.end9
  %9 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2328
  call void @llvm.dbg.value(metadata %struct.loop* %9, metadata !2293, metadata !DIExpression()), !dbg !2295
  %inner = getelementptr inbounds %struct.loop, %struct.loop* %9, i64 0, i32 8, !dbg !2330
  %10 = load %struct.loop*, %struct.loop** %inner, align 8, !dbg !2330
  %tobool18 = icmp eq %struct.loop* %10, null, !dbg !2328
  br i1 %tobool18, label %if.end24, label %if.then19, !dbg !2331

if.then19:                                        ; preds = %if.end17
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2332
  %tobool20 = icmp eq %struct._IO_FILE* %11, null, !dbg !2332
  br i1 %tobool20, label %for.inc, label %if.then21, !dbg !2335

if.then21:                                        ; preds = %if.then19
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %11, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !2336
  br label %for.inc, !dbg !2336

if.end24:                                         ; preds = %if.end17
  call void @llvm.dbg.value(metadata %struct.loop* %9, metadata !2293, metadata !DIExpression()), !dbg !2295
  %call25 = call i32 @num_loop_insns(%struct.loop* %9) #6, !dbg !2337
  %12 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2338
  call void @llvm.dbg.value(metadata %struct.loop* %12, metadata !2293, metadata !DIExpression()), !dbg !2295
  %ninsns = getelementptr inbounds %struct.loop, %struct.loop* %12, i64 0, i32 1, !dbg !2339
  store i32 %call25, i32* %ninsns, align 4, !dbg !2340
  %13 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2341
  call void @llvm.dbg.value(metadata %struct.loop* %13, metadata !2293, metadata !DIExpression()), !dbg !2295
  %call26 = call i32 @average_num_loop_insns(%struct.loop* %13) #6, !dbg !2342
  %14 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2343
  call void @llvm.dbg.value(metadata %struct.loop* %14, metadata !2293, metadata !DIExpression()), !dbg !2295
  %av_ninsns = getelementptr inbounds %struct.loop, %struct.loop* %14, i64 0, i32 5, !dbg !2344
  store i32 %call26, i32* %av_ninsns, align 8, !dbg !2345
  call void @llvm.dbg.value(metadata %struct.loop* %14, metadata !2293, metadata !DIExpression()), !dbg !2295
  call fastcc void @decide_unroll_constant_iterations(%struct.loop* %14, i32 %flags) #8, !dbg !2346
  %15 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2347
  call void @llvm.dbg.value(metadata %struct.loop* %15, metadata !2293, metadata !DIExpression()), !dbg !2295
  %decision28 = getelementptr inbounds %struct.loop, %struct.loop* %15, i64 0, i32 4, i32 0, !dbg !2349
  %16 = load i32, i32* %decision28, align 8, !dbg !2349
  %cmp = icmp eq i32 %16, 0, !dbg !2350
  br i1 %cmp, label %if.then29, label %if.end30, !dbg !2351

if.then29:                                        ; preds = %if.end24
  call void @llvm.dbg.value(metadata %struct.loop* %15, metadata !2293, metadata !DIExpression()), !dbg !2295
  call fastcc void @decide_unroll_runtime_iterations(%struct.loop* %15, i32 %flags) #8, !dbg !2352
  %.pre1 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2353
  %decision32.phi.trans.insert = getelementptr inbounds %struct.loop, %struct.loop* %.pre1, i64 0, i32 4, i32 0, !dbg !2355
  %.pre2 = load i32, i32* %decision32.phi.trans.insert, align 8, !dbg !2356
  br label %if.end30, !dbg !2352

if.end30:                                         ; preds = %if.then29, %if.end24
  %17 = phi i32 [ %.pre2, %if.then29 ], [ %16, %if.end24 ], !dbg !2356
  %18 = phi %struct.loop* [ %.pre1, %if.then29 ], [ %15, %if.end24 ], !dbg !2353
  call void @llvm.dbg.value(metadata %struct.loop* %18, metadata !2293, metadata !DIExpression()), !dbg !2295
  %cmp33 = icmp eq i32 %17, 0, !dbg !2357
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2358

if.then34:                                        ; preds = %if.end30
  call void @llvm.dbg.value(metadata %struct.loop* %18, metadata !2293, metadata !DIExpression()), !dbg !2295
  call fastcc void @decide_unroll_stupid(%struct.loop* %18, i32 %flags) #8, !dbg !2359
  %.pre3 = load %struct.loop*, %struct.loop** %loop, align 8, !dbg !2360
  %decision37.phi.trans.insert = getelementptr inbounds %struct.loop, %struct.loop* %.pre3, i64 0, i32 4, i32 0, !dbg !2362
  %.pre4 = load i32, i32* %decision37.phi.trans.insert, align 8, !dbg !2363
  br label %if.end35, !dbg !2359

if.end35:                                         ; preds = %if.then34, %if.end30
  %19 = phi i32 [ %.pre4, %if.then34 ], [ %17, %if.end30 ], !dbg !2363
  %20 = phi %struct.loop* [ %.pre3, %if.then34 ], [ %18, %if.end30 ], !dbg !2360
  call void @llvm.dbg.value(metadata %struct.loop* %20, metadata !2293, metadata !DIExpression()), !dbg !2295
  %cmp38 = icmp eq i32 %19, 0, !dbg !2364
  br i1 %cmp38, label %if.then39, label %for.inc, !dbg !2365

if.then39:                                        ; preds = %if.end35
  call void @llvm.dbg.value(metadata %struct.loop* %20, metadata !2293, metadata !DIExpression()), !dbg !2295
  call fastcc void @decide_peel_simple(%struct.loop* %20, i32 %flags) #8, !dbg !2366
  br label %for.inc, !dbg !2366

for.inc:                                          ; preds = %if.then4, %if.then19, %if.then12, %if.end35, %if.then39, %if.then21, %if.then14, %if.then6
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2293, metadata !DIExpression(DW_OP_deref)), !dbg !2295
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2294, metadata !DIExpression(DW_OP_deref)), !dbg !2295
  call fastcc void @fel_next(%struct.loop_iterator* nonnull %li, %struct.loop** nonnull %loop) #8, !dbg !2300
  br label %for.cond, !dbg !2300, !llvm.loop !2367

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !2369
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2369
  ret void, !dbg !2369
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fel_init(%struct.loop_iterator* %li, %struct.loop** %loop, i32 %flags) unnamed_addr #0 !dbg !2370 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !2376, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !2377, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i32 2, metadata !2378, metadata !DIExpression()), !dbg !2382
  %idx = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 1, !dbg !2383
  store i32 0, i32* %idx, align 8, !dbg !2384
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2385
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !2385
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2385
  %tobool = icmp eq %struct.loops* %1, null, !dbg !2385
  br i1 %tobool, label %if.then, label %if.end, !dbg !2387

if.then:                                          ; preds = %entry
  %to_visit = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2388
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %to_visit, align 8, !dbg !2390
  store %struct.loop* null, %struct.loop** %loop, align 8, !dbg !2391
  br label %cleanup, !dbg !2392

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @number_of_loops() #8, !dbg !2393
  %call1 = tail call fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %call) #8, !dbg !2393
  %to_visit2 = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !2394
  store %struct.VEC_int_heap* %call1, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !2395
  call void @llvm.dbg.value(metadata i32 1, metadata !2381, metadata !DIExpression()), !dbg !2382
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2396
  %x_current_loops35 = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 4, !dbg !2396
  %3 = load %struct.loops*, %struct.loops** %x_current_loops35, align 8, !dbg !2396
  %tree_root = getelementptr inbounds %struct.loops, %struct.loops* %3, i64 0, i32 3, !dbg !2396
  %4 = load %struct.loop*, %struct.loop** %tree_root, align 8, !dbg !2396
  br label %for.cond36, !dbg !2399

for.cond36:                                       ; preds = %if.end, %for.inc40
  %5 = phi %struct.loop* [ %4, %if.end ], [ %12, %for.inc40 ]
  %6 = phi %struct.loop* [ %4, %if.end ], [ %12, %for.inc40 ]
  %7 = phi %struct.loop* [ %4, %if.end ], [ %12, %for.inc40 ]
  %8 = phi %struct.loop* [ %4, %if.end ], [ %12, %for.inc40 ]
  %9 = phi %struct.loop* [ %4, %if.end ], [ %12, %for.inc40 ]
  %10 = phi %struct.loop* [ %4, %if.end ], [ %12, %for.inc40 ], !dbg !2402
  call void @llvm.dbg.value(metadata %struct.loop* %10, metadata !2379, metadata !DIExpression()), !dbg !2382
  %inner37 = getelementptr inbounds %struct.loop, %struct.loop* %10, i64 0, i32 8, !dbg !2404
  %11 = load %struct.loop*, %struct.loop** %inner37, align 8, !dbg !2404
  %cmp38 = icmp eq %struct.loop* %11, null, !dbg !2405
  br i1 %cmp38, label %while.cond.preheader, label %for.inc40, !dbg !2399

while.cond.preheader:                             ; preds = %for.cond36
  %.lcssa12 = phi %struct.loop* [ %5, %for.cond36 ]
  %.lcssa11 = phi %struct.loop* [ %6, %for.cond36 ]
  %.lcssa10 = phi %struct.loop* [ %7, %for.cond36 ]
  %.lcssa9 = phi %struct.loop* [ %8, %for.cond36 ]
  br label %while.cond, !dbg !2406

for.inc40:                                        ; preds = %for.cond36
  call void @llvm.dbg.value(metadata %struct.loop* %9, metadata !2379, metadata !DIExpression()), !dbg !2382
  %inner41 = getelementptr inbounds %struct.loop, %struct.loop* %9, i64 0, i32 8, !dbg !2407
  %12 = load %struct.loop*, %struct.loop** %inner41, align 8, !dbg !2407
  br label %for.cond36, !dbg !2408, !llvm.loop !2409

while.cond:                                       ; preds = %while.cond.preheader, %if.end74
  %13 = phi %struct.loop* [ %.lcssa12, %while.cond.preheader ], [ %26, %if.end74 ]
  %14 = phi %struct.loop* [ %.lcssa11, %while.cond.preheader ], [ %27, %if.end74 ]
  %15 = phi %struct.loop* [ %.lcssa10, %while.cond.preheader ], [ %27, %if.end74 ]
  %16 = phi %struct.loop* [ %.lcssa9, %while.cond.preheader ], [ %27, %if.end74 ], !dbg !2411
  call void @llvm.dbg.value(metadata %struct.loop* %16, metadata !2379, metadata !DIExpression()), !dbg !2382
  %num43 = getelementptr inbounds %struct.loop, %struct.loop* %16, i64 0, i32 0, !dbg !2414
  %17 = load i32, i32* %num43, align 8, !dbg !2414
  %cmp44 = icmp slt i32 %17, 1, !dbg !2415
  br i1 %cmp44, label %if.end56, label %if.then45, !dbg !2416

if.then45:                                        ; preds = %while.cond
  %18 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit2, align 8, !dbg !2417
  %tobool47 = icmp eq %struct.VEC_int_heap* %18, null, !dbg !2417
  br i1 %tobool47, label %cond.end52, label %cond.true48, !dbg !2417

cond.true48:                                      ; preds = %if.then45
  %base50 = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %18, i64 0, i32 0, !dbg !2417
  br label %cond.end52, !dbg !2417

cond.end52:                                       ; preds = %if.then45, %cond.true48
  %cond53 = phi %struct.VEC_int_base* [ %base50, %cond.true48 ], [ null, %if.then45 ], !dbg !2417
  call void @llvm.dbg.value(metadata %struct.loop* %15, metadata !2379, metadata !DIExpression()), !dbg !2382
  %num54 = getelementptr inbounds %struct.loop, %struct.loop* %15, i64 0, i32 0, !dbg !2417
  %19 = load i32, i32* %num54, align 8, !dbg !2417
  %call55 = tail call fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %cond53, i32 %19) #8, !dbg !2417
  br label %if.end56, !dbg !2417

if.end56:                                         ; preds = %while.cond, %cond.end52
  call void @llvm.dbg.value(metadata %struct.loop* %14, metadata !2379, metadata !DIExpression()), !dbg !2382
  %next = getelementptr inbounds %struct.loop, %struct.loop* %14, i64 0, i32 9, !dbg !2418
  %20 = load %struct.loop*, %struct.loop** %next, align 8, !dbg !2418
  %tobool57 = icmp eq %struct.loop* %20, null, !dbg !2420
  call void @llvm.dbg.value(metadata %struct.loop* %14, metadata !2379, metadata !DIExpression()), !dbg !2382
  br i1 %tobool57, label %if.else67, label %if.then58, !dbg !2421

if.then58:                                        ; preds = %if.end56
  br label %for.cond60, !dbg !2422

for.cond60:                                       ; preds = %for.inc64, %if.then58
  %21 = phi %struct.loop* [ %25, %for.inc64 ], [ %20, %if.then58 ]
  %22 = phi %struct.loop* [ %25, %for.inc64 ], [ %20, %if.then58 ]
  %23 = phi %struct.loop* [ %25, %for.inc64 ], [ %20, %if.then58 ], !dbg !2425
  call void @llvm.dbg.value(metadata %struct.loop* %23, metadata !2379, metadata !DIExpression()), !dbg !2382
  %inner61 = getelementptr inbounds %struct.loop, %struct.loop* %23, i64 0, i32 8, !dbg !2427
  %24 = load %struct.loop*, %struct.loop** %inner61, align 8, !dbg !2427
  %cmp62 = icmp eq %struct.loop* %24, null, !dbg !2428
  br i1 %cmp62, label %if.end74.loopexit, label %for.inc64, !dbg !2429

for.inc64:                                        ; preds = %for.cond60
  call void @llvm.dbg.value(metadata %struct.loop* %22, metadata !2379, metadata !DIExpression()), !dbg !2382
  %inner65 = getelementptr inbounds %struct.loop, %struct.loop* %22, i64 0, i32 8, !dbg !2430
  %25 = load %struct.loop*, %struct.loop** %inner65, align 8, !dbg !2430
  br label %for.cond60, !dbg !2431, !llvm.loop !2432

if.else67:                                        ; preds = %if.end56
  %call68 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %14) #8, !dbg !2434
  %tobool69 = icmp eq %struct.loop* %call68, null, !dbg !2434
  br i1 %tobool69, label %if.end114.loopexit1, label %if.else71, !dbg !2436

if.else71:                                        ; preds = %if.else67
  call void @llvm.dbg.value(metadata %struct.loop* %13, metadata !2379, metadata !DIExpression()), !dbg !2382
  %call72 = tail call fastcc %struct.loop* @loop_outer(%struct.loop* %13) #8, !dbg !2437
  call void @llvm.dbg.value(metadata %struct.loop* %call72, metadata !2379, metadata !DIExpression()), !dbg !2382
  br label %if.end74

if.end74.loopexit:                                ; preds = %for.cond60
  %.lcssa8 = phi %struct.loop* [ %21, %for.cond60 ]
  %.lcssa = phi %struct.loop* [ %23, %for.cond60 ], !dbg !2425
  call void @llvm.dbg.value(metadata %struct.loop* %.lcssa, metadata !2379, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata %struct.loop* %.lcssa, metadata !2379, metadata !DIExpression()), !dbg !2382
  br label %if.end74, !dbg !2406

if.end74:                                         ; preds = %if.end74.loopexit, %if.else71
  %26 = phi %struct.loop* [ %.lcssa8, %if.end74.loopexit ], [ %call72, %if.else71 ]
  %27 = phi %struct.loop* [ %.lcssa, %if.end74.loopexit ], [ %call72, %if.else71 ]
  br label %while.cond, !dbg !2406, !llvm.loop !2438

if.end114.loopexit1:                              ; preds = %if.else67
  call fastcc void @fel_next(%struct.loop_iterator* %li, %struct.loop** %loop) #8, !dbg !2440
  br label %cleanup, !dbg !2441

cleanup:                                          ; preds = %if.end114.loopexit1, %if.then
  ret void, !dbg !2441
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @peel_loop_simple(%struct.loop* %loop) unnamed_addr #4 !dbg !2442 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2446, metadata !DIExpression()), !dbg !2477
  %times = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 4, i32 1, !dbg !2478
  %0 = load i32, i32* %times, align 4, !dbg !2478
  call void @llvm.dbg.value(metadata i32 %0, metadata !2458, metadata !DIExpression()), !dbg !2477
  %call = tail call %struct.niter_desc* @get_simple_loop_desc(%struct.loop* %loop) #6, !dbg !2479
  call void @llvm.dbg.value(metadata %struct.niter_desc* %call, metadata !2459, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata %struct.opt_info* null, metadata !2475, metadata !DIExpression()), !dbg !2477
  %1 = load i32, i32* @flag_split_ivs_in_unroller, align 4, !dbg !2480
  %tobool = icmp ne i32 %1, 0, !dbg !2480
  %cmp = icmp ugt i32 %0, 1, !dbg !2482
  %or.cond = and i1 %tobool, %cmp, !dbg !2483
  br i1 %or.cond, label %if.then, label %if.end, !dbg !2483

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.opt_info* @analyze_insns_in_loop(%struct.loop* %loop) #8, !dbg !2484
  call void @llvm.dbg.value(metadata %struct.opt_info* %call1, metadata !2475, metadata !DIExpression()), !dbg !2477
  br label %if.end, !dbg !2485

if.end:                                           ; preds = %if.then, %entry
  %opt_info.0 = phi %struct.opt_info* [ %call1, %if.then ], [ null, %entry ], !dbg !2477
  call void @llvm.dbg.value(metadata %struct.opt_info* %opt_info.0, metadata !2475, metadata !DIExpression()), !dbg !2477
  %add = add i32 %0, 1, !dbg !2486
  %call2 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %add) #6, !dbg !2487
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call2, metadata !2447, metadata !DIExpression()), !dbg !2477
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call2) #6, !dbg !2488
  tail call fastcc void @opt_info_start_duplication(%struct.opt_info* %opt_info.0) #8, !dbg !2489
  %call3 = tail call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !2490
  %tobool4 = icmp eq %struct.opt_info* %opt_info.0, null, !dbg !2491
  %or = select i1 %tobool4, i32 1, i32 3, !dbg !2492
  %call5 = tail call zeroext i8 @duplicate_loop_to_header_edge(%struct.loop* %loop, %struct.edge_def* %call3, i32 %0, %struct.simple_bitmap_def* %call2, %struct.edge_def* null, %struct.VEC_edge_heap** null, i32 %or) #6, !dbg !2493
  call void @llvm.dbg.value(metadata i8 %call5, metadata !2476, metadata !DIExpression()), !dbg !2477
  %tobool6 = icmp eq i8 %call5, 0, !dbg !2494
  br i1 %tobool6, label %cond.true, label %cond.end, !dbg !2494

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1312, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2494
  br label %cond.end, !dbg !2494

cond.end:                                         ; preds = %if.end, %cond.true
  %2 = bitcast %struct.simple_bitmap_def* %call2 to i8*, !dbg !2495
  tail call void @free(i8* %2) #6, !dbg !2496
  br i1 %tobool4, label %if.end10, label %if.then9, !dbg !2497

if.then9:                                         ; preds = %cond.end
  tail call fastcc void @apply_opt_in_copies(%struct.opt_info* nonnull %opt_info.0, i32 %0, i8 zeroext 0, i8 zeroext 0) #8, !dbg !2498
  tail call fastcc void @free_opt_info(%struct.opt_info* nonnull %opt_info.0) #8, !dbg !2501
  br label %if.end10, !dbg !2502

if.end10:                                         ; preds = %cond.end, %if.then9
  %simple_p = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call, i64 0, i32 2, !dbg !2503
  %3 = load i8, i8* %simple_p, align 8, !dbg !2503
  %tobool11 = icmp eq i8 %3, 0, !dbg !2505
  br i1 %tobool11, label %if.end18, label %if.then12, !dbg !2506

if.then12:                                        ; preds = %if.end10
  %const_iter = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call, i64 0, i32 3, !dbg !2507
  %4 = load i8, i8* %const_iter, align 1, !dbg !2507
  %tobool13 = icmp eq i8 %4, 0, !dbg !2510
  br i1 %tobool13, label %if.else, label %if.then14, !dbg !2511

if.then14:                                        ; preds = %if.then12
  %conv = zext i32 %0 to i64, !dbg !2512
  %niter = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call, i64 0, i32 4, !dbg !2514
  %5 = load i64, i64* %niter, align 8, !dbg !2515
  %sub = sub i64 %5, %conv, !dbg !2515
  store i64 %sub, i64* %niter, align 8, !dbg !2515
  %call16 = tail call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %sub) #6, !dbg !2516
  %niter_expr = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call, i64 0, i32 11, !dbg !2517
  store %struct.rtx_def* %call16, %struct.rtx_def** %niter_expr, align 8, !dbg !2518
  %noloop_assumptions = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call, i64 0, i32 7, !dbg !2519
  store %struct.rtx_def* null, %struct.rtx_def** %noloop_assumptions, align 8, !dbg !2520
  br label %if.end18, !dbg !2521

if.else:                                          ; preds = %if.then12
  tail call void @free_simple_loop_desc(%struct.loop* %loop) #6, !dbg !2522
  br label %if.end18

if.end18:                                         ; preds = %if.end10, %if.then14, %if.else
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2524
  %tobool19 = icmp eq %struct._IO_FILE* %6, null, !dbg !2524
  br i1 %tobool19, label %if.end22, label %if.then20, !dbg !2526

if.then20:                                        ; preds = %if.end18
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i64 0, i64 0), i32 %0) #6, !dbg !2527
  br label %if.end22, !dbg !2527

if.end22:                                         ; preds = %if.end18, %if.then20
  ret void, !dbg !2528
}

; Function Attrs: nounwind uwtable
define internal fastcc void @unroll_loop_constant_iterations(%struct.loop* %loop) unnamed_addr #4 !dbg !2529 {
entry:
  %remove_edges = alloca %struct.VEC_edge_heap*, align 8
  %e = alloca %struct.edge_def*, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2531, metadata !DIExpression()), !dbg !2551
  %0 = bitcast %struct.VEC_edge_heap** %remove_edges to i8*, !dbg !2552
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2552
  %1 = bitcast %struct.edge_def** %e to i8*, !dbg !2553
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2553
  %times = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 4, i32 1, !dbg !2554
  %2 = load i32, i32* %times, align 4, !dbg !2554
  call void @llvm.dbg.value(metadata i32 %2, metadata !2543, metadata !DIExpression()), !dbg !2551
  %call = tail call %struct.niter_desc* @get_simple_loop_desc(%struct.loop* %loop) #6, !dbg !2555
  call void @llvm.dbg.value(metadata %struct.niter_desc* %call, metadata !2544, metadata !DIExpression()), !dbg !2551
  %call1 = tail call fastcc zeroext i8 @loop_exit_at_end_p(%struct.loop* %loop) #8, !dbg !2556
  call void @llvm.dbg.value(metadata i8 %call1, metadata !2545, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata %struct.opt_info* null, metadata !2546, metadata !DIExpression()), !dbg !2551
  %niter2 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call, i64 0, i32 4, !dbg !2557
  %3 = load i64, i64* %niter2, align 8, !dbg !2557
  call void @llvm.dbg.value(metadata i64 %3, metadata !2532, metadata !DIExpression()), !dbg !2551
  %add = add i32 %2, 1, !dbg !2558
  %conv = zext i32 %add to i64, !dbg !2558
  %cmp = icmp ugt i64 %3, %conv, !dbg !2558
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2558

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 656, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2558
  br label %cond.end, !dbg !2558

cond.end:                                         ; preds = %entry, %cond.true
  %rem = urem i64 %3, %conv, !dbg !2559
  %conv6 = trunc i64 %rem to i32, !dbg !2560
  call void @llvm.dbg.value(metadata i32 %conv6, metadata !2533, metadata !DIExpression()), !dbg !2551
  %call8 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %add) #6, !dbg !2561
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call8, metadata !2534, metadata !DIExpression()), !dbg !2551
  tail call void @sbitmap_ones(%struct.simple_bitmap_def* %call8) #6, !dbg !2562
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* null, metadata !2536, metadata !DIExpression()), !dbg !2551
  store %struct.VEC_edge_heap* null, %struct.VEC_edge_heap** %remove_edges, align 8, !dbg !2563
  %4 = load i32, i32* @flag_split_ivs_in_unroller, align 4, !dbg !2564
  %5 = load i32, i32* @flag_variable_expansion_in_unroller, align 4, !dbg !2566
  %6 = or i32 %4, %5, !dbg !2567
  %7 = icmp eq i32 %6, 0, !dbg !2567
  br i1 %7, label %if.end, label %if.then, !dbg !2567

if.then:                                          ; preds = %cond.end
  %call10 = tail call fastcc %struct.opt_info* @analyze_insns_in_loop(%struct.loop* %loop) #8, !dbg !2568
  call void @llvm.dbg.value(metadata %struct.opt_info* %call10, metadata !2546, metadata !DIExpression()), !dbg !2551
  br label %if.end, !dbg !2569

if.end:                                           ; preds = %cond.end, %if.then
  %opt_info.0 = phi %struct.opt_info* [ %call10, %if.then ], [ null, %cond.end ], !dbg !2551
  call void @llvm.dbg.value(metadata %struct.opt_info* %opt_info.0, metadata !2546, metadata !DIExpression()), !dbg !2551
  %tobool11 = icmp eq i8 %call1, 0, !dbg !2570
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2572
  %tobool44 = icmp ne %struct._IO_FILE* %8, null, !dbg !2572
  br i1 %tobool11, label %if.then12, label %if.else, !dbg !2573

if.then12:                                        ; preds = %if.end
  br i1 %tobool44, label %if.then14, label %if.end16, !dbg !2574

if.then14:                                        ; preds = %if.then12
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i64 0, i64 0)) #6, !dbg !2576
  br label %if.end16, !dbg !2576

if.end16:                                         ; preds = %if.then14, %if.then12
  tail call fastcc void @RESET_BIT(%struct.simple_bitmap_def* %call8, i32 0) #8, !dbg !2578
  %noloop_assumptions = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call, i64 0, i32 7, !dbg !2579
  %9 = load %struct.rtx_def*, %struct.rtx_def** %noloop_assumptions, align 8, !dbg !2579
  %tobool17 = icmp eq %struct.rtx_def* %9, null, !dbg !2581
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !2582

if.then18:                                        ; preds = %if.end16
  tail call fastcc void @RESET_BIT(%struct.simple_bitmap_def* %call8, i32 1) #8, !dbg !2583
  br label %if.end19, !dbg !2583

if.end19:                                         ; preds = %if.end16, %if.then18
  %tobool20 = icmp eq i32 %conv6, 0, !dbg !2584
  br i1 %tobool20, label %if.end43, label %if.then21, !dbg !2586

if.then21:                                        ; preds = %if.end19
  tail call fastcc void @opt_info_start_duplication(%struct.opt_info* %opt_info.0) #8, !dbg !2587
  %call22 = tail call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !2589
  %out_edge = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call, i64 0, i32 0, !dbg !2590
  %10 = load %struct.edge_def*, %struct.edge_def** %out_edge, align 8, !dbg !2590
  %tobool23 = icmp ne %struct.opt_info* %opt_info.0, null, !dbg !2591
  %cmp24 = icmp ne i32 %conv6, 1, !dbg !2592
  %spec.select = and i1 %cmp24, %tobool23, !dbg !2593
  %or = select i1 %spec.select, i32 3, i32 1, !dbg !2594
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %remove_edges, metadata !2536, metadata !DIExpression(DW_OP_deref)), !dbg !2551
  %call27 = call zeroext i8 @duplicate_loop_to_header_edge(%struct.loop* %loop, %struct.edge_def* %call22, i32 %conv6, %struct.simple_bitmap_def* %call8, %struct.edge_def* %10, %struct.VEC_edge_heap** nonnull %remove_edges, i32 %or) #6, !dbg !2595
  call void @llvm.dbg.value(metadata i8 %call27, metadata !2547, metadata !DIExpression()), !dbg !2551
  %tobool28 = icmp eq i8 %call27, 0, !dbg !2596
  br i1 %tobool28, label %cond.true29, label %cond.end31, !dbg !2596

cond.true29:                                      ; preds = %if.then21
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 693, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2596
  br label %cond.end31, !dbg !2596

cond.end31:                                       ; preds = %if.then21, %cond.true29
  %cmp34 = icmp ugt i32 %conv6, 1, !dbg !2597
  %or.cond1 = and i1 %tobool23, %cmp34, !dbg !2599
  br i1 %or.cond1, label %if.then36, label %if.end37, !dbg !2599

if.then36:                                        ; preds = %cond.end31
  call fastcc void @apply_opt_in_copies(%struct.opt_info* nonnull %opt_info.0, i32 %conv6, i8 zeroext 0, i8 zeroext 0) #8, !dbg !2600
  br label %if.end37, !dbg !2600

if.end37:                                         ; preds = %if.then36, %cond.end31
  store %struct.rtx_def* null, %struct.rtx_def** %noloop_assumptions, align 8, !dbg !2601
  %11 = load i64, i64* %niter2, align 8, !dbg !2602
  %sub = sub i64 %11, %rem, !dbg !2602
  store i64 %sub, i64* %niter2, align 8, !dbg !2602
  %niter_max = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call, i64 0, i32 5, !dbg !2603
  %12 = load i64, i64* %niter_max, align 8, !dbg !2604
  %sub42 = sub i64 %12, %rem, !dbg !2604
  store i64 %sub42, i64* %niter_max, align 8, !dbg !2604
  br label %if.end43, !dbg !2605

if.end43:                                         ; preds = %if.end19, %if.end37
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call8, i32 1) #8, !dbg !2606
  br label %if.end91, !dbg !2607

if.else:                                          ; preds = %if.end
  br i1 %tobool44, label %if.then45, label %if.end47, !dbg !2608

if.then45:                                        ; preds = %if.else
  %call46 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i64 0, i64 0)) #6, !dbg !2610
  br label %if.end47, !dbg !2610

if.end47:                                         ; preds = %if.then45, %if.else
  %cmp48 = icmp eq i32 %2, %conv6, !dbg !2612
  br i1 %cmp48, label %lor.lhs.false50, label %if.then53, !dbg !2614

lor.lhs.false50:                                  ; preds = %if.end47
  %noloop_assumptions51 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call, i64 0, i32 7, !dbg !2615
  %13 = load %struct.rtx_def*, %struct.rtx_def** %noloop_assumptions51, align 8, !dbg !2615
  %tobool52 = icmp eq %struct.rtx_def* %13, null, !dbg !2616
  br i1 %tobool52, label %if.end90, label %if.then53, !dbg !2617

if.then53:                                        ; preds = %lor.lhs.false50, %if.end47
  tail call fastcc void @RESET_BIT(%struct.simple_bitmap_def* %call8, i32 0) #8, !dbg !2618
  %noloop_assumptions54 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call, i64 0, i32 7, !dbg !2620
  %14 = load %struct.rtx_def*, %struct.rtx_def** %noloop_assumptions54, align 8, !dbg !2620
  %tobool55 = icmp eq %struct.rtx_def* %14, null, !dbg !2622
  br i1 %tobool55, label %if.end57, label %if.then56, !dbg !2623

if.then56:                                        ; preds = %if.then53
  tail call fastcc void @RESET_BIT(%struct.simple_bitmap_def* %call8, i32 1) #8, !dbg !2624
  br label %if.end57, !dbg !2624

if.end57:                                         ; preds = %if.then53, %if.then56
  tail call fastcc void @opt_info_start_duplication(%struct.opt_info* %opt_info.0) #8, !dbg !2625
  %call58 = tail call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !2626
  %add59 = add i32 %conv6, 1, !dbg !2627
  %out_edge60 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call, i64 0, i32 0, !dbg !2628
  %15 = load %struct.edge_def*, %struct.edge_def** %out_edge60, align 8, !dbg !2628
  %tobool61 = icmp ne %struct.opt_info* %opt_info.0, null, !dbg !2629
  %cmp63 = icmp ne i32 %conv6, 0, !dbg !2630
  %spec.select2 = and i1 %cmp63, %tobool61, !dbg !2631
  %or67 = select i1 %spec.select2, i32 3, i32 1, !dbg !2632
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %remove_edges, metadata !2536, metadata !DIExpression(DW_OP_deref)), !dbg !2551
  %call68 = call zeroext i8 @duplicate_loop_to_header_edge(%struct.loop* %loop, %struct.edge_def* %call58, i32 %add59, %struct.simple_bitmap_def* %call8, %struct.edge_def* %15, %struct.VEC_edge_heap** nonnull %remove_edges, i32 %or67) #6, !dbg !2633
  call void @llvm.dbg.value(metadata i8 %call68, metadata !2547, metadata !DIExpression()), !dbg !2551
  %tobool69 = icmp eq i8 %call68, 0, !dbg !2634
  br i1 %tobool69, label %cond.true70, label %cond.end72, !dbg !2634

cond.true70:                                      ; preds = %if.end57
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 732, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2634
  br label %cond.end72, !dbg !2634

cond.end72:                                       ; preds = %if.end57, %cond.true70
  br i1 %spec.select2, label %if.then78, label %if.end80, !dbg !2635

if.then78:                                        ; preds = %cond.end72
  call fastcc void @apply_opt_in_copies(%struct.opt_info* nonnull %opt_info.0, i32 %add59, i8 zeroext 0, i8 zeroext 0) #8, !dbg !2637
  br label %if.end80, !dbg !2637

if.end80:                                         ; preds = %if.then78, %cond.end72
  %add81 = add nuw nsw i64 %rem, 1, !dbg !2638
  %conv82 = and i64 %add81, 4294967295, !dbg !2639
  %16 = load i64, i64* %niter2, align 8, !dbg !2640
  %sub84 = sub i64 %16, %conv82, !dbg !2640
  store i64 %sub84, i64* %niter2, align 8, !dbg !2640
  %niter_max87 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call, i64 0, i32 5, !dbg !2641
  %17 = load i64, i64* %niter_max87, align 8, !dbg !2642
  %sub88 = sub i64 %17, %conv82, !dbg !2642
  store i64 %sub88, i64* %niter_max87, align 8, !dbg !2642
  store %struct.rtx_def* null, %struct.rtx_def** %noloop_assumptions54, align 8, !dbg !2643
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call8, i32 0) #8, !dbg !2644
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call8, i32 1) #8, !dbg !2645
  br label %if.end90, !dbg !2646

if.end90:                                         ; preds = %lor.lhs.false50, %if.end80
  call fastcc void @RESET_BIT(%struct.simple_bitmap_def* %call8, i32 %2) #8, !dbg !2647
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.end43
  call fastcc void @opt_info_start_duplication(%struct.opt_info* %opt_info.0) #8, !dbg !2648
  %call92 = call %struct.edge_def* @loop_latch_edge(%struct.loop* %loop) #6, !dbg !2649
  %out_edge93 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call, i64 0, i32 0, !dbg !2650
  %18 = load %struct.edge_def*, %struct.edge_def** %out_edge93, align 8, !dbg !2650
  %tobool94 = icmp eq %struct.opt_info* %opt_info.0, null, !dbg !2651
  %or96 = select i1 %tobool94, i32 1, i32 3, !dbg !2652
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %remove_edges, metadata !2536, metadata !DIExpression(DW_OP_deref)), !dbg !2551
  %call97 = call zeroext i8 @duplicate_loop_to_header_edge(%struct.loop* %loop, %struct.edge_def* %call92, i32 %2, %struct.simple_bitmap_def* %call8, %struct.edge_def* %18, %struct.VEC_edge_heap** nonnull %remove_edges, i32 %or96) #6, !dbg !2653
  call void @llvm.dbg.value(metadata i8 %call97, metadata !2547, metadata !DIExpression()), !dbg !2551
  %tobool98 = icmp eq i8 %call97, 0, !dbg !2654
  br i1 %tobool98, label %cond.true99, label %cond.end101, !dbg !2654

cond.true99:                                      ; preds = %if.end91
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 759, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2654
  br label %cond.end101, !dbg !2654

cond.end101:                                      ; preds = %if.end91, %cond.true99
  br i1 %tobool94, label %if.end105, label %if.then104, !dbg !2655

if.then104:                                       ; preds = %cond.end101
  call fastcc void @apply_opt_in_copies(%struct.opt_info* nonnull %opt_info.0, i32 %2, i8 zeroext 1, i8 zeroext 1) #8, !dbg !2656
  call fastcc void @free_opt_info(%struct.opt_info* nonnull %opt_info.0) #8, !dbg !2659
  br label %if.end105, !dbg !2660

if.end105:                                        ; preds = %cond.end101, %if.then104
  %19 = bitcast %struct.simple_bitmap_def* %call8 to i8*, !dbg !2661
  call void @free(i8* %19) #6, !dbg !2662
  br i1 %tobool11, label %if.end163, label %if.then107, !dbg !2663

if.then107:                                       ; preds = %if.end105
  %in_edge = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call, i64 0, i32 1, !dbg !2664
  %20 = load %struct.edge_def*, %struct.edge_def** %in_edge, align 8, !dbg !2664
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %20, i64 0, i32 0, !dbg !2665
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2665
  %call108 = call %struct.basic_block_def* @get_bb_copy(%struct.basic_block_def* %21) #6, !dbg !2666
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call108, metadata !2548, metadata !DIExpression()), !dbg !2667
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call108, i64 0, i32 1, !dbg !2668
  %22 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2668
  %tobool109 = icmp eq %struct.VEC_edge_gc* %22, null, !dbg !2668
  br i1 %tobool109, label %cond.end113, label %cond.true110, !dbg !2668

cond.true110:                                     ; preds = %if.then107
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %22, i64 0, i32 0, !dbg !2668
  br label %cond.end113, !dbg !2668

cond.end113:                                      ; preds = %if.then107, %cond.true110
  %cond114 = phi %struct.VEC_edge_base* [ %base, %cond.true110 ], [ null, %if.then107 ], !dbg !2668
  %call115 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond114, i32 0) #8, !dbg !2668
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call115, i64 0, i32 1, !dbg !2670
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2670
  %24 = load %struct.edge_def*, %struct.edge_def** %out_edge93, align 8, !dbg !2671
  %dest117 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %24, i64 0, i32 1, !dbg !2672
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %dest117, align 8, !dbg !2672
  %cmp118 = icmp eq %struct.basic_block_def* %23, %25, !dbg !2673
  %26 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2674
  %tobool122 = icmp ne %struct.VEC_edge_gc* %26, null, !dbg !2674
  br i1 %cmp118, label %if.then120, label %if.else141, !dbg !2675

if.then120:                                       ; preds = %cond.end113
  br i1 %tobool122, label %cond.true123, label %cond.end127, !dbg !2676

cond.true123:                                     ; preds = %if.then120
  %base125 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %26, i64 0, i32 0, !dbg !2676
  br label %cond.end127, !dbg !2676

cond.end127:                                      ; preds = %if.then120, %cond.true123
  %cond128 = phi %struct.VEC_edge_base* [ %base125, %cond.true123 ], [ null, %if.then120 ], !dbg !2676
  %call129 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond128, i32 0) #8, !dbg !2676
  store %struct.edge_def* %call129, %struct.edge_def** %out_edge93, align 8, !dbg !2678
  %27 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2679
  %tobool132 = icmp eq %struct.VEC_edge_gc* %27, null, !dbg !2679
  br i1 %tobool132, label %cond.end137, label %cond.true133, !dbg !2679

cond.true133:                                     ; preds = %cond.end127
  %base135 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %27, i64 0, i32 0, !dbg !2679
  br label %cond.end137, !dbg !2679

cond.end137:                                      ; preds = %cond.end127, %cond.true133
  %cond138 = phi %struct.VEC_edge_base* [ %base135, %cond.true133 ], [ null, %cond.end127 ], !dbg !2679
  %call139 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond138, i32 1) #8, !dbg !2679
  store %struct.edge_def* %call139, %struct.edge_def** %in_edge, align 8, !dbg !2680
  br label %if.end163, !dbg !2681

if.else141:                                       ; preds = %cond.end113
  br i1 %tobool122, label %cond.true144, label %cond.end148, !dbg !2682

cond.true144:                                     ; preds = %if.else141
  %base146 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %26, i64 0, i32 0, !dbg !2682
  br label %cond.end148, !dbg !2682

cond.end148:                                      ; preds = %if.else141, %cond.true144
  %cond149 = phi %struct.VEC_edge_base* [ %base146, %cond.true144 ], [ null, %if.else141 ], !dbg !2682
  %call150 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond149, i32 1) #8, !dbg !2682
  store %struct.edge_def* %call150, %struct.edge_def** %out_edge93, align 8, !dbg !2684
  %28 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2685
  %tobool153 = icmp eq %struct.VEC_edge_gc* %28, null, !dbg !2685
  br i1 %tobool153, label %cond.end158, label %cond.true154, !dbg !2685

cond.true154:                                     ; preds = %cond.end148
  %base156 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %28, i64 0, i32 0, !dbg !2685
  br label %cond.end158, !dbg !2685

cond.end158:                                      ; preds = %cond.end148, %cond.true154
  %cond159 = phi %struct.VEC_edge_base* [ %base156, %cond.true154 ], [ null, %cond.end148 ], !dbg !2685
  %call160 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond159, i32 0) #8, !dbg !2685
  store %struct.edge_def* %call160, %struct.edge_def** %in_edge, align 8, !dbg !2686
  br label %if.end163

if.end163:                                        ; preds = %if.end105, %cond.end137, %cond.end158
  %29 = load i64, i64* %niter2, align 8, !dbg !2687
  %div = udiv i64 %29, %conv, !dbg !2687
  store i64 %div, i64* %niter2, align 8, !dbg !2687
  %niter_max169 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call, i64 0, i32 5, !dbg !2688
  %30 = load i64, i64* %niter_max169, align 8, !dbg !2689
  %div170 = udiv i64 %30, %conv, !dbg !2689
  store i64 %div170, i64* %niter_max169, align 8, !dbg !2689
  %call172 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %div) #6, !dbg !2690
  %niter_expr = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call, i64 0, i32 11, !dbg !2691
  store %struct.rtx_def* %call172, %struct.rtx_def** %niter_expr, align 8, !dbg !2692
  call void @llvm.dbg.value(metadata i32 0, metadata !2535, metadata !DIExpression()), !dbg !2551
  br label %for.cond, !dbg !2693

for.cond:                                         ; preds = %for.body, %if.end163
  %i.0 = phi i32 [ 0, %if.end163 ], [ %inc, %for.body ], !dbg !2695
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2535, metadata !DIExpression()), !dbg !2551
  %31 = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** %remove_edges, align 8, !dbg !2696
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %31, metadata !2536, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %31, metadata !2536, metadata !DIExpression()), !dbg !2551
  %base175 = getelementptr inbounds %struct.VEC_edge_heap, %struct.VEC_edge_heap* %31, i64 0, i32 0, !dbg !2696
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2542, metadata !DIExpression(DW_OP_deref)), !dbg !2551
  %call179 = call fastcc i32 @VEC_edge_base_iterate(%struct.VEC_edge_base* %base175, i32 %i.0, %struct.edge_def** nonnull %e) #8, !dbg !2696
  %tobool180 = icmp eq i32 %call179, 0, !dbg !2698
  br i1 %tobool180, label %for.end, label %for.body, !dbg !2698

for.body:                                         ; preds = %for.cond
  %32 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2699
  call void @llvm.dbg.value(metadata %struct.edge_def* %32, metadata !2542, metadata !DIExpression()), !dbg !2551
  %call181 = call zeroext i8 @remove_path(%struct.edge_def* %32) #6, !dbg !2700
  %inc = add i32 %i.0, 1, !dbg !2701
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2535, metadata !DIExpression()), !dbg !2551
  br label %for.cond, !dbg !2702, !llvm.loop !2703

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %remove_edges, metadata !2536, metadata !DIExpression(DW_OP_deref)), !dbg !2551
  call fastcc void @VEC_edge_heap_free(%struct.VEC_edge_heap** nonnull %remove_edges) #8, !dbg !2705
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2706
  %tobool182 = icmp eq %struct._IO_FILE* %33, null, !dbg !2706
  br i1 %tobool182, label %if.end186, label %if.then183, !dbg !2708

if.then183:                                       ; preds = %for.end
  %call184 = call i32 @num_loop_insns(%struct.loop* %loop) #6, !dbg !2709
  %call185 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %33, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.39, i64 0, i64 0), i32 %2, i32 %call184) #6, !dbg !2710
  br label %if.end186, !dbg !2710

if.end186:                                        ; preds = %for.end, %if.then183
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2711
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2711
  ret void, !dbg !2711
}

; Function Attrs: nounwind uwtable
define internal fastcc void @unroll_loop_runtime_iterations(%struct.loop* %loop) unnamed_addr #4 !dbg !2712 {
entry:
  %dom_bbs = alloca %struct.VEC_basic_block_heap*, align 8
  %remove_edges = alloca %struct.VEC_edge_heap*, align 8
  %e = alloca %struct.edge_def*, align 8
  %ldom = alloca %struct.VEC_basic_block_heap*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2714, metadata !DIExpression()), !dbg !2749
  %0 = bitcast %struct.VEC_basic_block_heap** %dom_bbs to i8*, !dbg !2750
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2750
  %1 = bitcast %struct.VEC_edge_heap** %remove_edges to i8*, !dbg !2751
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2751
  %2 = bitcast %struct.edge_def** %e to i8*, !dbg !2752
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #7, !dbg !2752
  %times = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 4, i32 1, !dbg !2753
  %3 = load i32, i32* %times, align 4, !dbg !2753
  call void @llvm.dbg.value(metadata i32 %3, metadata !2736, metadata !DIExpression()), !dbg !2749
  %call = tail call %struct.niter_desc* @get_simple_loop_desc(%struct.loop* %loop) #6, !dbg !2754
  call void @llvm.dbg.value(metadata %struct.niter_desc* %call, metadata !2737, metadata !DIExpression()), !dbg !2749
  %call1 = tail call fastcc zeroext i8 @loop_exit_at_end_p(%struct.loop* %loop) #8, !dbg !2755
  call void @llvm.dbg.value(metadata i8 %call1, metadata !2738, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata %struct.opt_info* null, metadata !2739, metadata !DIExpression()), !dbg !2749
  %4 = load i32, i32* @flag_split_ivs_in_unroller, align 4, !dbg !2756
  %5 = load i32, i32* @flag_variable_expansion_in_unroller, align 4, !dbg !2758
  %6 = or i32 %4, %5, !dbg !2759
  %7 = icmp eq i32 %6, 0, !dbg !2759
  br i1 %7, label %if.end, label %if.then, !dbg !2759

if.then:                                          ; preds = %entry
  %call3 = tail call fastcc %struct.opt_info* @analyze_insns_in_loop(%struct.loop* %loop) #8, !dbg !2760
  call void @llvm.dbg.value(metadata %struct.opt_info* %call3, metadata !2739, metadata !DIExpression()), !dbg !2749
  br label %if.end, !dbg !2761

if.end:                                           ; preds = %entry, %if.then
  %opt_info.0 = phi %struct.opt_info* [ %call3, %if.then ], [ null, %entry ], !dbg !2749
  call void @llvm.dbg.value(metadata %struct.opt_info* %opt_info.0, metadata !2739, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* null, metadata !2728, metadata !DIExpression()), !dbg !2749
  store %struct.VEC_basic_block_heap* null, %struct.VEC_basic_block_heap** %dom_bbs, align 8, !dbg !2762
  %call4 = tail call %struct.basic_block_def** @get_loop_body(%struct.loop* %loop) #6, !dbg !2763
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %call4, metadata !2724, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i32 0, metadata !2720, metadata !DIExpression()), !dbg !2749
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !2764
  %8 = bitcast %struct.VEC_basic_block_heap** %ldom to i8*, !dbg !2765
  %9 = bitcast %struct.basic_block_def** %bb to i8*, !dbg !2765
  br label %for.cond, !dbg !2766

for.cond:                                         ; preds = %for.end, %if.end
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.end ], [ 0, %if.end ], !dbg !2767
  call void @llvm.dbg.value(metadata i64 %indvars.iv10, metadata !2720, metadata !DIExpression()), !dbg !2749
  %10 = load i32, i32* %num_nodes, align 4, !dbg !2768
  %11 = zext i32 %10 to i64, !dbg !2769
  %cmp = icmp ult i64 %indvars.iv10, %11, !dbg !2769
  br i1 %cmp, label %for.body, label %for.end18, !dbg !2770

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #7, !dbg !2771
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #7, !dbg !2772
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call4, i64 %indvars.iv10, !dbg !2773
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !2773
  %call5 = call %struct.VEC_basic_block_heap* @get_dominated_by(i32 1, %struct.basic_block_def* %12) #6, !dbg !2774
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %call5, metadata !2741, metadata !DIExpression()), !dbg !2765
  store %struct.VEC_basic_block_heap* %call5, %struct.VEC_basic_block_heap** %ldom, align 8, !dbg !2775
  call void @llvm.dbg.value(metadata i32 0, metadata !2721, metadata !DIExpression()), !dbg !2749
  br label %for.cond6, !dbg !2776

for.cond6:                                        ; preds = %for.inc, %for.body
  %13 = phi %struct.VEC_basic_block_heap* [ %call5, %for.body ], [ %.pre, %for.inc ], !dbg !2778
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !dbg !2780
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !2721, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %13, metadata !2741, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %13, metadata !2741, metadata !DIExpression()), !dbg !2765
  %base = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %13, i64 0, i32 0, !dbg !2778
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %bb, metadata !2745, metadata !DIExpression(DW_OP_deref)), !dbg !2765
  %call8 = call fastcc i32 @VEC_basic_block_base_iterate(%struct.VEC_basic_block_base* %base, i32 %j.0, %struct.basic_block_def** nonnull %bb) #8, !dbg !2778
  %tobool9 = icmp eq i32 %call8, 0, !dbg !2781
  br i1 %tobool9, label %for.end, label %for.body10, !dbg !2781

for.body10:                                       ; preds = %for.cond6
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !2782
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %14, metadata !2745, metadata !DIExpression()), !dbg !2765
  %call11 = call zeroext i8 @flow_bb_inside_loop_p(%struct.loop* %loop, %struct.basic_block_def* %14) #6, !dbg !2784
  %tobool12 = icmp eq i8 %call11, 0, !dbg !2784
  br i1 %tobool12, label %if.then13, label %for.inc, !dbg !2785

if.then13:                                        ; preds = %for.body10
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !2786
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %15, metadata !2745, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %dom_bbs, metadata !2728, metadata !DIExpression(DW_OP_deref)), !dbg !2749
  %call14 = call fastcc %struct.basic_block_def** @VEC_basic_block_heap_safe_push(%struct.VEC_basic_block_heap** nonnull %dom_bbs, %struct.basic_block_def* %15) #8, !dbg !2786
  br label %for.inc, !dbg !2786

for.inc:                                          ; preds = %for.body10, %if.then13
  %inc = add i32 %j.0, 1, !dbg !2787
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2721, metadata !DIExpression()), !dbg !2749
  %.pre = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** %ldom, align 8, !dbg !2778
  br label %for.cond6, !dbg !2788, !llvm.loop !2789

for.end:                                          ; preds = %for.cond6
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %ldom, metadata !2741, metadata !DIExpression(DW_OP_deref)), !dbg !2765
  call fastcc void @VEC_basic_block_heap_free(%struct.VEC_basic_block_heap** nonnull %ldom) #8, !dbg !2791
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #7, !dbg !2792
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #7, !dbg !2792
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1, !dbg !2793
  br label %for.cond, !dbg !2794, !llvm.loop !2795

for.end18:                                        ; preds = %for.cond
  %16 = bitcast %struct.basic_block_def** %call4 to i8*, !dbg !2797
  call void @free(i8* %16) #6, !dbg !2798
  %tobool19 = icmp ne i8 %call1, 0, !dbg !2799
  %spec.select = select i1 %tobool19, i32 %3, i32 0, !dbg !2801
  %not.tobool19 = xor i1 %tobool19, true, !dbg !2801
  %17 = zext i1 %not.tobool19 to i32, !dbg !2801
  %spec.select2 = sub i32 %3, %17, !dbg !2801
  call void @llvm.dbg.value(metadata i1 %tobool19, metadata !2735, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i1 %tobool19, metadata !2734, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_stack_value)), !dbg !2749
  call void @llvm.dbg.value(metadata i32 %spec.select2, metadata !2731, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2730, metadata !DIExpression()), !dbg !2749
  call void @start_sequence() #6, !dbg !2802
  %mode = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call, i64 0, i32 10, !dbg !2803
  %18 = load i32, i32* %mode, align 4, !dbg !2803
  %call22 = call %struct.rtx_def* @gen_reg_rtx(i32 %18) #6, !dbg !2804
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call22, metadata !2716, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call22, metadata !2715, metadata !DIExpression()), !dbg !2749
  %niter_expr = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call, i64 0, i32 11, !dbg !2805
  %19 = load %struct.rtx_def*, %struct.rtx_def** %niter_expr, align 8, !dbg !2805
  %call23 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %19) #6, !dbg !2806
  %call24 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %call23, %struct.rtx_def* %call22) #6, !dbg !2807
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call24, metadata !2719, metadata !DIExpression()), !dbg !2749
  %cmp25 = icmp eq %struct.rtx_def* %call24, %call22, !dbg !2808
  br i1 %cmp25, label %if.end28, label %if.then26, !dbg !2810

if.then26:                                        ; preds = %for.end18
  %call27 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %call22, %struct.rtx_def* %call24) #6, !dbg !2811
  br label %if.end28, !dbg !2811

if.end28:                                         ; preds = %for.end18, %if.then26
  %20 = load i32, i32* %mode, align 4, !dbg !2812
  %conv = zext i32 %3 to i64, !dbg !2813
  %call30 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv) #6, !dbg !2813
  %call31 = call %struct.rtx_def* @expand_simple_binop(i32 %20, i32 61, %struct.rtx_def* %call22, %struct.rtx_def* %call30, %struct.rtx_def* null, i32 0, i32 3) #6, !dbg !2814
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call31, metadata !2716, metadata !DIExpression()), !dbg !2749
  %call32 = call %struct.rtx_def* @get_insns() #6, !dbg !2815
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call32, metadata !2717, metadata !DIExpression()), !dbg !2749
  call void @end_sequence() #6, !dbg !2816
  call void @unshare_all_rtl_in_chain(%struct.rtx_def* %call32) #6, !dbg !2817
  %call33 = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !2818
  %call34 = call %struct.basic_block_def* @split_edge_and_insert(%struct.edge_def* %call33, %struct.rtx_def* %call32) #8, !dbg !2819
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* null, metadata !2732, metadata !DIExpression()), !dbg !2749
  store %struct.VEC_edge_heap* null, %struct.VEC_edge_heap** %remove_edges, align 8, !dbg !2820
  %add = add i32 %3, 2, !dbg !2821
  %call35 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %add) #6, !dbg !2822
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call35, metadata !2729, metadata !DIExpression()), !dbg !2749
  call void @sbitmap_zero(%struct.simple_bitmap_def* %call35) #6, !dbg !2823
  br i1 %tobool19, label %if.end40, label %land.lhs.true, !dbg !2824

land.lhs.true:                                    ; preds = %if.end28
  %noloop_assumptions = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call, i64 0, i32 7, !dbg !2826
  %21 = load %struct.rtx_def*, %struct.rtx_def** %noloop_assumptions, align 8, !dbg !2826
  %tobool38 = icmp eq %struct.rtx_def* %21, null, !dbg !2827
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !2828

if.then39:                                        ; preds = %land.lhs.true
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call35, i32 1) #8, !dbg !2829
  br label %if.end40, !dbg !2829

if.end40:                                         ; preds = %land.lhs.true, %if.end28, %if.then39
  %call41 = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !2830
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call41, i64 0, i32 0, !dbg !2831
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2831
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %22, metadata !2727, metadata !DIExpression()), !dbg !2749
  %call42 = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !2832
  %out_edge = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call, i64 0, i32 0, !dbg !2833
  %23 = load %struct.edge_def*, %struct.edge_def** %out_edge, align 8, !dbg !2833
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %remove_edges, metadata !2732, metadata !DIExpression(DW_OP_deref)), !dbg !2749
  %call43 = call zeroext i8 @duplicate_loop_to_header_edge(%struct.loop* %loop, %struct.edge_def* %call42, i32 1, %struct.simple_bitmap_def* %call35, %struct.edge_def* %23, %struct.VEC_edge_heap** nonnull %remove_edges, i32 1) #6, !dbg !2834
  call void @llvm.dbg.value(metadata i8 %call43, metadata !2740, metadata !DIExpression()), !dbg !2749
  %tobool44 = icmp eq i8 %call43, 0, !dbg !2835
  br i1 %tobool44, label %cond.true45, label %cond.end47, !dbg !2835

cond.true45:                                      ; preds = %if.end40
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1057, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2835
  br label %cond.end47, !dbg !2835

cond.end47:                                       ; preds = %if.end40, %cond.true45
  %call49 = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !2836
  %call50 = call %struct.basic_block_def* @split_edge(%struct.edge_def* %call49) #6, !dbg !2837
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call50, metadata !2726, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i32 0, metadata !2720, metadata !DIExpression()), !dbg !2749
  %cond73 = zext i1 %tobool19 to i32, !dbg !2838
  br i1 %tobool19, label %cond.end47.split.us, label %cond.end47.cond.end47.split_crit_edge, !dbg !2842

cond.end47.cond.end47.split_crit_edge:            ; preds = %cond.end47
  %wide.trip.count8 = zext i32 %spec.select2 to i64, !dbg !2843
  br label %for.cond51, !dbg !2842

cond.end47.split.us:                              ; preds = %cond.end47
  %sub55 = add i32 %spec.select2, -1, !dbg !2844
  %24 = zext i32 %sub55 to i64, !dbg !2842
  %wide.trip.count = zext i32 %spec.select2 to i64, !dbg !2843
  br label %for.cond51.us, !dbg !2842

for.cond51.us:                                    ; preds = %cond.end87.us, %cond.end47.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %cond.end87.us ], [ 0, %cond.end47.split.us ], !dbg !2749
  %swtch.0.us = phi %struct.basic_block_def* [ %call90.us, %cond.end87.us ], [ %call50, %cond.end47.split.us ], !dbg !2749
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2720, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %swtch.0.us, metadata !2726, metadata !DIExpression()), !dbg !2749
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !2843
  br i1 %exitcond, label %for.end98.us-lcssa.us, label %for.body54.us, !dbg !2846

for.body54.us:                                    ; preds = %for.cond51.us
  call void @sbitmap_zero(%struct.simple_bitmap_def* %call35) #6, !dbg !2847
  %cmp56.us = icmp eq i64 %indvars.iv, %24, !dbg !2848
  br i1 %cmp56.us, label %if.end61.us, label %if.then60.us, !dbg !2849

if.then60.us:                                     ; preds = %for.body54.us
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call35, i32 1) #8, !dbg !2850
  br label %if.end61.us, !dbg !2850

if.end61.us:                                      ; preds = %if.then60.us, %for.body54.us
  %call62.us = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !2851
  %25 = load %struct.edge_def*, %struct.edge_def** %out_edge, align 8, !dbg !2852
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %remove_edges, metadata !2732, metadata !DIExpression(DW_OP_deref)), !dbg !2749
  %call64.us = call zeroext i8 @duplicate_loop_to_header_edge(%struct.loop* %loop, %struct.edge_def* %call62.us, i32 1, %struct.simple_bitmap_def* %call35, %struct.edge_def* %25, %struct.VEC_edge_heap** nonnull %remove_edges, i32 1) #6, !dbg !2853
  call void @llvm.dbg.value(metadata i8 %call64.us, metadata !2740, metadata !DIExpression()), !dbg !2749
  %tobool65.us = icmp eq i8 %call64.us, 0, !dbg !2854
  br i1 %tobool65.us, label %cond.true66.us, label %cond.end68.us, !dbg !2854

cond.true66.us:                                   ; preds = %if.end61.us
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1072, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2854
  br label %cond.end68.us, !dbg !2854

cond.end68.us:                                    ; preds = %cond.true66.us, %if.end61.us
  %26 = trunc i64 %indvars.iv to i32, !dbg !2855
  %sub70.us = sub i32 %spec.select2, %26, !dbg !2855
  %sub74.us = sub i32 %sub70.us, %cond73, !dbg !2856
  call void @llvm.dbg.value(metadata i32 %sub74.us, metadata !2721, metadata !DIExpression()), !dbg !2749
  %27 = trunc i64 %indvars.iv to i32, !dbg !2857
  %add75.us = add i32 %27, 2, !dbg !2857
  %div.us = udiv i32 10000, %add75.us, !dbg !2858
  call void @llvm.dbg.value(metadata i32 %div.us, metadata !2722, metadata !DIExpression()), !dbg !2749
  %call76.us = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !2859
  %call77.us = call %struct.basic_block_def* @split_edge(%struct.edge_def* %call76.us) #6, !dbg !2860
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call77.us, metadata !2723, metadata !DIExpression()), !dbg !2749
  %call78.us = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %call31) #6, !dbg !2861
  %conv79.us = zext i32 %sub74.us to i64, !dbg !2862
  %call80.us = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv79.us) #6, !dbg !2862
  %call81.us = call %struct.rtx_def* @block_label(%struct.basic_block_def* %call77.us) #6, !dbg !2863
  %call82.us = call %struct.rtx_def* @compare_and_jump_seq(%struct.rtx_def* %call78.us, %struct.rtx_def* %call80.us, i32 81, %struct.rtx_def* %call81.us, i32 %div.us, %struct.rtx_def* null) #6, !dbg !2864
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call82.us, metadata !2718, metadata !DIExpression()), !dbg !2749
  %cmp83.us = icmp eq %struct.rtx_def* %call82.us, null, !dbg !2865
  br i1 %cmp83.us, label %cond.true85.us, label %cond.end87.us, !dbg !2865

cond.true85.us:                                   ; preds = %cond.end68.us
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1085, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2865
  br label %cond.end87.us, !dbg !2865

cond.end87.us:                                    ; preds = %cond.true85.us, %cond.end68.us
  %call89.us = call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %swtch.0.us) #8, !dbg !2866
  %call90.us = call %struct.basic_block_def* @split_edge_and_insert(%struct.edge_def* %call89.us, %struct.rtx_def* %call82.us) #8, !dbg !2867
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call90.us, metadata !2726, metadata !DIExpression()), !dbg !2749
  call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %call77.us, %struct.basic_block_def* %call90.us) #6, !dbg !2868
  %sub91.us = sub nuw nsw i32 10000, %div.us, !dbg !2869
  %call92.us = call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %call90.us) #8, !dbg !2870
  %probability.us = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call92.us, i64 0, i32 8, !dbg !2871
  store i32 %sub91.us, i32* %probability.us, align 4, !dbg !2872
  %call93.us = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %call90.us) #8, !dbg !2873
  %flags.us = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call93.us, i64 0, i32 7, !dbg !2874
  %28 = load i32, i32* %flags.us, align 8, !dbg !2874
  %and.us = and i32 %28, 128, !dbg !2875
  %call94.us = call %struct.edge_def* @make_edge(%struct.basic_block_def* %call90.us, %struct.basic_block_def* %call77.us, i32 %and.us) #6, !dbg !2876
  call void @llvm.dbg.value(metadata %struct.edge_def* %call94.us, metadata !2733, metadata !DIExpression()), !dbg !2749
  store %struct.edge_def* %call94.us, %struct.edge_def** %e, align 8, !dbg !2877
  call void @llvm.dbg.value(metadata %struct.edge_def* %call94.us, metadata !2733, metadata !DIExpression()), !dbg !2749
  %probability95.us = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call94.us, i64 0, i32 8, !dbg !2878
  store i32 %div.us, i32* %probability95.us, align 4, !dbg !2879
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2880
  br label %for.cond51.us, !dbg !2881, !llvm.loop !2882

for.end98.us-lcssa.us:                            ; preds = %for.cond51.us
  br label %for.end98, !dbg !2884

for.cond51:                                       ; preds = %cond.end87, %cond.end47.cond.end47.split_crit_edge
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %cond.end87 ], [ 0, %cond.end47.cond.end47.split_crit_edge ], !dbg !2749
  %swtch.0 = phi %struct.basic_block_def* [ %call90, %cond.end87 ], [ %call50, %cond.end47.cond.end47.split_crit_edge ], !dbg !2749
  call void @llvm.dbg.value(metadata i64 %indvars.iv6, metadata !2720, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %swtch.0, metadata !2726, metadata !DIExpression()), !dbg !2749
  %exitcond9 = icmp eq i64 %indvars.iv6, %wide.trip.count8, !dbg !2843
  br i1 %exitcond9, label %for.end98.us-lcssa, label %for.body54, !dbg !2846

for.body54:                                       ; preds = %for.cond51
  call void @sbitmap_zero(%struct.simple_bitmap_def* %call35) #6, !dbg !2847
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call35, i32 1) #8, !dbg !2850
  %call62 = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !2851
  %29 = load %struct.edge_def*, %struct.edge_def** %out_edge, align 8, !dbg !2852
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %remove_edges, metadata !2732, metadata !DIExpression(DW_OP_deref)), !dbg !2749
  %call64 = call zeroext i8 @duplicate_loop_to_header_edge(%struct.loop* %loop, %struct.edge_def* %call62, i32 1, %struct.simple_bitmap_def* %call35, %struct.edge_def* %29, %struct.VEC_edge_heap** nonnull %remove_edges, i32 1) #6, !dbg !2853
  call void @llvm.dbg.value(metadata i8 %call64, metadata !2740, metadata !DIExpression()), !dbg !2749
  %tobool65 = icmp eq i8 %call64, 0, !dbg !2854
  br i1 %tobool65, label %cond.true66, label %cond.end68, !dbg !2854

cond.true66:                                      ; preds = %for.body54
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1072, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2854
  br label %cond.end68, !dbg !2854

cond.end68:                                       ; preds = %for.body54, %cond.true66
  %30 = trunc i64 %indvars.iv6 to i32, !dbg !2855
  %sub70 = sub i32 %spec.select2, %30, !dbg !2855
  %sub74 = sub i32 %sub70, %cond73, !dbg !2856
  call void @llvm.dbg.value(metadata i32 %sub74, metadata !2721, metadata !DIExpression()), !dbg !2749
  %31 = trunc i64 %indvars.iv6 to i32, !dbg !2857
  %add75 = add i32 %31, 2, !dbg !2857
  %div = udiv i32 10000, %add75, !dbg !2858
  call void @llvm.dbg.value(metadata i32 %div, metadata !2722, metadata !DIExpression()), !dbg !2749
  %call76 = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !2859
  %call77 = call %struct.basic_block_def* @split_edge(%struct.edge_def* %call76) #6, !dbg !2860
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call77, metadata !2723, metadata !DIExpression()), !dbg !2749
  %call78 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %call31) #6, !dbg !2861
  %conv79 = zext i32 %sub74 to i64, !dbg !2862
  %call80 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv79) #6, !dbg !2862
  %call81 = call %struct.rtx_def* @block_label(%struct.basic_block_def* %call77) #6, !dbg !2863
  %call82 = call %struct.rtx_def* @compare_and_jump_seq(%struct.rtx_def* %call78, %struct.rtx_def* %call80, i32 81, %struct.rtx_def* %call81, i32 %div, %struct.rtx_def* null) #6, !dbg !2864
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call82, metadata !2718, metadata !DIExpression()), !dbg !2749
  %cmp83 = icmp eq %struct.rtx_def* %call82, null, !dbg !2865
  br i1 %cmp83, label %cond.true85, label %cond.end87, !dbg !2865

cond.true85:                                      ; preds = %cond.end68
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1085, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2865
  br label %cond.end87, !dbg !2865

cond.end87:                                       ; preds = %cond.end68, %cond.true85
  %call89 = call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %swtch.0) #8, !dbg !2866
  %call90 = call %struct.basic_block_def* @split_edge_and_insert(%struct.edge_def* %call89, %struct.rtx_def* %call82) #8, !dbg !2867
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call90, metadata !2726, metadata !DIExpression()), !dbg !2749
  call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %call77, %struct.basic_block_def* %call90) #6, !dbg !2868
  %sub91 = sub nuw nsw i32 10000, %div, !dbg !2869
  %call92 = call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %call90) #8, !dbg !2870
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call92, i64 0, i32 8, !dbg !2871
  store i32 %sub91, i32* %probability, align 4, !dbg !2872
  %call93 = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %call90) #8, !dbg !2873
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call93, i64 0, i32 7, !dbg !2874
  %32 = load i32, i32* %flags, align 8, !dbg !2874
  %and = and i32 %32, 128, !dbg !2875
  %call94 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %call90, %struct.basic_block_def* %call77, i32 %and) #6, !dbg !2876
  call void @llvm.dbg.value(metadata %struct.edge_def* %call94, metadata !2733, metadata !DIExpression()), !dbg !2749
  store %struct.edge_def* %call94, %struct.edge_def** %e, align 8, !dbg !2877
  call void @llvm.dbg.value(metadata %struct.edge_def* %call94, metadata !2733, metadata !DIExpression()), !dbg !2749
  %probability95 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call94, i64 0, i32 8, !dbg !2878
  store i32 %div, i32* %probability95, align 4, !dbg !2879
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !dbg !2880
  br label %for.cond51, !dbg !2881, !llvm.loop !2882

for.end98.us-lcssa:                               ; preds = %for.cond51
  br label %for.end98, !dbg !2884

for.end98:                                        ; preds = %for.end98.us-lcssa.us, %for.end98.us-lcssa
  br i1 %tobool19, label %if.end124, label %if.then100, !dbg !2884

if.then100:                                       ; preds = %for.end98
  %add101 = add i32 %3, 1, !dbg !2885
  %div102 = udiv i32 10000, %add101, !dbg !2888
  call void @llvm.dbg.value(metadata i32 %div102, metadata !2722, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %22, metadata !2726, metadata !DIExpression()), !dbg !2749
  %call103 = call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !2889
  %call104 = call %struct.basic_block_def* @split_edge(%struct.edge_def* %call103) #6, !dbg !2890
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call104, metadata !2723, metadata !DIExpression()), !dbg !2749
  %call105 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %call31) #6, !dbg !2891
  %33 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16, !dbg !2892
  %call106 = call %struct.rtx_def* @block_label(%struct.basic_block_def* %call104) #6, !dbg !2893
  %call107 = call %struct.rtx_def* @compare_and_jump_seq(%struct.rtx_def* %call105, %struct.rtx_def* %33, i32 81, %struct.rtx_def* %call106, i32 %div102, %struct.rtx_def* null) #6, !dbg !2894
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call107, metadata !2718, metadata !DIExpression()), !dbg !2749
  %cmp108 = icmp eq %struct.rtx_def* %call107, null, !dbg !2895
  br i1 %cmp108, label %cond.true110, label %cond.end112, !dbg !2895

cond.true110:                                     ; preds = %if.then100
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2895
  br label %cond.end112, !dbg !2895

cond.end112:                                      ; preds = %if.then100, %cond.true110
  %call114 = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %22) #8, !dbg !2896
  %call115 = call %struct.basic_block_def* @split_edge_and_insert(%struct.edge_def* %call114, %struct.rtx_def* %call107) #8, !dbg !2897
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call115, metadata !2726, metadata !DIExpression()), !dbg !2749
  call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %call104, %struct.basic_block_def* %call115) #6, !dbg !2898
  %sub116 = sub nuw nsw i32 10000, %div102, !dbg !2899
  %call117 = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %call115) #8, !dbg !2900
  %probability118 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call117, i64 0, i32 8, !dbg !2901
  store i32 %sub116, i32* %probability118, align 4, !dbg !2902
  %call119 = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %call115) #8, !dbg !2903
  %flags120 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call119, i64 0, i32 7, !dbg !2904
  %34 = load i32, i32* %flags120, align 8, !dbg !2904
  %and121 = and i32 %34, 128, !dbg !2905
  %call122 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %call115, %struct.basic_block_def* %call104, i32 %and121) #6, !dbg !2906
  call void @llvm.dbg.value(metadata %struct.edge_def* %call122, metadata !2733, metadata !DIExpression()), !dbg !2749
  store %struct.edge_def* %call122, %struct.edge_def** %e, align 8, !dbg !2907
  call void @llvm.dbg.value(metadata %struct.edge_def* %call122, metadata !2733, metadata !DIExpression()), !dbg !2749
  %probability123 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call122, i64 0, i32 8, !dbg !2908
  store i32 %div102, i32* %probability123, align 4, !dbg !2909
  br label %if.end124, !dbg !2910

if.end124:                                        ; preds = %for.end98, %cond.end112
  %35 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** %dom_bbs, align 8, !dbg !2911
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %35, metadata !2728, metadata !DIExpression()), !dbg !2749
  call void @iterate_fix_dominators(i32 1, %struct.VEC_basic_block_heap* %35, i8 zeroext 0) #6, !dbg !2912
  call void @sbitmap_ones(%struct.simple_bitmap_def* %call35) #6, !dbg !2913
  call fastcc void @RESET_BIT(%struct.simple_bitmap_def* %call35, i32 %spec.select) #8, !dbg !2914
  call fastcc void @opt_info_start_duplication(%struct.opt_info* %opt_info.0) #8, !dbg !2915
  %call125 = call %struct.edge_def* @loop_latch_edge(%struct.loop* %loop) #6, !dbg !2916
  %36 = load %struct.edge_def*, %struct.edge_def** %out_edge, align 8, !dbg !2917
  %tobool127 = icmp eq %struct.opt_info* %opt_info.0, null, !dbg !2918
  %or = select i1 %tobool127, i32 1, i32 3, !dbg !2919
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %remove_edges, metadata !2732, metadata !DIExpression(DW_OP_deref)), !dbg !2749
  %call129 = call zeroext i8 @duplicate_loop_to_header_edge(%struct.loop* %loop, %struct.edge_def* %call125, i32 %3, %struct.simple_bitmap_def* %call35, %struct.edge_def* %36, %struct.VEC_edge_heap** nonnull %remove_edges, i32 %or) #6, !dbg !2920
  call void @llvm.dbg.value(metadata i8 %call129, metadata !2740, metadata !DIExpression()), !dbg !2749
  %tobool130 = icmp eq i8 %call129, 0, !dbg !2921
  br i1 %tobool130, label %cond.true131, label %cond.end133, !dbg !2921

cond.true131:                                     ; preds = %if.end124
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2921
  br label %cond.end133, !dbg !2921

cond.end133:                                      ; preds = %if.end124, %cond.true131
  br i1 %tobool127, label %if.end137, label %if.then136, !dbg !2922

if.then136:                                       ; preds = %cond.end133
  call fastcc void @apply_opt_in_copies(%struct.opt_info* nonnull %opt_info.0, i32 %3, i8 zeroext 1, i8 zeroext 1) #8, !dbg !2923
  call fastcc void @free_opt_info(%struct.opt_info* nonnull %opt_info.0) #8, !dbg !2926
  br label %if.end137, !dbg !2927

if.end137:                                        ; preds = %cond.end133, %if.then136
  %37 = bitcast %struct.simple_bitmap_def* %call35 to i8*, !dbg !2928
  call void @free(i8* %37) #6, !dbg !2929
  %tobool138 = icmp eq i8 %call1, 0, !dbg !2930
  br i1 %tobool138, label %if.end197, label %if.then139, !dbg !2931

if.then139:                                       ; preds = %if.end137
  %in_edge = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call, i64 0, i32 1, !dbg !2932
  %38 = load %struct.edge_def*, %struct.edge_def** %in_edge, align 8, !dbg !2932
  %src140 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %38, i64 0, i32 0, !dbg !2933
  %39 = load %struct.basic_block_def*, %struct.basic_block_def** %src140, align 8, !dbg !2933
  %call141 = call %struct.basic_block_def* @get_bb_copy(%struct.basic_block_def* %39) #6, !dbg !2934
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call141, metadata !2746, metadata !DIExpression()), !dbg !2935
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call141, i64 0, i32 1, !dbg !2936
  %40 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2936
  %tobool142 = icmp eq %struct.VEC_edge_gc* %40, null, !dbg !2936
  br i1 %tobool142, label %cond.end147, label %cond.true143, !dbg !2936

cond.true143:                                     ; preds = %if.then139
  %base145 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %40, i64 0, i32 0, !dbg !2936
  br label %cond.end147, !dbg !2936

cond.end147:                                      ; preds = %if.then139, %cond.true143
  %cond148 = phi %struct.VEC_edge_base* [ %base145, %cond.true143 ], [ null, %if.then139 ], !dbg !2936
  %call149 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond148, i32 0) #8, !dbg !2936
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call149, i64 0, i32 1, !dbg !2938
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2938
  %42 = load %struct.edge_def*, %struct.edge_def** %out_edge, align 8, !dbg !2939
  %dest151 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %42, i64 0, i32 1, !dbg !2940
  %43 = load %struct.basic_block_def*, %struct.basic_block_def** %dest151, align 8, !dbg !2940
  %cmp152 = icmp eq %struct.basic_block_def* %41, %43, !dbg !2941
  %44 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2942
  %tobool156 = icmp ne %struct.VEC_edge_gc* %44, null, !dbg !2942
  br i1 %cmp152, label %if.then154, label %if.else175, !dbg !2943

if.then154:                                       ; preds = %cond.end147
  br i1 %tobool156, label %cond.true157, label %cond.end161, !dbg !2944

cond.true157:                                     ; preds = %if.then154
  %base159 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %44, i64 0, i32 0, !dbg !2944
  br label %cond.end161, !dbg !2944

cond.end161:                                      ; preds = %if.then154, %cond.true157
  %cond162 = phi %struct.VEC_edge_base* [ %base159, %cond.true157 ], [ null, %if.then154 ], !dbg !2944
  %call163 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond162, i32 0) #8, !dbg !2944
  store %struct.edge_def* %call163, %struct.edge_def** %out_edge, align 8, !dbg !2946
  %45 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2947
  %tobool166 = icmp eq %struct.VEC_edge_gc* %45, null, !dbg !2947
  br i1 %tobool166, label %cond.end171, label %cond.true167, !dbg !2947

cond.true167:                                     ; preds = %cond.end161
  %base169 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %45, i64 0, i32 0, !dbg !2947
  br label %cond.end171, !dbg !2947

cond.end171:                                      ; preds = %cond.end161, %cond.true167
  %cond172 = phi %struct.VEC_edge_base* [ %base169, %cond.true167 ], [ null, %cond.end161 ], !dbg !2947
  %call173 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond172, i32 1) #8, !dbg !2947
  store %struct.edge_def* %call173, %struct.edge_def** %in_edge, align 8, !dbg !2948
  br label %if.end197, !dbg !2949

if.else175:                                       ; preds = %cond.end147
  br i1 %tobool156, label %cond.true178, label %cond.end182, !dbg !2950

cond.true178:                                     ; preds = %if.else175
  %base180 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %44, i64 0, i32 0, !dbg !2950
  br label %cond.end182, !dbg !2950

cond.end182:                                      ; preds = %if.else175, %cond.true178
  %cond183 = phi %struct.VEC_edge_base* [ %base180, %cond.true178 ], [ null, %if.else175 ], !dbg !2950
  %call184 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond183, i32 1) #8, !dbg !2950
  store %struct.edge_def* %call184, %struct.edge_def** %out_edge, align 8, !dbg !2952
  %46 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2953
  %tobool187 = icmp eq %struct.VEC_edge_gc* %46, null, !dbg !2953
  br i1 %tobool187, label %cond.end192, label %cond.true188, !dbg !2953

cond.true188:                                     ; preds = %cond.end182
  %base190 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %46, i64 0, i32 0, !dbg !2953
  br label %cond.end192, !dbg !2953

cond.end192:                                      ; preds = %cond.end182, %cond.true188
  %cond193 = phi %struct.VEC_edge_base* [ %base190, %cond.true188 ], [ null, %cond.end182 ], !dbg !2953
  %call194 = call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond193, i32 0) #8, !dbg !2953
  store %struct.edge_def* %call194, %struct.edge_def** %in_edge, align 8, !dbg !2954
  br label %if.end197

if.end197:                                        ; preds = %if.end137, %cond.end171, %cond.end192
  call void @llvm.dbg.value(metadata i32 0, metadata !2720, metadata !DIExpression()), !dbg !2749
  br label %for.cond198, !dbg !2955

for.cond198:                                      ; preds = %for.body207, %if.end197
  %i.2 = phi i32 [ 0, %if.end197 ], [ %inc210, %for.body207 ], !dbg !2957
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !2720, metadata !DIExpression()), !dbg !2749
  %47 = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** %remove_edges, align 8, !dbg !2958
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %47, metadata !2732, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %47, metadata !2732, metadata !DIExpression()), !dbg !2749
  %base201 = getelementptr inbounds %struct.VEC_edge_heap, %struct.VEC_edge_heap* %47, i64 0, i32 0, !dbg !2958
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2733, metadata !DIExpression(DW_OP_deref)), !dbg !2749
  %call205 = call fastcc i32 @VEC_edge_base_iterate(%struct.VEC_edge_base* %base201, i32 %i.2, %struct.edge_def** nonnull %e) #8, !dbg !2958
  %tobool206 = icmp eq i32 %call205, 0, !dbg !2960
  br i1 %tobool206, label %for.end211, label %for.body207, !dbg !2960

for.body207:                                      ; preds = %for.cond198
  %48 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2961
  call void @llvm.dbg.value(metadata %struct.edge_def* %48, metadata !2733, metadata !DIExpression()), !dbg !2749
  %call208 = call zeroext i8 @remove_path(%struct.edge_def* %48) #6, !dbg !2962
  %inc210 = add i32 %i.2, 1, !dbg !2963
  call void @llvm.dbg.value(metadata i32 %inc210, metadata !2720, metadata !DIExpression()), !dbg !2749
  br label %for.cond198, !dbg !2964, !llvm.loop !2965

for.end211:                                       ; preds = %for.cond198
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %remove_edges, metadata !2732, metadata !DIExpression(DW_OP_deref)), !dbg !2749
  call fastcc void @VEC_edge_heap_free(%struct.VEC_edge_heap** nonnull %remove_edges) #8, !dbg !2967
  %const_iter = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call, i64 0, i32 3, !dbg !2968
  %49 = load i8, i8* %const_iter, align 1, !dbg !2968
  %tobool212 = icmp eq i8 %49, 0, !dbg !2968
  br i1 %tobool212, label %cond.end215, label %cond.true213, !dbg !2968

cond.true213:                                     ; preds = %for.end211
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1168, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2968
  br label %cond.end215, !dbg !2968

cond.end215:                                      ; preds = %for.end211, %cond.true213
  %50 = load i32, i32* %mode, align 4, !dbg !2969
  %add218 = add i32 %3, 1, !dbg !2970
  %conv219 = zext i32 %add218 to i64, !dbg !2970
  %call220 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv219) #6, !dbg !2970
  %call221 = call %struct.rtx_def* @simplify_gen_binary(i32 59, i32 %50, %struct.rtx_def* %call22, %struct.rtx_def* %call220) #6, !dbg !2971
  store %struct.rtx_def* %call221, %struct.rtx_def** %niter_expr, align 8, !dbg !2972
  %niter_max = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call, i64 0, i32 5, !dbg !2973
  %51 = load i64, i64* %niter_max, align 8, !dbg !2974
  %div225 = udiv i64 %51, %conv219, !dbg !2974
  store i64 %div225, i64* %niter_max, align 8, !dbg !2974
  br i1 %tobool138, label %if.end234, label %if.then227, !dbg !2975

if.then227:                                       ; preds = %cond.end215
  %52 = load i32, i32* %mode, align 4, !dbg !2976
  %53 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 65), align 8, !dbg !2979
  %call230 = call %struct.rtx_def* @simplify_gen_binary(i32 50, i32 %52, %struct.rtx_def* %call221, %struct.rtx_def* %53) #6, !dbg !2980
  store %struct.rtx_def* %call230, %struct.rtx_def** %niter_expr, align 8, !dbg !2981
  %noloop_assumptions232 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call, i64 0, i32 7, !dbg !2982
  store %struct.rtx_def* null, %struct.rtx_def** %noloop_assumptions232, align 8, !dbg !2983
  %54 = load i64, i64* %niter_max, align 8, !dbg !2984
  %dec = add i64 %54, -1, !dbg !2984
  store i64 %dec, i64* %niter_max, align 8, !dbg !2984
  br label %if.end234, !dbg !2985

if.end234:                                        ; preds = %cond.end215, %if.then227
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2986
  %tobool235 = icmp eq %struct._IO_FILE* %55, null, !dbg !2986
  br i1 %tobool235, label %if.end239, label %if.then236, !dbg !2988

if.then236:                                       ; preds = %if.end234
  %call237 = call i32 @num_loop_insns(%struct.loop* %loop) #6, !dbg !2989
  %call238 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %55, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.40, i64 0, i64 0), i32 %3, i32 %call237) #6, !dbg !2990
  br label %if.end239, !dbg !2990

if.end239:                                        ; preds = %if.end234, %if.then236
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %dom_bbs, metadata !2728, metadata !DIExpression(DW_OP_deref)), !dbg !2749
  call fastcc void @VEC_basic_block_heap_free(%struct.VEC_basic_block_heap** nonnull %dom_bbs) #8, !dbg !2991
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #7, !dbg !2992
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !2992
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2992
  ret void, !dbg !2992
}

; Function Attrs: nounwind uwtable
define internal fastcc void @unroll_loop_stupid(%struct.loop* %loop) unnamed_addr #4 !dbg !2993 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !2995, metadata !DIExpression()), !dbg !3001
  %times = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 4, i32 1, !dbg !3002
  %0 = load i32, i32* %times, align 4, !dbg !3002
  call void @llvm.dbg.value(metadata i32 %0, metadata !2997, metadata !DIExpression()), !dbg !3001
  %call = tail call %struct.niter_desc* @get_simple_loop_desc(%struct.loop* %loop) #6, !dbg !3003
  call void @llvm.dbg.value(metadata %struct.niter_desc* %call, metadata !2998, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata %struct.opt_info* null, metadata !2999, metadata !DIExpression()), !dbg !3001
  %1 = load i32, i32* @flag_split_ivs_in_unroller, align 4, !dbg !3004
  %2 = load i32, i32* @flag_variable_expansion_in_unroller, align 4, !dbg !3006
  %3 = or i32 %1, %2, !dbg !3007
  %4 = icmp eq i32 %3, 0, !dbg !3007
  br i1 %4, label %if.end, label %if.then, !dbg !3007

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc %struct.opt_info* @analyze_insns_in_loop(%struct.loop* %loop) #8, !dbg !3008
  call void @llvm.dbg.value(metadata %struct.opt_info* %call2, metadata !2999, metadata !DIExpression()), !dbg !3001
  br label %if.end, !dbg !3009

if.end:                                           ; preds = %entry, %if.then
  %opt_info.0 = phi %struct.opt_info* [ %call2, %if.then ], [ null, %entry ], !dbg !3001
  call void @llvm.dbg.value(metadata %struct.opt_info* %opt_info.0, metadata !2999, metadata !DIExpression()), !dbg !3001
  %add = add i32 %0, 1, !dbg !3010
  %call3 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %add) #6, !dbg !3011
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call3, metadata !2996, metadata !DIExpression()), !dbg !3001
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call3) #6, !dbg !3012
  tail call fastcc void @opt_info_start_duplication(%struct.opt_info* %opt_info.0) #8, !dbg !3013
  %call4 = tail call %struct.edge_def* @loop_latch_edge(%struct.loop* %loop) #6, !dbg !3014
  %tobool5 = icmp eq %struct.opt_info* %opt_info.0, null, !dbg !3015
  %or = select i1 %tobool5, i32 1, i32 3, !dbg !3016
  %call6 = tail call zeroext i8 @duplicate_loop_to_header_edge(%struct.loop* %loop, %struct.edge_def* %call4, i32 %0, %struct.simple_bitmap_def* %call3, %struct.edge_def* null, %struct.VEC_edge_heap** null, i32 %or) #6, !dbg !3017
  call void @llvm.dbg.value(metadata i8 %call6, metadata !3000, metadata !DIExpression()), !dbg !3001
  %tobool7 = icmp eq i8 %call6, 0, !dbg !3018
  br i1 %tobool7, label %cond.true, label %cond.end, !dbg !3018

cond.true:                                        ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1463, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3018
  br label %cond.end, !dbg !3018

cond.end:                                         ; preds = %if.end, %cond.true
  br i1 %tobool5, label %if.end11, label %if.then10, !dbg !3019

if.then10:                                        ; preds = %cond.end
  tail call fastcc void @apply_opt_in_copies(%struct.opt_info* nonnull %opt_info.0, i32 %0, i8 zeroext 1, i8 zeroext 1) #8, !dbg !3020
  tail call fastcc void @free_opt_info(%struct.opt_info* nonnull %opt_info.0) #8, !dbg !3023
  br label %if.end11, !dbg !3024

if.end11:                                         ; preds = %cond.end, %if.then10
  %5 = bitcast %struct.simple_bitmap_def* %call3 to i8*, !dbg !3025
  tail call void @free(i8* %5) #6, !dbg !3026
  %simple_p = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call, i64 0, i32 2, !dbg !3027
  %6 = load i8, i8* %simple_p, align 8, !dbg !3027
  %tobool12 = icmp eq i8 %6, 0, !dbg !3029
  br i1 %tobool12, label %if.end15, label %if.then13, !dbg !3030

if.then13:                                        ; preds = %if.end11
  store i8 0, i8* %simple_p, align 8, !dbg !3031
  br label %if.end15, !dbg !3033

if.end15:                                         ; preds = %if.end11, %if.then13
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3034
  %tobool16 = icmp eq %struct._IO_FILE* %7, null, !dbg !3034
  br i1 %tobool16, label %if.end20, label %if.then17, !dbg !3036

if.then17:                                        ; preds = %if.end15
  %call18 = tail call i32 @num_loop_insns(%struct.loop* %loop) #6, !dbg !3037
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %7, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.43, i64 0, i64 0), i32 %0, i32 %call18) #6, !dbg !3038
  br label %if.end20, !dbg !3038

if.end20:                                         ; preds = %if.end15, %if.then17
  ret void, !dbg !3039
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fel_next(%struct.loop_iterator* %li, %struct.loop** %loop) unnamed_addr #0 !dbg !3040 {
entry:
  %anum = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.loop_iterator* %li, metadata !3044, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata %struct.loop** %loop, metadata !3045, metadata !DIExpression()), !dbg !3047
  %0 = bitcast i32* %anum to i8*, !dbg !3048
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !3048
  %to_visit = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 0, !dbg !3047
  %idx = getelementptr inbounds %struct.loop_iterator, %struct.loop_iterator* %li, i64 0, i32 1, !dbg !3047
  br label %while.cond, !dbg !3049

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %to_visit, align 8, !dbg !3050
  %tobool = icmp eq %struct.VEC_int_heap* %1, null, !dbg !3050
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3050

cond.true:                                        ; preds = %while.cond
  %base = getelementptr inbounds %struct.VEC_int_heap, %struct.VEC_int_heap* %1, i64 0, i32 0, !dbg !3050
  br label %cond.end, !dbg !3050

cond.end:                                         ; preds = %while.cond, %cond.true
  %cond = phi %struct.VEC_int_base* [ %base, %cond.true ], [ null, %while.cond ], !dbg !3050
  %2 = load i32, i32* %idx, align 8, !dbg !3050
  call void @llvm.dbg.value(metadata i32* %anum, metadata !3046, metadata !DIExpression(DW_OP_deref)), !dbg !3047
  %call = call fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %cond, i32 %2, i32* nonnull %anum) #8, !dbg !3050
  %tobool2 = icmp eq i32 %call, 0, !dbg !3049
  br i1 %tobool2, label %while.end, label %while.body, !dbg !3049

while.body:                                       ; preds = %cond.end
  %3 = load i32, i32* %idx, align 8, !dbg !3051
  %inc = add i32 %3, 1, !dbg !3051
  store i32 %inc, i32* %idx, align 8, !dbg !3051
  %4 = load i32, i32* %anum, align 4, !dbg !3053
  call void @llvm.dbg.value(metadata i32 %4, metadata !3046, metadata !DIExpression()), !dbg !3047
  %call4 = call fastcc %struct.loop* @get_loop(i32 %4) #8, !dbg !3054
  store %struct.loop* %call4, %struct.loop** %loop, align 8, !dbg !3055
  %tobool5 = icmp eq %struct.loop* %call4, null, !dbg !3056
  br i1 %tobool5, label %while.cond, label %cleanup.loopexit, !dbg !3058, !llvm.loop !3059

while.end:                                        ; preds = %cond.end
  call fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %to_visit) #8, !dbg !3061
  store %struct.loop* null, %struct.loop** %loop, align 8, !dbg !3062
  br label %cleanup, !dbg !3063

cleanup.loopexit:                                 ; preds = %while.body
  br label %cleanup, !dbg !3063

cleanup:                                          ; preds = %cleanup.loopexit, %while.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !3063
  ret void, !dbg !3063
}

declare dso_local void @iv_analysis_done() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.basic_block_def* @split_edge_and_insert(%struct.edge_def* %e, %struct.rtx_def* %insns) local_unnamed_addr #4 !dbg !3064 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3068, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insns, metadata !3069, metadata !DIExpression()), !dbg !3071
  %tobool = icmp eq %struct.rtx_def* %insns, null, !dbg !3072
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3074

if.end:                                           ; preds = %entry
  %call = tail call %struct.basic_block_def* @split_edge(%struct.edge_def* %e) #6, !dbg !3075
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !3070, metadata !DIExpression()), !dbg !3071
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 7, !dbg !3076
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !3076
  %0 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3076
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %0, i64 0, i32 1, !dbg !3076
  %1 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !3076
  %call1 = tail call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* nonnull %insns, %struct.rtx_def* %1) #6, !dbg !3077
  br label %cleanup, !dbg !3078

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.basic_block_def* [ %call, %if.end ], [ null, %entry ], !dbg !3071
  ret %struct.basic_block_def* %retval.0, !dbg !3079
}

declare dso_local %struct.basic_block_def* @split_edge(%struct.edge_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @emit_insn_after(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_int_heap* @VEC_int_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !3080 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !3084, metadata !DIExpression()), !dbg !3085
  %call = tail call i8* @vec_heap_o_reserve_exact(i8* null, i32 %alloc_, i64 8, i64 4) #6, !dbg !3086
  %0 = bitcast i8* %call to %struct.VEC_int_heap*, !dbg !3086
  ret %struct.VEC_int_heap* %0, !dbg !3086
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #0 !dbg !3087 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3090
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !3090
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !3090
  %tobool = icmp eq %struct.loops* %1, null, !dbg !3090
  br i1 %tobool, label %return, label %if.end, !dbg !3092

if.end:                                           ; preds = %entry
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !3093
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !3093
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !3093
  br i1 %tobool3, label %cond.end, label %cond.true, !dbg !3093

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !3093
  br label %cond.end, !dbg !3093

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !3093
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #8, !dbg !3093
  br label %return, !dbg !3094

return:                                           ; preds = %entry, %cond.end
  %retval.0 = phi i32 [ %call, %cond.end ], [ 0, %entry ], !dbg !3095
  ret i32 %retval.0, !dbg !3096
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_iterate(%struct.VEC_loop_p_base* %vec_, i32 %ix_, %struct.loop** %ptr) unnamed_addr #0 !dbg !3097 {
entry:
  unreachable, !dbg !3106
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32* @VEC_int_base_quick_push(%struct.VEC_int_base* %vec_, i32 %obj_) unnamed_addr #0 !dbg !3107 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !3113, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i32 %obj_, metadata !3114, metadata !DIExpression()), !dbg !3116
  %num1 = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !3117
  %0 = load i32, i32* %num1, align 4, !dbg !3117
  %inc = add i32 %0, 1, !dbg !3117
  store i32 %inc, i32* %num1, align 4, !dbg !3117
  %idxprom = zext i32 %0 to i64, !dbg !3117
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3117
  call void @llvm.dbg.value(metadata i32* %arrayidx, metadata !3115, metadata !DIExpression()), !dbg !3116
  store i32 %obj_, i32* %arrayidx, align 4, !dbg !3117
  ret i32* %arrayidx, !dbg !3117
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @loop_outer(%struct.loop* %loop) unnamed_addr #0 !dbg !3118 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3124, metadata !DIExpression()), !dbg !3126
  %superloops = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 7, !dbg !3127
  %0 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !3127
  %tobool = icmp eq %struct.VEC_loop_p_gc* %0, null, !dbg !3127
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3127

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %0, i64 0, i32 0, !dbg !3127
  br label %cond.end, !dbg !3127

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3127
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #8, !dbg !3127
  call void @llvm.dbg.value(metadata i32 %call, metadata !3125, metadata !DIExpression()), !dbg !3126
  %cmp = icmp eq i32 %call, 0, !dbg !3128
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3130

if.end:                                           ; preds = %cond.end
  %1 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !3131
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %1, null, !dbg !3131
  br i1 %tobool3, label %cond.end8, label %cond.true4, !dbg !3131

cond.true4:                                       ; preds = %if.end
  %base6 = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %1, i64 0, i32 0, !dbg !3131
  br label %cond.end8, !dbg !3131

cond.end8:                                        ; preds = %if.end, %cond.true4
  %cond9 = phi %struct.VEC_loop_p_base* [ %base6, %cond.true4 ], [ null, %if.end ], !dbg !3131
  %sub = add i32 %call, -1, !dbg !3131
  %call10 = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond9, i32 %sub) #8, !dbg !3131
  br label %cleanup, !dbg !3132

cleanup:                                          ; preds = %cond.end, %cond.end8
  %retval.0 = phi %struct.loop* [ %call10, %cond.end8 ], [ null, %cond.end ], !dbg !3126
  ret %struct.loop* %retval.0, !dbg !3133
}

declare dso_local i8* @vec_heap_o_reserve_exact(i8*, i32, i64, i64) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %vec_) unnamed_addr #0 !dbg !3134 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !3138, metadata !DIExpression()), !dbg !3139
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !3140
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3140

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !3140
  %0 = load i32, i32* %num, align 8, !dbg !3140
  br label %cond.end, !dbg !3140

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3140
  ret i32 %cond, !dbg !3140
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3141 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !3145, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3146, metadata !DIExpression()), !dbg !3147
  br label %land.end, !dbg !3148

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3148
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3148
  %0 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !3148
  ret %struct.loop* %0, !dbg !3148
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_int_base_iterate(%struct.VEC_int_base* %vec_, i32 %ix_, i32* %ptr) unnamed_addr #0 !dbg !3149 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_base* %vec_, metadata !3155, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3156, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i32* %ptr, metadata !3157, metadata !DIExpression()), !dbg !3158
  %tobool = icmp eq %struct.VEC_int_base* %vec_, null, !dbg !3159
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !3159

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 0, !dbg !3159
  %0 = load i32, i32* %num, align 4, !dbg !3159
  %cmp = icmp ugt i32 %0, %ix_, !dbg !3159
  br i1 %cmp, label %if.then, label %if.else, !dbg !3161

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !3162
  %arrayidx = getelementptr inbounds %struct.VEC_int_base, %struct.VEC_int_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3162
  %1 = load i32, i32* %arrayidx, align 4, !dbg !3162
  br label %return, !dbg !3162

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !3164

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ 0, %if.else ], [ %1, %if.then ], !dbg !3166
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !3166
  store i32 %storemerge, i32* %ptr, align 4, !dbg !3166
  ret i32 %retval.0, !dbg !3161
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @get_loop(i32 %num) unnamed_addr #0 !dbg !3167 {
entry:
  call void @llvm.dbg.value(metadata i32 %num, metadata !3171, metadata !DIExpression()), !dbg !3172
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3173
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !3173
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !3173
  %larray = getelementptr inbounds %struct.loops, %struct.loops* %1, i64 0, i32 1, !dbg !3173
  %2 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %larray, align 8, !dbg !3173
  %tobool = icmp eq %struct.VEC_loop_p_gc* %2, null, !dbg !3173
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3173

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %2, i64 0, i32 0, !dbg !3173
  br label %cond.end, !dbg !3173

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3173
  %call = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond, i32 %num) #8, !dbg !3173
  ret %struct.loop* %call, !dbg !3174
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_int_heap_free(%struct.VEC_int_heap** %vec_) unnamed_addr #0 !dbg !3175 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_int_heap** %vec_, metadata !3180, metadata !DIExpression()), !dbg !3181
  %0 = load %struct.VEC_int_heap*, %struct.VEC_int_heap** %vec_, align 8, !dbg !3182
  %tobool = icmp eq %struct.VEC_int_heap* %0, null, !dbg !3182
  br i1 %tobool, label %if.end, label %if.then, !dbg !3184

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_int_heap* %0 to i8*, !dbg !3184
  tail call void @free(i8* nonnull %1) #6, !dbg !3182
  br label %if.end, !dbg !3182

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_int_heap* null, %struct.VEC_int_heap** %vec_, align 8, !dbg !3184
  ret void, !dbg !3184
}

declare dso_local void @free(i8*) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

declare dso_local i32 @num_loop_insns(%struct.loop*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @decide_peel_once_rolling(%struct.loop* %loop, i32 %flags) unnamed_addr #4 !dbg !3185 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3189, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3190, metadata !DIExpression()), !dbg !3192
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3193
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !3193
  br i1 %tobool, label %if.end, label %if.then, !dbg !3195

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3196
  br label %if.end, !dbg !3196

if.end:                                           ; preds = %entry, %if.then
  %1 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !3197
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %1, i64 33, i32 1, !dbg !3197
  %2 = load i32, i32* %value, align 8, !dbg !3197
  %ninsns = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 1, !dbg !3199
  %3 = load i32, i32* %ninsns, align 4, !dbg !3199
  %cmp = icmp ult i32 %2, %3, !dbg !3200
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !3201

if.then1:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3202
  %tobool2 = icmp eq %struct._IO_FILE* %4, null, !dbg !3202
  br i1 %tobool2, label %cleanup.cont, label %if.then3, !dbg !3205

if.then3:                                         ; preds = %if.then1
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3206
  br label %cleanup.cont, !dbg !3206

if.end6:                                          ; preds = %if.end
  %call7 = tail call %struct.niter_desc* @get_simple_loop_desc(%struct.loop* %loop) #6, !dbg !3207
  call void @llvm.dbg.value(metadata %struct.niter_desc* %call7, metadata !3191, metadata !DIExpression()), !dbg !3192
  %simple_p = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call7, i64 0, i32 2, !dbg !3208
  %5 = load i8, i8* %simple_p, align 8, !dbg !3208
  %tobool8 = icmp eq i8 %5, 0, !dbg !3210
  br i1 %tobool8, label %if.then16, label %lor.lhs.false, !dbg !3211

lor.lhs.false:                                    ; preds = %if.end6
  %assumptions = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call7, i64 0, i32 6, !dbg !3212
  %6 = load %struct.rtx_def*, %struct.rtx_def** %assumptions, align 8, !dbg !3212
  %tobool9 = icmp eq %struct.rtx_def* %6, null, !dbg !3213
  br i1 %tobool9, label %lor.lhs.false10, label %if.then16, !dbg !3214

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %infinite = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call7, i64 0, i32 8, !dbg !3215
  %7 = load %struct.rtx_def*, %struct.rtx_def** %infinite, align 8, !dbg !3215
  %tobool11 = icmp eq %struct.rtx_def* %7, null, !dbg !3216
  br i1 %tobool11, label %lor.lhs.false12, label %if.then16, !dbg !3217

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %const_iter = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call7, i64 0, i32 3, !dbg !3218
  %8 = load i8, i8* %const_iter, align 1, !dbg !3218
  %tobool13 = icmp eq i8 %8, 0, !dbg !3219
  br i1 %tobool13, label %if.then16, label %lor.lhs.false14, !dbg !3220

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %niter = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call7, i64 0, i32 4, !dbg !3221
  %9 = load i64, i64* %niter, align 8, !dbg !3221
  %cmp15 = icmp eq i64 %9, 0, !dbg !3222
  br i1 %cmp15, label %if.end21, label %if.then16, !dbg !3223

if.then16:                                        ; preds = %lor.lhs.false14, %lor.lhs.false12, %lor.lhs.false10, %lor.lhs.false, %if.end6
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3224
  %tobool17 = icmp eq %struct._IO_FILE* %10, null, !dbg !3224
  br i1 %tobool17, label %cleanup.cont, label %if.then18, !dbg !3227

if.then18:                                        ; preds = %if.then16
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %10, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3228
  br label %cleanup.cont, !dbg !3228

if.end21:                                         ; preds = %lor.lhs.false14
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3229
  %tobool22 = icmp eq %struct._IO_FILE* %11, null, !dbg !3229
  br i1 %tobool22, label %if.end25, label %if.then23, !dbg !3231

if.then23:                                        ; preds = %if.end21
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %11, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3232
  br label %if.end25, !dbg !3232

if.end25:                                         ; preds = %if.end21, %if.then23
  %decision = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 4, i32 0, !dbg !3233
  store i32 1, i32* %decision, align 8, !dbg !3234
  br label %cleanup.cont, !dbg !3235

cleanup.cont:                                     ; preds = %if.then1, %if.then16, %if.end25, %if.then3, %if.then18
  ret void, !dbg !3235
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decide_peel_completely(%struct.loop* %loop, i32 %flags) unnamed_addr #4 !dbg !3236 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3238, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3239, metadata !DIExpression()), !dbg !3242
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3243
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !3243
  br i1 %tobool, label %if.end, label %if.then, !dbg !3245

if.then:                                          ; preds = %entry
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3246
  br label %if.end, !dbg !3246

if.end:                                           ; preds = %entry, %if.then
  %inner = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 8, !dbg !3247
  %1 = load %struct.loop*, %struct.loop** %inner, align 8, !dbg !3247
  %tobool1 = icmp eq %struct.loop* %1, null, !dbg !3249
  br i1 %tobool1, label %if.end7, label %if.then2, !dbg !3250

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3251
  %tobool3 = icmp eq %struct._IO_FILE* %2, null, !dbg !3251
  br i1 %tobool3, label %cleanup.cont, label %if.then4, !dbg !3254

if.then4:                                         ; preds = %if.then2
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3255
  br label %cleanup.cont, !dbg !3255

if.end7:                                          ; preds = %if.end
  %call8 = tail call zeroext i8 @optimize_loop_for_size_p(%struct.loop* %loop) #6, !dbg !3256
  %tobool9 = icmp eq i8 %call8, 0, !dbg !3256
  br i1 %tobool9, label %if.end15, label %if.then10, !dbg !3258

if.then10:                                        ; preds = %if.end7
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3259
  %tobool11 = icmp eq %struct._IO_FILE* %3, null, !dbg !3259
  br i1 %tobool11, label %cleanup.cont, label %if.then12, !dbg !3262

if.then12:                                        ; preds = %if.then10
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !3263
  br label %cleanup.cont, !dbg !3263

if.end15:                                         ; preds = %if.end7
  %call16 = tail call zeroext i8 @can_duplicate_loop_p(%struct.loop* %loop) #6, !dbg !3264
  %tobool17 = icmp eq i8 %call16, 0, !dbg !3264
  br i1 %tobool17, label %if.then18, label %if.end23, !dbg !3266

if.then18:                                        ; preds = %if.end15
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3267
  %tobool19 = icmp eq %struct._IO_FILE* %4, null, !dbg !3267
  br i1 %tobool19, label %cleanup.cont, label %if.then20, !dbg !3270

if.then20:                                        ; preds = %if.then18
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %4, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !3271
  br label %cleanup.cont, !dbg !3271

if.end23:                                         ; preds = %if.end15
  %5 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !3272
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %5, i64 31, i32 1, !dbg !3272
  %6 = load i32, i32* %value, align 8, !dbg !3272
  %ninsns = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 1, !dbg !3273
  %7 = load i32, i32* %ninsns, align 4, !dbg !3273
  %div = udiv i32 %6, %7, !dbg !3274
  call void @llvm.dbg.value(metadata i32 %div, metadata !3240, metadata !DIExpression()), !dbg !3242
  %value25 = getelementptr inbounds %struct.param_info, %struct.param_info* %5, i64 32, i32 1, !dbg !3275
  %8 = load i32, i32* %value25, align 8, !dbg !3275
  %cmp = icmp ugt i32 %div, %8, !dbg !3277
  br i1 %cmp, label %if.then26, label %if.end29, !dbg !3278

if.then26:                                        ; preds = %if.end23
  call void @llvm.dbg.value(metadata i32 %8, metadata !3240, metadata !DIExpression()), !dbg !3242
  br label %if.end29, !dbg !3279

if.end29:                                         ; preds = %if.then26, %if.end23
  %npeel.0 = phi i32 [ %8, %if.then26 ], [ %div, %if.end23 ], !dbg !3242
  call void @llvm.dbg.value(metadata i32 %npeel.0, metadata !3240, metadata !DIExpression()), !dbg !3242
  %tobool30 = icmp eq i32 %npeel.0, 0, !dbg !3280
  br i1 %tobool30, label %if.then31, label %if.end36, !dbg !3282

if.then31:                                        ; preds = %if.end29
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3283
  %tobool32 = icmp eq %struct._IO_FILE* %9, null, !dbg !3283
  br i1 %tobool32, label %cleanup.cont, label %if.then33, !dbg !3286

if.then33:                                        ; preds = %if.then31
  %call34 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3287
  br label %cleanup.cont, !dbg !3287

if.end36:                                         ; preds = %if.end29
  %call37 = tail call %struct.niter_desc* @get_simple_loop_desc(%struct.loop* %loop) #6, !dbg !3288
  call void @llvm.dbg.value(metadata %struct.niter_desc* %call37, metadata !3241, metadata !DIExpression()), !dbg !3242
  %simple_p = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call37, i64 0, i32 2, !dbg !3289
  %10 = load i8, i8* %simple_p, align 8, !dbg !3289
  %tobool38 = icmp eq i8 %10, 0, !dbg !3291
  br i1 %tobool38, label %if.then44, label %lor.lhs.false, !dbg !3292

lor.lhs.false:                                    ; preds = %if.end36
  %assumptions = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call37, i64 0, i32 6, !dbg !3293
  %11 = load %struct.rtx_def*, %struct.rtx_def** %assumptions, align 8, !dbg !3293
  %tobool39 = icmp eq %struct.rtx_def* %11, null, !dbg !3294
  br i1 %tobool39, label %lor.lhs.false40, label %if.then44, !dbg !3295

lor.lhs.false40:                                  ; preds = %lor.lhs.false
  %const_iter = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call37, i64 0, i32 3, !dbg !3296
  %12 = load i8, i8* %const_iter, align 1, !dbg !3296
  %tobool41 = icmp eq i8 %12, 0, !dbg !3297
  br i1 %tobool41, label %if.then44, label %lor.lhs.false42, !dbg !3298

lor.lhs.false42:                                  ; preds = %lor.lhs.false40
  %infinite = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call37, i64 0, i32 8, !dbg !3299
  %13 = load %struct.rtx_def*, %struct.rtx_def** %infinite, align 8, !dbg !3299
  %tobool43 = icmp eq %struct.rtx_def* %13, null, !dbg !3300
  br i1 %tobool43, label %if.end49, label %if.then44, !dbg !3301

if.then44:                                        ; preds = %lor.lhs.false42, %lor.lhs.false40, %lor.lhs.false, %if.end36
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3302
  %tobool45 = icmp eq %struct._IO_FILE* %14, null, !dbg !3302
  br i1 %tobool45, label %cleanup.cont, label %if.then46, !dbg !3305

if.then46:                                        ; preds = %if.then44
  %call47 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %14, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !3306
  br label %cleanup.cont, !dbg !3306

if.end49:                                         ; preds = %lor.lhs.false42
  %niter = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call37, i64 0, i32 4, !dbg !3307
  %15 = load i64, i64* %niter, align 8, !dbg !3307
  %sub = add i32 %npeel.0, -1, !dbg !3309
  %conv = zext i32 %sub to i64, !dbg !3310
  %cmp50 = icmp ugt i64 %15, %conv, !dbg !3311
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3242
  %tobool53 = icmp ne %struct._IO_FILE* %16, null, !dbg !3242
  br i1 %cmp50, label %if.then52, label %if.end60, !dbg !3312

if.then52:                                        ; preds = %if.end49
  br i1 %tobool53, label %if.then54, label %cleanup.cont, !dbg !3313

if.then54:                                        ; preds = %if.then52
  %call55 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %16, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !3315
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3318
  %18 = load i64, i64* %niter, align 8, !dbg !3319
  %call57 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 %18) #6, !dbg !3320
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3321
  %call58 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i32 %npeel.0) #6, !dbg !3322
  br label %cleanup.cont, !dbg !3323

if.end60:                                         ; preds = %if.end49
  br i1 %tobool53, label %if.then62, label %if.end64, !dbg !3324

if.then62:                                        ; preds = %if.end60
  %call63 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !3325
  br label %if.end64, !dbg !3325

if.end64:                                         ; preds = %if.then62, %if.end60
  %decision = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 4, i32 0, !dbg !3327
  store i32 1, i32* %decision, align 8, !dbg !3328
  br label %cleanup.cont, !dbg !3329

cleanup.cont:                                     ; preds = %if.then2, %if.then10, %if.then44, %if.then31, %if.then18, %if.end64, %if.then4, %if.then12, %if.then20, %if.then33, %if.then46, %if.then54, %if.then52
  ret void, !dbg !3329
}

; Function Attrs: nounwind uwtable
define internal fastcc void @peel_loop_completely(%struct.loop* %loop) unnamed_addr #4 !dbg !3330 {
entry:
  %remove_edges = alloca %struct.VEC_edge_heap*, align 8
  %ein = alloca %struct.edge_def*, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3332, metadata !DIExpression()), !dbg !3343
  %0 = bitcast %struct.VEC_edge_heap** %remove_edges to i8*, !dbg !3344
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3344
  %1 = bitcast %struct.edge_def** %ein to i8*, !dbg !3345
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3345
  %call = tail call %struct.niter_desc* @get_simple_loop_desc(%struct.loop* %loop) #6, !dbg !3346
  call void @llvm.dbg.value(metadata %struct.niter_desc* %call, metadata !3338, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata %struct.opt_info* null, metadata !3339, metadata !DIExpression()), !dbg !3343
  %niter = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call, i64 0, i32 4, !dbg !3347
  %2 = load i64, i64* %niter, align 8, !dbg !3347
  call void @llvm.dbg.value(metadata i64 %2, metadata !3334, metadata !DIExpression()), !dbg !3343
  %tobool = icmp eq i64 %2, 0, !dbg !3348
  br i1 %tobool, label %if.end26, label %if.then, !dbg !3349

if.then:                                          ; preds = %entry
  %3 = trunc i64 %2 to i32, !dbg !3350
  %conv = add i32 %3, 1, !dbg !3350
  %call1 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %conv) #6, !dbg !3351
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call1, metadata !3333, metadata !DIExpression()), !dbg !3343
  tail call void @sbitmap_ones(%struct.simple_bitmap_def* %call1) #6, !dbg !3352
  tail call fastcc void @RESET_BIT(%struct.simple_bitmap_def* %call1, i32 0) #8, !dbg !3353
  %noloop_assumptions = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call, i64 0, i32 7, !dbg !3354
  %4 = load %struct.rtx_def*, %struct.rtx_def** %noloop_assumptions, align 8, !dbg !3354
  %tobool2 = icmp eq %struct.rtx_def* %4, null, !dbg !3356
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !3357

if.then3:                                         ; preds = %if.then
  tail call fastcc void @RESET_BIT(%struct.simple_bitmap_def* %call1, i32 1) #8, !dbg !3358
  br label %if.end, !dbg !3358

if.end:                                           ; preds = %if.then, %if.then3
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* null, metadata !3336, metadata !DIExpression()), !dbg !3343
  store %struct.VEC_edge_heap* null, %struct.VEC_edge_heap** %remove_edges, align 8, !dbg !3359
  %5 = load i32, i32* @flag_split_ivs_in_unroller, align 4, !dbg !3360
  %tobool4 = icmp eq i32 %5, 0, !dbg !3360
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !3362

if.then5:                                         ; preds = %if.end
  %call6 = tail call fastcc %struct.opt_info* @analyze_insns_in_loop(%struct.loop* %loop) #8, !dbg !3363
  call void @llvm.dbg.value(metadata %struct.opt_info* %call6, metadata !3339, metadata !DIExpression()), !dbg !3343
  br label %if.end7, !dbg !3364

if.end7:                                          ; preds = %if.end, %if.then5
  %opt_info.0 = phi %struct.opt_info* [ %call6, %if.then5 ], [ null, %if.end ], !dbg !3343
  call void @llvm.dbg.value(metadata %struct.opt_info* %opt_info.0, metadata !3339, metadata !DIExpression()), !dbg !3343
  tail call fastcc void @opt_info_start_duplication(%struct.opt_info* %opt_info.0) #8, !dbg !3365
  %call8 = tail call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !3366
  %out_edge = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call, i64 0, i32 0, !dbg !3367
  %6 = load %struct.edge_def*, %struct.edge_def** %out_edge, align 8, !dbg !3367
  %tobool10 = icmp eq %struct.opt_info* %opt_info.0, null, !dbg !3368
  %or = select i1 %tobool10, i32 5, i32 7, !dbg !3369
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %remove_edges, metadata !3336, metadata !DIExpression(DW_OP_deref)), !dbg !3343
  %call11 = call zeroext i8 @duplicate_loop_to_header_edge(%struct.loop* %loop, %struct.edge_def* %call8, i32 %3, %struct.simple_bitmap_def* %call1, %struct.edge_def* %6, %struct.VEC_edge_heap** nonnull %remove_edges, i32 %or) #6, !dbg !3370
  call void @llvm.dbg.value(metadata i8 %call11, metadata !3340, metadata !DIExpression()), !dbg !3371
  %tobool12 = icmp eq i8 %call11, 0, !dbg !3372
  br i1 %tobool12, label %cond.true, label %cond.end, !dbg !3372

cond.true:                                        ; preds = %if.end7
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 492, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3372
  br label %cond.end, !dbg !3372

cond.end:                                         ; preds = %if.end7, %cond.true
  %7 = bitcast %struct.simple_bitmap_def* %call1 to i8*, !dbg !3373
  call void @free(i8* %7) #6, !dbg !3374
  br i1 %tobool10, label %if.end17, label %if.then15, !dbg !3375

if.then15:                                        ; preds = %cond.end
  call fastcc void @apply_opt_in_copies(%struct.opt_info* nonnull %opt_info.0, i32 %3, i8 zeroext 0, i8 zeroext 1) #8, !dbg !3376
  call fastcc void @free_opt_info(%struct.opt_info* nonnull %opt_info.0) #8, !dbg !3379
  br label %if.end17, !dbg !3380

if.end17:                                         ; preds = %cond.end, %if.then15
  call void @llvm.dbg.value(metadata i32 0, metadata !3335, metadata !DIExpression()), !dbg !3343
  br label %for.cond, !dbg !3381

for.cond:                                         ; preds = %for.body, %if.end17
  %i.0 = phi i32 [ 0, %if.end17 ], [ %inc, %for.body ], !dbg !3383
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3335, metadata !DIExpression()), !dbg !3343
  %8 = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** %remove_edges, align 8, !dbg !3384
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %8, metadata !3336, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %8, metadata !3336, metadata !DIExpression()), !dbg !3343
  %base = getelementptr inbounds %struct.VEC_edge_heap, %struct.VEC_edge_heap* %8, i64 0, i32 0, !dbg !3384
  call void @llvm.dbg.value(metadata %struct.edge_def** %ein, metadata !3337, metadata !DIExpression(DW_OP_deref)), !dbg !3343
  %call23 = call fastcc i32 @VEC_edge_base_iterate(%struct.VEC_edge_base* %base, i32 %i.0, %struct.edge_def** nonnull %ein) #8, !dbg !3384
  %tobool24 = icmp eq i32 %call23, 0, !dbg !3386
  br i1 %tobool24, label %for.end, label %for.body, !dbg !3386

for.body:                                         ; preds = %for.cond
  %9 = load %struct.edge_def*, %struct.edge_def** %ein, align 8, !dbg !3387
  call void @llvm.dbg.value(metadata %struct.edge_def* %9, metadata !3337, metadata !DIExpression()), !dbg !3343
  %call25 = call zeroext i8 @remove_path(%struct.edge_def* %9) #6, !dbg !3388
  %inc = add i32 %i.0, 1, !dbg !3389
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3335, metadata !DIExpression()), !dbg !3343
  br label %for.cond, !dbg !3390, !llvm.loop !3391

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %remove_edges, metadata !3336, metadata !DIExpression(DW_OP_deref)), !dbg !3343
  call fastcc void @VEC_edge_heap_free(%struct.VEC_edge_heap** nonnull %remove_edges) #8, !dbg !3393
  br label %if.end26, !dbg !3394

if.end26:                                         ; preds = %entry, %for.end
  %in_edge = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call, i64 0, i32 1, !dbg !3395
  %10 = bitcast %struct.edge_def** %in_edge to i64*, !dbg !3395
  %11 = load i64, i64* %10, align 8, !dbg !3395
  %12 = bitcast %struct.edge_def** %ein to i64*, !dbg !3396
  store i64 %11, i64* %12, align 8, !dbg !3396
  call void @free_simple_loop_desc(%struct.loop* %loop) #6, !dbg !3397
  %13 = load %struct.edge_def*, %struct.edge_def** %ein, align 8, !dbg !3398
  call void @llvm.dbg.value(metadata %struct.edge_def* %13, metadata !3337, metadata !DIExpression()), !dbg !3343
  %call27 = call zeroext i8 @remove_path(%struct.edge_def* %13) #6, !dbg !3399
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3400
  %tobool28 = icmp eq %struct._IO_FILE* %14, null, !dbg !3400
  br i1 %tobool28, label %if.end32, label %if.then29, !dbg !3402

if.then29:                                        ; preds = %if.end26
  %conv30 = trunc i64 %2 to i32, !dbg !3403
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i32 %conv30) #6, !dbg !3404
  br label %if.end32, !dbg !3404

if.end32:                                         ; preds = %if.end26, %if.then29
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3405
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3405
  ret void, !dbg !3405
}

declare dso_local %struct.niter_desc* @get_simple_loop_desc(%struct.loop*) local_unnamed_addr #1

declare dso_local zeroext i8 @optimize_loop_for_size_p(%struct.loop*) local_unnamed_addr #1

declare dso_local zeroext i8 @can_duplicate_loop_p(%struct.loop*) local_unnamed_addr #1

declare dso_local %struct.simple_bitmap_def* @sbitmap_alloc(i32) local_unnamed_addr #1

declare dso_local void @sbitmap_ones(%struct.simple_bitmap_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @RESET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !3406 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !3410, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !3411, metadata !DIExpression()), !dbg !3415
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !3416
  %0 = load i8*, i8** %popcount, align 8, !dbg !3416
  %tobool = icmp eq i8* %0, null, !dbg !3417
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !3418

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !3419
  %.pre2 = zext i32 %.pre to i64, !dbg !3420
  %.pre3 = shl i64 1, %.pre2, !dbg !3420
  %.pre4 = lshr i32 %bitno, 6, !dbg !3421
  %.pre5 = zext i32 %.pre4 to i64, !dbg !3422
  br label %if.end7, !dbg !3418

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !3423
  %idxprom = zext i32 %div to i64, !dbg !3423
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !3423
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3423
  %rem = and i32 %bitno, 63, !dbg !3423
  %sh_prom = zext i32 %rem to i64, !dbg !3423
  %2 = shl i64 1, %sh_prom, !dbg !3424
  %3 = and i64 %1, %2, !dbg !3424
  %tobool1 = icmp eq i64 %3, 0, !dbg !3424
  br i1 %tobool1, label %if.end7, label %if.then2, !dbg !3426

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !3427
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !3428
  %dec = add i8 %4, -1, !dbg !3428
  store i8 %dec, i8* %arrayidx6, align 1, !dbg !3428
  br label %if.end7, !dbg !3427

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !3422
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !3420
  %neg = xor i64 %shl.pre-phi, -1, !dbg !3429
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !3422
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !3430
  %and14 = and i64 %5, %neg, !dbg !3430
  store i64 %and14, i64* %arrayidx13, align 8, !dbg !3430
  ret void, !dbg !3431
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.opt_info* @analyze_insns_in_loop(%struct.loop* %loop) unnamed_addr #4 !dbg !3432 {
entry:
  %edges = alloca %struct.VEC_edge_heap*, align 8
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3436, metadata !DIExpression()), !dbg !3449
  %call = tail call i8* @xcalloc(i64 1, i64 72) #6, !dbg !3450
  %0 = bitcast i8* %call to %struct.opt_info*, !dbg !3450
  call void @llvm.dbg.value(metadata %struct.opt_info* %0, metadata !3440, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata %struct.iv_to_split* null, metadata !3442, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata %struct.var_to_expand* null, metadata !3443, metadata !DIExpression()), !dbg !3449
  %1 = bitcast %struct.VEC_edge_heap** %edges to i8*, !dbg !3451
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3451
  %call1 = tail call %struct.VEC_edge_heap* @get_loop_exit_edges(%struct.loop* %loop) #6, !dbg !3452
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %call1, metadata !3446, metadata !DIExpression()), !dbg !3449
  store %struct.VEC_edge_heap* %call1, %struct.VEC_edge_heap** %edges, align 8, !dbg !3453
  call void @llvm.dbg.value(metadata i8 0, metadata !3448, metadata !DIExpression()), !dbg !3449
  tail call void @iv_analysis_loop_init(%struct.loop* %loop) #6, !dbg !3454
  %call2 = tail call %struct.basic_block_def** @get_loop_body(%struct.loop* %loop) #6, !dbg !3455
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %call2, metadata !3437, metadata !DIExpression()), !dbg !3449
  %2 = load i32, i32* @flag_split_ivs_in_unroller, align 4, !dbg !3456
  %tobool = icmp eq i32 %2, 0, !dbg !3456
  br i1 %tobool, label %if.end, label %if.then, !dbg !3458

if.then:                                          ; preds = %entry
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !3459
  %3 = load i32, i32* %num_nodes, align 4, !dbg !3459
  %mul = mul i32 %3, 5, !dbg !3461
  %conv = zext i32 %mul to i64, !dbg !3462
  %call3 = tail call %struct.htab* @htab_create(i64 %conv, i32 (i8*)* nonnull @si_info_hash, i32 (i8*, i8*)* nonnull @si_info_eq, void (i8*)* nonnull @free) #6, !dbg !3463
  %insns_to_split = bitcast i8* %call to %struct.htab**, !dbg !3464
  store %struct.htab* %call3, %struct.htab** %insns_to_split, align 8, !dbg !3465
  %iv_to_split_head = getelementptr inbounds i8, i8* %call, i64 8, !dbg !3466
  %4 = bitcast i8* %iv_to_split_head to %struct.iv_to_split**, !dbg !3466
  store %struct.iv_to_split* null, %struct.iv_to_split** %4, align 8, !dbg !3467
  %iv_to_split_tail = getelementptr inbounds i8, i8* %call, i64 16, !dbg !3468
  %5 = bitcast i8* %iv_to_split_tail to i8**, !dbg !3469
  store i8* %iv_to_split_head, i8** %5, align 8, !dbg !3469
  %.pre = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** %edges, align 8, !dbg !3470
  br label %if.end, !dbg !3472

if.end:                                           ; preds = %entry, %if.then
  %6 = phi %struct.VEC_edge_heap* [ %call1, %entry ], [ %.pre, %if.then ], !dbg !3470
  %call5 = tail call %struct.edge_def* @loop_preheader_edge(%struct.loop* %loop) #6, !dbg !3473
  %7 = bitcast %struct.edge_def* %call5 to i64*, !dbg !3474
  %8 = load i64, i64* %7, align 8, !dbg !3474
  %loop_preheader = getelementptr inbounds i8, i8* %call, i64 64, !dbg !3475
  %9 = bitcast i8* %loop_preheader to i64*, !dbg !3476
  store i64 %8, i64* %9, align 8, !dbg !3476
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %6, metadata !3446, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %6, metadata !3446, metadata !DIExpression()), !dbg !3449
  %base = getelementptr inbounds %struct.VEC_edge_heap, %struct.VEC_edge_heap* %6, i64 0, i32 0, !dbg !3470
  %call7 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %base) #8, !dbg !3470
  %cmp = icmp eq i32 %call7, 1, !dbg !3477
  br i1 %cmp, label %if.then9, label %if.end21, !dbg !3478

if.then9:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %6, metadata !3446, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap* %6, metadata !3446, metadata !DIExpression()), !dbg !3449
  %call16 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %base, i32 0) #8, !dbg !3479
  call void @llvm.dbg.value(metadata %struct.edge_def* %call16, metadata !3447, metadata !DIExpression()), !dbg !3449
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call16, i64 0, i32 7, !dbg !3481
  %10 = load i32, i32* %flags, align 8, !dbg !3481
  %and = and i32 %10, 14, !dbg !3483
  %tobool17 = icmp eq i32 %and, 0, !dbg !3483
  br i1 %tobool17, label %if.then18, label %if.end21, !dbg !3484

if.then18:                                        ; preds = %if.then9
  %call19 = tail call %struct.basic_block_def* @split_edge(%struct.edge_def* %call16) #6, !dbg !3485
  %loop_exit = getelementptr inbounds i8, i8* %call, i64 56, !dbg !3487
  %11 = bitcast i8* %loop_exit to %struct.basic_block_def**, !dbg !3487
  store %struct.basic_block_def* %call19, %struct.basic_block_def** %11, align 8, !dbg !3488
  call void @llvm.dbg.value(metadata i8 1, metadata !3448, metadata !DIExpression()), !dbg !3449
  br label %if.end21, !dbg !3489

if.end21:                                         ; preds = %if.then9, %if.then18, %if.end
  %can_apply.1 = phi i1 [ false, %if.end ], [ false, %if.then9 ], [ true, %if.then18 ]
  %12 = load i32, i32* @flag_variable_expansion_in_unroller, align 4, !dbg !3490
  %tobool22 = icmp ne i32 %12, 0, !dbg !3490
  %or.cond = and i1 %tobool22, %can_apply.1, !dbg !3492
  br i1 %or.cond, label %if.then25, label %if.end21.if.end31_crit_edge, !dbg !3492

if.end21.if.end31_crit_edge:                      ; preds = %if.end21
  br label %if.end31, !dbg !3492

if.then25:                                        ; preds = %if.end21
  %num_nodes26 = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !3493
  %13 = load i32, i32* %num_nodes26, align 4, !dbg !3493
  %mul27 = mul i32 %13, 5, !dbg !3495
  %conv28 = zext i32 %mul27 to i64, !dbg !3496
  %call29 = tail call %struct.htab* @htab_create(i64 %conv28, i32 (i8*)* nonnull @ve_info_hash, i32 (i8*, i8*)* nonnull @ve_info_eq, void (i8*)* nonnull @free) #6, !dbg !3497
  %insns_with_var_to_expand = getelementptr inbounds i8, i8* %call, i64 24, !dbg !3498
  %14 = bitcast i8* %insns_with_var_to_expand to %struct.htab**, !dbg !3498
  store %struct.htab* %call29, %struct.htab** %14, align 8, !dbg !3499
  %var_to_expand_head = getelementptr inbounds i8, i8* %call, i64 32, !dbg !3500
  %15 = bitcast i8* %var_to_expand_head to %struct.var_to_expand**, !dbg !3500
  store %struct.var_to_expand* null, %struct.var_to_expand** %15, align 8, !dbg !3501
  %var_to_expand_tail = getelementptr inbounds i8, i8* %call, i64 40, !dbg !3502
  %16 = bitcast i8* %var_to_expand_tail to i8**, !dbg !3503
  store i8* %var_to_expand_head, i8** %16, align 8, !dbg !3503
  br label %if.end31, !dbg !3504

if.end31:                                         ; preds = %if.end21.if.end31_crit_edge, %if.then25
  call void @llvm.dbg.value(metadata i32 0, metadata !3439, metadata !DIExpression()), !dbg !3449
  %num_nodes32 = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !3505
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !3508
  %insns_to_split65 = bitcast i8* %call to %struct.htab**, !dbg !3511
  %iv_to_split_tail80 = getelementptr inbounds i8, i8* %call, i64 16, !dbg !3516
  %17 = bitcast i8* %iv_to_split_tail80 to %struct.iv_to_split***, !dbg !3516
  %insns_with_var_to_expand83 = getelementptr inbounds i8, i8* %call, i64 24, !dbg !3519
  %18 = bitcast i8* %insns_with_var_to_expand83 to %struct.htab**, !dbg !3519
  %var_to_expand_tail98 = getelementptr inbounds i8, i8* %call, i64 40, !dbg !3521
  %19 = bitcast i8* %var_to_expand_tail98 to %struct.var_to_expand***, !dbg !3521
  br label %for.cond, !dbg !3524

for.cond:                                         ; preds = %for.inc106, %if.end31
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc106 ], [ 0, %if.end31 ], !dbg !3525
  %ivts.0 = phi %struct.iv_to_split* [ %ivts.4, %for.inc106 ], [ null, %if.end31 ], !dbg !3526
  %ves.0 = phi %struct.var_to_expand* [ %ves.4, %for.inc106 ], [ null, %if.end31 ], !dbg !3527
  call void @llvm.dbg.value(metadata %struct.var_to_expand* %ves.0, metadata !3443, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata %struct.iv_to_split* %ivts.0, metadata !3442, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3439, metadata !DIExpression()), !dbg !3449
  %20 = load i32, i32* %num_nodes32, align 4, !dbg !3528
  %21 = zext i32 %20 to i64, !dbg !3529
  %cmp33 = icmp ult i64 %indvars.iv, %21, !dbg !3529
  br i1 %cmp33, label %for.body, label %for.end107, !dbg !3530

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call2, i64 %indvars.iv, !dbg !3531
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3531
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %22, metadata !3438, metadata !DIExpression()), !dbg !3449
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !3532
  %call35 = tail call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %23, %struct.basic_block_def* %22) #6, !dbg !3533
  %tobool36 = icmp eq i8 %call35, 0, !dbg !3533
  br i1 %tobool36, label %for.inc106, label %if.end38, !dbg !3534

if.end38:                                         ; preds = %for.body
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %22, i64 0, i32 7, !dbg !3535
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !3535
  %24 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3535
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %24, i64 0, i32 0, !dbg !3535
  br label %for.cond39, !dbg !3535

for.cond39:                                       ; preds = %for.inc, %if.end38
  %insn.0.in = phi %struct.rtx_def** [ %head_, %if.end38 ], [ %rt_rtx105, %for.inc ]
  %ivts.1 = phi %struct.iv_to_split* [ %ivts.0, %if.end38 ], [ %ivts.3, %for.inc ], !dbg !3449
  %ves.1 = phi %struct.var_to_expand* [ %ves.0, %if.end38 ], [ %ves.3, %for.inc ], !dbg !3527
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !3536
  call void @llvm.dbg.value(metadata %struct.var_to_expand* %ves.1, metadata !3443, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata %struct.iv_to_split* %ivts.1, metadata !3442, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !3441, metadata !DIExpression()), !dbg !3449
  %tobool40 = icmp eq %struct.rtx_def* %insn.0, null, !dbg !3537
  br i1 %tobool40, label %for.inc106.loopexit, label %land.rhs, !dbg !3537

land.rhs:                                         ; preds = %for.cond39
  %25 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3537
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %25, i64 0, i32 1, !dbg !3537
  %26 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !3537
  %27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3537
  %rt_rtx = bitcast %union.rtunion_def* %27 to %struct.rtx_def**, !dbg !3537
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3537
  %cmp44 = icmp eq %struct.rtx_def* %insn.0, %28, !dbg !3537
  br i1 %cmp44, label %for.inc106.loopexit, label %for.body46, !dbg !3535

for.body46:                                       ; preds = %land.rhs
  %29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !3538
  %bf.load = load i32, i32* %29, align 8, !dbg !3538
  %bf.clear = and i32 %bf.load, 65535, !dbg !3538
  %cmp47 = icmp eq i32 %bf.clear, 8, !dbg !3538
  br i1 %cmp47, label %if.end64, label %lor.lhs.false, !dbg !3538

lor.lhs.false:                                    ; preds = %for.body46
  %cmp51 = icmp eq i32 %bf.clear, 7, !dbg !3538
  br i1 %cmp51, label %if.end64, label %lor.lhs.false53, !dbg !3538

lor.lhs.false53:                                  ; preds = %lor.lhs.false
  %cmp56 = icmp eq i32 %bf.clear, 9, !dbg !3538
  br i1 %cmp56, label %if.end64, label %lor.lhs.false58, !dbg !3538

lor.lhs.false58:                                  ; preds = %lor.lhs.false53
  %cmp61 = icmp eq i32 %bf.clear, 10, !dbg !3538
  br i1 %cmp61, label %if.end64, label %for.inc, !dbg !3540

if.end64:                                         ; preds = %lor.lhs.false58, %lor.lhs.false53, %lor.lhs.false, %for.body46
  %30 = load %struct.htab*, %struct.htab** %insns_to_split65, align 8, !dbg !3541
  %tobool66 = icmp eq %struct.htab* %30, null, !dbg !3542
  br i1 %tobool66, label %if.end69, label %if.then67, !dbg !3543

if.then67:                                        ; preds = %if.end64
  %call68 = tail call fastcc %struct.iv_to_split* @analyze_iv_to_split_insn(%struct.rtx_def* nonnull %insn.0) #8, !dbg !3544
  call void @llvm.dbg.value(metadata %struct.iv_to_split* %call68, metadata !3442, metadata !DIExpression()), !dbg !3449
  br label %if.end69, !dbg !3545

if.end69:                                         ; preds = %if.end64, %if.then67
  %ivts.2 = phi %struct.iv_to_split* [ %call68, %if.then67 ], [ %ivts.1, %if.end64 ], !dbg !3449
  call void @llvm.dbg.value(metadata %struct.iv_to_split* %ivts.2, metadata !3442, metadata !DIExpression()), !dbg !3449
  %tobool70 = icmp eq %struct.iv_to_split* %ivts.2, null, !dbg !3546
  br i1 %tobool70, label %if.end82, label %if.then71, !dbg !3547

if.then71:                                        ; preds = %if.end69
  %31 = load %struct.htab*, %struct.htab** %insns_to_split65, align 8, !dbg !3548
  %32 = bitcast %struct.iv_to_split* %ivts.2 to i8*, !dbg !3549
  %call73 = tail call i8** @htab_find_slot(%struct.htab* %31, i8* nonnull %32, i32 1) #6, !dbg !3550
  call void @llvm.dbg.value(metadata i8** %call73, metadata !3444, metadata !DIExpression()), !dbg !3449
  %33 = load i8*, i8** %call73, align 8, !dbg !3551
  %cmp74 = icmp eq i8* %33, null, !dbg !3551
  br i1 %cmp74, label %cond.end78, label %cond.true76, !dbg !3551

cond.true76:                                      ; preds = %if.then71
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1859, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3551
  br label %cond.end78, !dbg !3551

cond.end78:                                       ; preds = %if.then71, %cond.true76
  %34 = bitcast i8** %call73 to %struct.iv_to_split**, !dbg !3552
  store %struct.iv_to_split* %ivts.2, %struct.iv_to_split** %34, align 8, !dbg !3552
  %35 = load %struct.iv_to_split**, %struct.iv_to_split*** %17, align 8, !dbg !3553
  store %struct.iv_to_split* %ivts.2, %struct.iv_to_split** %35, align 8, !dbg !3554
  %next = getelementptr inbounds %struct.iv_to_split, %struct.iv_to_split* %ivts.2, i64 0, i32 3, !dbg !3555
  store %struct.iv_to_split** %next, %struct.iv_to_split*** %17, align 8, !dbg !3556
  br label %for.inc, !dbg !3557

if.end82:                                         ; preds = %if.end69
  %36 = load %struct.htab*, %struct.htab** %18, align 8, !dbg !3558
  %tobool84 = icmp eq %struct.htab* %36, null, !dbg !3559
  br i1 %tobool84, label %if.end87, label %if.then85, !dbg !3560

if.then85:                                        ; preds = %if.end82
  %call86 = tail call fastcc %struct.var_to_expand* @analyze_insn_to_expand_var(%struct.loop* %loop, %struct.rtx_def* nonnull %insn.0) #8, !dbg !3561
  call void @llvm.dbg.value(metadata %struct.var_to_expand* %call86, metadata !3443, metadata !DIExpression()), !dbg !3449
  br label %if.end87, !dbg !3562

if.end87:                                         ; preds = %if.end82, %if.then85
  %ves.2 = phi %struct.var_to_expand* [ %call86, %if.then85 ], [ %ves.1, %if.end82 ], !dbg !3449
  call void @llvm.dbg.value(metadata %struct.var_to_expand* %ves.2, metadata !3443, metadata !DIExpression()), !dbg !3449
  %tobool88 = icmp eq %struct.var_to_expand* %ves.2, null, !dbg !3563
  br i1 %tobool88, label %for.inc, label %if.then89, !dbg !3564

if.then89:                                        ; preds = %if.end87
  %37 = load %struct.htab*, %struct.htab** %18, align 8, !dbg !3565
  %38 = bitcast %struct.var_to_expand* %ves.2 to i8*, !dbg !3566
  %call91 = tail call i8** @htab_find_slot(%struct.htab* %37, i8* nonnull %38, i32 1) #6, !dbg !3567
  call void @llvm.dbg.value(metadata i8** %call91, metadata !3445, metadata !DIExpression()), !dbg !3449
  %39 = load i8*, i8** %call91, align 8, !dbg !3568
  %cmp92 = icmp eq i8* %39, null, !dbg !3568
  br i1 %cmp92, label %cond.end96, label %cond.true94, !dbg !3568

cond.true94:                                      ; preds = %if.then89
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1872, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3568
  br label %cond.end96, !dbg !3568

cond.end96:                                       ; preds = %if.then89, %cond.true94
  %40 = bitcast i8** %call91 to %struct.var_to_expand**, !dbg !3569
  store %struct.var_to_expand* %ves.2, %struct.var_to_expand** %40, align 8, !dbg !3569
  %41 = load %struct.var_to_expand**, %struct.var_to_expand*** %19, align 8, !dbg !3570
  store %struct.var_to_expand* %ves.2, %struct.var_to_expand** %41, align 8, !dbg !3571
  %next99 = getelementptr inbounds %struct.var_to_expand, %struct.var_to_expand* %ves.2, i64 0, i32 3, !dbg !3572
  store %struct.var_to_expand** %next99, %struct.var_to_expand*** %19, align 8, !dbg !3573
  br label %for.inc, !dbg !3574

for.inc:                                          ; preds = %if.end87, %cond.end96, %lor.lhs.false58, %cond.end78
  %ivts.3 = phi %struct.iv_to_split* [ %ivts.2, %cond.end78 ], [ %ivts.1, %lor.lhs.false58 ], [ null, %cond.end96 ], [ null, %if.end87 ], !dbg !3449
  %ves.3 = phi %struct.var_to_expand* [ %ves.1, %cond.end78 ], [ %ves.1, %lor.lhs.false58 ], [ %ves.2, %cond.end96 ], [ null, %if.end87 ], !dbg !3449
  call void @llvm.dbg.value(metadata %struct.var_to_expand* %ves.3, metadata !3443, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata %struct.iv_to_split* %ivts.3, metadata !3442, metadata !DIExpression()), !dbg !3449
  %42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3537
  %rt_rtx105 = bitcast %union.rtunion_def* %42 to %struct.rtx_def**, !dbg !3537
  br label %for.cond39, !dbg !3537, !llvm.loop !3575

for.inc106.loopexit:                              ; preds = %for.cond39, %land.rhs
  %ivts.1.lcssa = phi %struct.iv_to_split* [ %ivts.1, %for.cond39 ], [ %ivts.1, %land.rhs ], !dbg !3449
  %ves.1.lcssa = phi %struct.var_to_expand* [ %ves.1, %for.cond39 ], [ %ves.1, %land.rhs ], !dbg !3527
  call void @llvm.dbg.value(metadata %struct.iv_to_split* %ivts.1.lcssa, metadata !3442, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata %struct.iv_to_split* %ivts.1.lcssa, metadata !3442, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata %struct.var_to_expand* %ves.1.lcssa, metadata !3443, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata %struct.var_to_expand* %ves.1.lcssa, metadata !3443, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata %struct.iv_to_split* %ivts.1.lcssa, metadata !3442, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata %struct.iv_to_split* %ivts.1.lcssa, metadata !3442, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata %struct.var_to_expand* %ves.1.lcssa, metadata !3443, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata %struct.var_to_expand* %ves.1.lcssa, metadata !3443, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata %struct.iv_to_split* %ivts.1.lcssa, metadata !3442, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata %struct.iv_to_split* %ivts.1.lcssa, metadata !3442, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata %struct.var_to_expand* %ves.1.lcssa, metadata !3443, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata %struct.var_to_expand* %ves.1.lcssa, metadata !3443, metadata !DIExpression()), !dbg !3449
  br label %for.inc106, !dbg !3577

for.inc106:                                       ; preds = %for.inc106.loopexit, %for.body
  %ivts.4 = phi %struct.iv_to_split* [ %ivts.0, %for.body ], [ %ivts.1.lcssa, %for.inc106.loopexit ], !dbg !3526
  %ves.4 = phi %struct.var_to_expand* [ %ves.0, %for.body ], [ %ves.1.lcssa, %for.inc106.loopexit ], !dbg !3527
  call void @llvm.dbg.value(metadata %struct.var_to_expand* %ves.4, metadata !3443, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.value(metadata %struct.iv_to_split* %ivts.4, metadata !3442, metadata !DIExpression()), !dbg !3449
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3577
  br label %for.cond, !dbg !3578, !llvm.loop !3579

for.end107:                                       ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %edges, metadata !3446, metadata !DIExpression(DW_OP_deref)), !dbg !3449
  call fastcc void @VEC_edge_heap_free(%struct.VEC_edge_heap** nonnull %edges) #8, !dbg !3581
  %43 = bitcast %struct.basic_block_def** %call2 to i8*, !dbg !3582
  call void @free(i8* %43) #6, !dbg !3583
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !3584
  ret %struct.opt_info* %0, !dbg !3585
}

; Function Attrs: nounwind uwtable
define internal fastcc void @opt_info_start_duplication(%struct.opt_info* %opt_info) unnamed_addr #4 !dbg !3586 {
entry:
  call void @llvm.dbg.value(metadata %struct.opt_info* %opt_info, metadata !3590, metadata !DIExpression()), !dbg !3591
  %tobool = icmp eq %struct.opt_info* %opt_info, null, !dbg !3592
  br i1 %tobool, label %if.end, label %if.then, !dbg !3594

if.then:                                          ; preds = %entry
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3595
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3595
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3595
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 5, !dbg !3595
  %2 = load i32, i32* %x_last_basic_block, align 8, !dbg !3595
  %first_new_block = getelementptr inbounds %struct.opt_info, %struct.opt_info* %opt_info, i64 0, i32 6, !dbg !3596
  store i32 %2, i32* %first_new_block, align 8, !dbg !3597
  br label %if.end, !dbg !3598

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !3599
}

declare dso_local zeroext i8 @duplicate_loop_to_header_edge(%struct.loop*, %struct.edge_def*, i32, %struct.simple_bitmap_def*, %struct.edge_def*, %struct.VEC_edge_heap**, i32) local_unnamed_addr #1

declare dso_local %struct.edge_def* @loop_preheader_edge(%struct.loop*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @apply_opt_in_copies(%struct.opt_info* %opt_info, i32 %n_copies, i8 zeroext %unrolling, i8 zeroext %rewrite_original_loop) unnamed_addr #4 !dbg !3600 {
entry:
  %ivts_templ = alloca %struct.iv_to_split, align 8
  %ve_templ = alloca %struct.var_to_expand, align 8
  call void @llvm.dbg.value(metadata %struct.opt_info* %opt_info, metadata !3604, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i32 %n_copies, metadata !3605, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i8 %unrolling, metadata !3606, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i8 %rewrite_original_loop, metadata !3607, metadata !DIExpression()), !dbg !3619
  %0 = bitcast %struct.iv_to_split* %ivts_templ to i8*, !dbg !3620
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %0) #7, !dbg !3620
  %1 = bitcast %struct.var_to_expand* %ve_templ to i8*, !dbg !3621
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %1) #7, !dbg !3621
  %tobool = icmp eq i8 %unrolling, 0, !dbg !3622
  %tobool1 = icmp ne i8 %rewrite_original_loop, 0, !dbg !3622
  %or.cond = or i1 %tobool, %tobool1, !dbg !3622
  br i1 %or.cond, label %cond.end, label %cond.true, !dbg !3622

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 2209, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3622
  br label %cond.end, !dbg !3622

cond.end:                                         ; preds = %entry, %cond.true
  %insns_to_split = getelementptr inbounds %struct.opt_info, %struct.opt_info* %opt_info, i64 0, i32 0, !dbg !3623
  %2 = load %struct.htab*, %struct.htab** %insns_to_split, align 8, !dbg !3623
  %tobool2 = icmp eq %struct.htab* %2, null, !dbg !3625
  br i1 %tobool2, label %if.end, label %if.then, !dbg !3626

if.then:                                          ; preds = %cond.end
  %iv_to_split_head = getelementptr inbounds %struct.opt_info, %struct.opt_info* %opt_info, i64 0, i32 1, !dbg !3627
  br label %for.cond, !dbg !3629

for.cond:                                         ; preds = %for.body, %if.then
  %ivts.0.in = phi %struct.iv_to_split** [ %iv_to_split_head, %if.then ], [ %next4, %for.body ]
  %ivts.0 = load %struct.iv_to_split*, %struct.iv_to_split** %ivts.0.in, align 8, !dbg !3630
  call void @llvm.dbg.value(metadata %struct.iv_to_split* %ivts.0, metadata !3616, metadata !DIExpression()), !dbg !3619
  %tobool3 = icmp eq %struct.iv_to_split* %ivts.0, null, !dbg !3631
  br i1 %tobool3, label %if.end.loopexit, label %for.body, !dbg !3631

for.body:                                         ; preds = %for.cond
  tail call fastcc void @allocate_basic_variable(%struct.iv_to_split* nonnull %ivts.0) #8, !dbg !3632
  %next4 = getelementptr inbounds %struct.iv_to_split, %struct.iv_to_split* %ivts.0, i64 0, i32 3, !dbg !3634
  br label %for.cond, !dbg !3635, !llvm.loop !3636

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !3638

if.end:                                           ; preds = %if.end.loopexit, %cond.end
  %first_new_block = getelementptr inbounds %struct.opt_info, %struct.opt_info* %opt_info, i64 0, i32 6, !dbg !3638
  %3 = load i32, i32* %first_new_block, align 8, !dbg !3638
  call void @llvm.dbg.value(metadata i32 %3, metadata !3608, metadata !DIExpression()), !dbg !3619
  %insn76 = getelementptr inbounds %struct.iv_to_split, %struct.iv_to_split* %ivts_templ, i64 0, i32 0, !dbg !3640
  %insn77 = getelementptr inbounds %struct.var_to_expand, %struct.var_to_expand* %ve_templ, i64 0, i32 0, !dbg !3640
  %insns_with_var_to_expand = getelementptr inbounds %struct.opt_info, %struct.opt_info* %opt_info, i64 0, i32 3, !dbg !3646
  br label %for.cond5, !dbg !3648

for.cond5:                                        ; preds = %for.inc142, %if.end
  %i.0 = phi i32 [ %3, %if.end ], [ %inc, %for.inc142 ], !dbg !3649
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3608, metadata !DIExpression()), !dbg !3619
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3650
  %cfg = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !3650
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3650
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 5, !dbg !3650
  %6 = load i32, i32* %x_last_basic_block, align 8, !dbg !3650
  %cmp = icmp ult i32 %i.0, %6, !dbg !3651
  br i1 %cmp, label %for.body7, label %for.end143, !dbg !3652

for.body7:                                        ; preds = %for.cond5
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 2, !dbg !3653
  %7 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !3653
  %tobool10 = icmp eq %struct.VEC_basic_block_gc* %7, null, !dbg !3653
  br i1 %tobool10, label %cond.end16, label %cond.true11, !dbg !3653

cond.true11:                                      ; preds = %for.body7
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %7, i64 0, i32 0, !dbg !3653
  br label %cond.end16, !dbg !3653

cond.end16:                                       ; preds = %for.body7, %cond.true11
  %cond17 = phi %struct.VEC_basic_block_base* [ %base, %cond.true11 ], [ null, %for.body7 ], !dbg !3653
  %call = call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond17, i32 %i.0) #8, !dbg !3653
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !3610, metadata !DIExpression()), !dbg !3619
  %call18 = call %struct.basic_block_def* @get_bb_original(%struct.basic_block_def* %call) #6, !dbg !3654
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call18, metadata !3611, metadata !DIExpression()), !dbg !3619
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 2, !dbg !3655
  %8 = bitcast i8** %aux to i64*, !dbg !3655
  %9 = load i64, i64* %8, align 8, !dbg !3655
  %conv19 = trunc i64 %9 to i32, !dbg !3656
  %call20 = call fastcc i32 @determine_split_iv_delta(i32 %conv19, i32 %n_copies, i8 zeroext %unrolling) #8, !dbg !3657
  call void @llvm.dbg.value(metadata i32 %call20, metadata !3609, metadata !DIExpression()), !dbg !3619
  store i8* null, i8** %aux, align 8, !dbg !3658
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call18, i64 0, i32 7, !dbg !3659
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !3659
  %10 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3659
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %10, i64 0, i32 0, !dbg !3659
  %11 = load %struct.rtx_def*, %struct.rtx_def** %head_, align 8, !dbg !3659
  call void @llvm.dbg.value(metadata %struct.rtx_def* %11, metadata !3613, metadata !DIExpression()), !dbg !3619
  %il22 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 7, !dbg !3660
  %rtl23 = bitcast %union.basic_block_il_dependent* %il22 to %struct.rtl_bb_info**, !dbg !3660
  %12 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl23, align 8, !dbg !3660
  %head_24 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %12, i64 0, i32 0, !dbg !3660
  %13 = load %struct.rtx_def*, %struct.rtx_def** %head_24, align 8, !dbg !3660
  call void @llvm.dbg.value(metadata %struct.rtx_def* %13, metadata !3612, metadata !DIExpression()), !dbg !3619
  %tobool103 = icmp eq i32 %call20, 0, !dbg !3661
  br label %for.cond25, !dbg !3667

for.cond25:                                       ; preds = %for.inc140, %cond.end16
  %.pre1 = phi %struct.rtl_bb_info* [ %12, %cond.end16 ], [ %.pre, %for.inc140 ]
  %14 = phi %struct.rtl_bb_info* [ %12, %cond.end16 ], [ %.pre, %for.inc140 ], !dbg !3668
  %orig_insn.0 = phi %struct.rtx_def* [ %11, %cond.end16 ], [ %orig_insn.2, %for.inc140 ], !dbg !3669
  %insn.0 = phi %struct.rtx_def* [ %13, %cond.end16 ], [ %19, %for.inc140 ], !dbg !3670
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !3612, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata %struct.rtx_def* %orig_insn.0, metadata !3613, metadata !DIExpression()), !dbg !3619
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %14, i64 0, i32 1, !dbg !3668
  %15 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !3668
  %16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3668
  %rt_rtx = bitcast %union.rtunion_def* %16 to %struct.rtx_def**, !dbg !3668
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3668
  %cmp28 = icmp eq %struct.rtx_def* %insn.0, %17, !dbg !3671
  br i1 %cmp28, label %for.inc142, label %for.body30, !dbg !3672

for.body30:                                       ; preds = %for.cond25
  %18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3673
  %rt_rtx34 = bitcast %union.rtunion_def* %18 to %struct.rtx_def**, !dbg !3673
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx34, align 8, !dbg !3673
  call void @llvm.dbg.value(metadata %struct.rtx_def* %19, metadata !3614, metadata !DIExpression()), !dbg !3619
  %20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !3674
  %bf.load = load i32, i32* %20, align 8, !dbg !3674
  %bf.clear = and i32 %bf.load, 65535, !dbg !3674
  %cmp35 = icmp eq i32 %bf.clear, 8, !dbg !3674
  br i1 %cmp35, label %if.end53, label %lor.lhs.false37, !dbg !3674

lor.lhs.false37:                                  ; preds = %for.body30
  %cmp40 = icmp eq i32 %bf.clear, 7, !dbg !3674
  br i1 %cmp40, label %if.end53, label %lor.lhs.false42, !dbg !3674

lor.lhs.false42:                                  ; preds = %lor.lhs.false37
  %cmp45 = icmp eq i32 %bf.clear, 9, !dbg !3674
  br i1 %cmp45, label %if.end53, label %lor.lhs.false47, !dbg !3674

lor.lhs.false47:                                  ; preds = %lor.lhs.false42
  %cmp50 = icmp eq i32 %bf.clear, 10, !dbg !3674
  br i1 %cmp50, label %if.end53, label %for.inc140, !dbg !3676

if.end53:                                         ; preds = %lor.lhs.false47, %lor.lhs.false42, %lor.lhs.false37, %for.body30
  br label %while.cond, !dbg !3677

while.cond:                                       ; preds = %while.body, %if.end53
  %orig_insn.1 = phi %struct.rtx_def* [ %orig_insn.0, %if.end53 ], [ %24, %while.body ], !dbg !3669
  call void @llvm.dbg.value(metadata %struct.rtx_def* %orig_insn.1, metadata !3613, metadata !DIExpression()), !dbg !3619
  %21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %orig_insn.1, i64 0, i32 0, !dbg !3678
  %bf.load54 = load i32, i32* %21, align 8, !dbg !3678
  %bf.clear55 = and i32 %bf.load54, 65535, !dbg !3678
  %cmp56 = icmp eq i32 %bf.clear55, 8, !dbg !3678
  br i1 %cmp56, label %lor.end, label %lor.lhs.false58, !dbg !3678

lor.lhs.false58:                                  ; preds = %while.cond
  %cmp61 = icmp eq i32 %bf.clear55, 7, !dbg !3678
  br i1 %cmp61, label %lor.end, label %lor.lhs.false63, !dbg !3678

lor.lhs.false63:                                  ; preds = %lor.lhs.false58
  %cmp66 = icmp eq i32 %bf.clear55, 9, !dbg !3678
  br i1 %cmp66, label %lor.end, label %lor.rhs, !dbg !3678

lor.rhs:                                          ; preds = %lor.lhs.false63
  %cmp70 = icmp eq i32 %bf.clear55, 10, !dbg !3678
  br label %lor.end, !dbg !3678

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false63, %lor.lhs.false58, %while.cond
  %22 = phi i1 [ true, %lor.lhs.false63 ], [ true, %lor.lhs.false58 ], [ true, %while.cond ], [ %cmp70, %lor.rhs ]
  br i1 %22, label %while.end, label %while.body, !dbg !3677

while.body:                                       ; preds = %lor.end
  %23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %orig_insn.1, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3679
  %rt_rtx75 = bitcast %union.rtunion_def* %23 to %struct.rtx_def**, !dbg !3679
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx75, align 8, !dbg !3679
  call void @llvm.dbg.value(metadata %struct.rtx_def* %24, metadata !3613, metadata !DIExpression()), !dbg !3619
  br label %while.cond, !dbg !3677, !llvm.loop !3680

while.end:                                        ; preds = %lor.end
  %orig_insn.1.lcssa = phi %struct.rtx_def* [ %orig_insn.1, %lor.end ], !dbg !3669
  call void @llvm.dbg.value(metadata %struct.rtx_def* %orig_insn.1.lcssa, metadata !3613, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata %struct.rtx_def* %orig_insn.1.lcssa, metadata !3613, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata %struct.rtx_def* %orig_insn.1.lcssa, metadata !3613, metadata !DIExpression()), !dbg !3619
  store %struct.rtx_def* %orig_insn.1.lcssa, %struct.rtx_def** %insn76, align 8, !dbg !3681
  store %struct.rtx_def* %orig_insn.1.lcssa, %struct.rtx_def** %insn77, align 8, !dbg !3682
  %25 = load %struct.htab*, %struct.htab** %insns_to_split, align 8, !dbg !3683
  %tobool79 = icmp eq %struct.htab* %25, null, !dbg !3684
  br i1 %tobool79, label %if.end107, label %if.then80, !dbg !3685

if.then80:                                        ; preds = %while.end
  %call82 = call i8* @htab_find(%struct.htab* nonnull %25, i8* nonnull %0) #6, !dbg !3686
  %26 = bitcast i8* %call82 to %struct.iv_to_split*, !dbg !3687
  call void @llvm.dbg.value(metadata %struct.iv_to_split* %26, metadata !3616, metadata !DIExpression()), !dbg !3619
  %tobool83 = icmp eq i8* %call82, null, !dbg !3688
  br i1 %tobool83, label %if.end107, label %if.then84, !dbg !3689

if.then84:                                        ; preds = %if.then80
  %u85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !3690
  %27 = getelementptr inbounds %union.u, %union.u* %u85, i64 1, i32 0, i32 0, i64 0, !dbg !3690
  %28 = bitcast %union.rtunion_def* %27 to i32**, !dbg !3690
  %29 = load i32*, i32** %28, align 8, !dbg !3690
  %bf.load89 = load i32, i32* %29, align 8, !dbg !3690
  %u91 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %orig_insn.1.lcssa, i64 0, i32 1, !dbg !3690
  %30 = getelementptr inbounds %union.u, %union.u* %u91, i64 1, i32 0, i32 0, i64 0, !dbg !3690
  %31 = bitcast %union.rtunion_def* %30 to i32**, !dbg !3690
  %32 = load i32*, i32** %31, align 8, !dbg !3690
  %bf.load95 = load i32, i32* %32, align 8, !dbg !3690
  %33 = xor i32 %bf.load89, %bf.load95, !dbg !3690
  %34 = and i32 %33, 65535, !dbg !3690
  %cmp97 = icmp eq i32 %34, 0, !dbg !3690
  br i1 %cmp97, label %cond.end101, label %cond.true99, !dbg !3690

cond.true99:                                      ; preds = %if.then84
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 2248, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3690
  br label %cond.end101, !dbg !3690

cond.end101:                                      ; preds = %if.then84, %cond.true99
  br i1 %tobool103, label %if.then104, label %if.end105, !dbg !3691

if.then104:                                       ; preds = %cond.end101
  call fastcc void @insert_base_initialization(%struct.iv_to_split* nonnull %26, %struct.rtx_def* %insn.0) #8, !dbg !3692
  br label %if.end105, !dbg !3692

if.end105:                                        ; preds = %cond.end101, %if.then104
  call fastcc void @split_iv(%struct.iv_to_split* nonnull %26, %struct.rtx_def* %insn.0, i32 %call20) #8, !dbg !3693
  br label %if.end107, !dbg !3694

if.end107:                                        ; preds = %if.then80, %while.end, %if.end105
  br i1 %tobool, label %if.end135, label %land.lhs.true, !dbg !3695

land.lhs.true:                                    ; preds = %if.end107
  %35 = load %struct.htab*, %struct.htab** %insns_with_var_to_expand, align 8, !dbg !3696
  %tobool110 = icmp eq %struct.htab* %35, null, !dbg !3697
  br i1 %tobool110, label %if.end135, label %if.then111, !dbg !3698

if.then111:                                       ; preds = %land.lhs.true
  %call113 = call i8* @htab_find(%struct.htab* nonnull %35, i8* nonnull %1) #6, !dbg !3699
  %36 = bitcast i8* %call113 to %struct.var_to_expand*, !dbg !3701
  call void @llvm.dbg.value(metadata %struct.var_to_expand* %36, metadata !3618, metadata !DIExpression()), !dbg !3619
  %tobool114 = icmp eq i8* %call113, null, !dbg !3702
  br i1 %tobool114, label %if.end135, label %if.then115, !dbg !3704

if.then115:                                       ; preds = %if.then111
  %u116 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !3705
  %37 = getelementptr inbounds %union.u, %union.u* %u116, i64 1, i32 0, i32 0, i64 0, !dbg !3705
  %38 = bitcast %union.rtunion_def* %37 to i32**, !dbg !3705
  %39 = load i32*, i32** %38, align 8, !dbg !3705
  %bf.load120 = load i32, i32* %39, align 8, !dbg !3705
  %u122 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %orig_insn.1.lcssa, i64 0, i32 1, !dbg !3705
  %40 = getelementptr inbounds %union.u, %union.u* %u122, i64 1, i32 0, i32 0, i64 0, !dbg !3705
  %41 = bitcast %union.rtunion_def* %40 to i32**, !dbg !3705
  %42 = load i32*, i32** %41, align 8, !dbg !3705
  %bf.load126 = load i32, i32* %42, align 8, !dbg !3705
  %43 = xor i32 %bf.load120, %bf.load126, !dbg !3705
  %44 = and i32 %43, 65535, !dbg !3705
  %cmp128 = icmp eq i32 %44, 0, !dbg !3705
  br i1 %cmp128, label %cond.end132, label %cond.true130, !dbg !3705

cond.true130:                                     ; preds = %if.then115
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 2263, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3705
  br label %cond.end132, !dbg !3705

cond.end132:                                      ; preds = %if.then115, %cond.true130
  call fastcc void @expand_var_during_unrolling(%struct.var_to_expand* nonnull %36, %struct.rtx_def* %insn.0) #8, !dbg !3707
  br label %if.end135, !dbg !3708

if.end135:                                        ; preds = %if.then111, %land.lhs.true, %if.end107, %cond.end132
  %45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %orig_insn.1.lcssa, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3709
  %rt_rtx139 = bitcast %union.rtunion_def* %45 to %struct.rtx_def**, !dbg !3709
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx139, align 8, !dbg !3709
  call void @llvm.dbg.value(metadata %struct.rtx_def* %46, metadata !3613, metadata !DIExpression()), !dbg !3619
  %.pre.pre = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl23, align 8, !dbg !3668
  br label %for.inc140, !dbg !3710

for.inc140:                                       ; preds = %lor.lhs.false47, %if.end135
  %.pre = phi %struct.rtl_bb_info* [ %.pre.pre, %if.end135 ], [ %.pre1, %lor.lhs.false47 ], !dbg !3668
  %orig_insn.2 = phi %struct.rtx_def* [ %46, %if.end135 ], [ %orig_insn.0, %lor.lhs.false47 ], !dbg !3669
  call void @llvm.dbg.value(metadata %struct.rtx_def* %orig_insn.2, metadata !3613, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata %struct.rtx_def* %19, metadata !3612, metadata !DIExpression()), !dbg !3619
  br label %for.cond25, !dbg !3711, !llvm.loop !3712

for.inc142:                                       ; preds = %for.cond25
  %inc = add i32 %i.0, 1, !dbg !3714
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3608, metadata !DIExpression()), !dbg !3619
  br label %for.cond5, !dbg !3715, !llvm.loop !3716

for.end143:                                       ; preds = %for.cond5
  %tobool144 = icmp eq i8 %rewrite_original_loop, 0, !dbg !3718
  br i1 %tobool144, label %cleanup, label %if.end146, !dbg !3720

if.end146:                                        ; preds = %for.end143
  %47 = load %struct.htab*, %struct.htab** %insns_with_var_to_expand, align 8, !dbg !3721
  %tobool148 = icmp eq %struct.htab* %47, null, !dbg !3723
  br i1 %tobool148, label %if.end163, label %if.then149, !dbg !3724

if.then149:                                       ; preds = %if.end146
  %var_to_expand_head = getelementptr inbounds %struct.opt_info, %struct.opt_info* %opt_info, i64 0, i32 4, !dbg !3725
  %loop_preheader = getelementptr inbounds %struct.opt_info, %struct.opt_info* %opt_info, i64 0, i32 8, !dbg !3728
  br label %for.cond150, !dbg !3730

for.cond150:                                      ; preds = %for.body152, %if.then149
  %ves.0.in = phi %struct.var_to_expand** [ %var_to_expand_head, %if.then149 ], [ %next154, %for.body152 ]
  %ves.0 = load %struct.var_to_expand*, %struct.var_to_expand** %ves.0.in, align 8, !dbg !3731
  call void @llvm.dbg.value(metadata %struct.var_to_expand* %ves.0, metadata !3618, metadata !DIExpression()), !dbg !3619
  %tobool151 = icmp eq %struct.var_to_expand* %ves.0, null, !dbg !3732
  br i1 %tobool151, label %for.end155, label %for.body152, !dbg !3732

for.body152:                                      ; preds = %for.cond150
  %48 = load %struct.basic_block_def*, %struct.basic_block_def** %loop_preheader, align 8, !dbg !3733
  call fastcc void @insert_var_expansion_initialization(%struct.var_to_expand* nonnull %ves.0, %struct.basic_block_def* %48) #8, !dbg !3734
  %next154 = getelementptr inbounds %struct.var_to_expand, %struct.var_to_expand* %ves.0, i64 0, i32 3, !dbg !3735
  br label %for.cond150, !dbg !3736, !llvm.loop !3737

for.end155:                                       ; preds = %for.cond150
  %loop_exit = getelementptr inbounds %struct.opt_info, %struct.opt_info* %opt_info, i64 0, i32 7, !dbg !3739
  br label %for.cond157, !dbg !3742

for.cond157:                                      ; preds = %for.body159, %for.end155
  %ves.1.in = phi %struct.var_to_expand** [ %var_to_expand_head, %for.end155 ], [ %next161, %for.body159 ]
  %ves.1 = load %struct.var_to_expand*, %struct.var_to_expand** %ves.1.in, align 8, !dbg !3743
  call void @llvm.dbg.value(metadata %struct.var_to_expand* %ves.1, metadata !3618, metadata !DIExpression()), !dbg !3619
  %tobool158 = icmp eq %struct.var_to_expand* %ves.1, null, !dbg !3744
  br i1 %tobool158, label %if.end163.loopexit, label %for.body159, !dbg !3744

for.body159:                                      ; preds = %for.cond157
  %49 = load %struct.basic_block_def*, %struct.basic_block_def** %loop_exit, align 8, !dbg !3745
  call fastcc void @combine_var_copies_in_loop_exit(%struct.var_to_expand* nonnull %ves.1, %struct.basic_block_def* %49) #8, !dbg !3746
  %next161 = getelementptr inbounds %struct.var_to_expand, %struct.var_to_expand* %ves.1, i64 0, i32 3, !dbg !3747
  br label %for.cond157, !dbg !3748, !llvm.loop !3749

if.end163.loopexit:                               ; preds = %for.cond157
  br label %if.end163, !dbg !3751

if.end163:                                        ; preds = %if.end163.loopexit, %if.end146
  %50 = load i32, i32* %first_new_block, align 8, !dbg !3751
  call void @llvm.dbg.value(metadata i32 %50, metadata !3608, metadata !DIExpression()), !dbg !3619
  br label %for.cond165, !dbg !3753

for.cond165:                                      ; preds = %for.inc246, %if.end163
  %i.1 = phi i32 [ %50, %if.end163 ], [ %inc247, %for.inc246 ], !dbg !3754
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !3608, metadata !DIExpression()), !dbg !3619
  %51 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3755
  %cfg167 = getelementptr inbounds %struct.function, %struct.function* %51, i64 0, i32 1, !dbg !3755
  %52 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg167, align 8, !dbg !3755
  %x_last_basic_block168 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %52, i64 0, i32 5, !dbg !3755
  %53 = load i32, i32* %x_last_basic_block168, align 8, !dbg !3755
  %cmp169 = icmp ult i32 %i.1, %53, !dbg !3757
  br i1 %cmp169, label %for.body171, label %cleanup.loopexit, !dbg !3758

for.body171:                                      ; preds = %for.cond165
  %x_basic_block_info174 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %52, i64 0, i32 2, !dbg !3759
  %54 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info174, align 8, !dbg !3759
  %tobool175 = icmp eq %struct.VEC_basic_block_gc* %54, null, !dbg !3759
  br i1 %tobool175, label %cond.end182, label %cond.true176, !dbg !3759

cond.true176:                                     ; preds = %for.body171
  %base180 = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %54, i64 0, i32 0, !dbg !3759
  br label %cond.end182, !dbg !3759

cond.end182:                                      ; preds = %for.body171, %cond.true176
  %cond183 = phi %struct.VEC_basic_block_base* [ %base180, %cond.true176 ], [ null, %for.body171 ], !dbg !3759
  %call184 = call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond183, i32 %i.1) #8, !dbg !3759
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call184, metadata !3610, metadata !DIExpression()), !dbg !3619
  %call185 = call %struct.basic_block_def* @get_bb_original(%struct.basic_block_def* %call184) #6, !dbg !3761
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call185, metadata !3611, metadata !DIExpression()), !dbg !3619
  %call186 = call %struct.basic_block_def* @get_bb_copy(%struct.basic_block_def* %call185) #6, !dbg !3762
  %cmp187 = icmp eq %struct.basic_block_def* %call186, %call184, !dbg !3764
  br i1 %cmp187, label %if.end190, label %for.inc246, !dbg !3765

if.end190:                                        ; preds = %cond.end182
  %call191 = call fastcc i32 @determine_split_iv_delta(i32 0, i32 %n_copies, i8 zeroext %unrolling) #8, !dbg !3766
  call void @llvm.dbg.value(metadata i32 %call191, metadata !3609, metadata !DIExpression()), !dbg !3619
  %il192 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call185, i64 0, i32 7, !dbg !3767
  %rtl193 = bitcast %union.basic_block_il_dependent* %il192 to %struct.rtl_bb_info**, !dbg !3767
  %55 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl193, align 8, !dbg !3767
  %head_194 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %55, i64 0, i32 0, !dbg !3767
  %56 = load %struct.rtx_def*, %struct.rtx_def** %head_194, align 8, !dbg !3767
  call void @llvm.dbg.value(metadata %struct.rtx_def* %56, metadata !3613, metadata !DIExpression()), !dbg !3619
  %il196 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call184, i64 0, i32 7, !dbg !3769
  %rtl197 = bitcast %union.basic_block_il_dependent* %il196 to %struct.rtl_bb_info**, !dbg !3769
  %tobool239 = icmp eq i32 %call191, 0, !dbg !3771
  br i1 %tobool239, label %if.end190.split.us, label %if.end190.if.end190.split_crit_edge, !dbg !3778

if.end190.if.end190.split_crit_edge:              ; preds = %if.end190
  br label %for.cond195, !dbg !3778

if.end190.split.us:                               ; preds = %if.end190
  br label %for.cond195.us, !dbg !3778

for.cond195.us:                                   ; preds = %for.inc244.us, %if.end190.split.us
  %orig_insn.3.us = phi %struct.rtx_def* [ %56, %if.end190.split.us ], [ %62, %for.inc244.us ], !dbg !3779
  call void @llvm.dbg.value(metadata %struct.rtx_def* %orig_insn.3.us, metadata !3613, metadata !DIExpression()), !dbg !3619
  %57 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl197, align 8, !dbg !3780
  %end_198.us = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %57, i64 0, i32 1, !dbg !3780
  %58 = load %struct.rtx_def*, %struct.rtx_def** %end_198.us, align 8, !dbg !3780
  %59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3780
  %rt_rtx202.us = bitcast %union.rtunion_def* %59 to %struct.rtx_def**, !dbg !3780
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx202.us, align 8, !dbg !3780
  %cmp203.us = icmp eq %struct.rtx_def* %orig_insn.3.us, %60, !dbg !3781
  br i1 %cmp203.us, label %for.inc246.loopexit.us-lcssa.us, label %for.body205.us, !dbg !3782

for.body205.us:                                   ; preds = %for.cond195.us
  %61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %orig_insn.3.us, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3783
  %rt_rtx209.us = bitcast %union.rtunion_def* %61 to %struct.rtx_def**, !dbg !3783
  %62 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx209.us, align 8, !dbg !3783
  call void @llvm.dbg.value(metadata %struct.rtx_def* %62, metadata !3614, metadata !DIExpression()), !dbg !3619
  %63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %orig_insn.3.us, i64 0, i32 0, !dbg !3784
  %bf.load210.us = load i32, i32* %63, align 8, !dbg !3784
  %bf.clear211.us = and i32 %bf.load210.us, 65535, !dbg !3784
  %cmp212.us = icmp eq i32 %bf.clear211.us, 8, !dbg !3784
  br i1 %cmp212.us, label %if.end230.us, label %lor.lhs.false214.us, !dbg !3784

lor.lhs.false214.us:                              ; preds = %for.body205.us
  %cmp217.us = icmp eq i32 %bf.clear211.us, 7, !dbg !3784
  br i1 %cmp217.us, label %if.end230.us, label %lor.lhs.false219.us, !dbg !3784

lor.lhs.false219.us:                              ; preds = %lor.lhs.false214.us
  %cmp222.us = icmp eq i32 %bf.clear211.us, 9, !dbg !3784
  br i1 %cmp222.us, label %if.end230.us, label %lor.lhs.false224.us, !dbg !3784

lor.lhs.false224.us:                              ; preds = %lor.lhs.false219.us
  %cmp227.us = icmp eq i32 %bf.clear211.us, 10, !dbg !3784
  br i1 %cmp227.us, label %if.end230.us, label %for.inc244.us, !dbg !3786

if.end230.us:                                     ; preds = %lor.lhs.false224.us, %lor.lhs.false219.us, %lor.lhs.false214.us, %for.body205.us
  store %struct.rtx_def* %orig_insn.3.us, %struct.rtx_def** %insn76, align 8, !dbg !3787
  %64 = load %struct.htab*, %struct.htab** %insns_to_split, align 8, !dbg !3788
  %tobool233.us = icmp eq %struct.htab* %64, null, !dbg !3789
  br i1 %tobool233.us, label %for.inc244.us, label %if.then234.us, !dbg !3790

if.then234.us:                                    ; preds = %if.end230.us
  %call236.us = call i8* @htab_find(%struct.htab* nonnull %64, i8* nonnull %0) #6, !dbg !3791
  %65 = bitcast i8* %call236.us to %struct.iv_to_split*, !dbg !3792
  call void @llvm.dbg.value(metadata %struct.iv_to_split* %65, metadata !3616, metadata !DIExpression()), !dbg !3619
  %tobool237.us = icmp eq i8* %call236.us, null, !dbg !3793
  br i1 %tobool237.us, label %for.inc244.us, label %if.then238.us, !dbg !3794

if.then238.us:                                    ; preds = %if.then234.us
  call fastcc void @insert_base_initialization(%struct.iv_to_split* nonnull %65, %struct.rtx_def* %orig_insn.3.us) #8, !dbg !3795
  call fastcc void @split_iv(%struct.iv_to_split* nonnull %65, %struct.rtx_def* %orig_insn.3.us, i32 0) #8, !dbg !3796
  br label %for.inc244.us, !dbg !3797

for.inc244.us:                                    ; preds = %if.then238.us, %if.then234.us, %if.end230.us, %lor.lhs.false224.us
  call void @llvm.dbg.value(metadata %struct.rtx_def* %62, metadata !3613, metadata !DIExpression()), !dbg !3619
  br label %for.cond195.us, !dbg !3798, !llvm.loop !3799

for.inc246.loopexit.us-lcssa.us:                  ; preds = %for.cond195.us
  br label %for.inc246.loopexit, !dbg !3801

for.cond195:                                      ; preds = %for.inc244, %if.end190.if.end190.split_crit_edge
  %orig_insn.3 = phi %struct.rtx_def* [ %56, %if.end190.if.end190.split_crit_edge ], [ %71, %for.inc244 ], !dbg !3779
  call void @llvm.dbg.value(metadata %struct.rtx_def* %orig_insn.3, metadata !3613, metadata !DIExpression()), !dbg !3619
  %66 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl197, align 8, !dbg !3780
  %end_198 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %66, i64 0, i32 1, !dbg !3780
  %67 = load %struct.rtx_def*, %struct.rtx_def** %end_198, align 8, !dbg !3780
  %68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3780
  %rt_rtx202 = bitcast %union.rtunion_def* %68 to %struct.rtx_def**, !dbg !3780
  %69 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx202, align 8, !dbg !3780
  %cmp203 = icmp eq %struct.rtx_def* %orig_insn.3, %69, !dbg !3781
  br i1 %cmp203, label %for.inc246.loopexit.us-lcssa, label %for.body205, !dbg !3782

for.body205:                                      ; preds = %for.cond195
  %70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %orig_insn.3, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !3783
  %rt_rtx209 = bitcast %union.rtunion_def* %70 to %struct.rtx_def**, !dbg !3783
  %71 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx209, align 8, !dbg !3783
  call void @llvm.dbg.value(metadata %struct.rtx_def* %71, metadata !3614, metadata !DIExpression()), !dbg !3619
  %72 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %orig_insn.3, i64 0, i32 0, !dbg !3784
  %bf.load210 = load i32, i32* %72, align 8, !dbg !3784
  %bf.clear211 = and i32 %bf.load210, 65535, !dbg !3784
  %cmp212 = icmp eq i32 %bf.clear211, 8, !dbg !3784
  br i1 %cmp212, label %if.end230, label %lor.lhs.false214, !dbg !3784

lor.lhs.false214:                                 ; preds = %for.body205
  %cmp217 = icmp eq i32 %bf.clear211, 7, !dbg !3784
  br i1 %cmp217, label %if.end230, label %lor.lhs.false219, !dbg !3784

lor.lhs.false219:                                 ; preds = %lor.lhs.false214
  %cmp222 = icmp eq i32 %bf.clear211, 9, !dbg !3784
  br i1 %cmp222, label %if.end230, label %lor.lhs.false224, !dbg !3784

lor.lhs.false224:                                 ; preds = %lor.lhs.false219
  %cmp227 = icmp eq i32 %bf.clear211, 10, !dbg !3784
  br i1 %cmp227, label %if.end230, label %for.inc244, !dbg !3786

if.end230:                                        ; preds = %lor.lhs.false224, %lor.lhs.false219, %lor.lhs.false214, %for.body205
  store %struct.rtx_def* %orig_insn.3, %struct.rtx_def** %insn76, align 8, !dbg !3787
  %73 = load %struct.htab*, %struct.htab** %insns_to_split, align 8, !dbg !3788
  %tobool233 = icmp eq %struct.htab* %73, null, !dbg !3789
  br i1 %tobool233, label %for.inc244, label %if.then234, !dbg !3790

if.then234:                                       ; preds = %if.end230
  %call236 = call i8* @htab_find(%struct.htab* nonnull %73, i8* nonnull %0) #6, !dbg !3791
  call void @llvm.dbg.value(metadata i8* %call236, metadata !3616, metadata !DIExpression()), !dbg !3619
  %tobool237 = icmp eq i8* %call236, null, !dbg !3793
  br i1 %tobool237, label %for.inc244, label %if.then238, !dbg !3794

if.then238:                                       ; preds = %if.then234
  %74 = bitcast i8* %call236 to %struct.iv_to_split*, !dbg !3792
  call void @llvm.dbg.value(metadata %struct.iv_to_split* %74, metadata !3616, metadata !DIExpression()), !dbg !3619
  call fastcc void @split_iv(%struct.iv_to_split* nonnull %74, %struct.rtx_def* %orig_insn.3, i32 %call191) #8, !dbg !3796
  br label %for.inc244, !dbg !3797

for.inc244:                                       ; preds = %if.then234, %if.end230, %lor.lhs.false224, %if.then238
  call void @llvm.dbg.value(metadata %struct.rtx_def* %71, metadata !3613, metadata !DIExpression()), !dbg !3619
  br label %for.cond195, !dbg !3798, !llvm.loop !3799

for.inc246.loopexit.us-lcssa:                     ; preds = %for.cond195
  br label %for.inc246.loopexit, !dbg !3801

for.inc246.loopexit:                              ; preds = %for.inc246.loopexit.us-lcssa.us, %for.inc246.loopexit.us-lcssa
  br label %for.inc246, !dbg !3801

for.inc246:                                       ; preds = %for.inc246.loopexit, %cond.end182
  %inc247 = add i32 %i.1, 1, !dbg !3801
  call void @llvm.dbg.value(metadata i32 %inc247, metadata !3608, metadata !DIExpression()), !dbg !3619
  br label %for.cond165, !dbg !3802, !llvm.loop !3803

cleanup.loopexit:                                 ; preds = %for.cond165
  br label %cleanup, !dbg !3805

cleanup:                                          ; preds = %cleanup.loopexit, %for.end143
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %1) #7, !dbg !3805
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %0) #7, !dbg !3805
  ret void, !dbg !3805
}

; Function Attrs: nounwind uwtable
define internal fastcc void @free_opt_info(%struct.opt_info* %opt_info) unnamed_addr #4 !dbg !3806 {
entry:
  call void @llvm.dbg.value(metadata %struct.opt_info* %opt_info, metadata !3808, metadata !DIExpression()), !dbg !3812
  %insns_to_split = getelementptr inbounds %struct.opt_info, %struct.opt_info* %opt_info, i64 0, i32 0, !dbg !3813
  %0 = load %struct.htab*, %struct.htab** %insns_to_split, align 8, !dbg !3813
  %tobool = icmp eq %struct.htab* %0, null, !dbg !3815
  br i1 %tobool, label %if.end, label %if.then, !dbg !3816

if.then:                                          ; preds = %entry
  tail call void @htab_delete(%struct.htab* nonnull %0) #6, !dbg !3817
  br label %if.end, !dbg !3817

if.end:                                           ; preds = %entry, %if.then
  %insns_with_var_to_expand = getelementptr inbounds %struct.opt_info, %struct.opt_info* %opt_info, i64 0, i32 3, !dbg !3818
  %1 = load %struct.htab*, %struct.htab** %insns_with_var_to_expand, align 8, !dbg !3818
  %tobool2 = icmp eq %struct.htab* %1, null, !dbg !3819
  br i1 %tobool2, label %if.end6, label %if.then3, !dbg !3820

if.then3:                                         ; preds = %if.end
  %var_to_expand_head = getelementptr inbounds %struct.opt_info, %struct.opt_info* %opt_info, i64 0, i32 4, !dbg !3821
  br label %for.cond, !dbg !3823

for.cond:                                         ; preds = %for.body, %if.then3
  %ves.0.in = phi %struct.var_to_expand** [ %var_to_expand_head, %if.then3 ], [ %next, %for.body ]
  %ves.0 = load %struct.var_to_expand*, %struct.var_to_expand** %ves.0.in, align 8, !dbg !3824
  call void @llvm.dbg.value(metadata %struct.var_to_expand* %ves.0, metadata !3809, metadata !DIExpression()), !dbg !3825
  %tobool4 = icmp eq %struct.var_to_expand* %ves.0, null, !dbg !3826
  br i1 %tobool4, label %for.end, label %for.body, !dbg !3826

for.body:                                         ; preds = %for.cond
  %var_expansions = getelementptr inbounds %struct.var_to_expand, %struct.var_to_expand* %ves.0, i64 0, i32 2, !dbg !3827
  tail call fastcc void @VEC_rtx_heap_free(%struct.VEC_rtx_heap** nonnull %var_expansions) #8, !dbg !3827
  %next = getelementptr inbounds %struct.var_to_expand, %struct.var_to_expand* %ves.0, i64 0, i32 3, !dbg !3829
  br label %for.cond, !dbg !3830, !llvm.loop !3831

for.end:                                          ; preds = %for.cond
  %2 = load %struct.htab*, %struct.htab** %insns_with_var_to_expand, align 8, !dbg !3833
  tail call void @htab_delete(%struct.htab* %2) #6, !dbg !3834
  br label %if.end6, !dbg !3835

if.end6:                                          ; preds = %if.end, %for.end
  %3 = bitcast %struct.opt_info* %opt_info to i8*, !dbg !3836
  tail call void @free(i8* %3) #6, !dbg !3837
  ret void, !dbg !3838
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_iterate(%struct.VEC_edge_base* %vec_, i32 %ix_, %struct.edge_def** %ptr) unnamed_addr #0 !dbg !3839 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3846, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3847, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata %struct.edge_def** %ptr, metadata !3848, metadata !DIExpression()), !dbg !3849
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3850
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !3850

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3850
  %0 = load i32, i32* %num, align 8, !dbg !3850
  %cmp = icmp ugt i32 %0, %ix_, !dbg !3850
  br i1 %cmp, label %if.then, label %if.else, !dbg !3852

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !3853
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3853
  %1 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3853
  br label %return, !dbg !3853

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !3855

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ null, %if.else ], [ %1, %if.then ], !dbg !3857
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !3857
  store %struct.edge_def* %storemerge, %struct.edge_def** %ptr, align 8, !dbg !3857
  ret i32 %retval.0, !dbg !3852
}

declare dso_local zeroext i8 @remove_path(%struct.edge_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_edge_heap_free(%struct.VEC_edge_heap** %vec_) unnamed_addr #0 !dbg !3858 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %vec_, metadata !3863, metadata !DIExpression()), !dbg !3864
  %0 = load %struct.VEC_edge_heap*, %struct.VEC_edge_heap** %vec_, align 8, !dbg !3865
  %tobool = icmp eq %struct.VEC_edge_heap* %0, null, !dbg !3865
  br i1 %tobool, label %if.end, label %if.then, !dbg !3867

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_edge_heap* %0 to i8*, !dbg !3867
  tail call void @free(i8* nonnull %1) #6, !dbg !3865
  br label %if.end, !dbg !3865

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_edge_heap* null, %struct.VEC_edge_heap** %vec_, align 8, !dbg !3867
  ret void, !dbg !3867
}

declare dso_local void @free_simple_loop_desc(%struct.loop*) local_unnamed_addr #1

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #1

declare dso_local %struct.VEC_edge_heap* @get_loop_exit_edges(%struct.loop*) local_unnamed_addr #1

declare dso_local void @iv_analysis_loop_init(%struct.loop*) local_unnamed_addr #1

declare dso_local %struct.basic_block_def** @get_loop_body(%struct.loop*) local_unnamed_addr #1

declare dso_local %struct.htab* @htab_create(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @si_info_hash(i8* %ivts) #4 !dbg !3868 {
entry:
  call void @llvm.dbg.value(metadata i8* %ivts, metadata !3870, metadata !DIExpression()), !dbg !3871
  %insn = bitcast i8* %ivts to %struct.rtx_def**, !dbg !3872
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !3872
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3872
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !3872
  %1 = load i32, i32* %rt_int, align 8, !dbg !3872
  ret i32 %1, !dbg !3873
}

; Function Attrs: nounwind uwtable
define internal i32 @si_info_eq(i8* %ivts1, i8* %ivts2) #4 !dbg !3874 {
entry:
  call void @llvm.dbg.value(metadata i8* %ivts1, metadata !3876, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i8* %ivts2, metadata !3877, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i8* %ivts1, metadata !3878, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.value(metadata i8* %ivts2, metadata !3880, metadata !DIExpression()), !dbg !3881
  %insn = bitcast i8* %ivts1 to %struct.rtx_def**, !dbg !3882
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !3882
  %insn1 = bitcast i8* %ivts2 to %struct.rtx_def**, !dbg !3883
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn1, align 8, !dbg !3883
  %cmp = icmp eq %struct.rtx_def* %0, %1, !dbg !3884
  %conv = zext i1 %cmp to i32, !dbg !3884
  ret i32 %conv, !dbg !3885
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !3886 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3890, metadata !DIExpression()), !dbg !3891
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3892
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3892

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3892
  %0 = load i32, i32* %num, align 8, !dbg !3892
  br label %cond.end, !dbg !3892

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3892
  ret i32 %cond, !dbg !3892
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3893 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3897, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3898, metadata !DIExpression()), !dbg !3899
  br label %land.end, !dbg !3900

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3900
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3900
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3900
  ret %struct.edge_def* %0, !dbg !3900
}

; Function Attrs: nounwind uwtable
define internal i32 @ve_info_hash(i8* %ves) #4 !dbg !3901 {
entry:
  call void @llvm.dbg.value(metadata i8* %ves, metadata !3903, metadata !DIExpression()), !dbg !3904
  %insn = bitcast i8* %ves to %struct.rtx_def**, !dbg !3905
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !3905
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3905
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !3905
  %1 = load i32, i32* %rt_int, align 8, !dbg !3905
  ret i32 %1, !dbg !3906
}

; Function Attrs: nounwind uwtable
define internal i32 @ve_info_eq(i8* %ivts1, i8* %ivts2) #4 !dbg !3907 {
entry:
  call void @llvm.dbg.value(metadata i8* %ivts1, metadata !3909, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i8* %ivts2, metadata !3910, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i8* %ivts1, metadata !3911, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i8* %ivts2, metadata !3913, metadata !DIExpression()), !dbg !3914
  %insn = bitcast i8* %ivts1 to %struct.rtx_def**, !dbg !3915
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !3915
  %insn1 = bitcast i8* %ivts2 to %struct.rtx_def**, !dbg !3916
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn1, align 8, !dbg !3916
  %cmp = icmp eq %struct.rtx_def* %0, %1, !dbg !3917
  %conv = zext i1 %cmp to i32, !dbg !3917
  ret i32 %conv, !dbg !3918
}

declare dso_local zeroext i8 @dominated_by_p(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct.iv_to_split* @analyze_iv_to_split_insn(%struct.rtx_def* %insn) unnamed_addr #4 !dbg !3919 {
entry:
  %iv = alloca %struct.rtx_iv, align 8
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3923, metadata !DIExpression()), !dbg !3939
  %0 = bitcast %struct.rtx_iv* %iv to i8*, !dbg !3940
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #7, !dbg !3940
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !3941
  %bf.load = load i32, i32* %1, align 8, !dbg !3941
  %bf.clear = and i32 %bf.load, 65535, !dbg !3941
  %cmp = icmp eq i32 %bf.clear, 8, !dbg !3941
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !3941

lor.lhs.false:                                    ; preds = %entry
  %cmp3 = icmp eq i32 %bf.clear, 7, !dbg !3941
  br i1 %cmp3, label %cond.true, label %lor.lhs.false4, !dbg !3941

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %cmp7 = icmp eq i32 %bf.clear, 9, !dbg !3941
  br i1 %cmp7, label %cond.true, label %lor.lhs.false8, !dbg !3941

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %cmp11 = icmp eq i32 %bf.clear, 10, !dbg !3941
  br i1 %cmp11, label %cond.true, label %cond.end25, !dbg !3941

cond.true:                                        ; preds = %lor.lhs.false8, %lor.lhs.false4, %lor.lhs.false, %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !3941
  %2 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !3941
  %3 = bitcast %union.rtunion_def* %2 to i32**, !dbg !3941
  %4 = load i32*, i32** %3, align 8, !dbg !3941
  %bf.load12 = load i32, i32* %4, align 8, !dbg !3941
  %bf.clear13 = and i32 %bf.load12, 65535, !dbg !3941
  %cmp14 = icmp eq i32 %bf.clear13, 23, !dbg !3941
  %5 = bitcast i32* %4 to %struct.rtx_def*, !dbg !3941
  br i1 %cmp14, label %cond.end25, label %cond.false, !dbg !3941

cond.false:                                       ; preds = %cond.true
  %call = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %insn, %struct.rtx_def* %5) #6, !dbg !3941
  br label %cond.end25, !dbg !3941

cond.end25:                                       ; preds = %lor.lhs.false8, %cond.false, %cond.true
  %cond26 = phi %struct.rtx_def* [ %call, %cond.false ], [ %5, %cond.true ], [ null, %lor.lhs.false8 ], !dbg !3941
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond26, metadata !3924, metadata !DIExpression()), !dbg !3939
  %tobool = icmp eq %struct.rtx_def* %cond26, null, !dbg !3942
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3944

if.end:                                           ; preds = %cond.end25
  %arrayidx29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond26, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3945
  %rt_rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**, !dbg !3945
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx30, align 8, !dbg !3945
  call void @llvm.dbg.value(metadata %struct.rtx_def* %6, metadata !3925, metadata !DIExpression()), !dbg !3939
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 0, !dbg !3946
  %bf.load31 = load i32, i32* %7, align 8, !dbg !3946
  %bf.clear32 = and i32 %bf.load31, 65535, !dbg !3946
  %cmp33 = icmp eq i32 %bf.clear32, 37, !dbg !3946
  br i1 %cmp33, label %if.end35, label %cleanup, !dbg !3948

if.end35:                                         ; preds = %if.end
  %call36 = tail call zeroext i8 @biv_p(%struct.rtx_def* %insn, %struct.rtx_def* %6) #6, !dbg !3949
  %tobool37 = icmp eq i8 %call36, 0, !dbg !3949
  br i1 %tobool37, label %cleanup, label %if.end39, !dbg !3951

if.end39:                                         ; preds = %if.end35
  call void @llvm.dbg.value(metadata %struct.rtx_iv* %iv, metadata !3926, metadata !DIExpression(DW_OP_deref)), !dbg !3939
  %call40 = call zeroext i8 @iv_analyze_result(%struct.rtx_def* %insn, %struct.rtx_def* %6, %struct.rtx_iv* nonnull %iv) #6, !dbg !3952
  call void @llvm.dbg.value(metadata i8 %call40, metadata !3938, metadata !DIExpression()), !dbg !3939
  %tobool41 = icmp eq i8 %call40, 0, !dbg !3953
  br i1 %tobool41, label %cleanup, label %if.end43, !dbg !3955

if.end43:                                         ; preds = %if.end39
  %step = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %iv, i64 0, i32 1, !dbg !3956
  %8 = load %struct.rtx_def*, %struct.rtx_def** %step, align 8, !dbg !3956
  %9 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16, !dbg !3958
  %cmp44 = icmp eq %struct.rtx_def* %8, %9, !dbg !3959
  br i1 %cmp44, label %cleanup, label %lor.lhs.false45, !dbg !3960

lor.lhs.false45:                                  ; preds = %if.end43
  %mode = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %iv, i64 0, i32 6, !dbg !3961
  %10 = load i32, i32* %mode, align 4, !dbg !3961
  %extend_mode = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %iv, i64 0, i32 5, !dbg !3962
  %11 = load i32, i32* %extend_mode, align 8, !dbg !3962
  %cmp46 = icmp eq i32 %10, %11, !dbg !3963
  br i1 %cmp46, label %if.end48, label %cleanup, !dbg !3964

if.end48:                                         ; preds = %lor.lhs.false45
  %call49 = call i8* @xmalloc(i64 48) #6, !dbg !3965
  %12 = bitcast i8* %call49 to %struct.iv_to_split*, !dbg !3965
  call void @llvm.dbg.value(metadata %struct.iv_to_split* %12, metadata !3937, metadata !DIExpression()), !dbg !3939
  %insn50 = bitcast i8* %call49 to %struct.rtx_def**, !dbg !3966
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn50, align 8, !dbg !3967
  %base_var = getelementptr inbounds i8, i8* %call49, i64 8, !dbg !3968
  %13 = bitcast i8* %base_var to %struct.rtx_def**, !dbg !3968
  store %struct.rtx_def* null, %struct.rtx_def** %13, align 8, !dbg !3969
  %14 = bitcast %struct.rtx_def** %step to i64*, !dbg !3970
  %15 = load i64, i64* %14, align 8, !dbg !3970
  %step52 = getelementptr inbounds i8, i8* %call49, i64 16, !dbg !3971
  %16 = bitcast i8* %step52 to i64*, !dbg !3972
  store i64 %15, i64* %16, align 8, !dbg !3972
  %next = getelementptr inbounds i8, i8* %call49, i64 24, !dbg !3973
  %17 = bitcast i8* %next to %struct.iv_to_split**, !dbg !3973
  store %struct.iv_to_split* null, %struct.iv_to_split** %17, align 8, !dbg !3974
  %n_loc = getelementptr inbounds i8, i8* %call49, i64 32, !dbg !3975
  %18 = bitcast i8* %n_loc to i32*, !dbg !3975
  store i32 1, i32* %18, align 8, !dbg !3976
  %loc = getelementptr inbounds i8, i8* %call49, i64 36, !dbg !3977
  %arrayidx53 = bitcast i8* %loc to i32*, !dbg !3978
  store i32 1, i32* %arrayidx53, align 4, !dbg !3979
  br label %cleanup, !dbg !3980

cleanup:                                          ; preds = %lor.lhs.false45, %if.end39, %if.end35, %cond.end25, %if.end43, %if.end, %if.end48
  %retval.0 = phi %struct.iv_to_split* [ %12, %if.end48 ], [ null, %cond.end25 ], [ null, %if.end ], [ null, %if.end35 ], [ null, %if.end39 ], [ null, %lor.lhs.false45 ], [ null, %if.end43 ], !dbg !3939
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #7, !dbg !3981
  ret %struct.iv_to_split* %retval.0, !dbg !3981
}

declare dso_local i8** @htab_find_slot(%struct.htab*, i8*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct.var_to_expand* @analyze_insn_to_expand_var(%struct.loop* %loop, %struct.rtx_def* %insn) unnamed_addr #4 !dbg !3982 {
entry:
  %debug_uses = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3986, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3987, metadata !DIExpression()), !dbg !3999
  %0 = bitcast i32* %debug_uses to i8*, !dbg !4000
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #7, !dbg !4000
  call void @llvm.dbg.value(metadata i32 0, metadata !3998, metadata !DIExpression()), !dbg !3999
  store i32 0, i32* %debug_uses, align 4, !dbg !4001
  %1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !4002
  %bf.load = load i32, i32* %1, align 8, !dbg !4002
  %bf.clear = and i32 %bf.load, 65535, !dbg !4002
  %cmp = icmp eq i32 %bf.clear, 8, !dbg !4002
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !4002

lor.lhs.false:                                    ; preds = %entry
  %cmp3 = icmp eq i32 %bf.clear, 7, !dbg !4002
  br i1 %cmp3, label %cond.true, label %lor.lhs.false4, !dbg !4002

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %cmp7 = icmp eq i32 %bf.clear, 9, !dbg !4002
  br i1 %cmp7, label %cond.true, label %lor.lhs.false8, !dbg !4002

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %cmp11 = icmp eq i32 %bf.clear, 10, !dbg !4002
  br i1 %cmp11, label %cond.true, label %cond.end25, !dbg !4002

cond.true:                                        ; preds = %lor.lhs.false8, %lor.lhs.false4, %lor.lhs.false, %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !4002
  %2 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !4002
  %3 = bitcast %union.rtunion_def* %2 to i32**, !dbg !4002
  %4 = load i32*, i32** %3, align 8, !dbg !4002
  %bf.load12 = load i32, i32* %4, align 8, !dbg !4002
  %bf.clear13 = and i32 %bf.load12, 65535, !dbg !4002
  %cmp14 = icmp eq i32 %bf.clear13, 23, !dbg !4002
  %5 = bitcast i32* %4 to %struct.rtx_def*, !dbg !4002
  br i1 %cmp14, label %cond.end25, label %cond.false, !dbg !4002

cond.false:                                       ; preds = %cond.true
  %call = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %insn, %struct.rtx_def* %5) #6, !dbg !4002
  br label %cond.end25, !dbg !4002

cond.end25:                                       ; preds = %lor.lhs.false8, %cond.false, %cond.true
  %cond26 = phi %struct.rtx_def* [ %call, %cond.false ], [ %5, %cond.true ], [ null, %lor.lhs.false8 ], !dbg !4002
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond26, metadata !3988, metadata !DIExpression()), !dbg !3999
  %tobool = icmp eq %struct.rtx_def* %cond26, null, !dbg !4003
  br i1 %tobool, label %cleanup, label %if.end, !dbg !4005

if.end:                                           ; preds = %cond.end25
  %arrayidx29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond26, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4006
  %rt_rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**, !dbg !4006
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx30, align 8, !dbg !4006
  call void @llvm.dbg.value(metadata %struct.rtx_def* %6, metadata !3989, metadata !DIExpression()), !dbg !3999
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond26, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4007
  %rt_rtx34 = bitcast %union.rtunion_def* %7 to %struct.rtx_def**, !dbg !4007
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx34, align 8, !dbg !4007
  call void @llvm.dbg.value(metadata %struct.rtx_def* %8, metadata !3990, metadata !DIExpression()), !dbg !3999
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i64 0, i32 0, !dbg !4008
  %bf.load35 = load i32, i32* %9, align 8, !dbg !4008
  %bf.clear36 = and i32 %bf.load35, 65535, !dbg !4008
  %cmp37 = icmp eq i32 %bf.clear36, 49, !dbg !4010
  br i1 %cmp37, label %if.end46, label %land.lhs.true, !dbg !4011

land.lhs.true:                                    ; preds = %if.end
  %cmp40 = icmp eq i32 %bf.clear36, 50, !dbg !4012
  br i1 %cmp40, label %if.end46, label %land.lhs.true41, !dbg !4013

land.lhs.true41:                                  ; preds = %land.lhs.true
  %cmp44 = icmp eq i32 %bf.clear36, 52, !dbg !4014
  br i1 %cmp44, label %if.end46, label %cleanup, !dbg !4015

if.end46:                                         ; preds = %land.lhs.true41, %land.lhs.true, %if.end
  %bf.lshr = lshr i32 %bf.load35, 16, !dbg !4016
  %bf.clear50 = and i32 %bf.lshr, 255, !dbg !4016
  %call51 = tail call i32 @have_insn_for(i32 %bf.clear36, i32 %bf.clear50) #6, !dbg !4018
  %tobool52 = icmp eq i32 %call51, 0, !dbg !4018
  br i1 %tobool52, label %cleanup, label %if.end54, !dbg !4019

if.end54:                                         ; preds = %if.end46
  %arrayidx57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4020
  %rt_rtx58 = bitcast %union.rtunion_def* %arrayidx57 to %struct.rtx_def**, !dbg !4020
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx58, align 8, !dbg !4020
  call void @llvm.dbg.value(metadata %struct.rtx_def* %10, metadata !3991, metadata !DIExpression()), !dbg !3999
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4021
  %rt_rtx62 = bitcast %union.rtunion_def* %11 to %struct.rtx_def**, !dbg !4021
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx62, align 8, !dbg !4021
  call void @llvm.dbg.value(metadata %struct.rtx_def* %12, metadata !3992, metadata !DIExpression()), !dbg !3999
  %13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 0, !dbg !4022
  %bf.load63 = load i32, i32* %13, align 8, !dbg !4022
  %bf.clear64 = and i32 %bf.load63, 65535, !dbg !4022
  %cmp65 = icmp eq i32 %bf.clear64, 37, !dbg !4022
  br i1 %cmp65, label %if.end79, label %land.lhs.true66, !dbg !4024

land.lhs.true66:                                  ; preds = %if.end54
  %cmp69 = icmp eq i32 %bf.clear64, 39, !dbg !4025
  br i1 %cmp69, label %land.lhs.true70, label %cleanup, !dbg !4026

land.lhs.true70:                                  ; preds = %land.lhs.true66
  %arrayidx73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4027
  %14 = bitcast %union.rtunion_def* %arrayidx73 to i32**, !dbg !4027
  %15 = load i32*, i32** %14, align 8, !dbg !4027
  %bf.load75 = load i32, i32* %15, align 8, !dbg !4027
  %bf.clear76 = and i32 %bf.load75, 65535, !dbg !4027
  %cmp77 = icmp eq i32 %bf.clear76, 37, !dbg !4027
  br i1 %cmp77, label %if.end79, label %cleanup, !dbg !4028

if.end79:                                         ; preds = %land.lhs.true70, %if.end54
  %call80 = tail call i32 @rtx_equal_p(%struct.rtx_def* %6, %struct.rtx_def* %10) #6, !dbg !4029
  %tobool81 = icmp eq i32 %call80, 0, !dbg !4029
  br i1 %tobool81, label %if.else, label %if.end88, !dbg !4031

if.else:                                          ; preds = %if.end79
  %call83 = tail call i32 @rtx_equal_p(%struct.rtx_def* %6, %struct.rtx_def* %12) #6, !dbg !4032
  %tobool84 = icmp eq i32 %call83, 0, !dbg !4032
  br i1 %tobool84, label %cleanup, label %if.end88, !dbg !4034

if.end88:                                         ; preds = %if.else, %if.end79
  %accum_pos.0 = phi i32 [ 0, %if.end79 ], [ 1, %if.else ], !dbg !4035
  call void @llvm.dbg.value(metadata i32 %accum_pos.0, metadata !3997, metadata !DIExpression()), !dbg !3999
  %switch = icmp eq i32 %accum_pos.0, 1, !dbg !4036
  br i1 %switch, label %land.lhs.true90, label %cond.end99, !dbg !4036

land.lhs.true90:                                  ; preds = %if.end88
  %bf.load91 = load i32, i32* %9, align 8, !dbg !4038
  %bf.clear92 = and i32 %bf.load91, 65535, !dbg !4038
  %cmp93 = icmp eq i32 %bf.clear92, 50, !dbg !4039
  br i1 %cmp93, label %cleanup, label %if.end95, !dbg !4040

if.end95:                                         ; preds = %land.lhs.true90
  br label %cond.end99, !dbg !4041

cond.end99:                                       ; preds = %if.end95, %if.end88
  %cond100 = phi %struct.rtx_def* [ %12, %if.end88 ], [ %10, %if.end95 ], !dbg !4041
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond100, metadata !3993, metadata !DIExpression()), !dbg !3999
  %call101 = tail call i32 @rtx_referenced_p(%struct.rtx_def* %6, %struct.rtx_def* %cond100) #6, !dbg !4042
  %tobool102 = icmp eq i32 %call101, 0, !dbg !4042
  br i1 %tobool102, label %if.end104, label %cleanup, !dbg !4044

if.end104:                                        ; preds = %cond.end99
  call void @llvm.dbg.value(metadata i32* %debug_uses, metadata !3998, metadata !DIExpression(DW_OP_deref)), !dbg !3999
  %call105 = call fastcc zeroext i8 @referenced_in_one_insn_in_loop_p(%struct.loop* %loop, %struct.rtx_def* %6, i32* nonnull %debug_uses) #8, !dbg !4045
  %tobool106 = icmp eq i8 %call105, 0, !dbg !4045
  br i1 %tobool106, label %cleanup, label %if.end108, !dbg !4047

if.end108:                                        ; preds = %if.end104
  %bf.load109 = load i32, i32* %13, align 8, !dbg !4048
  %bf.lshr110 = lshr i32 %bf.load109, 16, !dbg !4048
  %bf.clear111 = and i32 %bf.lshr110, 255, !dbg !4048
  call void @llvm.dbg.value(metadata i32 %bf.clear111, metadata !3995, metadata !DIExpression()), !dbg !3999
  %16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond100, i64 0, i32 0, !dbg !4049
  %bf.load112 = load i32, i32* %16, align 8, !dbg !4049
  %bf.lshr113 = lshr i32 %bf.load112, 16, !dbg !4049
  %bf.clear114 = and i32 %bf.lshr113, 255, !dbg !4049
  call void @llvm.dbg.value(metadata i32 %bf.clear114, metadata !3996, metadata !DIExpression()), !dbg !3999
  %idxprom = zext i32 %bf.clear111 to i64, !dbg !4050
  %arrayidx115 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !4050
  %17 = load i8, i8* %arrayidx115, align 1, !dbg !4050
  %cmp116 = icmp eq i8 %17, 8, !dbg !4050
  br i1 %cmp116, label %land.lhs.true160, label %lor.lhs.false118, !dbg !4050

lor.lhs.false118:                                 ; preds = %if.end108
  %cmp122 = icmp eq i8 %17, 9, !dbg !4050
  br i1 %cmp122, label %land.lhs.true160, label %lor.lhs.false124, !dbg !4050

lor.lhs.false124:                                 ; preds = %lor.lhs.false118
  %cmp128 = icmp eq i8 %17, 11, !dbg !4050
  br i1 %cmp128, label %land.lhs.true160, label %lor.lhs.false130, !dbg !4050

lor.lhs.false130:                                 ; preds = %lor.lhs.false124
  %cmp134 = icmp eq i8 %17, 17, !dbg !4050
  br i1 %cmp134, label %land.lhs.true160, label %lor.lhs.false136, !dbg !4052

lor.lhs.false136:                                 ; preds = %lor.lhs.false130
  %idxprom137 = zext i32 %bf.clear114 to i64, !dbg !4053
  %arrayidx138 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom137, !dbg !4053
  %18 = load i8, i8* %arrayidx138, align 1, !dbg !4053
  %cmp140 = icmp eq i8 %18, 8, !dbg !4053
  br i1 %cmp140, label %land.lhs.true160, label %lor.lhs.false142, !dbg !4053

lor.lhs.false142:                                 ; preds = %lor.lhs.false136
  %cmp146 = icmp eq i8 %18, 9, !dbg !4053
  br i1 %cmp146, label %land.lhs.true160, label %lor.lhs.false148, !dbg !4053

lor.lhs.false148:                                 ; preds = %lor.lhs.false142
  %cmp152 = icmp eq i8 %18, 11, !dbg !4053
  br i1 %cmp152, label %land.lhs.true160, label %lor.lhs.false154, !dbg !4053

lor.lhs.false154:                                 ; preds = %lor.lhs.false148
  %cmp158 = icmp eq i8 %18, 17, !dbg !4053
  br i1 %cmp158, label %land.lhs.true160, label %if.end163, !dbg !4054

land.lhs.true160:                                 ; preds = %lor.lhs.false154, %lor.lhs.false148, %lor.lhs.false142, %lor.lhs.false136, %lor.lhs.false130, %lor.lhs.false124, %lor.lhs.false118, %if.end108
  %19 = load i32, i32* @flag_associative_math, align 4, !dbg !4055
  %tobool161 = icmp eq i32 %19, 0, !dbg !4055
  br i1 %tobool161, label %cleanup, label %if.end163, !dbg !4056

if.end163:                                        ; preds = %land.lhs.true160, %lor.lhs.false154
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4057
  %tobool164 = icmp eq %struct._IO_FILE* %20, null, !dbg !4057
  br i1 %tobool164, label %if.end168, label %if.then165, !dbg !4059

if.then165:                                       ; preds = %if.end163
  %call166 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !4060
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4062
  call void @print_rtl(%struct._IO_FILE* %21, %struct.rtx_def* %6) #6, !dbg !4063
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4064
  %call167 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !4065
  br label %if.end168, !dbg !4066

if.end168:                                        ; preds = %if.end163, %if.then165
  %23 = load i32, i32* %debug_uses, align 4, !dbg !4067
  call void @llvm.dbg.value(metadata i32 %23, metadata !3998, metadata !DIExpression()), !dbg !3999
  %tobool169 = icmp eq i32 %23, 0, !dbg !4067
  br i1 %tobool169, label %if.end171, label %if.then170, !dbg !4069

if.then170:                                       ; preds = %if.end168
  call void @llvm.dbg.value(metadata i32 %23, metadata !3998, metadata !DIExpression()), !dbg !3999
  call fastcc void @reset_debug_uses_in_loop(%struct.loop* %loop, %struct.rtx_def* %6, i32 %23) #8, !dbg !4070
  br label %if.end171, !dbg !4070

if.end171:                                        ; preds = %if.end168, %if.then170
  %call172 = call i8* @xmalloc(i64 48) #6, !dbg !4071
  %24 = bitcast i8* %call172 to %struct.var_to_expand*, !dbg !4071
  call void @llvm.dbg.value(metadata %struct.var_to_expand* %24, metadata !3994, metadata !DIExpression()), !dbg !3999
  %insn173 = bitcast i8* %call172 to %struct.rtx_def**, !dbg !4072
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn173, align 8, !dbg !4073
  %call174 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %6) #6, !dbg !4074
  %reg = getelementptr inbounds i8, i8* %call172, i64 8, !dbg !4075
  %25 = bitcast i8* %reg to %struct.rtx_def**, !dbg !4075
  store %struct.rtx_def* %call174, %struct.rtx_def** %25, align 8, !dbg !4076
  %call175 = call fastcc %struct.VEC_rtx_heap* @VEC_rtx_heap_alloc(i32 1) #8, !dbg !4077
  %var_expansions = getelementptr inbounds i8, i8* %call172, i64 16, !dbg !4078
  %26 = bitcast i8* %var_expansions to %struct.VEC_rtx_heap**, !dbg !4078
  store %struct.VEC_rtx_heap* %call175, %struct.VEC_rtx_heap** %26, align 8, !dbg !4079
  %next = getelementptr inbounds i8, i8* %call172, i64 24, !dbg !4080
  %27 = bitcast i8* %next to %struct.var_to_expand**, !dbg !4080
  store %struct.var_to_expand* null, %struct.var_to_expand** %27, align 8, !dbg !4081
  %bf.load176 = load i32, i32* %9, align 8, !dbg !4082
  %bf.clear177 = and i32 %bf.load176, 65535, !dbg !4082
  %op = getelementptr inbounds i8, i8* %call172, i64 32, !dbg !4083
  %28 = bitcast i8* %op to i32*, !dbg !4083
  store i32 %bf.clear177, i32* %28, align 8, !dbg !4084
  %expansion_count = getelementptr inbounds i8, i8* %call172, i64 36, !dbg !4085
  %29 = bitcast i8* %expansion_count to i32*, !dbg !4085
  store i32 0, i32* %29, align 4, !dbg !4086
  %reuse_expansion = getelementptr inbounds i8, i8* %call172, i64 40, !dbg !4087
  %30 = bitcast i8* %reuse_expansion to i32*, !dbg !4087
  store i32 0, i32* %30, align 8, !dbg !4088
  %accum_pos178 = getelementptr inbounds i8, i8* %call172, i64 44, !dbg !4089
  %31 = bitcast i8* %accum_pos178 to i32*, !dbg !4089
  store i32 %accum_pos.0, i32* %31, align 4, !dbg !4090
  br label %cleanup, !dbg !4091

cleanup:                                          ; preds = %land.lhs.true41, %land.lhs.true160, %if.end104, %cond.end99, %if.else, %if.end46, %cond.end25, %land.lhs.true90, %land.lhs.true66, %land.lhs.true70, %if.end171
  %retval.0 = phi %struct.var_to_expand* [ %24, %if.end171 ], [ null, %cond.end25 ], [ null, %land.lhs.true41 ], [ null, %if.end46 ], [ null, %land.lhs.true70 ], [ null, %land.lhs.true66 ], [ null, %if.else ], [ null, %land.lhs.true90 ], [ null, %cond.end99 ], [ null, %if.end104 ], [ null, %land.lhs.true160 ], !dbg !3999
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #7, !dbg !4092
  ret %struct.var_to_expand* %retval.0, !dbg !4092
}

declare dso_local %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local zeroext i8 @biv_p(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local zeroext i8 @iv_analyze_result(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_iv*) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

declare dso_local i32 @have_insn_for(i32, i32) local_unnamed_addr #1

declare dso_local i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local i32 @rtx_referenced_p(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @referenced_in_one_insn_in_loop_p(%struct.loop* %loop, %struct.rtx_def* %reg, i32* %debug_uses) unnamed_addr #4 !dbg !4093 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4097, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg, metadata !4098, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata i32* %debug_uses, metadata !4099, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata i32 0, metadata !4103, metadata !DIExpression()), !dbg !4105
  %call = tail call %struct.basic_block_def** @get_loop_body(%struct.loop* %loop) #6, !dbg !4106
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %call, metadata !4100, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata i32 0, metadata !4102, metadata !DIExpression()), !dbg !4105
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !4107
  br label %for.cond, !dbg !4110

for.cond:                                         ; preds = %for.inc21, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc21 ], [ 0, %entry ], !dbg !4111
  %count_ref.0 = phi i32 [ %count_ref.4, %for.inc21 ], [ 0, %entry ], !dbg !4105
  call void @llvm.dbg.value(metadata i32 %count_ref.0, metadata !4103, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4102, metadata !DIExpression()), !dbg !4105
  %0 = load i32, i32* %num_nodes, align 4, !dbg !4112
  %1 = zext i32 %0 to i64, !dbg !4113
  %cmp = icmp ult i64 %indvars.iv, %1, !dbg !4113
  br i1 %cmp, label %for.body, label %for.end23, !dbg !4114

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call, i64 %indvars.iv, !dbg !4115
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !4115
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %2, metadata !4101, metadata !DIExpression()), !dbg !4105
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i64 0, i32 7, !dbg !4117
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !4117
  %3 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4117
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %3, i64 0, i32 0, !dbg !4117
  br label %for.cond1, !dbg !4117

for.cond1:                                        ; preds = %for.inc, %for.body
  %count_ref.1 = phi i32 [ %count_ref.0, %for.body ], [ %count_ref.3, %for.inc ], !dbg !4119
  %insn.0.in = phi %struct.rtx_def** [ %head_, %for.body ], [ %rt_rtx20, %for.inc ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !4120
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !4104, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata i32 %count_ref.1, metadata !4103, metadata !DIExpression()), !dbg !4105
  %tobool = icmp eq %struct.rtx_def* %insn.0, null, !dbg !4121
  br i1 %tobool, label %for.inc21, label %land.rhs, !dbg !4121

land.rhs:                                         ; preds = %for.cond1
  %4 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4121
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %4, i64 0, i32 1, !dbg !4121
  %5 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !4121
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !4121
  %rt_rtx = bitcast %union.rtunion_def* %6 to %struct.rtx_def**, !dbg !4121
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !4121
  %cmp5 = icmp eq %struct.rtx_def* %insn.0, %7, !dbg !4121
  br i1 %cmp5, label %for.inc21, label %for.body6, !dbg !4117

for.body6:                                        ; preds = %land.rhs
  %call7 = tail call i32 @rtx_referenced_p(%struct.rtx_def* %reg, %struct.rtx_def* nonnull %insn.0) #6, !dbg !4123
  %tobool8 = icmp eq i32 %call7, 0, !dbg !4123
  br i1 %tobool8, label %for.inc, label %if.else, !dbg !4125

if.else:                                          ; preds = %for.body6
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !4126
  %bf.load = load i32, i32* %8, align 8, !dbg !4126
  %bf.clear = and i32 %bf.load, 65535, !dbg !4126
  %cmp9 = icmp eq i32 %bf.clear, 7, !dbg !4126
  br i1 %cmp9, label %if.then10, label %if.else11, !dbg !4128

if.then10:                                        ; preds = %if.else
  %9 = load i32, i32* %debug_uses, align 4, !dbg !4129
  %inc = add nsw i32 %9, 1, !dbg !4129
  store i32 %inc, i32* %debug_uses, align 4, !dbg !4129
  br label %for.inc, !dbg !4129

if.else11:                                        ; preds = %if.else
  %inc12 = add nsw i32 %count_ref.1, 1, !dbg !4130
  call void @llvm.dbg.value(metadata i32 %inc12, metadata !4103, metadata !DIExpression()), !dbg !4105
  %cmp13 = icmp sgt i32 %count_ref.1, 0, !dbg !4132
  br i1 %cmp13, label %for.inc21, label %for.inc, !dbg !4133

for.inc:                                          ; preds = %for.body6, %if.else11, %if.then10
  %count_ref.3 = phi i32 [ %count_ref.1, %for.body6 ], [ %count_ref.1, %if.then10 ], [ %inc12, %if.else11 ], !dbg !4119
  call void @llvm.dbg.value(metadata i32 %count_ref.3, metadata !4103, metadata !DIExpression()), !dbg !4105
  %10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !4121
  %rt_rtx20 = bitcast %union.rtunion_def* %10 to %struct.rtx_def**, !dbg !4121
  br label %for.cond1, !dbg !4121, !llvm.loop !4134

for.inc21:                                        ; preds = %land.rhs, %for.cond1, %if.else11
  %count_ref.4 = phi i32 [ %count_ref.1, %land.rhs ], [ %inc12, %if.else11 ], [ %count_ref.1, %for.cond1 ], !dbg !4105
  call void @llvm.dbg.value(metadata i32 %count_ref.4, metadata !4103, metadata !DIExpression()), !dbg !4105
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4136
  br label %for.cond, !dbg !4137, !llvm.loop !4138

for.end23:                                        ; preds = %for.cond
  %count_ref.0.lcssa = phi i32 [ %count_ref.0, %for.cond ], !dbg !4105
  call void @llvm.dbg.value(metadata i32 %count_ref.0.lcssa, metadata !4103, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata i32 %count_ref.0.lcssa, metadata !4103, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.value(metadata i32 %count_ref.0.lcssa, metadata !4103, metadata !DIExpression()), !dbg !4105
  %11 = bitcast %struct.basic_block_def** %call to i8*, !dbg !4140
  tail call void @free(i8* %11) #6, !dbg !4141
  %cmp24 = icmp eq i32 %count_ref.0.lcssa, 1, !dbg !4142
  %conv25 = zext i1 %cmp24 to i8, !dbg !4143
  ret i8 %conv25, !dbg !4144
}

declare dso_local void @print_rtl(%struct._IO_FILE*, %struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @reset_debug_uses_in_loop(%struct.loop* %loop, %struct.rtx_def* %reg, i32 %debug_uses) unnamed_addr #4 !dbg !4145 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4149, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg, metadata !4150, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i32 %debug_uses, metadata !4151, metadata !DIExpression()), !dbg !4156
  %call = tail call %struct.basic_block_def** @get_loop_body(%struct.loop* %loop) #6, !dbg !4157
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %call, metadata !4152, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i32 0, metadata !4154, metadata !DIExpression()), !dbg !4156
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 6, !dbg !4158
  br label %for.cond, !dbg !4161

for.cond:                                         ; preds = %for.inc30, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc30 ], [ 0, %entry ]
  %debug_uses.addr.0 = phi i32 [ %debug_uses.addr.3, %for.inc30 ], [ %debug_uses, %entry ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4154, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i32 %debug_uses.addr.0, metadata !4151, metadata !DIExpression()), !dbg !4156
  %tobool = icmp eq i32 %debug_uses.addr.0, 0, !dbg !4162
  br i1 %tobool, label %for.end31, label %land.rhs, !dbg !4163

land.rhs:                                         ; preds = %for.cond
  %0 = load i32, i32* %num_nodes, align 4, !dbg !4158
  %1 = zext i32 %0 to i64, !dbg !4164
  %cmp = icmp ult i64 %indvars.iv, %1, !dbg !4164
  br i1 %cmp, label %for.body, label %for.end31, !dbg !4165

for.body:                                         ; preds = %land.rhs
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %call, i64 %indvars.iv, !dbg !4166
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !4166
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %2, metadata !4153, metadata !DIExpression()), !dbg !4156
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i64 0, i32 7, !dbg !4168
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !4168
  %3 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4168
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %3, i64 0, i32 0, !dbg !4168
  br label %for.cond1, !dbg !4168

for.cond1:                                        ; preds = %for.inc, %for.body
  %debug_uses.addr.1 = phi i32 [ %debug_uses.addr.0, %for.body ], [ %debug_uses.addr.2, %for.inc ]
  %insn.0.in = phi %struct.rtx_def** [ %head_, %for.body ], [ %rt_rtx29, %for.inc ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !4170
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !4155, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata i32 %debug_uses.addr.1, metadata !4151, metadata !DIExpression()), !dbg !4156
  %tobool2 = icmp eq %struct.rtx_def* %insn.0, null, !dbg !4171
  br i1 %tobool2, label %for.inc30, label %land.rhs3, !dbg !4171

land.rhs3:                                        ; preds = %for.cond1
  %4 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4171
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %4, i64 0, i32 1, !dbg !4171
  %5 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !4171
  %6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !4171
  %rt_rtx = bitcast %union.rtunion_def* %6 to %struct.rtx_def**, !dbg !4171
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !4171
  %cmp7 = icmp eq %struct.rtx_def* %insn.0, %7, !dbg !4171
  br i1 %cmp7, label %for.inc30, label %for.body9, !dbg !4168

for.body9:                                        ; preds = %land.rhs3
  %8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !4173
  %bf.load = load i32, i32* %8, align 8, !dbg !4173
  %bf.clear = and i32 %bf.load, 65535, !dbg !4173
  %cmp10 = icmp eq i32 %bf.clear, 7, !dbg !4173
  br i1 %cmp10, label %lor.lhs.false, label %for.inc, !dbg !4175

lor.lhs.false:                                    ; preds = %for.body9
  %call11 = tail call i32 @rtx_referenced_p(%struct.rtx_def* %reg, %struct.rtx_def* nonnull %insn.0) #6, !dbg !4176
  %tobool12 = icmp eq i32 %call11, 0, !dbg !4176
  br i1 %tobool12, label %for.inc, label %if.else, !dbg !4177

if.else:                                          ; preds = %lor.lhs.false
  %u13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !4178
  %9 = getelementptr inbounds %union.u, %union.u* %u13, i64 1, i32 0, i32 0, i64 0, !dbg !4178
  %rt_rtx16 = bitcast %union.rtunion_def* %9 to %struct.rtx_def**, !dbg !4178
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx16, align 8, !dbg !4178
  %11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4178
  %rt_rtx20 = bitcast %union.rtunion_def* %11 to %struct.rtx_def**, !dbg !4178
  %12 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i64 0, i64 64), align 16, !dbg !4180
  %call21 = tail call %struct.rtx_def* @gen_rtx_fmt_e_stat(i32 25, i32 0, %struct.rtx_def* %12) #6, !dbg !4180
  %call22 = tail call zeroext i8 @validate_change(%struct.rtx_def* nonnull %insn.0, %struct.rtx_def** nonnull %rt_rtx20, %struct.rtx_def* %call21, i8 zeroext 0) #6, !dbg !4181
  %dec = add nsw i32 %debug_uses.addr.1, -1, !dbg !4182
  call void @llvm.dbg.value(metadata i32 %dec, metadata !4151, metadata !DIExpression()), !dbg !4156
  %tobool23 = icmp eq i32 %dec, 0, !dbg !4182
  br i1 %tobool23, label %for.inc30, label %for.inc, !dbg !4184

for.inc:                                          ; preds = %if.else, %lor.lhs.false, %for.body9
  %debug_uses.addr.2 = phi i32 [ %debug_uses.addr.1, %lor.lhs.false ], [ %debug_uses.addr.1, %for.body9 ], [ %dec, %if.else ]
  call void @llvm.dbg.value(metadata i32 %debug_uses.addr.2, metadata !4151, metadata !DIExpression()), !dbg !4156
  %13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !4171
  %rt_rtx29 = bitcast %union.rtunion_def* %13 to %struct.rtx_def**, !dbg !4171
  br label %for.cond1, !dbg !4171, !llvm.loop !4185

for.inc30:                                        ; preds = %if.else, %land.rhs3, %for.cond1
  %debug_uses.addr.3 = phi i32 [ %debug_uses.addr.1, %land.rhs3 ], [ 0, %if.else ], [ %debug_uses.addr.1, %for.cond1 ]
  call void @llvm.dbg.value(metadata i32 %debug_uses.addr.3, metadata !4151, metadata !DIExpression()), !dbg !4156
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4187
  br label %for.cond, !dbg !4188, !llvm.loop !4189

for.end31:                                        ; preds = %for.cond, %land.rhs
  %14 = bitcast %struct.basic_block_def** %call to i8*, !dbg !4191
  tail call void @free(i8* %14) #6, !dbg !4192
  ret void, !dbg !4193
}

declare dso_local %struct.rtx_def* @copy_rtx(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_rtx_heap* @VEC_rtx_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !4194 {
entry:
  call void @llvm.dbg.value(metadata i32 1, metadata !4198, metadata !DIExpression()), !dbg !4199
  %call = tail call i8* @vec_heap_p_reserve_exact(i8* null, i32 1) #6, !dbg !4200
  %0 = bitcast i8* %call to %struct.VEC_rtx_heap*, !dbg !4200
  ret %struct.VEC_rtx_heap* %0, !dbg !4200
}

declare dso_local zeroext i8 @validate_change(%struct.rtx_def*, %struct.rtx_def**, %struct.rtx_def*, i8 zeroext) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_rtx_fmt_e_stat(i32, i32, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local i8* @vec_heap_p_reserve_exact(i8*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @allocate_basic_variable(%struct.iv_to_split* %ivts) unnamed_addr #4 !dbg !4201 {
entry:
  call void @llvm.dbg.value(metadata %struct.iv_to_split* %ivts, metadata !4205, metadata !DIExpression()), !dbg !4207
  %0 = bitcast %struct.iv_to_split* %ivts to i32**, !dbg !4208
  %1 = load i32*, i32** %0, align 8, !dbg !4208
  %bf.load = load i32, i32* %1, align 8, !dbg !4208
  %bf.clear = and i32 %bf.load, 65535, !dbg !4208
  %cmp = icmp eq i32 %bf.clear, 8, !dbg !4208
  %2 = bitcast i32* %1 to %struct.rtx_def*, !dbg !4208
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !4208

lor.lhs.false:                                    ; preds = %entry
  %cmp4 = icmp eq i32 %bf.clear, 7, !dbg !4208
  br i1 %cmp4, label %cond.true, label %lor.lhs.false5, !dbg !4208

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %cmp9 = icmp eq i32 %bf.clear, 9, !dbg !4208
  br i1 %cmp9, label %cond.true, label %lor.lhs.false10, !dbg !4208

lor.lhs.false10:                                  ; preds = %lor.lhs.false5
  %cmp14 = icmp eq i32 %bf.clear, 10, !dbg !4208
  br i1 %cmp14, label %cond.true, label %cond.end32, !dbg !4208

cond.true:                                        ; preds = %lor.lhs.false10, %lor.lhs.false5, %lor.lhs.false, %entry
  %3 = getelementptr inbounds i32, i32* %1, i64 12, !dbg !4208
  %4 = bitcast i32* %3 to i32**, !dbg !4208
  %5 = load i32*, i32** %4, align 8, !dbg !4208
  %bf.load16 = load i32, i32* %5, align 8, !dbg !4208
  %bf.clear17 = and i32 %bf.load16, 65535, !dbg !4208
  %cmp18 = icmp eq i32 %bf.clear17, 23, !dbg !4208
  %6 = bitcast i32* %5 to %struct.rtx_def*, !dbg !4208
  br i1 %cmp18, label %cond.true19, label %cond.false, !dbg !4208

cond.true19:                                      ; preds = %cond.true
  br label %cond.end32, !dbg !4208

cond.false:                                       ; preds = %cond.true
  %call = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %2, %struct.rtx_def* %6) #6, !dbg !4208
  br label %cond.end32, !dbg !4208

cond.end32:                                       ; preds = %lor.lhs.false10, %cond.true19, %cond.false
  %cond33 = phi %struct.rtx_def* [ %6, %cond.true19 ], [ %call, %cond.false ], [ null, %lor.lhs.false10 ], !dbg !4208
  %call34 = tail call fastcc %struct.rtx_def** @get_ivts_expr(%struct.rtx_def* %cond33, %struct.iv_to_split* %ivts) #8, !dbg !4209
  %7 = bitcast %struct.rtx_def** %call34 to i32**, !dbg !4210
  %8 = load i32*, i32** %7, align 8, !dbg !4210
  %bf.load35 = load i32, i32* %8, align 8, !dbg !4211
  %bf.lshr = lshr i32 %bf.load35, 16, !dbg !4211
  %bf.clear36 = and i32 %bf.lshr, 255, !dbg !4211
  %call37 = tail call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear36) #6, !dbg !4212
  %base_var = getelementptr inbounds %struct.iv_to_split, %struct.iv_to_split* %ivts, i64 0, i32 1, !dbg !4213
  store %struct.rtx_def* %call37, %struct.rtx_def** %base_var, align 8, !dbg !4214
  ret void, !dbg !4215
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4216 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !4222, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4223, metadata !DIExpression()), !dbg !4224
  br label %land.end, !dbg !4225

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4225
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4225
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !4225
  ret %struct.basic_block_def* %0, !dbg !4225
}

declare dso_local %struct.basic_block_def* @get_bb_original(%struct.basic_block_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @determine_split_iv_delta(i32 %n_copy, i32 %n_copies, i8 zeroext %unrolling) unnamed_addr #4 !dbg !4226 {
entry:
  call void @llvm.dbg.value(metadata i32 %n_copy, metadata !4230, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.value(metadata i32 %n_copies, metadata !4231, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.value(metadata i8 %unrolling, metadata !4232, metadata !DIExpression()), !dbg !4233
  %tobool = icmp eq i8 %unrolling, 0, !dbg !4234
  br i1 %tobool, label %if.else, label %return, !dbg !4236

if.else:                                          ; preds = %entry
  %tobool1 = icmp eq i32 %n_copy, 0, !dbg !4237
  %sub = add i32 %n_copy, -1, !dbg !4240
  %spec.select = select i1 %tobool1, i32 %n_copies, i32 %sub, !dbg !4241
  ret i32 %spec.select, !dbg !4241

return:                                           ; preds = %entry
  ret i32 %n_copy, !dbg !4242
}

declare dso_local i8* @htab_find(%struct.htab*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @insert_base_initialization(%struct.iv_to_split* %ivts, %struct.rtx_def* %insn) unnamed_addr #4 !dbg !4243 {
entry:
  call void @llvm.dbg.value(metadata %struct.iv_to_split* %ivts, metadata !4247, metadata !DIExpression()), !dbg !4251
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !4248, metadata !DIExpression()), !dbg !4251
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !4252
  %bf.load = load i32, i32* %0, align 8, !dbg !4252
  %bf.clear = and i32 %bf.load, 65535, !dbg !4252
  %cmp = icmp eq i32 %bf.clear, 8, !dbg !4252
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !4252

lor.lhs.false:                                    ; preds = %entry
  %cmp3 = icmp eq i32 %bf.clear, 7, !dbg !4252
  br i1 %cmp3, label %cond.true, label %lor.lhs.false4, !dbg !4252

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %cmp7 = icmp eq i32 %bf.clear, 9, !dbg !4252
  br i1 %cmp7, label %cond.true, label %lor.lhs.false8, !dbg !4252

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %cmp11 = icmp eq i32 %bf.clear, 10, !dbg !4252
  br i1 %cmp11, label %cond.true, label %cond.end25, !dbg !4252

cond.true:                                        ; preds = %lor.lhs.false8, %lor.lhs.false4, %lor.lhs.false, %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !4252
  %1 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !4252
  %2 = bitcast %union.rtunion_def* %1 to i32**, !dbg !4252
  %3 = load i32*, i32** %2, align 8, !dbg !4252
  %bf.load12 = load i32, i32* %3, align 8, !dbg !4252
  %bf.clear13 = and i32 %bf.load12, 65535, !dbg !4252
  %cmp14 = icmp eq i32 %bf.clear13, 23, !dbg !4252
  %4 = bitcast i32* %3 to %struct.rtx_def*, !dbg !4252
  br i1 %cmp14, label %cond.end25, label %cond.false, !dbg !4252

cond.false:                                       ; preds = %cond.true
  %call = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %insn, %struct.rtx_def* %4) #6, !dbg !4252
  br label %cond.end25, !dbg !4252

cond.end25:                                       ; preds = %lor.lhs.false8, %cond.false, %cond.true
  %cond26 = phi %struct.rtx_def* [ %call, %cond.false ], [ %4, %cond.true ], [ null, %lor.lhs.false8 ], !dbg !4252
  %call27 = tail call fastcc %struct.rtx_def** @get_ivts_expr(%struct.rtx_def* %cond26, %struct.iv_to_split* %ivts) #8, !dbg !4253
  %5 = load %struct.rtx_def*, %struct.rtx_def** %call27, align 8, !dbg !4254
  %call28 = tail call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %5) #6, !dbg !4255
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call28, metadata !4249, metadata !DIExpression()), !dbg !4251
  tail call void @start_sequence() #6, !dbg !4256
  %base_var = getelementptr inbounds %struct.iv_to_split, %struct.iv_to_split* %ivts, i64 0, i32 1, !dbg !4257
  %6 = load %struct.rtx_def*, %struct.rtx_def** %base_var, align 8, !dbg !4257
  %call29 = tail call %struct.rtx_def* @force_operand(%struct.rtx_def* %call28, %struct.rtx_def* %6) #6, !dbg !4258
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call29, metadata !4249, metadata !DIExpression()), !dbg !4251
  %7 = load %struct.rtx_def*, %struct.rtx_def** %base_var, align 8, !dbg !4259
  %cmp31 = icmp eq %struct.rtx_def* %call29, %7, !dbg !4261
  br i1 %cmp31, label %if.end, label %if.then, !dbg !4262

if.then:                                          ; preds = %cond.end25
  %call33 = tail call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %7, %struct.rtx_def* %call29) #6, !dbg !4263
  br label %if.end, !dbg !4263

if.end:                                           ; preds = %cond.end25, %if.then
  %call34 = tail call %struct.rtx_def* @get_insns() #6, !dbg !4264
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call34, metadata !4250, metadata !DIExpression()), !dbg !4251
  tail call void @end_sequence() #6, !dbg !4265
  %call35 = tail call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %call34, %struct.rtx_def* %insn) #6, !dbg !4266
  ret void, !dbg !4267
}

; Function Attrs: nounwind uwtable
define internal fastcc void @split_iv(%struct.iv_to_split* %ivts, %struct.rtx_def* %insn, i32 %delta) unnamed_addr #4 !dbg !4268 {
entry:
  call void @llvm.dbg.value(metadata %struct.iv_to_split* %ivts, metadata !4272, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !4273, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata i32 %delta, metadata !4274, metadata !DIExpression()), !dbg !4285
  %base_var = getelementptr inbounds %struct.iv_to_split, %struct.iv_to_split* %ivts, i64 0, i32 1, !dbg !4286
  %0 = bitcast %struct.rtx_def** %base_var to i32**, !dbg !4286
  %1 = load i32*, i32** %0, align 8, !dbg !4286
  %bf.load = load i32, i32* %1, align 8, !dbg !4286
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !4286
  %bf.clear = and i32 %bf.lshr, 255, !dbg !4286
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !4281, metadata !DIExpression()), !dbg !4285
  %tobool = icmp eq i32 %delta, 0, !dbg !4287
  br i1 %tobool, label %if.then, label %if.else, !dbg !4289

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %1 to %struct.rtx_def*, !dbg !4289
  call void @llvm.dbg.value(metadata %struct.rtx_def* %2, metadata !4275, metadata !DIExpression()), !dbg !4285
  br label %if.end, !dbg !4290

if.else:                                          ; preds = %entry
  %step = getelementptr inbounds %struct.iv_to_split, %struct.iv_to_split* %ivts, i64 0, i32 2, !dbg !4291
  %3 = load %struct.rtx_def*, %struct.rtx_def** %step, align 8, !dbg !4291
  %conv = zext i32 %delta to i64, !dbg !4293
  %call = tail call %struct.rtx_def* @gen_int_mode(i64 %conv, i32 %bf.clear) #6, !dbg !4294
  %call2 = tail call %struct.rtx_def* @simplify_gen_binary(i32 52, i32 %bf.clear, %struct.rtx_def* %3, %struct.rtx_def* %call) #6, !dbg !4295
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call2, metadata !4279, metadata !DIExpression()), !dbg !4285
  %4 = load i32*, i32** %0, align 8, !dbg !4296
  %bf.load4 = load i32, i32* %4, align 8, !dbg !4296
  %bf.lshr5 = lshr i32 %bf.load4, 16, !dbg !4296
  %bf.clear6 = and i32 %bf.lshr5, 255, !dbg !4296
  %.cast = bitcast i32* %4 to %struct.rtx_def*, !dbg !4297
  %call8 = tail call %struct.rtx_def* @simplify_gen_binary(i32 49, i32 %bf.clear6, %struct.rtx_def* %.cast, %struct.rtx_def* %call2) #6, !dbg !4298
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call8, metadata !4275, metadata !DIExpression()), !dbg !4285
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %expr.0 = phi %struct.rtx_def* [ %call8, %if.else ], [ %2, %if.then ], !dbg !4299
  call void @llvm.dbg.value(metadata %struct.rtx_def* %expr.0, metadata !4275, metadata !DIExpression()), !dbg !4285
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !4300
  %bf.load9 = load i32, i32* %5, align 8, !dbg !4300
  %bf.clear10 = and i32 %bf.load9, 65535, !dbg !4300
  %cmp = icmp eq i32 %bf.clear10, 8, !dbg !4300
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !4300

lor.lhs.false:                                    ; preds = %if.end
  %cmp14 = icmp eq i32 %bf.clear10, 7, !dbg !4300
  br i1 %cmp14, label %cond.true, label %lor.lhs.false16, !dbg !4300

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %cmp19 = icmp eq i32 %bf.clear10, 9, !dbg !4300
  br i1 %cmp19, label %cond.true, label %lor.lhs.false21, !dbg !4300

lor.lhs.false21:                                  ; preds = %lor.lhs.false16
  %cmp24 = icmp eq i32 %bf.clear10, 10, !dbg !4300
  br i1 %cmp24, label %cond.true, label %cond.end41, !dbg !4300

cond.true:                                        ; preds = %lor.lhs.false21, %lor.lhs.false16, %lor.lhs.false, %if.end
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !4300
  %6 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !4300
  %7 = bitcast %union.rtunion_def* %6 to i32**, !dbg !4300
  %8 = load i32*, i32** %7, align 8, !dbg !4300
  %bf.load26 = load i32, i32* %8, align 8, !dbg !4300
  %bf.clear27 = and i32 %bf.load26, 65535, !dbg !4300
  %cmp28 = icmp eq i32 %bf.clear27, 23, !dbg !4300
  %9 = bitcast i32* %8 to %struct.rtx_def*, !dbg !4300
  br i1 %cmp28, label %cond.end41, label %cond.false, !dbg !4300

cond.false:                                       ; preds = %cond.true
  %call39 = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %insn, %struct.rtx_def* %9) #6, !dbg !4300
  br label %cond.end41, !dbg !4300

cond.end41:                                       ; preds = %lor.lhs.false21, %cond.false, %cond.true
  %cond42 = phi %struct.rtx_def* [ %call39, %cond.false ], [ %9, %cond.true ], [ null, %lor.lhs.false21 ], !dbg !4300
  %call43 = tail call fastcc %struct.rtx_def** @get_ivts_expr(%struct.rtx_def* %cond42, %struct.iv_to_split* %ivts) #8, !dbg !4301
  call void @llvm.dbg.value(metadata %struct.rtx_def** %call43, metadata !4276, metadata !DIExpression()), !dbg !4285
  %call44 = tail call zeroext i8 @validate_change(%struct.rtx_def* %insn, %struct.rtx_def** %call43, %struct.rtx_def* %expr.0, i8 zeroext 0) #6, !dbg !4302
  %tobool45 = icmp eq i8 %call44, 0, !dbg !4302
  br i1 %tobool45, label %if.end47, label %cleanup.cont, !dbg !4304

if.end47:                                         ; preds = %cond.end41
  tail call void @start_sequence() #6, !dbg !4305
  %call48 = tail call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear) #6, !dbg !4306
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call48, metadata !4280, metadata !DIExpression()), !dbg !4285
  %call49 = tail call %struct.rtx_def* @force_operand(%struct.rtx_def* %expr.0, %struct.rtx_def* %call48) #6, !dbg !4307
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call49, metadata !4275, metadata !DIExpression()), !dbg !4285
  %cmp50 = icmp eq %struct.rtx_def* %call49, %call48, !dbg !4308
  br i1 %cmp50, label %if.end54, label %if.then52, !dbg !4310

if.then52:                                        ; preds = %if.end47
  %call53 = tail call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %call48, %struct.rtx_def* %call49) #6, !dbg !4311
  br label %if.end54, !dbg !4311

if.end54:                                         ; preds = %if.end47, %if.then52
  %call55 = tail call %struct.rtx_def* @get_insns() #6, !dbg !4312
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call55, metadata !4278, metadata !DIExpression()), !dbg !4285
  tail call void @end_sequence() #6, !dbg !4313
  %call56 = tail call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %call55, %struct.rtx_def* %insn) #6, !dbg !4314
  %call57 = tail call zeroext i8 @validate_change(%struct.rtx_def* %insn, %struct.rtx_def** %call43, %struct.rtx_def* %call48, i8 zeroext 0) #6, !dbg !4315
  %tobool58 = icmp eq i8 %call57, 0, !dbg !4315
  br i1 %tobool58, label %if.end60, label %cleanup.cont, !dbg !4317

if.end60:                                         ; preds = %if.end54
  %bf.load61 = load i32, i32* %5, align 8, !dbg !4318
  %bf.clear62 = and i32 %bf.load61, 65535, !dbg !4318
  %cmp63 = icmp eq i32 %bf.clear62, 8, !dbg !4318
  br i1 %cmp63, label %cond.true80, label %lor.lhs.false65, !dbg !4318

lor.lhs.false65:                                  ; preds = %if.end60
  %cmp68 = icmp eq i32 %bf.clear62, 7, !dbg !4318
  br i1 %cmp68, label %cond.true80, label %lor.lhs.false70, !dbg !4318

lor.lhs.false70:                                  ; preds = %lor.lhs.false65
  %cmp73 = icmp eq i32 %bf.clear62, 9, !dbg !4318
  br i1 %cmp73, label %cond.true80, label %lor.lhs.false75, !dbg !4318

lor.lhs.false75:                                  ; preds = %lor.lhs.false70
  %cmp78 = icmp eq i32 %bf.clear62, 10, !dbg !4318
  br i1 %cmp78, label %cond.true80, label %cond.end103, !dbg !4318

cond.true80:                                      ; preds = %lor.lhs.false75, %lor.lhs.false70, %lor.lhs.false65, %if.end60
  %u81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !4318
  %10 = getelementptr inbounds %union.u, %union.u* %u81, i64 1, i32 0, i32 0, i64 0, !dbg !4318
  %11 = bitcast %union.rtunion_def* %10 to i32**, !dbg !4318
  %12 = load i32*, i32** %11, align 8, !dbg !4318
  %bf.load85 = load i32, i32* %12, align 8, !dbg !4318
  %bf.clear86 = and i32 %bf.load85, 65535, !dbg !4318
  %cmp87 = icmp eq i32 %bf.clear86, 23, !dbg !4318
  %13 = bitcast i32* %12 to %struct.rtx_def*, !dbg !4318
  br i1 %cmp87, label %cond.end103, label %cond.false94, !dbg !4318

cond.false94:                                     ; preds = %cond.true80
  %call99 = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %insn, %struct.rtx_def* %13) #6, !dbg !4318
  br label %cond.end103, !dbg !4318

cond.end103:                                      ; preds = %lor.lhs.false75, %cond.false94, %cond.true80
  %cond104 = phi %struct.rtx_def* [ %call99, %cond.false94 ], [ %13, %cond.true80 ], [ null, %lor.lhs.false75 ], !dbg !4318
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond104, metadata !4284, metadata !DIExpression()), !dbg !4285
  %tobool105 = icmp eq %struct.rtx_def* %cond104, null, !dbg !4319
  br i1 %tobool105, label %cond.true106, label %cond.end108, !dbg !4319

cond.true106:                                     ; preds = %cond.end103
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 2008, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4319
  br label %cond.end108, !dbg !4319

cond.end108:                                      ; preds = %cond.end103, %cond.true106
  tail call void @start_sequence() #6, !dbg !4320
  store %struct.rtx_def* %call48, %struct.rtx_def** %call43, align 8, !dbg !4321
  %14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond104, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4322
  %rt_rtx113 = bitcast %union.rtunion_def* %14 to %struct.rtx_def**, !dbg !4322
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx113, align 8, !dbg !4322
  %call114 = tail call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %15) #6, !dbg !4323
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call114, metadata !4282, metadata !DIExpression()), !dbg !4285
  %arrayidx117 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond104, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4324
  %rt_rtx118 = bitcast %union.rtunion_def* %arrayidx117 to %struct.rtx_def**, !dbg !4324
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx118, align 8, !dbg !4324
  %call119 = tail call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %16) #6, !dbg !4325
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call119, metadata !4283, metadata !DIExpression()), !dbg !4285
  %call120 = tail call %struct.rtx_def* @force_operand(%struct.rtx_def* %call114, %struct.rtx_def* %call119) #6, !dbg !4326
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call120, metadata !4282, metadata !DIExpression()), !dbg !4285
  %cmp121 = icmp eq %struct.rtx_def* %call120, %call119, !dbg !4327
  br i1 %cmp121, label %if.end125, label %if.then123, !dbg !4329

if.then123:                                       ; preds = %cond.end108
  %call124 = tail call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %call119, %struct.rtx_def* %call120) #6, !dbg !4330
  br label %if.end125, !dbg !4330

if.end125:                                        ; preds = %cond.end108, %if.then123
  %call126 = tail call %struct.rtx_def* @get_insns() #6, !dbg !4331
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call126, metadata !4278, metadata !DIExpression()), !dbg !4285
  tail call void @end_sequence() #6, !dbg !4332
  %call127 = tail call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %call126, %struct.rtx_def* %insn) #6, !dbg !4333
  %call128 = tail call %struct.rtx_def* @delete_insn(%struct.rtx_def* %insn) #6, !dbg !4334
  br label %cleanup.cont, !dbg !4335

cleanup.cont:                                     ; preds = %if.end54, %cond.end41, %if.end125
  ret void, !dbg !4335
}

; Function Attrs: nounwind uwtable
define internal fastcc void @expand_var_during_unrolling(%struct.var_to_expand* %ve, %struct.rtx_def* %insn) unnamed_addr #4 !dbg !4336 {
entry:
  call void @llvm.dbg.value(metadata %struct.var_to_expand* %ve, metadata !4340, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !4341, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i8 0, metadata !4344, metadata !DIExpression()), !dbg !4345
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 0, !dbg !4346
  %bf.load = load i32, i32* %0, align 8, !dbg !4346
  %bf.clear = and i32 %bf.load, 65535, !dbg !4346
  %cmp = icmp eq i32 %bf.clear, 8, !dbg !4346
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !4346

lor.lhs.false:                                    ; preds = %entry
  %cmp3 = icmp eq i32 %bf.clear, 7, !dbg !4346
  br i1 %cmp3, label %cond.true, label %lor.lhs.false4, !dbg !4346

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %cmp7 = icmp eq i32 %bf.clear, 9, !dbg !4346
  br i1 %cmp7, label %cond.true, label %lor.lhs.false8, !dbg !4346

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %cmp11 = icmp eq i32 %bf.clear, 10, !dbg !4346
  br i1 %cmp11, label %cond.true, label %cond.end25, !dbg !4346

cond.true:                                        ; preds = %lor.lhs.false8, %lor.lhs.false4, %lor.lhs.false, %entry
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !4346
  %1 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !4346
  %2 = bitcast %union.rtunion_def* %1 to i32**, !dbg !4346
  %3 = load i32*, i32** %2, align 8, !dbg !4346
  %bf.load12 = load i32, i32* %3, align 8, !dbg !4346
  %bf.clear13 = and i32 %bf.load12, 65535, !dbg !4346
  %cmp14 = icmp eq i32 %bf.clear13, 23, !dbg !4346
  %4 = bitcast i32* %3 to %struct.rtx_def*, !dbg !4346
  br i1 %cmp14, label %cond.end25, label %cond.false, !dbg !4346

cond.false:                                       ; preds = %cond.true
  %call = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %insn, %struct.rtx_def* %4) #6, !dbg !4346
  br label %cond.end25, !dbg !4346

cond.end25:                                       ; preds = %lor.lhs.false8, %cond.false, %cond.true
  %cond26 = phi %struct.rtx_def* [ %call, %cond.false ], [ %4, %cond.true ], [ null, %lor.lhs.false8 ], !dbg !4346
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond26, metadata !4343, metadata !DIExpression()), !dbg !4345
  %tobool = icmp eq %struct.rtx_def* %cond26, null, !dbg !4347
  br i1 %tobool, label %cond.true27, label %cond.end29, !dbg !4347

cond.true27:                                      ; preds = %cond.end25
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 2056, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4347
  br label %cond.end29, !dbg !4347

cond.end29:                                       ; preds = %cond.end25, %cond.true27
  %5 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !4348
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %5, i64 10, i32 1, !dbg !4348
  %6 = load i32, i32* %value, align 8, !dbg !4348
  %expansion_count = getelementptr inbounds %struct.var_to_expand, %struct.var_to_expand* %ve, i64 0, i32 5, !dbg !4350
  %7 = load i32, i32* %expansion_count, align 4, !dbg !4350
  %cmp32 = icmp sgt i32 %6, %7, !dbg !4351
  br i1 %cmp32, label %if.then, label %if.else, !dbg !4352

if.then:                                          ; preds = %cond.end29
  call void @llvm.dbg.value(metadata i8 1, metadata !4344, metadata !DIExpression()), !dbg !4345
  %reg = getelementptr inbounds %struct.var_to_expand, %struct.var_to_expand* %ve, i64 0, i32 1, !dbg !4353
  %8 = bitcast %struct.rtx_def** %reg to i32**, !dbg !4353
  %9 = load i32*, i32** %8, align 8, !dbg !4353
  %bf.load33 = load i32, i32* %9, align 8, !dbg !4353
  %bf.lshr = lshr i32 %bf.load33, 16, !dbg !4353
  %bf.clear34 = and i32 %bf.lshr, 255, !dbg !4353
  %call35 = tail call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear34) #6, !dbg !4355
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call35, metadata !4342, metadata !DIExpression()), !dbg !4345
  br label %if.end, !dbg !4356

if.else:                                          ; preds = %cond.end29
  %call36 = tail call fastcc %struct.rtx_def* @get_expansion(%struct.var_to_expand* %ve) #8, !dbg !4357
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call36, metadata !4342, metadata !DIExpression()), !dbg !4345
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %new_reg.0 = phi %struct.rtx_def* [ %call35, %if.then ], [ %call36, %if.else ], !dbg !4358
  %really_new_expansion.0 = phi i1 [ true, %if.then ], [ false, %if.else ]
  call void @llvm.dbg.value(metadata %struct.rtx_def* %new_reg.0, metadata !4342, metadata !DIExpression()), !dbg !4345
  %arrayidx39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond26, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !4359
  %rt_rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**, !dbg !4359
  %call41 = tail call zeroext i8 @validate_change(%struct.rtx_def* %insn, %struct.rtx_def** nonnull %rt_rtx40, %struct.rtx_def* %new_reg.0, i8 zeroext 1) #6, !dbg !4360
  %10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond26, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !4361
  %rt_rtx45 = bitcast %union.rtunion_def* %10 to %struct.rtx_def**, !dbg !4361
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx45, align 8, !dbg !4361
  %u46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i64 0, i32 1, !dbg !4361
  %fld47 = bitcast %union.u* %u46 to [1 x %union.rtunion_def]*, !dbg !4361
  %accum_pos = getelementptr inbounds %struct.var_to_expand, %struct.var_to_expand* %ve, i64 0, i32 7, !dbg !4361
  %12 = load i32, i32* %accum_pos, align 4, !dbg !4361
  %idxprom = zext i32 %12 to i64, !dbg !4361
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i64 0, i64 %idxprom, !dbg !4361
  %rt_rtx49 = bitcast %union.rtunion_def* %arrayidx48 to %struct.rtx_def**, !dbg !4361
  %call50 = tail call zeroext i8 @validate_change(%struct.rtx_def* %insn, %struct.rtx_def** nonnull %rt_rtx49, %struct.rtx_def* %new_reg.0, i8 zeroext 1) #6, !dbg !4362
  %call51 = tail call i32 @apply_change_group() #6, !dbg !4363
  %tobool52 = icmp ne i32 %call51, 0, !dbg !4363
  %or.cond = and i1 %tobool52, %really_new_expansion.0, !dbg !4365
  br i1 %or.cond, label %if.then55, label %if.end59, !dbg !4365

if.then55:                                        ; preds = %if.end
  %var_expansions = getelementptr inbounds %struct.var_to_expand, %struct.var_to_expand* %ve, i64 0, i32 2, !dbg !4366
  %call56 = tail call fastcc %struct.rtx_def** @VEC_rtx_heap_safe_push(%struct.VEC_rtx_heap** nonnull %var_expansions, %struct.rtx_def* %new_reg.0) #8, !dbg !4366
  %13 = load i32, i32* %expansion_count, align 4, !dbg !4369
  %inc = add nsw i32 %13, 1, !dbg !4369
  store i32 %inc, i32* %expansion_count, align 4, !dbg !4369
  br label %if.end59, !dbg !4370

if.end59:                                         ; preds = %if.then55, %if.end
  ret void, !dbg !4371
}

; Function Attrs: nounwind uwtable
define internal fastcc void @insert_var_expansion_initialization(%struct.var_to_expand* %ve, %struct.basic_block_def* %place) unnamed_addr #4 !dbg !4372 {
entry:
  %var = alloca %struct.rtx_def*, align 8
  call void @llvm.dbg.value(metadata %struct.var_to_expand* %ve, metadata !4376, metadata !DIExpression()), !dbg !4385
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %place, metadata !4377, metadata !DIExpression()), !dbg !4385
  %0 = bitcast %struct.rtx_def** %var to i8*, !dbg !4386
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4386
  %reg = getelementptr inbounds %struct.var_to_expand, %struct.var_to_expand* %ve, i64 0, i32 1, !dbg !4387
  %1 = bitcast %struct.rtx_def** %reg to i32**, !dbg !4387
  %2 = load i32*, i32** %1, align 8, !dbg !4387
  %bf.load = load i32, i32* %2, align 8, !dbg !4387
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !4387
  %bf.clear = and i32 %bf.lshr, 255, !dbg !4387
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !4383, metadata !DIExpression()), !dbg !4385
  %idxprom = zext i32 %bf.clear to i64, !dbg !4388
  %arrayidx = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %idxprom, !dbg !4388
  %3 = load i8, i8* %arrayidx, align 1, !dbg !4388
  %cmp = icmp eq i8 %3, 8, !dbg !4388
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !4388

lor.lhs.false:                                    ; preds = %entry
  %cmp5 = icmp eq i8 %3, 9, !dbg !4388
  br i1 %cmp5, label %land.lhs.true, label %lor.lhs.false7, !dbg !4388

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %cmp11 = icmp eq i8 %3, 11, !dbg !4388
  br i1 %cmp11, label %land.lhs.true, label %lor.lhs.false13, !dbg !4388

lor.lhs.false13:                                  ; preds = %lor.lhs.false7
  %cmp17 = icmp eq i8 %3, 17, !dbg !4388
  br i1 %cmp17, label %land.lhs.true, label %land.end, !dbg !4388

land.lhs.true:                                    ; preds = %lor.lhs.false13, %lor.lhs.false7, %lor.lhs.false, %entry
  br i1 %cmp, label %cond.end, label %lor.lhs.false24, !dbg !4388

lor.lhs.false24:                                  ; preds = %land.lhs.true
  %cmp28 = icmp eq i8 %3, 9, !dbg !4388
  br i1 %cmp28, label %cond.end, label %cond.false, !dbg !4388

cond.false:                                       ; preds = %lor.lhs.false24
  %arrayidx31 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom, !dbg !4388
  %4 = load i8, i8* %arrayidx31, align 1, !dbg !4388
  %.pre = zext i8 %4 to i64, !dbg !4388
  %arrayidx34.phi.trans.insert = getelementptr inbounds [87 x i8], [87 x i8]* @mode_class, i64 0, i64 %.pre, !dbg !4385
  %.pre2 = load i8, i8* %arrayidx34.phi.trans.insert, align 1, !dbg !4388
  br label %cond.end, !dbg !4388

cond.end:                                         ; preds = %land.lhs.true, %lor.lhs.false24, %cond.false
  %5 = phi i8 [ 8, %land.lhs.true ], [ 9, %lor.lhs.false24 ], [ %.pre2, %cond.false ], !dbg !4388
  %cmp36 = icmp eq i8 %5, 9, !dbg !4388
  br i1 %cmp36, label %cond.true38, label %cond.false57, !dbg !4388

cond.true38:                                      ; preds = %cond.end
  br i1 %cmp, label %cond.end55, label %lor.lhs.false44, !dbg !4388

lor.lhs.false44:                                  ; preds = %cond.true38
  %cmp48 = icmp eq i8 %3, 9, !dbg !4388
  br i1 %cmp48, label %cond.end55, label %cond.false51, !dbg !4388

cond.false51:                                     ; preds = %lor.lhs.false44
  %arrayidx53 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom, !dbg !4388
  %6 = load i8, i8* %arrayidx53, align 1, !dbg !4388
  %conv54 = zext i8 %6 to i32, !dbg !4388
  br label %cond.end55, !dbg !4388

cond.end55:                                       ; preds = %cond.true38, %lor.lhs.false44, %cond.false51
  %cond56 = phi i32 [ %conv54, %cond.false51 ], [ %bf.clear, %lor.lhs.false44 ], [ %bf.clear, %cond.true38 ], !dbg !4388
  br label %cond.end77, !dbg !4388

cond.false57:                                     ; preds = %cond.end
  br i1 %cmp, label %cond.end74, label %lor.lhs.false63, !dbg !4388

lor.lhs.false63:                                  ; preds = %cond.false57
  %cmp67 = icmp eq i8 %3, 9, !dbg !4388
  br i1 %cmp67, label %cond.end74, label %cond.false70, !dbg !4388

cond.false70:                                     ; preds = %lor.lhs.false63
  %arrayidx72 = getelementptr inbounds [87 x i8], [87 x i8]* @mode_inner, i64 0, i64 %idxprom, !dbg !4388
  %7 = load i8, i8* %arrayidx72, align 1, !dbg !4388
  %conv73 = zext i8 %7 to i32, !dbg !4388
  br label %cond.end74, !dbg !4388

cond.end74:                                       ; preds = %cond.false57, %lor.lhs.false63, %cond.false70
  %cond75 = phi i32 [ %conv73, %cond.false70 ], [ %bf.clear, %lor.lhs.false63 ], [ %bf.clear, %cond.false57 ], !dbg !4388
  br label %cond.end77, !dbg !4388

cond.end77:                                       ; preds = %cond.end74, %cond.end55
  %cond78.in = phi i32 [ %cond56, %cond.end55 ], [ %cond75, %cond.end74 ]
  %cond78 = add nsw i32 %cond78.in, -38, !dbg !4388
  %idxprom79 = zext i32 %cond78 to i64, !dbg !4388
  %arrayidx80 = getelementptr inbounds [7 x %struct.real_format*], [7 x %struct.real_format*]* @real_format_for_mode, i64 0, i64 %idxprom79, !dbg !4388
  %8 = load %struct.real_format*, %struct.real_format** %arrayidx80, align 8, !dbg !4388
  %has_signed_zero = getelementptr inbounds %struct.real_format, %struct.real_format* %8, i64 0, i32 14, !dbg !4388
  %9 = load i8, i8* %has_signed_zero, align 1, !dbg !4388
  %tobool = icmp eq i8 %9, 0, !dbg !4388
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !4388

land.rhs:                                         ; preds = %cond.end77
  %10 = load i32, i32* @flag_signed_zeros, align 4, !dbg !4388
  %tobool82 = icmp ne i32 %10, 0, !dbg !4388
  %phitmp = zext i1 %tobool82 to i8
  br label %land.end

land.end:                                         ; preds = %cond.end77, %land.rhs, %lor.lhs.false13
  %11 = phi i8 [ 0, %cond.end77 ], [ 0, %lor.lhs.false13 ], [ %phitmp, %land.rhs ]
  call void @llvm.dbg.value(metadata i8 %11, metadata !4384, metadata !DIExpression()), !dbg !4385
  %var_expansions = getelementptr inbounds %struct.var_to_expand, %struct.var_to_expand* %ve, i64 0, i32 2, !dbg !4389
  %12 = load %struct.VEC_rtx_heap*, %struct.VEC_rtx_heap** %var_expansions, align 8, !dbg !4389
  %tobool84 = icmp eq %struct.VEC_rtx_heap* %12, null, !dbg !4389
  br i1 %tobool84, label %cond.end88, label %cond.true85, !dbg !4389

cond.true85:                                      ; preds = %land.end
  %base = getelementptr inbounds %struct.VEC_rtx_heap, %struct.VEC_rtx_heap* %12, i64 0, i32 0, !dbg !4389
  br label %cond.end88, !dbg !4389

cond.end88:                                       ; preds = %land.end, %cond.true85
  %cond89 = phi %struct.VEC_rtx_base* [ %base, %cond.true85 ], [ null, %land.end ], !dbg !4389
  %call = tail call fastcc i32 @VEC_rtx_base_length(%struct.VEC_rtx_base* %cond89) #8, !dbg !4389
  %cmp90 = icmp eq i32 %call, 0, !dbg !4391
  br i1 %cmp90, label %cleanup, label %if.end, !dbg !4392

if.end:                                           ; preds = %cond.end88
  tail call void @start_sequence() #6, !dbg !4393
  %op = getelementptr inbounds %struct.var_to_expand, %struct.var_to_expand* %ve, i64 0, i32 4, !dbg !4394
  %13 = load i32, i32* %op, align 8, !dbg !4394
  %cmp92 = icmp eq i32 %13, 49, !dbg !4396
  br i1 %cmp92, label %if.then98, label %lor.lhs.false94, !dbg !4397

lor.lhs.false94:                                  ; preds = %if.end
  %cmp96 = icmp eq i32 %13, 50, !dbg !4398
  br i1 %cmp96, label %if.then98, label %if.else118, !dbg !4399

if.then98:                                        ; preds = %lor.lhs.false94, %if.end
  call void @llvm.dbg.value(metadata i32 0, metadata !4382, metadata !DIExpression()), !dbg !4385
  %tobool109 = icmp eq i8 %11, 0, !dbg !4400
  %arrayidx112 = getelementptr inbounds [3 x [87 x %struct.rtx_def*]], [3 x [87 x %struct.rtx_def*]]* @const_tiny_rtx, i64 0, i64 0, i64 %idxprom, !dbg !4400
  br i1 %tobool109, label %if.then98.split.us, label %if.then98.if.then98.split_crit_edge, !dbg !4405

if.then98.if.then98.split_crit_edge:              ; preds = %if.then98
  br label %for.cond, !dbg !4405

if.then98.split.us:                               ; preds = %if.then98
  br label %for.cond.us, !dbg !4405

for.cond.us:                                      ; preds = %for.body.us, %if.then98.split.us
  %i.0.us = phi i32 [ 0, %if.then98.split.us ], [ %inc.us, %for.body.us ], !dbg !4406
  call void @llvm.dbg.value(metadata i32 %i.0.us, metadata !4382, metadata !DIExpression()), !dbg !4385
  %14 = load %struct.VEC_rtx_heap*, %struct.VEC_rtx_heap** %var_expansions, align 8, !dbg !4407
  %tobool100.us = icmp eq %struct.VEC_rtx_heap* %14, null, !dbg !4407
  br i1 %tobool100.us, label %cond.end105.us, label %cond.true101.us, !dbg !4407

cond.true101.us:                                  ; preds = %for.cond.us
  %base103.us = getelementptr inbounds %struct.VEC_rtx_heap, %struct.VEC_rtx_heap* %14, i64 0, i32 0, !dbg !4407
  br label %cond.end105.us, !dbg !4407

cond.end105.us:                                   ; preds = %cond.true101.us, %for.cond.us
  %cond106.us = phi %struct.VEC_rtx_base* [ %base103.us, %cond.true101.us ], [ null, %for.cond.us ], !dbg !4407
  call void @llvm.dbg.value(metadata %struct.rtx_def** %var, metadata !4379, metadata !DIExpression(DW_OP_deref)), !dbg !4385
  %call107.us = call fastcc i32 @VEC_rtx_base_iterate(%struct.VEC_rtx_base* %cond106.us, i32 %i.0.us, %struct.rtx_def** nonnull %var) #8, !dbg !4407
  %tobool108.us = icmp eq i32 %call107.us, 0, !dbg !4408
  br i1 %tobool108.us, label %if.end145.loopexit.us-lcssa.us, label %for.body.us, !dbg !4408

for.body.us:                                      ; preds = %cond.end105.us
  %15 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx112, align 8, !dbg !4400
  call void @llvm.dbg.value(metadata %struct.rtx_def* %15, metadata !4380, metadata !DIExpression()), !dbg !4385
  %16 = load %struct.rtx_def*, %struct.rtx_def** %var, align 8, !dbg !4409
  call void @llvm.dbg.value(metadata %struct.rtx_def* %16, metadata !4379, metadata !DIExpression()), !dbg !4385
  %call117.us = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %16, %struct.rtx_def* %15) #6, !dbg !4410
  %inc.us = add i32 %i.0.us, 1, !dbg !4411
  call void @llvm.dbg.value(metadata i32 %inc.us, metadata !4382, metadata !DIExpression()), !dbg !4385
  br label %for.cond.us, !dbg !4412, !llvm.loop !4413

if.end145.loopexit.us-lcssa.us:                   ; preds = %cond.end105.us
  br label %if.end145.loopexit, !dbg !4415

for.cond:                                         ; preds = %for.body, %if.then98.if.then98.split_crit_edge
  %i.0 = phi i32 [ 0, %if.then98.if.then98.split_crit_edge ], [ %inc, %for.body ], !dbg !4406
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4382, metadata !DIExpression()), !dbg !4385
  %17 = load %struct.VEC_rtx_heap*, %struct.VEC_rtx_heap** %var_expansions, align 8, !dbg !4407
  %tobool100 = icmp eq %struct.VEC_rtx_heap* %17, null, !dbg !4407
  br i1 %tobool100, label %cond.end105, label %cond.true101, !dbg !4407

cond.true101:                                     ; preds = %for.cond
  %base103 = getelementptr inbounds %struct.VEC_rtx_heap, %struct.VEC_rtx_heap* %17, i64 0, i32 0, !dbg !4407
  br label %cond.end105, !dbg !4407

cond.end105:                                      ; preds = %for.cond, %cond.true101
  %cond106 = phi %struct.VEC_rtx_base* [ %base103, %cond.true101 ], [ null, %for.cond ], !dbg !4407
  call void @llvm.dbg.value(metadata %struct.rtx_def** %var, metadata !4379, metadata !DIExpression(DW_OP_deref)), !dbg !4385
  %call107 = call fastcc i32 @VEC_rtx_base_iterate(%struct.VEC_rtx_base* %cond106, i32 %i.0, %struct.rtx_def** nonnull %var) #8, !dbg !4407
  %tobool108 = icmp eq i32 %call107, 0, !dbg !4408
  br i1 %tobool108, label %if.end145.loopexit.us-lcssa, label %for.body, !dbg !4408

for.body:                                         ; preds = %cond.end105
  %18 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx112, align 8, !dbg !4400
  %call113 = call %struct.rtx_def* @simplify_gen_unary(i32 51, i32 %bf.clear, %struct.rtx_def* %18, i32 %bf.clear) #6, !dbg !4416
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call113, metadata !4380, metadata !DIExpression()), !dbg !4385
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call113, metadata !4380, metadata !DIExpression()), !dbg !4385
  %19 = load %struct.rtx_def*, %struct.rtx_def** %var, align 8, !dbg !4409
  call void @llvm.dbg.value(metadata %struct.rtx_def* %19, metadata !4379, metadata !DIExpression()), !dbg !4385
  %call117 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %19, %struct.rtx_def* %call113) #6, !dbg !4410
  %inc = add i32 %i.0, 1, !dbg !4411
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4382, metadata !DIExpression()), !dbg !4385
  br label %for.cond, !dbg !4412, !llvm.loop !4413

if.else118:                                       ; preds = %lor.lhs.false94
  %cmp120 = icmp eq i32 %13, 52, !dbg !4417
  br i1 %cmp120, label %for.cond123.preheader, label %if.end145, !dbg !4419

for.cond123.preheader:                            ; preds = %if.else118
  %20 = bitcast %struct.rtx_def** %var to i32**, !dbg !4420
  br label %for.cond123, !dbg !4424

for.cond123:                                      ; preds = %for.cond123.preheader, %for.body134
  %i.1 = phi i32 [ %inc142, %for.body134 ], [ 0, %for.cond123.preheader ], !dbg !4425
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !4382, metadata !DIExpression()), !dbg !4385
  %21 = load %struct.VEC_rtx_heap*, %struct.VEC_rtx_heap** %var_expansions, align 8, !dbg !4426
  %tobool125 = icmp eq %struct.VEC_rtx_heap* %21, null, !dbg !4426
  br i1 %tobool125, label %cond.end130, label %cond.true126, !dbg !4426

cond.true126:                                     ; preds = %for.cond123
  %base128 = getelementptr inbounds %struct.VEC_rtx_heap, %struct.VEC_rtx_heap* %21, i64 0, i32 0, !dbg !4426
  br label %cond.end130, !dbg !4426

cond.end130:                                      ; preds = %for.cond123, %cond.true126
  %cond131 = phi %struct.VEC_rtx_base* [ %base128, %cond.true126 ], [ null, %for.cond123 ], !dbg !4426
  call void @llvm.dbg.value(metadata %struct.rtx_def** %var, metadata !4379, metadata !DIExpression(DW_OP_deref)), !dbg !4385
  %call132 = call fastcc i32 @VEC_rtx_base_iterate(%struct.VEC_rtx_base* %cond131, i32 %i.1, %struct.rtx_def** nonnull %var) #8, !dbg !4426
  %tobool133 = icmp eq i32 %call132, 0, !dbg !4424
  br i1 %tobool133, label %if.end145.loopexit1, label %for.body134, !dbg !4424

for.body134:                                      ; preds = %cond.end130
  %22 = load i32*, i32** %20, align 8, !dbg !4427
  %bf.load135 = load i32, i32* %22, align 8, !dbg !4427
  %bf.lshr136 = lshr i32 %bf.load135, 16, !dbg !4427
  %bf.clear137 = and i32 %bf.lshr136, 255, !dbg !4427
  %idxprom138 = zext i32 %bf.clear137 to i64, !dbg !4427
  %arrayidx139 = getelementptr inbounds [3 x [87 x %struct.rtx_def*]], [3 x [87 x %struct.rtx_def*]]* @const_tiny_rtx, i64 0, i64 1, i64 %idxprom138, !dbg !4427
  %23 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx139, align 8, !dbg !4427
  call void @llvm.dbg.value(metadata %struct.rtx_def* %23, metadata !4380, metadata !DIExpression()), !dbg !4385
  %24 = bitcast i32* %22 to %struct.rtx_def*, !dbg !4428
  call void @llvm.dbg.value(metadata %struct.rtx_def* %24, metadata !4379, metadata !DIExpression()), !dbg !4385
  %call140 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %24, %struct.rtx_def* %23) #6, !dbg !4429
  %inc142 = add i32 %i.1, 1, !dbg !4430
  call void @llvm.dbg.value(metadata i32 %inc142, metadata !4382, metadata !DIExpression()), !dbg !4385
  br label %for.cond123, !dbg !4431, !llvm.loop !4432

if.end145.loopexit.us-lcssa:                      ; preds = %cond.end105
  br label %if.end145.loopexit, !dbg !4415

if.end145.loopexit:                               ; preds = %if.end145.loopexit.us-lcssa.us, %if.end145.loopexit.us-lcssa
  br label %if.end145, !dbg !4415

if.end145.loopexit1:                              ; preds = %cond.end130
  br label %if.end145, !dbg !4415

if.end145:                                        ; preds = %if.end145.loopexit1, %if.end145.loopexit, %if.else118
  %call146 = call %struct.rtx_def* @get_insns() #6, !dbg !4415
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call146, metadata !4378, metadata !DIExpression()), !dbg !4385
  call void @end_sequence() #6, !dbg !4434
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %place, i64 0, i32 7, !dbg !4435
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !4435
  %25 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4435
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %25, i64 0, i32 0, !dbg !4435
  br label %while.cond, !dbg !4436

while.cond:                                       ; preds = %while.body, %if.end145
  %insn.0.in = phi %struct.rtx_def** [ %head_, %if.end145 ], [ %rt_rtx, %while.body ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !4385
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !4381, metadata !DIExpression()), !dbg !4385
  %26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !4437
  %bf.load147 = load i32, i32* %26, align 8, !dbg !4437
  %bf.clear148 = and i32 %bf.load147, 65535, !dbg !4437
  %cmp149 = icmp eq i32 %bf.clear148, 13, !dbg !4437
  br i1 %cmp149, label %land.rhs151, label %land.end155, !dbg !4437

land.rhs151:                                      ; preds = %while.cond
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !4437
  %27 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !4437
  %rt_int = bitcast %union.rtunion_def* %27 to i32*, !dbg !4437
  %28 = load i32, i32* %rt_int, align 8, !dbg !4437
  %cmp153 = icmp eq i32 %28, 10, !dbg !4437
  br label %land.end155

land.end155:                                      ; preds = %land.rhs151, %while.cond
  %29 = phi i1 [ false, %while.cond ], [ %cmp153, %land.rhs151 ], !dbg !4385
  br i1 %29, label %while.end, label %while.body, !dbg !4436

while.body:                                       ; preds = %land.end155
  %30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !4438
  %rt_rtx = bitcast %union.rtunion_def* %30 to %struct.rtx_def**, !dbg !4438
  br label %while.cond, !dbg !4436, !llvm.loop !4439

while.end:                                        ; preds = %land.end155
  %insn.0.lcssa = phi %struct.rtx_def* [ %insn.0, %land.end155 ], !dbg !4385
  %call160 = call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %call146, %struct.rtx_def* %insn.0.lcssa) #6, !dbg !4440
  br label %cleanup, !dbg !4441

cleanup:                                          ; preds = %cond.end88, %while.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !4441
  ret void, !dbg !4441
}

; Function Attrs: nounwind uwtable
define internal fastcc void @combine_var_copies_in_loop_exit(%struct.var_to_expand* %ve, %struct.basic_block_def* %place) unnamed_addr #4 !dbg !4442 {
entry:
  %var = alloca %struct.rtx_def*, align 8
  call void @llvm.dbg.value(metadata %struct.var_to_expand* %ve, metadata !4444, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %place, metadata !4445, metadata !DIExpression()), !dbg !4452
  %reg = getelementptr inbounds %struct.var_to_expand, %struct.var_to_expand* %ve, i64 0, i32 1, !dbg !4453
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8, !dbg !4453
  call void @llvm.dbg.value(metadata %struct.rtx_def* %0, metadata !4446, metadata !DIExpression()), !dbg !4452
  %1 = bitcast %struct.rtx_def** %var to i8*, !dbg !4454
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #7, !dbg !4454
  %var_expansions = getelementptr inbounds %struct.var_to_expand, %struct.var_to_expand* %ve, i64 0, i32 2, !dbg !4455
  %2 = load %struct.VEC_rtx_heap*, %struct.VEC_rtx_heap** %var_expansions, align 8, !dbg !4455
  %tobool = icmp eq %struct.VEC_rtx_heap* %2, null, !dbg !4455
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4455

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_rtx_heap, %struct.VEC_rtx_heap* %2, i64 0, i32 0, !dbg !4455
  br label %cond.end, !dbg !4455

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_rtx_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4455
  %call = tail call fastcc i32 @VEC_rtx_base_length(%struct.VEC_rtx_base* %cond) #8, !dbg !4455
  %cmp = icmp eq i32 %call, 0, !dbg !4457
  br i1 %cmp, label %cleanup, label %if.end, !dbg !4458

if.end:                                           ; preds = %cond.end
  tail call void @start_sequence() #6, !dbg !4459
  %op = getelementptr inbounds %struct.var_to_expand, %struct.var_to_expand* %ve, i64 0, i32 4, !dbg !4460
  %3 = load i32, i32* %op, align 8, !dbg !4460
  %cmp2 = icmp eq i32 %3, 49, !dbg !4462
  br i1 %cmp2, label %if.then5, label %lor.lhs.false, !dbg !4463

lor.lhs.false:                                    ; preds = %if.end
  %cmp4 = icmp eq i32 %3, 50, !dbg !4464
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !4465

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  call void @llvm.dbg.value(metadata i32 0, metadata !4451, metadata !DIExpression()), !dbg !4452
  %4 = bitcast %struct.rtx_def** %reg to i32**, !dbg !4466
  br label %for.cond, !dbg !4470

for.cond:                                         ; preds = %for.body, %if.then5
  %sum.0 = phi %struct.rtx_def* [ %0, %if.then5 ], [ %call17, %for.body ], !dbg !4452
  %i.0 = phi i32 [ 0, %if.then5 ], [ %inc, %for.body ], !dbg !4471
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4451, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata %struct.rtx_def* %sum.0, metadata !4446, metadata !DIExpression()), !dbg !4452
  %5 = load %struct.VEC_rtx_heap*, %struct.VEC_rtx_heap** %var_expansions, align 8, !dbg !4472
  %tobool7 = icmp eq %struct.VEC_rtx_heap* %5, null, !dbg !4472
  br i1 %tobool7, label %cond.end12, label %cond.true8, !dbg !4472

cond.true8:                                       ; preds = %for.cond
  %base10 = getelementptr inbounds %struct.VEC_rtx_heap, %struct.VEC_rtx_heap* %5, i64 0, i32 0, !dbg !4472
  br label %cond.end12, !dbg !4472

cond.end12:                                       ; preds = %for.cond, %cond.true8
  %cond13 = phi %struct.VEC_rtx_base* [ %base10, %cond.true8 ], [ null, %for.cond ], !dbg !4472
  call void @llvm.dbg.value(metadata %struct.rtx_def** %var, metadata !4449, metadata !DIExpression(DW_OP_deref)), !dbg !4452
  %call14 = call fastcc i32 @VEC_rtx_base_iterate(%struct.VEC_rtx_base* %cond13, i32 %i.0, %struct.rtx_def** nonnull %var) #8, !dbg !4472
  %tobool15 = icmp eq i32 %call14, 0, !dbg !4473
  br i1 %tobool15, label %if.end42.loopexit, label %for.body, !dbg !4473

for.body:                                         ; preds = %cond.end12
  %6 = load i32*, i32** %4, align 8, !dbg !4474
  %bf.load = load i32, i32* %6, align 8, !dbg !4474
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !4474
  %bf.clear = and i32 %bf.lshr, 255, !dbg !4474
  %7 = load %struct.rtx_def*, %struct.rtx_def** %var, align 8, !dbg !4475
  call void @llvm.dbg.value(metadata %struct.rtx_def* %7, metadata !4449, metadata !DIExpression()), !dbg !4452
  %call17 = call %struct.rtx_def* @simplify_gen_binary(i32 49, i32 %bf.clear, %struct.rtx_def* %7, %struct.rtx_def* %sum.0) #6, !dbg !4476
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call17, metadata !4446, metadata !DIExpression()), !dbg !4452
  %inc = add i32 %i.0, 1, !dbg !4477
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4451, metadata !DIExpression()), !dbg !4452
  br label %for.cond, !dbg !4478, !llvm.loop !4479

if.else:                                          ; preds = %lor.lhs.false
  %cmp19 = icmp eq i32 %3, 52, !dbg !4481
  br i1 %cmp19, label %for.cond21.preheader, label %if.end42, !dbg !4483

for.cond21.preheader:                             ; preds = %if.else
  %8 = bitcast %struct.rtx_def** %reg to i32**, !dbg !4484
  br label %for.cond21, !dbg !4488

for.cond21:                                       ; preds = %for.cond21.preheader, %for.body32
  %sum.1 = phi %struct.rtx_def* [ %call37, %for.body32 ], [ %0, %for.cond21.preheader ], !dbg !4452
  %i.1 = phi i32 [ %inc39, %for.body32 ], [ 0, %for.cond21.preheader ], !dbg !4489
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !4451, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata %struct.rtx_def* %sum.1, metadata !4446, metadata !DIExpression()), !dbg !4452
  %9 = load %struct.VEC_rtx_heap*, %struct.VEC_rtx_heap** %var_expansions, align 8, !dbg !4490
  %tobool23 = icmp eq %struct.VEC_rtx_heap* %9, null, !dbg !4490
  br i1 %tobool23, label %cond.end28, label %cond.true24, !dbg !4490

cond.true24:                                      ; preds = %for.cond21
  %base26 = getelementptr inbounds %struct.VEC_rtx_heap, %struct.VEC_rtx_heap* %9, i64 0, i32 0, !dbg !4490
  br label %cond.end28, !dbg !4490

cond.end28:                                       ; preds = %for.cond21, %cond.true24
  %cond29 = phi %struct.VEC_rtx_base* [ %base26, %cond.true24 ], [ null, %for.cond21 ], !dbg !4490
  call void @llvm.dbg.value(metadata %struct.rtx_def** %var, metadata !4449, metadata !DIExpression(DW_OP_deref)), !dbg !4452
  %call30 = call fastcc i32 @VEC_rtx_base_iterate(%struct.VEC_rtx_base* %cond29, i32 %i.1, %struct.rtx_def** nonnull %var) #8, !dbg !4490
  %tobool31 = icmp eq i32 %call30, 0, !dbg !4488
  br i1 %tobool31, label %if.end42.loopexit1, label %for.body32, !dbg !4488

for.body32:                                       ; preds = %cond.end28
  %10 = load i32*, i32** %8, align 8, !dbg !4491
  %bf.load34 = load i32, i32* %10, align 8, !dbg !4491
  %bf.lshr35 = lshr i32 %bf.load34, 16, !dbg !4491
  %bf.clear36 = and i32 %bf.lshr35, 255, !dbg !4491
  %11 = load %struct.rtx_def*, %struct.rtx_def** %var, align 8, !dbg !4492
  call void @llvm.dbg.value(metadata %struct.rtx_def* %11, metadata !4449, metadata !DIExpression()), !dbg !4452
  %call37 = call %struct.rtx_def* @simplify_gen_binary(i32 52, i32 %bf.clear36, %struct.rtx_def* %11, %struct.rtx_def* %sum.1) #6, !dbg !4493
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call37, metadata !4446, metadata !DIExpression()), !dbg !4452
  %inc39 = add i32 %i.1, 1, !dbg !4494
  call void @llvm.dbg.value(metadata i32 %inc39, metadata !4451, metadata !DIExpression()), !dbg !4452
  br label %for.cond21, !dbg !4495, !llvm.loop !4496

if.end42.loopexit:                                ; preds = %cond.end12
  %sum.0.lcssa = phi %struct.rtx_def* [ %sum.0, %cond.end12 ], !dbg !4452
  call void @llvm.dbg.value(metadata %struct.rtx_def* %sum.0.lcssa, metadata !4446, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata %struct.rtx_def* %sum.0.lcssa, metadata !4446, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata %struct.rtx_def* %sum.0.lcssa, metadata !4446, metadata !DIExpression()), !dbg !4452
  br label %if.end42, !dbg !4498

if.end42.loopexit1:                               ; preds = %cond.end28
  %sum.1.lcssa = phi %struct.rtx_def* [ %sum.1, %cond.end28 ], !dbg !4452
  call void @llvm.dbg.value(metadata %struct.rtx_def* %sum.1.lcssa, metadata !4446, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata %struct.rtx_def* %sum.1.lcssa, metadata !4446, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata %struct.rtx_def* %sum.1.lcssa, metadata !4446, metadata !DIExpression()), !dbg !4452
  br label %if.end42, !dbg !4498

if.end42:                                         ; preds = %if.end42.loopexit1, %if.end42.loopexit, %if.else
  %sum.3 = phi %struct.rtx_def* [ %0, %if.else ], [ %sum.0.lcssa, %if.end42.loopexit ], [ %sum.1.lcssa, %if.end42.loopexit1 ], !dbg !4499
  call void @llvm.dbg.value(metadata %struct.rtx_def* %sum.3, metadata !4446, metadata !DIExpression()), !dbg !4452
  %12 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8, !dbg !4498
  %call44 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %sum.3, %struct.rtx_def* %12) #6, !dbg !4500
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call44, metadata !4447, metadata !DIExpression()), !dbg !4452
  %13 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8, !dbg !4501
  %cmp46 = icmp eq %struct.rtx_def* %call44, %13, !dbg !4503
  br i1 %cmp46, label %if.end50, label %if.then47, !dbg !4504

if.then47:                                        ; preds = %if.end42
  %call49 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %13, %struct.rtx_def* %call44) #6, !dbg !4505
  br label %if.end50, !dbg !4505

if.end50:                                         ; preds = %if.end42, %if.then47
  %call51 = call %struct.rtx_def* @get_insns() #6, !dbg !4506
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call51, metadata !4448, metadata !DIExpression()), !dbg !4452
  call void @end_sequence() #6, !dbg !4507
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %place, i64 0, i32 7, !dbg !4508
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !4508
  %14 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !4508
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %14, i64 0, i32 0, !dbg !4508
  br label %while.cond, !dbg !4509

while.cond:                                       ; preds = %while.body, %if.end50
  %insn.0.in = phi %struct.rtx_def** [ %head_, %if.end50 ], [ %rt_rtx, %while.body ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !4452
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !4450, metadata !DIExpression()), !dbg !4452
  %15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !4510
  %bf.load52 = load i32, i32* %15, align 8, !dbg !4510
  %bf.clear53 = and i32 %bf.load52, 65535, !dbg !4510
  %cmp54 = icmp eq i32 %bf.clear53, 13, !dbg !4510
  br i1 %cmp54, label %land.rhs, label %land.end, !dbg !4510

land.rhs:                                         ; preds = %while.cond
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !4510
  %16 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !4510
  %rt_int = bitcast %union.rtunion_def* %16 to i32*, !dbg !4510
  %17 = load i32, i32* %rt_int, align 8, !dbg !4510
  %cmp55 = icmp eq i32 %17, 10, !dbg !4510
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %18 = phi i1 [ false, %while.cond ], [ %cmp55, %land.rhs ], !dbg !4452
  br i1 %18, label %while.end, label %while.body, !dbg !4509

while.body:                                       ; preds = %land.end
  %19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !4511
  %rt_rtx = bitcast %union.rtunion_def* %19 to %struct.rtx_def**, !dbg !4511
  br label %while.cond, !dbg !4509, !llvm.loop !4512

while.end:                                        ; preds = %land.end
  %insn.0.lcssa = phi %struct.rtx_def* [ %insn.0, %land.end ], !dbg !4452
  %call59 = call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %call51, %struct.rtx_def* %insn.0.lcssa) #6, !dbg !4513
  br label %cleanup, !dbg !4514

cleanup:                                          ; preds = %cond.end, %while.end
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #7, !dbg !4514
  ret void, !dbg !4514
}

declare dso_local %struct.basic_block_def* @get_bb_copy(%struct.basic_block_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct.rtx_def** @get_ivts_expr(%struct.rtx_def* %expr, %struct.iv_to_split* %ivts) unnamed_addr #4 !dbg !4515 {
entry:
  %expr.addr = alloca %struct.rtx_def*, align 8
  call void @llvm.dbg.value(metadata %struct.rtx_def* %expr, metadata !4519, metadata !DIExpression()), !dbg !4523
  store %struct.rtx_def* %expr, %struct.rtx_def** %expr.addr, align 8
  call void @llvm.dbg.value(metadata %struct.iv_to_split* %ivts, metadata !4520, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata %struct.rtx_def** %expr.addr, metadata !4522, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i32 0, metadata !4521, metadata !DIExpression()), !dbg !4523
  %n_loc = getelementptr inbounds %struct.iv_to_split, %struct.iv_to_split* %ivts, i64 0, i32 4, !dbg !4524
  %0 = load i32, i32* %n_loc, align 8, !dbg !4524
  %wide.trip.count = zext i32 %0 to i64, !dbg !4527
  br label %for.cond, !dbg !4528

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !4529
  %ret.0 = phi %struct.rtx_def** [ %rt_rtx, %for.body ], [ %expr.addr, %entry ], !dbg !4523
  call void @llvm.dbg.value(metadata %struct.rtx_def** %ret.0, metadata !4522, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4521, metadata !DIExpression()), !dbg !4523
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !4527
  br i1 %exitcond, label %for.end, label %for.body, !dbg !4530

for.body:                                         ; preds = %for.cond
  %1 = load %struct.rtx_def*, %struct.rtx_def** %ret.0, align 8, !dbg !4531
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, !dbg !4531
  %fld = bitcast %union.u* %u to [1 x %union.rtunion_def]*, !dbg !4531
  %arrayidx = getelementptr inbounds %struct.iv_to_split, %struct.iv_to_split* %ivts, i64 0, i32 5, i64 %indvars.iv, !dbg !4531
  %2 = load i32, i32* %arrayidx, align 4, !dbg !4531
  %idxprom1 = zext i32 %2 to i64, !dbg !4531
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i64 0, i64 %idxprom1, !dbg !4531
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**, !dbg !4531
  call void @llvm.dbg.value(metadata %struct.rtx_def** %rt_rtx, metadata !4522, metadata !DIExpression()), !dbg !4523
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4532
  br label %for.cond, !dbg !4533, !llvm.loop !4534

for.end:                                          ; preds = %for.cond
  %ret.0.lcssa = phi %struct.rtx_def** [ %ret.0, %for.cond ], !dbg !4523
  call void @llvm.dbg.value(metadata %struct.rtx_def** %ret.0.lcssa, metadata !4522, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata %struct.rtx_def** %ret.0.lcssa, metadata !4522, metadata !DIExpression()), !dbg !4523
  call void @llvm.dbg.value(metadata %struct.rtx_def** %ret.0.lcssa, metadata !4522, metadata !DIExpression()), !dbg !4523
  ret %struct.rtx_def** %ret.0.lcssa, !dbg !4536
}

declare dso_local %struct.rtx_def* @gen_reg_rtx(i32) local_unnamed_addr #1

declare dso_local void @start_sequence() local_unnamed_addr #1

declare dso_local %struct.rtx_def* @force_operand(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @emit_move_insn(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @get_insns() local_unnamed_addr #1

declare dso_local void @end_sequence() local_unnamed_addr #1

declare dso_local %struct.rtx_def* @emit_insn_before(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @simplify_gen_binary(i32, i32, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_int_mode(i64, i32) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @delete_insn(%struct.rtx_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct.rtx_def* @get_expansion(%struct.var_to_expand* %ve) unnamed_addr #4 !dbg !4537 {
entry:
  call void @llvm.dbg.value(metadata %struct.var_to_expand* %ve, metadata !4541, metadata !DIExpression()), !dbg !4543
  %reuse_expansion = getelementptr inbounds %struct.var_to_expand, %struct.var_to_expand* %ve, i64 0, i32 6, !dbg !4544
  %0 = load i32, i32* %reuse_expansion, align 8, !dbg !4544
  %cmp = icmp eq i32 %0, 0, !dbg !4546
  br i1 %cmp, label %if.then, label %if.else, !dbg !4547

if.then:                                          ; preds = %entry
  %reg1 = getelementptr inbounds %struct.var_to_expand, %struct.var_to_expand* %ve, i64 0, i32 1, !dbg !4548
  %1 = load %struct.rtx_def*, %struct.rtx_def** %reg1, align 8, !dbg !4548
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !4542, metadata !DIExpression()), !dbg !4543
  br label %if.end, !dbg !4549

if.else:                                          ; preds = %entry
  %var_expansions = getelementptr inbounds %struct.var_to_expand, %struct.var_to_expand* %ve, i64 0, i32 2, !dbg !4550
  %2 = load %struct.VEC_rtx_heap*, %struct.VEC_rtx_heap** %var_expansions, align 8, !dbg !4550
  %tobool = icmp eq %struct.VEC_rtx_heap* %2, null, !dbg !4550
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4550

cond.true:                                        ; preds = %if.else
  %base = getelementptr inbounds %struct.VEC_rtx_heap, %struct.VEC_rtx_heap* %2, i64 0, i32 0, !dbg !4550
  br label %cond.end, !dbg !4550

cond.end:                                         ; preds = %if.else, %cond.true
  %cond = phi %struct.VEC_rtx_base* [ %base, %cond.true ], [ null, %if.else ], !dbg !4550
  %sub = add nsw i32 %0, -1, !dbg !4550
  %call = tail call fastcc %struct.rtx_def* @VEC_rtx_base_index(%struct.VEC_rtx_base* %cond, i32 %sub) #8, !dbg !4550
  call void @llvm.dbg.value(metadata %struct.rtx_def* %call, metadata !4542, metadata !DIExpression()), !dbg !4543
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then
  %reg.0 = phi %struct.rtx_def* [ %1, %if.then ], [ %call, %cond.end ], !dbg !4551
  call void @llvm.dbg.value(metadata %struct.rtx_def* %reg.0, metadata !4542, metadata !DIExpression()), !dbg !4543
  %var_expansions4 = getelementptr inbounds %struct.var_to_expand, %struct.var_to_expand* %ve, i64 0, i32 2, !dbg !4552
  %3 = load %struct.VEC_rtx_heap*, %struct.VEC_rtx_heap** %var_expansions4, align 8, !dbg !4552
  %tobool5 = icmp eq %struct.VEC_rtx_heap* %3, null, !dbg !4552
  br i1 %tobool5, label %cond.end10, label %cond.true6, !dbg !4552

cond.true6:                                       ; preds = %if.end
  %base8 = getelementptr inbounds %struct.VEC_rtx_heap, %struct.VEC_rtx_heap* %3, i64 0, i32 0, !dbg !4552
  br label %cond.end10, !dbg !4552

cond.end10:                                       ; preds = %if.end, %cond.true6
  %cond11 = phi %struct.VEC_rtx_base* [ %base8, %cond.true6 ], [ null, %if.end ], !dbg !4552
  %call12 = tail call fastcc i32 @VEC_rtx_base_length(%struct.VEC_rtx_base* %cond11) #8, !dbg !4552
  %4 = load i32, i32* %reuse_expansion, align 8, !dbg !4554
  %cmp14 = icmp eq i32 %call12, %4, !dbg !4555
  br i1 %cmp14, label %if.then15, label %if.else17, !dbg !4556

if.then15:                                        ; preds = %cond.end10
  br label %if.end19, !dbg !4557

if.else17:                                        ; preds = %cond.end10
  %inc = add nsw i32 %4, 1, !dbg !4558
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.then15
  %storemerge = phi i32 [ %inc, %if.else17 ], [ 0, %if.then15 ], !dbg !4559
  store i32 %storemerge, i32* %reuse_expansion, align 8, !dbg !4559
  ret %struct.rtx_def* %reg.0, !dbg !4560
}

declare dso_local i32 @apply_change_group() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.rtx_def** @VEC_rtx_heap_safe_push(%struct.VEC_rtx_heap** %vec_, %struct.rtx_def* %obj_) unnamed_addr #0 !dbg !4561 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_rtx_heap** %vec_, metadata !4566, metadata !DIExpression()), !dbg !4568
  call void @llvm.dbg.value(metadata %struct.rtx_def* %obj_, metadata !4567, metadata !DIExpression()), !dbg !4568
  %call = tail call fastcc i32 @VEC_rtx_heap_reserve(%struct.VEC_rtx_heap** %vec_, i32 1) #8, !dbg !4569
  %0 = load %struct.VEC_rtx_heap*, %struct.VEC_rtx_heap** %vec_, align 8, !dbg !4569
  %tobool = icmp eq %struct.VEC_rtx_heap* %0, null, !dbg !4569
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4569

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_rtx_heap, %struct.VEC_rtx_heap* %0, i64 0, i32 0, !dbg !4569
  br label %cond.end, !dbg !4569

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_rtx_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4569
  %call1 = tail call fastcc %struct.rtx_def** @VEC_rtx_base_quick_push(%struct.VEC_rtx_base* %cond, %struct.rtx_def* %obj_) #8, !dbg !4569
  ret %struct.rtx_def** %call1, !dbg !4569
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.rtx_def* @VEC_rtx_base_index(%struct.VEC_rtx_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4570 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_rtx_base* %vec_, metadata !4576, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4577, metadata !DIExpression()), !dbg !4578
  br label %land.end, !dbg !4579

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4579
  %arrayidx = getelementptr inbounds %struct.VEC_rtx_base, %struct.VEC_rtx_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4579
  %0 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8, !dbg !4579
  ret %struct.rtx_def* %0, !dbg !4579
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_rtx_base_length(%struct.VEC_rtx_base* %vec_) unnamed_addr #0 !dbg !4580 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_rtx_base* %vec_, metadata !4584, metadata !DIExpression()), !dbg !4585
  %tobool = icmp eq %struct.VEC_rtx_base* %vec_, null, !dbg !4586
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4586

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_rtx_base, %struct.VEC_rtx_base* %vec_, i64 0, i32 0, !dbg !4586
  %0 = load i32, i32* %num, align 8, !dbg !4586
  br label %cond.end, !dbg !4586

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !4586
  ret i32 %cond, !dbg !4586
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_rtx_heap_reserve(%struct.VEC_rtx_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4587 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_rtx_heap** %vec_, metadata !4591, metadata !DIExpression()), !dbg !4594
  call void @llvm.dbg.value(metadata i32 1, metadata !4592, metadata !DIExpression()), !dbg !4594
  %0 = load %struct.VEC_rtx_heap*, %struct.VEC_rtx_heap** %vec_, align 8, !dbg !4595
  %tobool = icmp eq %struct.VEC_rtx_heap* %0, null, !dbg !4595
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4595

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_rtx_heap, %struct.VEC_rtx_heap* %0, i64 0, i32 0, !dbg !4595
  br label %cond.end, !dbg !4595

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_rtx_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4595
  %call = tail call fastcc i32 @VEC_rtx_base_space(%struct.VEC_rtx_base* %cond, i32 1) #8, !dbg !4595
  %tobool1 = icmp eq i32 %call, 0, !dbg !4595
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !4595
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !4593, metadata !DIExpression()), !dbg !4594
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4595

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_rtx_heap** %vec_ to i8**, !dbg !4596
  %2 = load i8*, i8** %1, align 8, !dbg !4596
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %2, i32 1) #6, !dbg !4596
  store i8* %call3, i8** %1, align 8, !dbg !4596
  br label %if.end, !dbg !4596

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !4595
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.rtx_def** @VEC_rtx_base_quick_push(%struct.VEC_rtx_base* %vec_, %struct.rtx_def* %obj_) unnamed_addr #0 !dbg !4598 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_rtx_base* %vec_, metadata !4603, metadata !DIExpression()), !dbg !4606
  call void @llvm.dbg.value(metadata %struct.rtx_def* %obj_, metadata !4604, metadata !DIExpression()), !dbg !4606
  %num1 = getelementptr inbounds %struct.VEC_rtx_base, %struct.VEC_rtx_base* %vec_, i64 0, i32 0, !dbg !4607
  %0 = load i32, i32* %num1, align 8, !dbg !4607
  %inc = add i32 %0, 1, !dbg !4607
  store i32 %inc, i32* %num1, align 8, !dbg !4607
  %idxprom = zext i32 %0 to i64, !dbg !4607
  %arrayidx = getelementptr inbounds %struct.VEC_rtx_base, %struct.VEC_rtx_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4607
  call void @llvm.dbg.value(metadata %struct.rtx_def** %arrayidx, metadata !4605, metadata !DIExpression()), !dbg !4606
  store %struct.rtx_def* %obj_, %struct.rtx_def** %arrayidx, align 8, !dbg !4607
  ret %struct.rtx_def** %arrayidx, !dbg !4607
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_rtx_base_space(%struct.VEC_rtx_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4608 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_rtx_base* %vec_, metadata !4612, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.value(metadata i32 1, metadata !4613, metadata !DIExpression()), !dbg !4614
  %tobool = icmp eq %struct.VEC_rtx_base* %vec_, null, !dbg !4615
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !4615

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_rtx_base, %struct.VEC_rtx_base* %vec_, i64 0, i32 1, !dbg !4615
  %0 = load i32, i32* %alloc, align 4, !dbg !4615
  %num = getelementptr inbounds %struct.VEC_rtx_base, %struct.VEC_rtx_base* %vec_, i64 0, i32 0, !dbg !4615
  %1 = load i32, i32* %num, align 8, !dbg !4615
  %cmp1 = icmp ne i32 %0, %1, !dbg !4615
  %phitmp = zext i1 %cmp1 to i32, !dbg !4615
  br label %cond.end, !dbg !4615

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4615

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !4615
}

declare dso_local i8* @vec_heap_p_reserve(i8*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_rtx_base_iterate(%struct.VEC_rtx_base* %vec_, i32 %ix_, %struct.rtx_def** %ptr) unnamed_addr #0 !dbg !4616 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_rtx_base* %vec_, metadata !4620, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4621, metadata !DIExpression()), !dbg !4623
  call void @llvm.dbg.value(metadata %struct.rtx_def** %ptr, metadata !4622, metadata !DIExpression()), !dbg !4623
  %tobool = icmp eq %struct.VEC_rtx_base* %vec_, null, !dbg !4624
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !4624

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_rtx_base, %struct.VEC_rtx_base* %vec_, i64 0, i32 0, !dbg !4624
  %0 = load i32, i32* %num, align 8, !dbg !4624
  %cmp = icmp ugt i32 %0, %ix_, !dbg !4624
  br i1 %cmp, label %if.then, label %if.else, !dbg !4626

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !4627
  %arrayidx = getelementptr inbounds %struct.VEC_rtx_base, %struct.VEC_rtx_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4627
  %1 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8, !dbg !4627
  br label %return, !dbg !4627

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !4629

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.rtx_def* [ null, %if.else ], [ %1, %if.then ], !dbg !4631
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !4631
  store %struct.rtx_def* %storemerge, %struct.rtx_def** %ptr, align 8, !dbg !4631
  ret i32 %retval.0, !dbg !4626
}

declare dso_local %struct.rtx_def* @simplify_gen_unary(i32, i32, %struct.rtx_def*, i32) local_unnamed_addr #1

declare dso_local void @htab_delete(%struct.htab*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_rtx_heap_free(%struct.VEC_rtx_heap** %vec_) unnamed_addr #0 !dbg !4632 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_rtx_heap** %vec_, metadata !4636, metadata !DIExpression()), !dbg !4637
  %0 = load %struct.VEC_rtx_heap*, %struct.VEC_rtx_heap** %vec_, align 8, !dbg !4638
  %tobool = icmp eq %struct.VEC_rtx_heap* %0, null, !dbg !4638
  br i1 %tobool, label %if.end, label %if.then, !dbg !4640

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_rtx_heap* %0 to i8*, !dbg !4640
  tail call void @free(i8* nonnull %1) #6, !dbg !4638
  br label %if.end, !dbg !4638

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_rtx_heap* null, %struct.VEC_rtx_heap** %vec_, align 8, !dbg !4640
  ret void, !dbg !4640
}

declare dso_local i32 @average_num_loop_insns(%struct.loop*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @decide_unroll_constant_iterations(%struct.loop* %loop, i32 %flags) unnamed_addr #4 !dbg !4641 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4643, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.value(metadata i32 %flags, metadata !4644, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.value(metadata i32 0, metadata !4648, metadata !DIExpression()), !dbg !4656
  %and = and i32 %flags, 2, !dbg !4657
  %tobool = icmp eq i32 %and, 0, !dbg !4657
  br i1 %tobool, label %cleanup.cont, label %if.end, !dbg !4659

if.end:                                           ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4660
  %tobool1 = icmp eq %struct._IO_FILE* %0, null, !dbg !4660
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !4662

if.then2:                                         ; preds = %if.end
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.20, i64 0, i64 0)) #6, !dbg !4663
  br label %if.end3, !dbg !4663

if.end3:                                          ; preds = %if.end, %if.then2
  %1 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !4664
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %1, i64 26, i32 1, !dbg !4664
  %2 = load i32, i32* %value, align 8, !dbg !4664
  %ninsns = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 1, !dbg !4665
  %3 = load i32, i32* %ninsns, align 4, !dbg !4665
  %div = udiv i32 %2, %3, !dbg !4666
  call void @llvm.dbg.value(metadata i32 %div, metadata !4645, metadata !DIExpression()), !dbg !4656
  %value5 = getelementptr inbounds %struct.param_info, %struct.param_info* %1, i64 27, i32 1, !dbg !4667
  %4 = load i32, i32* %value5, align 8, !dbg !4667
  %av_ninsns = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 5, !dbg !4668
  %5 = load i32, i32* %av_ninsns, align 8, !dbg !4668
  %div6 = udiv i32 %4, %5, !dbg !4669
  call void @llvm.dbg.value(metadata i32 %div6, metadata !4646, metadata !DIExpression()), !dbg !4656
  %cmp = icmp ugt i32 %div, %div6, !dbg !4670
  %spec.select = select i1 %cmp, i32 %div6, i32 %div, !dbg !4672
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !4645, metadata !DIExpression()), !dbg !4656
  %value10 = getelementptr inbounds %struct.param_info, %struct.param_info* %1, i64 28, i32 1, !dbg !4673
  %6 = load i32, i32* %value10, align 8, !dbg !4673
  %cmp11 = icmp ugt i32 %spec.select, %6, !dbg !4675
  br i1 %cmp11, label %if.then12, label %if.end15, !dbg !4676

if.then12:                                        ; preds = %if.end3
  call void @llvm.dbg.value(metadata i32 %6, metadata !4645, metadata !DIExpression()), !dbg !4656
  br label %if.end15, !dbg !4677

if.end15:                                         ; preds = %if.then12, %if.end3
  %nunroll.1 = phi i32 [ %6, %if.then12 ], [ %spec.select, %if.end3 ], !dbg !4656
  call void @llvm.dbg.value(metadata i32 %nunroll.1, metadata !4645, metadata !DIExpression()), !dbg !4656
  %cmp16 = icmp ult i32 %nunroll.1, 2, !dbg !4678
  br i1 %cmp16, label %if.then17, label %if.end22, !dbg !4680

if.then17:                                        ; preds = %if.end15
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4681
  %tobool18 = icmp eq %struct._IO_FILE* %7, null, !dbg !4681
  br i1 %tobool18, label %cleanup.cont, label %if.then19, !dbg !4684

if.then19:                                        ; preds = %if.then17
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %7, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !4685
  br label %cleanup.cont, !dbg !4685

if.end22:                                         ; preds = %if.end15
  %call23 = tail call %struct.niter_desc* @get_simple_loop_desc(%struct.loop* %loop) #6, !dbg !4686
  call void @llvm.dbg.value(metadata %struct.niter_desc* %call23, metadata !4651, metadata !DIExpression()), !dbg !4656
  %simple_p = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call23, i64 0, i32 2, !dbg !4687
  %8 = load i8, i8* %simple_p, align 8, !dbg !4687
  %tobool24 = icmp eq i8 %8, 0, !dbg !4689
  br i1 %tobool24, label %if.then28, label %lor.lhs.false, !dbg !4690

lor.lhs.false:                                    ; preds = %if.end22
  %const_iter = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call23, i64 0, i32 3, !dbg !4691
  %9 = load i8, i8* %const_iter, align 1, !dbg !4691
  %tobool25 = icmp eq i8 %9, 0, !dbg !4692
  br i1 %tobool25, label %if.then28, label %lor.lhs.false26, !dbg !4693

lor.lhs.false26:                                  ; preds = %lor.lhs.false
  %assumptions = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call23, i64 0, i32 6, !dbg !4694
  %10 = load %struct.rtx_def*, %struct.rtx_def** %assumptions, align 8, !dbg !4694
  %tobool27 = icmp eq %struct.rtx_def* %10, null, !dbg !4695
  br i1 %tobool27, label %if.end33, label %if.then28, !dbg !4696

if.then28:                                        ; preds = %lor.lhs.false26, %lor.lhs.false, %if.end22
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4697
  %tobool29 = icmp eq %struct._IO_FILE* %11, null, !dbg !4697
  br i1 %tobool29, label %cleanup.cont, label %if.then30, !dbg !4700

if.then30:                                        ; preds = %if.then28
  %call31 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %11, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !4701
  br label %cleanup.cont, !dbg !4701

if.end33:                                         ; preds = %lor.lhs.false26
  %niter = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call23, i64 0, i32 4, !dbg !4702
  %12 = load i64, i64* %niter, align 8, !dbg !4702
  %mul = shl i32 %nunroll.1, 1, !dbg !4704
  %conv = zext i32 %mul to i64, !dbg !4705
  %cmp34 = icmp ult i64 %12, %conv, !dbg !4706
  br i1 %cmp34, label %if.then36, label %if.end41, !dbg !4707

if.then36:                                        ; preds = %if.end33
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4708
  %tobool37 = icmp eq %struct._IO_FILE* %13, null, !dbg !4708
  br i1 %tobool37, label %cleanup.cont, label %if.then38, !dbg !4711

if.then38:                                        ; preds = %if.then36
  %call39 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !4712
  br label %cleanup.cont, !dbg !4712

if.end41:                                         ; preds = %if.end33
  %add = add i32 %mul, 10, !dbg !4713
  call void @llvm.dbg.value(metadata i32 %add, metadata !4647, metadata !DIExpression()), !dbg !4656
  %add44 = add i32 %mul, 2, !dbg !4714
  call void @llvm.dbg.value(metadata i32 %add44, metadata !4650, metadata !DIExpression()), !dbg !4656
  %sub = or i32 %mul, 1, !dbg !4715
  %conv45 = zext i32 %sub to i64, !dbg !4717
  %cmp47 = icmp ugt i64 %12, %conv45, !dbg !4718
  br i1 %cmp47, label %if.end53, label %if.then49, !dbg !4719

if.then49:                                        ; preds = %if.end41
  %14 = trunc i64 %12 to i32, !dbg !4720
  %conv52 = add i32 %14, -2, !dbg !4720
  call void @llvm.dbg.value(metadata i32 %conv52, metadata !4650, metadata !DIExpression()), !dbg !4656
  br label %if.end53, !dbg !4721

if.end53:                                         ; preds = %if.end41, %if.then49
  %i.0 = phi i32 [ %conv52, %if.then49 ], [ %add44, %if.end41 ], !dbg !4656
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4650, metadata !DIExpression()), !dbg !4656
  %sub54 = add i32 %nunroll.1, -1, !dbg !4722
  %noloop_assumptions = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call23, i64 0, i32 7, !dbg !4723
  br label %for.cond, !dbg !4726

for.cond:                                         ; preds = %if.end77, %if.end53
  %15 = phi i32 [ 0, %if.end53 ], [ %spec.select1, %if.end77 ], !dbg !4656
  %best_copies.0 = phi i32 [ %add, %if.end53 ], [ %spec.select2, %if.end77 ], !dbg !4656
  %i.1 = phi i32 [ %i.0, %if.end53 ], [ %dec, %if.end77 ], !dbg !4656
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !4650, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.value(metadata i32 %best_copies.0, metadata !4647, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.value(metadata i32 %15, metadata !4648, metadata !DIExpression()), !dbg !4656
  %cmp55 = icmp ult i32 %i.1, %sub54, !dbg !4727
  br i1 %cmp55, label %for.end, label %for.body, !dbg !4728

for.body:                                         ; preds = %for.cond
  %16 = load i64, i64* %niter, align 8, !dbg !4729
  %add58 = add i32 %i.1, 1, !dbg !4730
  %conv59 = zext i32 %add58 to i64, !dbg !4731
  %rem = urem i64 %16, %conv59, !dbg !4732
  %conv60 = trunc i64 %rem to i32, !dbg !4733
  call void @llvm.dbg.value(metadata i32 %conv60, metadata !4652, metadata !DIExpression()), !dbg !4734
  %call61 = tail call fastcc zeroext i8 @loop_exit_at_end_p(%struct.loop* %loop) #8, !dbg !4735
  %tobool62 = icmp eq i8 %call61, 0, !dbg !4735
  br i1 %tobool62, label %if.then63, label %if.else, !dbg !4736

if.then63:                                        ; preds = %for.body
  %add64 = add i32 %i.1, %conv60, !dbg !4737
  %add65 = add i32 %add64, 1, !dbg !4738
  call void @llvm.dbg.value(metadata i32 %add65, metadata !4649, metadata !DIExpression()), !dbg !4656
  br label %if.end77, !dbg !4739

if.else:                                          ; preds = %for.body
  %cmp66 = icmp eq i32 %i.1, %conv60, !dbg !4740
  br i1 %cmp66, label %lor.lhs.false68, label %if.then71, !dbg !4741

lor.lhs.false68:                                  ; preds = %if.else
  %17 = load %struct.rtx_def*, %struct.rtx_def** %noloop_assumptions, align 8, !dbg !4742
  %cmp69 = icmp eq %struct.rtx_def* %17, null, !dbg !4743
  br i1 %cmp69, label %if.else74, label %if.then71, !dbg !4744

if.then71:                                        ; preds = %lor.lhs.false68, %if.else
  %add72 = add i32 %i.1, %conv60, !dbg !4745
  %add73 = add i32 %add72, 2, !dbg !4746
  call void @llvm.dbg.value(metadata i32 %add73, metadata !4649, metadata !DIExpression()), !dbg !4656
  br label %if.end77, !dbg !4747

if.else74:                                        ; preds = %lor.lhs.false68
  call void @llvm.dbg.value(metadata i32 %add58, metadata !4649, metadata !DIExpression()), !dbg !4656
  br label %if.end77

if.end77:                                         ; preds = %if.then71, %if.else74, %if.then63
  %n_copies.1 = phi i32 [ %add65, %if.then63 ], [ %add73, %if.then71 ], [ %add58, %if.else74 ], !dbg !4748
  call void @llvm.dbg.value(metadata i32 %n_copies.1, metadata !4649, metadata !DIExpression()), !dbg !4656
  %cmp78 = icmp ult i32 %n_copies.1, %best_copies.0, !dbg !4749
  %spec.select1 = select i1 %cmp78, i32 %i.1, i32 %15, !dbg !4751
  %spec.select2 = select i1 %cmp78, i32 %n_copies.1, i32 %best_copies.0, !dbg !4751
  call void @llvm.dbg.value(metadata i32 %spec.select2, metadata !4647, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.value(metadata i32 %spec.select1, metadata !4648, metadata !DIExpression()), !dbg !4656
  %dec = add i32 %i.1, -1, !dbg !4752
  call void @llvm.dbg.value(metadata i32 %dec, metadata !4650, metadata !DIExpression()), !dbg !4656
  br label %for.cond, !dbg !4753, !llvm.loop !4754

for.end:                                          ; preds = %for.cond
  %.lcssa = phi i32 [ %15, %for.cond ], !dbg !4656
  %best_copies.0.lcssa = phi i32 [ %best_copies.0, %for.cond ], !dbg !4656
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !4648, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.value(metadata i32 %best_copies.0.lcssa, metadata !4647, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !4648, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.value(metadata i32 %best_copies.0.lcssa, metadata !4647, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !4648, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.value(metadata i32 %best_copies.0.lcssa, metadata !4647, metadata !DIExpression()), !dbg !4656
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4756
  %tobool82 = icmp eq %struct._IO_FILE* %18, null, !dbg !4756
  br i1 %tobool82, label %if.end86, label %if.then83, !dbg !4758

if.then83:                                        ; preds = %for.end
  %add84 = add i32 %.lcssa, 1, !dbg !4759
  %call85 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %18, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0), i32 %add84, i32 %best_copies.0.lcssa, i32 %nunroll.1) #6, !dbg !4760
  %.pre = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4761
  br label %if.end86, !dbg !4760

if.end86:                                         ; preds = %for.end, %if.then83
  %19 = phi %struct._IO_FILE* [ null, %for.end ], [ %.pre, %if.then83 ], !dbg !4761
  %decision = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 4, i32 0, !dbg !4763
  store i32 3, i32* %decision, align 8, !dbg !4764
  %times = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 4, i32 1, !dbg !4765
  store i32 %.lcssa, i32* %times, align 4, !dbg !4766
  %tobool88 = icmp eq %struct._IO_FILE* %19, null, !dbg !4761
  br i1 %tobool88, label %cleanup.cont, label %if.then89, !dbg !4767

if.then89:                                        ; preds = %if.end86
  %call92 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %19, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.23, i64 0, i64 0), i32 %.lcssa) #6, !dbg !4768
  br label %cleanup.cont, !dbg !4768

cleanup.cont:                                     ; preds = %if.then17, %if.then36, %if.end86, %if.then28, %entry, %if.then19, %if.then30, %if.then38, %if.then89
  ret void, !dbg !4769
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decide_unroll_runtime_iterations(%struct.loop* %loop, i32 %flags) unnamed_addr #4 !dbg !4770 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4772, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.value(metadata i32 %flags, metadata !4773, metadata !DIExpression()), !dbg !4778
  %and = and i32 %flags, 2, !dbg !4779
  %tobool = icmp eq i32 %and, 0, !dbg !4779
  br i1 %tobool, label %cleanup.cont, label %if.end, !dbg !4781

if.end:                                           ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4782
  %tobool1 = icmp eq %struct._IO_FILE* %0, null, !dbg !4782
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !4784

if.then2:                                         ; preds = %if.end
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.24, i64 0, i64 0)) #6, !dbg !4785
  br label %if.end3, !dbg !4785

if.end3:                                          ; preds = %if.end, %if.then2
  %1 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !4786
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %1, i64 26, i32 1, !dbg !4786
  %2 = load i32, i32* %value, align 8, !dbg !4786
  %ninsns = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 1, !dbg !4787
  %3 = load i32, i32* %ninsns, align 4, !dbg !4787
  %div = udiv i32 %2, %3, !dbg !4788
  call void @llvm.dbg.value(metadata i32 %div, metadata !4774, metadata !DIExpression()), !dbg !4778
  %value5 = getelementptr inbounds %struct.param_info, %struct.param_info* %1, i64 27, i32 1, !dbg !4789
  %4 = load i32, i32* %value5, align 8, !dbg !4789
  %av_ninsns = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 5, !dbg !4790
  %5 = load i32, i32* %av_ninsns, align 8, !dbg !4790
  %div6 = udiv i32 %4, %5, !dbg !4791
  call void @llvm.dbg.value(metadata i32 %div6, metadata !4775, metadata !DIExpression()), !dbg !4778
  %cmp = icmp ugt i32 %div, %div6, !dbg !4792
  %spec.select = select i1 %cmp, i32 %div6, i32 %div, !dbg !4794
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !4774, metadata !DIExpression()), !dbg !4778
  %value10 = getelementptr inbounds %struct.param_info, %struct.param_info* %1, i64 28, i32 1, !dbg !4795
  %6 = load i32, i32* %value10, align 8, !dbg !4795
  %cmp11 = icmp ugt i32 %spec.select, %6, !dbg !4797
  br i1 %cmp11, label %if.then12, label %if.end15, !dbg !4798

if.then12:                                        ; preds = %if.end3
  call void @llvm.dbg.value(metadata i32 %6, metadata !4774, metadata !DIExpression()), !dbg !4778
  br label %if.end15, !dbg !4799

if.end15:                                         ; preds = %if.then12, %if.end3
  %nunroll.1 = phi i32 [ %6, %if.then12 ], [ %spec.select, %if.end3 ], !dbg !4778
  call void @llvm.dbg.value(metadata i32 %nunroll.1, metadata !4774, metadata !DIExpression()), !dbg !4778
  %cmp16 = icmp ult i32 %nunroll.1, 2, !dbg !4800
  br i1 %cmp16, label %if.then17, label %if.end22, !dbg !4802

if.then17:                                        ; preds = %if.end15
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4803
  %tobool18 = icmp eq %struct._IO_FILE* %7, null, !dbg !4803
  br i1 %tobool18, label %cleanup.cont, label %if.then19, !dbg !4806

if.then19:                                        ; preds = %if.then17
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %7, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !4807
  br label %cleanup.cont, !dbg !4807

if.end22:                                         ; preds = %if.end15
  %call23 = tail call %struct.niter_desc* @get_simple_loop_desc(%struct.loop* %loop) #6, !dbg !4808
  call void @llvm.dbg.value(metadata %struct.niter_desc* %call23, metadata !4777, metadata !DIExpression()), !dbg !4778
  %simple_p = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call23, i64 0, i32 2, !dbg !4809
  %8 = load i8, i8* %simple_p, align 8, !dbg !4809
  %tobool24 = icmp eq i8 %8, 0, !dbg !4811
  br i1 %tobool24, label %if.then26, label %lor.lhs.false, !dbg !4812

lor.lhs.false:                                    ; preds = %if.end22
  %assumptions = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call23, i64 0, i32 6, !dbg !4813
  %9 = load %struct.rtx_def*, %struct.rtx_def** %assumptions, align 8, !dbg !4813
  %tobool25 = icmp eq %struct.rtx_def* %9, null, !dbg !4814
  br i1 %tobool25, label %if.end31, label %if.then26, !dbg !4815

if.then26:                                        ; preds = %lor.lhs.false, %if.end22
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4816
  %tobool27 = icmp eq %struct._IO_FILE* %10, null, !dbg !4816
  br i1 %tobool27, label %cleanup.cont, label %if.then28, !dbg !4819

if.then28:                                        ; preds = %if.then26
  %call29 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %10, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.25, i64 0, i64 0)) #6, !dbg !4820
  br label %cleanup.cont, !dbg !4820

if.end31:                                         ; preds = %lor.lhs.false
  %const_iter = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call23, i64 0, i32 3, !dbg !4821
  %11 = load i8, i8* %const_iter, align 1, !dbg !4821
  %tobool32 = icmp eq i8 %11, 0, !dbg !4823
  br i1 %tobool32, label %if.end38, label %if.then33, !dbg !4824

if.then33:                                        ; preds = %if.end31
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4825
  %tobool34 = icmp eq %struct._IO_FILE* %12, null, !dbg !4825
  br i1 %tobool34, label %cleanup.cont, label %if.then35, !dbg !4828

if.then35:                                        ; preds = %if.then33
  %call36 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i64 0, i64 0)) #6, !dbg !4829
  br label %cleanup.cont, !dbg !4829

if.end38:                                         ; preds = %if.end31
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !4830
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !4830
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i64 0, i32 8, !dbg !4832
  %14 = load i64, i64* %count, align 8, !dbg !4832
  %tobool39 = icmp eq i64 %14, 0, !dbg !4833
  br i1 %tobool39, label %if.end47, label %land.lhs.true, !dbg !4834

land.lhs.true:                                    ; preds = %if.end38
  %call40 = tail call i32 @expected_loop_iterations(%struct.loop* %loop) #6, !dbg !4835
  %mul = shl i32 %nunroll.1, 1, !dbg !4836
  %cmp41 = icmp ult i32 %call40, %mul, !dbg !4837
  br i1 %cmp41, label %if.then42, label %if.end47, !dbg !4838

if.then42:                                        ; preds = %land.lhs.true
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4839
  %tobool43 = icmp eq %struct._IO_FILE* %15, null, !dbg !4839
  br i1 %tobool43, label %cleanup.cont, label %if.then44, !dbg !4842

if.then44:                                        ; preds = %if.then42
  %call45 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !4843
  br label %cleanup.cont, !dbg !4843

if.end47:                                         ; preds = %if.end38, %land.lhs.true
  call void @llvm.dbg.value(metadata i32 1, metadata !4776, metadata !DIExpression()), !dbg !4778
  br label %for.cond, !dbg !4844

for.cond:                                         ; preds = %for.inc, %if.end47
  %i.0 = phi i32 [ 1, %if.end47 ], [ %mul48, %for.inc ], !dbg !4846
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4776, metadata !DIExpression()), !dbg !4778
  %mul48 = shl i32 %i.0, 1, !dbg !4847
  %cmp49 = icmp ugt i32 %mul48, %nunroll.1, !dbg !4849
  br i1 %cmp49, label %for.end, label %for.inc, !dbg !4850

for.inc:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 %mul48, metadata !4776, metadata !DIExpression()), !dbg !4778
  br label %for.cond, !dbg !4851, !llvm.loop !4852

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !4846
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa, metadata !4776, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa, metadata !4776, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa, metadata !4776, metadata !DIExpression()), !dbg !4778
  %decision = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 4, i32 0, !dbg !4854
  store i32 4, i32* %decision, align 8, !dbg !4855
  %sub = add i32 %i.0.lcssa, -1, !dbg !4856
  %times = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 4, i32 1, !dbg !4857
  store i32 %sub, i32* %times, align 4, !dbg !4858
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4859
  %tobool52 = icmp eq %struct._IO_FILE* %16, null, !dbg !4859
  br i1 %tobool52, label %cleanup.cont, label %if.then53, !dbg !4861

if.then53:                                        ; preds = %for.end
  %call56 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %16, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.27, i64 0, i64 0), i32 %sub) #6, !dbg !4862
  br label %cleanup.cont, !dbg !4862

cleanup.cont:                                     ; preds = %if.then17, %if.then33, %if.then42, %for.end, %if.then26, %entry, %if.then19, %if.then28, %if.then35, %if.then44, %if.then53
  ret void, !dbg !4863
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decide_unroll_stupid(%struct.loop* %loop, i32 %flags) unnamed_addr #4 !dbg !4864 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4866, metadata !DIExpression()), !dbg !4872
  call void @llvm.dbg.value(metadata i32 %flags, metadata !4867, metadata !DIExpression()), !dbg !4872
  %and = and i32 %flags, 4, !dbg !4873
  %tobool = icmp eq i32 %and, 0, !dbg !4873
  br i1 %tobool, label %cleanup.cont, label %if.end, !dbg !4875

if.end:                                           ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4876
  %tobool1 = icmp eq %struct._IO_FILE* %0, null, !dbg !4876
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !4878

if.then2:                                         ; preds = %if.end
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i64 0, i64 0)) #6, !dbg !4879
  br label %if.end3, !dbg !4879

if.end3:                                          ; preds = %if.end, %if.then2
  %1 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !4880
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %1, i64 26, i32 1, !dbg !4880
  %2 = load i32, i32* %value, align 8, !dbg !4880
  %ninsns = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 1, !dbg !4881
  %3 = load i32, i32* %ninsns, align 4, !dbg !4881
  %div = udiv i32 %2, %3, !dbg !4882
  call void @llvm.dbg.value(metadata i32 %div, metadata !4868, metadata !DIExpression()), !dbg !4872
  %value5 = getelementptr inbounds %struct.param_info, %struct.param_info* %1, i64 27, i32 1, !dbg !4883
  %4 = load i32, i32* %value5, align 8, !dbg !4883
  %av_ninsns = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 5, !dbg !4884
  %5 = load i32, i32* %av_ninsns, align 8, !dbg !4884
  %div6 = udiv i32 %4, %5, !dbg !4885
  call void @llvm.dbg.value(metadata i32 %div6, metadata !4869, metadata !DIExpression()), !dbg !4872
  %cmp = icmp ugt i32 %div, %div6, !dbg !4886
  %spec.select = select i1 %cmp, i32 %div6, i32 %div, !dbg !4888
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !4868, metadata !DIExpression()), !dbg !4872
  %value10 = getelementptr inbounds %struct.param_info, %struct.param_info* %1, i64 28, i32 1, !dbg !4889
  %6 = load i32, i32* %value10, align 8, !dbg !4889
  %cmp11 = icmp ugt i32 %spec.select, %6, !dbg !4891
  br i1 %cmp11, label %if.then12, label %if.end15, !dbg !4892

if.then12:                                        ; preds = %if.end3
  call void @llvm.dbg.value(metadata i32 %6, metadata !4868, metadata !DIExpression()), !dbg !4872
  br label %if.end15, !dbg !4893

if.end15:                                         ; preds = %if.then12, %if.end3
  %nunroll.1 = phi i32 [ %6, %if.then12 ], [ %spec.select, %if.end3 ], !dbg !4872
  call void @llvm.dbg.value(metadata i32 %nunroll.1, metadata !4868, metadata !DIExpression()), !dbg !4872
  %cmp16 = icmp ult i32 %nunroll.1, 2, !dbg !4894
  br i1 %cmp16, label %if.then17, label %if.end22, !dbg !4896

if.then17:                                        ; preds = %if.end15
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4897
  %tobool18 = icmp eq %struct._IO_FILE* %7, null, !dbg !4897
  br i1 %tobool18, label %cleanup.cont, label %if.then19, !dbg !4900

if.then19:                                        ; preds = %if.then17
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %7, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !4901
  br label %cleanup.cont, !dbg !4901

if.end22:                                         ; preds = %if.end15
  %call23 = tail call %struct.niter_desc* @get_simple_loop_desc(%struct.loop* %loop) #6, !dbg !4902
  call void @llvm.dbg.value(metadata %struct.niter_desc* %call23, metadata !4871, metadata !DIExpression()), !dbg !4872
  %simple_p = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call23, i64 0, i32 2, !dbg !4903
  %8 = load i8, i8* %simple_p, align 8, !dbg !4903
  %tobool24 = icmp eq i8 %8, 0, !dbg !4905
  br i1 %tobool24, label %if.end31, label %land.lhs.true, !dbg !4906

land.lhs.true:                                    ; preds = %if.end22
  %assumptions = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call23, i64 0, i32 6, !dbg !4907
  %9 = load %struct.rtx_def*, %struct.rtx_def** %assumptions, align 8, !dbg !4907
  %tobool25 = icmp eq %struct.rtx_def* %9, null, !dbg !4908
  br i1 %tobool25, label %if.then26, label %if.end31, !dbg !4909

if.then26:                                        ; preds = %land.lhs.true
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4910
  %tobool27 = icmp eq %struct._IO_FILE* %10, null, !dbg !4910
  br i1 %tobool27, label %cleanup.cont, label %if.then28, !dbg !4913

if.then28:                                        ; preds = %if.then26
  %call29 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0)) #6, !dbg !4914
  br label %cleanup.cont, !dbg !4914

if.end31:                                         ; preds = %land.lhs.true, %if.end22
  %call32 = tail call i32 @num_loop_branches(%struct.loop* %loop) #6, !dbg !4915
  %cmp33 = icmp ugt i32 %call32, 1, !dbg !4917
  br i1 %cmp33, label %if.then35, label %if.end40, !dbg !4918

if.then35:                                        ; preds = %if.end31
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4919
  %tobool36 = icmp eq %struct._IO_FILE* %11, null, !dbg !4919
  br i1 %tobool36, label %cleanup.cont, label %if.then37, !dbg !4922

if.then37:                                        ; preds = %if.then35
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.30, i64 0, i64 0)) #6, !dbg !4923
  br label %cleanup.cont, !dbg !4923

if.end40:                                         ; preds = %if.end31
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !4924
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !4924
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i64 0, i32 8, !dbg !4926
  %13 = load i64, i64* %count, align 8, !dbg !4926
  %tobool41 = icmp eq i64 %13, 0, !dbg !4927
  br i1 %tobool41, label %if.end51, label %land.lhs.true42, !dbg !4928

land.lhs.true42:                                  ; preds = %if.end40
  %call43 = tail call i32 @expected_loop_iterations(%struct.loop* %loop) #6, !dbg !4929
  %mul = shl i32 %nunroll.1, 1, !dbg !4930
  %cmp44 = icmp ult i32 %call43, %mul, !dbg !4931
  br i1 %cmp44, label %if.then46, label %if.end51, !dbg !4932

if.then46:                                        ; preds = %land.lhs.true42
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4933
  %tobool47 = icmp eq %struct._IO_FILE* %14, null, !dbg !4933
  br i1 %tobool47, label %cleanup.cont, label %if.then48, !dbg !4936

if.then48:                                        ; preds = %if.then46
  %call49 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0)) #6, !dbg !4937
  br label %cleanup.cont, !dbg !4937

if.end51:                                         ; preds = %if.end40, %land.lhs.true42
  call void @llvm.dbg.value(metadata i32 1, metadata !4870, metadata !DIExpression()), !dbg !4872
  br label %for.cond, !dbg !4938

for.cond:                                         ; preds = %for.inc, %if.end51
  %i.0 = phi i32 [ 1, %if.end51 ], [ %mul52, %for.inc ], !dbg !4940
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4870, metadata !DIExpression()), !dbg !4872
  %mul52 = shl i32 %i.0, 1, !dbg !4941
  %cmp53 = icmp ugt i32 %mul52, %nunroll.1, !dbg !4943
  br i1 %cmp53, label %for.end, label %for.inc, !dbg !4944

for.inc:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 %mul52, metadata !4870, metadata !DIExpression()), !dbg !4872
  br label %for.cond, !dbg !4945, !llvm.loop !4946

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !4940
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa, metadata !4870, metadata !DIExpression()), !dbg !4872
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa, metadata !4870, metadata !DIExpression()), !dbg !4872
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa, metadata !4870, metadata !DIExpression()), !dbg !4872
  %decision = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 4, i32 0, !dbg !4948
  store i32 5, i32* %decision, align 8, !dbg !4949
  %sub = add i32 %i.0.lcssa, -1, !dbg !4950
  %times = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 4, i32 1, !dbg !4951
  store i32 %sub, i32* %times, align 4, !dbg !4952
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4953
  %tobool57 = icmp eq %struct._IO_FILE* %15, null, !dbg !4953
  br i1 %tobool57, label %cleanup.cont, label %if.then58, !dbg !4955

if.then58:                                        ; preds = %for.end
  %call61 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %15, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.31, i64 0, i64 0), i32 %sub) #6, !dbg !4956
  br label %cleanup.cont, !dbg !4956

cleanup.cont:                                     ; preds = %if.then17, %if.then26, %if.then35, %if.then46, %for.end, %entry, %if.then19, %if.then28, %if.then37, %if.then48, %if.then58
  ret void, !dbg !4957
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decide_peel_simple(%struct.loop* %loop, i32 %flags) unnamed_addr #4 !dbg !4958 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !4960, metadata !DIExpression()), !dbg !4967
  call void @llvm.dbg.value(metadata i32 %flags, metadata !4961, metadata !DIExpression()), !dbg !4967
  %and = and i32 %flags, 1, !dbg !4968
  %tobool = icmp eq i32 %and, 0, !dbg !4968
  br i1 %tobool, label %cleanup.cont69, label %if.end, !dbg !4970

if.end:                                           ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4971
  %tobool1 = icmp eq %struct._IO_FILE* %0, null, !dbg !4971
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !4973

if.then2:                                         ; preds = %if.end
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.32, i64 0, i64 0)) #6, !dbg !4974
  br label %if.end3, !dbg !4974

if.end3:                                          ; preds = %if.end, %if.then2
  %1 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8, !dbg !4975
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %1, i64 29, i32 1, !dbg !4975
  %2 = load i32, i32* %value, align 8, !dbg !4975
  %ninsns = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 1, !dbg !4976
  %3 = load i32, i32* %ninsns, align 4, !dbg !4976
  %div = udiv i32 %2, %3, !dbg !4977
  call void @llvm.dbg.value(metadata i32 %div, metadata !4962, metadata !DIExpression()), !dbg !4967
  %value5 = getelementptr inbounds %struct.param_info, %struct.param_info* %1, i64 30, i32 1, !dbg !4978
  %4 = load i32, i32* %value5, align 8, !dbg !4978
  %cmp = icmp ugt i32 %div, %4, !dbg !4980
  br i1 %cmp, label %if.then6, label %if.end9, !dbg !4981

if.then6:                                         ; preds = %if.end3
  call void @llvm.dbg.value(metadata i32 %4, metadata !4962, metadata !DIExpression()), !dbg !4967
  br label %if.end9, !dbg !4982

if.end9:                                          ; preds = %if.then6, %if.end3
  %npeel.0 = phi i32 [ %4, %if.then6 ], [ %div, %if.end3 ], !dbg !4967
  call void @llvm.dbg.value(metadata i32 %npeel.0, metadata !4962, metadata !DIExpression()), !dbg !4967
  %tobool10 = icmp eq i32 %npeel.0, 0, !dbg !4983
  br i1 %tobool10, label %if.then11, label %if.end16, !dbg !4985

if.then11:                                        ; preds = %if.end9
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !4986
  %tobool12 = icmp eq %struct._IO_FILE* %5, null, !dbg !4986
  br i1 %tobool12, label %cleanup.cont69, label %if.then13, !dbg !4989

if.then13:                                        ; preds = %if.then11
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !4990
  br label %cleanup.cont69, !dbg !4990

if.end16:                                         ; preds = %if.end9
  %call17 = tail call %struct.niter_desc* @get_simple_loop_desc(%struct.loop* %loop) #6, !dbg !4991
  call void @llvm.dbg.value(metadata %struct.niter_desc* %call17, metadata !4963, metadata !DIExpression()), !dbg !4967
  %simple_p = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call17, i64 0, i32 2, !dbg !4992
  %6 = load i8, i8* %simple_p, align 8, !dbg !4992
  %tobool18 = icmp eq i8 %6, 0, !dbg !4994
  br i1 %tobool18, label %if.end28, label %land.lhs.true, !dbg !4995

land.lhs.true:                                    ; preds = %if.end16
  %assumptions = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call17, i64 0, i32 6, !dbg !4996
  %7 = load %struct.rtx_def*, %struct.rtx_def** %assumptions, align 8, !dbg !4996
  %tobool19 = icmp eq %struct.rtx_def* %7, null, !dbg !4997
  br i1 %tobool19, label %land.lhs.true20, label %if.end28, !dbg !4998

land.lhs.true20:                                  ; preds = %land.lhs.true
  %const_iter = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call17, i64 0, i32 3, !dbg !4999
  %8 = load i8, i8* %const_iter, align 1, !dbg !4999
  %tobool22 = icmp eq i8 %8, 0, !dbg !5000
  br i1 %tobool22, label %if.end28, label %if.then23, !dbg !5001

if.then23:                                        ; preds = %land.lhs.true20
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5002
  %tobool24 = icmp eq %struct._IO_FILE* %9, null, !dbg !5002
  br i1 %tobool24, label %cleanup.cont69, label %if.then25, !dbg !5005

if.then25:                                        ; preds = %if.then23
  %call26 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %9, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i64 0, i64 0)) #6, !dbg !5006
  br label %cleanup.cont69, !dbg !5006

if.end28:                                         ; preds = %land.lhs.true20, %land.lhs.true, %if.end16
  %call29 = tail call i32 @num_loop_branches(%struct.loop* %loop) #6, !dbg !5007
  %cmp30 = icmp ugt i32 %call29, 1, !dbg !5009
  br i1 %cmp30, label %if.then32, label %if.end37, !dbg !5010

if.then32:                                        ; preds = %if.end28
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5011
  %tobool33 = icmp eq %struct._IO_FILE* %10, null, !dbg !5011
  br i1 %tobool33, label %cleanup.cont69, label %if.then34, !dbg !5014

if.then34:                                        ; preds = %if.then32
  %call35 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.33, i64 0, i64 0)) #6, !dbg !5015
  br label %cleanup.cont69, !dbg !5015

if.end37:                                         ; preds = %if.end28
  %header = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 2, !dbg !5016
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !5016
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i64 0, i32 8, !dbg !5017
  %12 = load i64, i64* %count, align 8, !dbg !5017
  %tobool38 = icmp eq i64 %12, 0, !dbg !5018
  br i1 %tobool38, label %if.else, label %if.then39, !dbg !5019

if.then39:                                        ; preds = %if.end37
  %call40 = tail call i32 @expected_loop_iterations(%struct.loop* %loop) #6, !dbg !5020
  call void @llvm.dbg.value(metadata i32 %call40, metadata !4964, metadata !DIExpression()), !dbg !5021
  %add = add i32 %call40, 1, !dbg !5022
  %cmp41 = icmp ugt i32 %add, %npeel.0, !dbg !5024
  br i1 %cmp41, label %if.then43, label %if.end52, !dbg !5025

if.then43:                                        ; preds = %if.then39
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5026
  %tobool44 = icmp eq %struct._IO_FILE* %13, null, !dbg !5026
  br i1 %tobool44, label %cleanup, label %if.then45, !dbg !5029

if.then45:                                        ; preds = %if.then43
  %call46 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %13, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.34, i64 0, i64 0)) #6, !dbg !5030
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5032
  %conv48 = zext i32 %add to i64, !dbg !5033
  %call49 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i64 %conv48) #6, !dbg !5034
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5035
  %call50 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i32 %npeel.0) #6, !dbg !5036
  br label %cleanup, !dbg !5037

if.end52:                                         ; preds = %if.then39
  call void @llvm.dbg.value(metadata i32 %add, metadata !4962, metadata !DIExpression()), !dbg !4967
  br label %cleanup, !dbg !5038

cleanup:                                          ; preds = %if.then43, %if.then45, %if.end52
  %16 = phi i32 [ %add, %if.end52 ], [ %npeel.0, %if.then45 ], [ %npeel.0, %if.then43 ], !dbg !4967
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end52 ], [ false, %if.then45 ], [ false, %if.then43 ]
  call void @llvm.dbg.value(metadata i32 %16, metadata !4962, metadata !DIExpression()), !dbg !4967
  br i1 %cleanup.dest.slot.0, label %if.end58, label %cleanup.cont69

if.else:                                          ; preds = %if.end37
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5039
  %tobool54 = icmp eq %struct._IO_FILE* %17, null, !dbg !5039
  br i1 %tobool54, label %cleanup.cont69, label %if.then55, !dbg !5042

if.then55:                                        ; preds = %if.else
  %call56 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %17, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.35, i64 0, i64 0)) #6, !dbg !5043
  br label %cleanup.cont69, !dbg !5043

if.end58:                                         ; preds = %cleanup
  %decision = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 4, i32 0, !dbg !5044
  store i32 2, i32* %decision, align 8, !dbg !5045
  %times = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 4, i32 1, !dbg !5046
  store i32 %16, i32* %times, align 4, !dbg !5047
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !5048
  %tobool60 = icmp eq %struct._IO_FILE* %18, null, !dbg !5048
  br i1 %tobool60, label %cleanup.cont69, label %if.then61, !dbg !5050

if.then61:                                        ; preds = %if.end58
  %call64 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %18, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.36, i64 0, i64 0), i32 %16) #6, !dbg !5051
  br label %cleanup.cont69, !dbg !5051

cleanup.cont69:                                   ; preds = %if.then23, %if.then32, %if.end58, %if.else, %if.then11, %entry, %cleanup, %if.then13, %if.then25, %if.then34, %if.then55, %if.then61
  ret void, !dbg !5052
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @loop_exit_at_end_p(%struct.loop* %loop) unnamed_addr #4 !dbg !5053 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !5057, metadata !DIExpression()), !dbg !5060
  %call = tail call %struct.niter_desc* @get_simple_loop_desc(%struct.loop* %loop) #6, !dbg !5061
  call void @llvm.dbg.value(metadata %struct.niter_desc* %call, metadata !5058, metadata !DIExpression()), !dbg !5060
  %in_edge = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %call, i64 0, i32 1, !dbg !5062
  %0 = load %struct.edge_def*, %struct.edge_def** %in_edge, align 8, !dbg !5062
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %0, i64 0, i32 1, !dbg !5064
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !5064
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 3, !dbg !5065
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !5065
  %cmp = icmp eq %struct.basic_block_def* %1, %2, !dbg !5066
  br i1 %cmp, label %if.end, label %cleanup, !dbg !5067

if.end:                                           ; preds = %entry
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i64 0, i32 7, !dbg !5068
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !5068
  %3 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !5068
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %3, i64 0, i32 0, !dbg !5068
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %3, i64 0, i32 1, !dbg !5070
  br label %for.cond, !dbg !5068

for.cond:                                         ; preds = %for.inc, %if.end
  %insn.0.in = phi %struct.rtx_def** [ %head_, %if.end ], [ %rt_rtx23, %for.inc ]
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !5072
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !5059, metadata !DIExpression()), !dbg !5060
  %tobool = icmp eq %struct.rtx_def* %insn.0, null, !dbg !5070
  br i1 %tobool, label %cleanup.loopexit, label %land.rhs, !dbg !5070

land.rhs:                                         ; preds = %for.cond
  %4 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !5070
  %5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !5070
  %rt_rtx = bitcast %union.rtunion_def* %5 to %struct.rtx_def**, !dbg !5070
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !5070
  %cmp5 = icmp eq %struct.rtx_def* %insn.0, %6, !dbg !5070
  br i1 %cmp5, label %cleanup.loopexit, label %for.body, !dbg !5068

for.body:                                         ; preds = %land.rhs
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !5073
  %bf.load = load i32, i32* %7, align 8, !dbg !5073
  %bf.clear = and i32 %bf.load, 65535, !dbg !5073
  %8 = add nsw i32 %bf.clear, -7, !dbg !5073
  %9 = icmp ult i32 %8, 4, !dbg !5073
  br i1 %9, label %cleanup.loopexit, label %for.inc, !dbg !5073

for.inc:                                          ; preds = %for.body
  %10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !5070
  %rt_rtx23 = bitcast %union.rtunion_def* %10 to %struct.rtx_def**, !dbg !5070
  br label %for.cond, !dbg !5070, !llvm.loop !5076

cleanup.loopexit:                                 ; preds = %for.body, %for.cond, %land.rhs
  %retval.0.ph = phi i8 [ 1, %land.rhs ], [ 1, %for.cond ], [ 0, %for.body ]
  br label %cleanup, !dbg !5078

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  %retval.0 = phi i8 [ 0, %entry ], [ %retval.0.ph, %cleanup.loopexit ], !dbg !5060
  ret i8 %retval.0, !dbg !5078
}

declare dso_local i32 @expected_loop_iterations(%struct.loop*) local_unnamed_addr #1

declare dso_local i32 @num_loop_branches(%struct.loop*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @SET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !5079 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !5081, metadata !DIExpression()), !dbg !5086
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !5082, metadata !DIExpression()), !dbg !5086
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !5087
  %0 = load i8*, i8** %popcount, align 8, !dbg !5087
  %tobool = icmp eq i8* %0, null, !dbg !5088
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !5089

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !5090
  %.pre2 = zext i32 %.pre to i64, !dbg !5091
  %.pre3 = shl i64 1, %.pre2, !dbg !5091
  %.pre4 = lshr i32 %bitno, 6, !dbg !5092
  %.pre5 = zext i32 %.pre4 to i64, !dbg !5093
  br label %if.end7, !dbg !5089

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !5094
  %idxprom = zext i32 %div to i64, !dbg !5094
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !5094
  %1 = load i64, i64* %arrayidx, align 8, !dbg !5094
  %rem = and i32 %bitno, 63, !dbg !5094
  %sh_prom = zext i32 %rem to i64, !dbg !5094
  %2 = shl i64 1, %sh_prom, !dbg !5095
  %3 = and i64 %1, %2, !dbg !5095
  %tobool1 = icmp eq i64 %3, 0, !dbg !5095
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !5097

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !5098
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !5099
  %inc = add i8 %4, 1, !dbg !5099
  store i8 %inc, i8* %arrayidx6, align 1, !dbg !5099
  br label %if.end7, !dbg !5098

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !5093
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !5091
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !5093
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !5100
  %or = or i64 %5, %shl.pre-phi, !dbg !5100
  store i64 %or, i64* %arrayidx13, align 8, !dbg !5100
  ret void, !dbg !5101
}

declare dso_local %struct.edge_def* @loop_latch_edge(%struct.loop*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) local_unnamed_addr #1

declare dso_local %struct.VEC_basic_block_heap* @get_dominated_by(i32, %struct.basic_block_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_basic_block_base_iterate(%struct.VEC_basic_block_base* %vec_, i32 %ix_, %struct.basic_block_def** %ptr) unnamed_addr #0 !dbg !5102 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !5106, metadata !DIExpression()), !dbg !5109
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !5107, metadata !DIExpression()), !dbg !5109
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %ptr, metadata !5108, metadata !DIExpression()), !dbg !5109
  %tobool = icmp eq %struct.VEC_basic_block_base* %vec_, null, !dbg !5110
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !5110

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 0, !dbg !5110
  %0 = load i32, i32* %num, align 8, !dbg !5110
  %cmp = icmp ugt i32 %0, %ix_, !dbg !5110
  br i1 %cmp, label %if.then, label %if.else, !dbg !5112

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !5113
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !5113
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !5113
  br label %return, !dbg !5113

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !5115

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.basic_block_def* [ null, %if.else ], [ %1, %if.then ], !dbg !5117
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !5117
  store %struct.basic_block_def* %storemerge, %struct.basic_block_def** %ptr, align 8, !dbg !5117
  ret i32 %retval.0, !dbg !5112
}

declare dso_local zeroext i8 @flow_bb_inside_loop_p(%struct.loop*, %struct.basic_block_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def** @VEC_basic_block_heap_safe_push(%struct.VEC_basic_block_heap** %vec_, %struct.basic_block_def* %obj_) unnamed_addr #0 !dbg !5118 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %vec_, metadata !5123, metadata !DIExpression()), !dbg !5125
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %obj_, metadata !5124, metadata !DIExpression()), !dbg !5125
  %call = tail call fastcc i32 @VEC_basic_block_heap_reserve(%struct.VEC_basic_block_heap** %vec_, i32 1) #8, !dbg !5126
  %0 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** %vec_, align 8, !dbg !5126
  %tobool = icmp eq %struct.VEC_basic_block_heap* %0, null, !dbg !5126
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5126

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %0, i64 0, i32 0, !dbg !5126
  br label %cond.end, !dbg !5126

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %entry ], !dbg !5126
  %call1 = tail call fastcc %struct.basic_block_def** @VEC_basic_block_base_quick_push(%struct.VEC_basic_block_base* %cond, %struct.basic_block_def* %obj_) #8, !dbg !5126
  ret %struct.basic_block_def** %call1, !dbg !5126
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_basic_block_heap_free(%struct.VEC_basic_block_heap** %vec_) unnamed_addr #0 !dbg !5127 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %vec_, metadata !5131, metadata !DIExpression()), !dbg !5132
  %0 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** %vec_, align 8, !dbg !5133
  %tobool = icmp eq %struct.VEC_basic_block_heap* %0, null, !dbg !5133
  br i1 %tobool, label %if.end, label %if.then, !dbg !5135

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_basic_block_heap* %0 to i8*, !dbg !5135
  tail call void @free(i8* nonnull %1) #6, !dbg !5133
  br label %if.end, !dbg !5133

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_basic_block_heap* null, %struct.VEC_basic_block_heap** %vec_, align 8, !dbg !5135
  ret void, !dbg !5135
}

declare dso_local %struct.rtx_def* @expand_simple_binop(i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, i32) local_unnamed_addr #1

declare dso_local void @unshare_all_rtl_in_chain(%struct.rtx_def*) local_unnamed_addr #1

declare dso_local void @sbitmap_zero(%struct.simple_bitmap_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @compare_and_jump_seq(%struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def*, i32, %struct.rtx_def*) local_unnamed_addr #1

declare dso_local %struct.rtx_def* @block_label(%struct.basic_block_def*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !5136 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !5143, metadata !DIExpression()), !dbg !5144
  %call = tail call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) #8, !dbg !5145
  %tobool = icmp eq i8 %call, 0, !dbg !5145
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !5145

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i64 0, i64 0), i32 655, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !5145
  br label %cond.end, !dbg !5145

cond.end:                                         ; preds = %entry, %cond.true
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !5146
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !5146
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !5146
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !5146

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !5146
  br label %cond.end5, !dbg !5146

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !5146
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #8, !dbg !5146
  ret %struct.edge_def* %call7, !dbg !5147
}

declare dso_local void @set_immediate_dominator(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #1

declare dso_local %struct.edge_def* @make_edge(%struct.basic_block_def*, %struct.basic_block_def*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !5148 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !5150, metadata !DIExpression()), !dbg !5151
  %call = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) #8, !dbg !5152
  %tobool = icmp eq i8 %call, 0, !dbg !5152
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !5152

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i64 0, i64 0), i32 645, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !5152
  br label %cond.end, !dbg !5152

cond.end:                                         ; preds = %entry, %cond.true
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !5153
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !5153
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !5153
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !5153

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !5153
  br label %cond.end5, !dbg !5153

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !5153
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #8, !dbg !5153
  ret %struct.edge_def* %call7, !dbg !5154
}

declare dso_local void @iterate_fix_dominators(i32, %struct.VEC_basic_block_heap*, i8 zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_basic_block_heap_reserve(%struct.VEC_basic_block_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !5155 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %vec_, metadata !5159, metadata !DIExpression()), !dbg !5162
  call void @llvm.dbg.value(metadata i32 1, metadata !5160, metadata !DIExpression()), !dbg !5162
  %0 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** %vec_, align 8, !dbg !5163
  %tobool = icmp eq %struct.VEC_basic_block_heap* %0, null, !dbg !5163
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5163

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %0, i64 0, i32 0, !dbg !5163
  br label %cond.end, !dbg !5163

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %entry ], !dbg !5163
  %call = tail call fastcc i32 @VEC_basic_block_base_space(%struct.VEC_basic_block_base* %cond, i32 1) #8, !dbg !5163
  %tobool1 = icmp eq i32 %call, 0, !dbg !5163
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !5163
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !5161, metadata !DIExpression()), !dbg !5162
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5163

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_basic_block_heap** %vec_ to i8**, !dbg !5164
  %2 = load i8*, i8** %1, align 8, !dbg !5164
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %2, i32 1) #6, !dbg !5164
  store i8* %call3, i8** %1, align 8, !dbg !5164
  br label %if.end, !dbg !5164

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !5163
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def** @VEC_basic_block_base_quick_push(%struct.VEC_basic_block_base* %vec_, %struct.basic_block_def* %obj_) unnamed_addr #0 !dbg !5166 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !5171, metadata !DIExpression()), !dbg !5174
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %obj_, metadata !5172, metadata !DIExpression()), !dbg !5174
  %num1 = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 0, !dbg !5175
  %0 = load i32, i32* %num1, align 8, !dbg !5175
  %inc = add i32 %0, 1, !dbg !5175
  store i32 %inc, i32* %num1, align 8, !dbg !5175
  %idxprom = zext i32 %0 to i64, !dbg !5175
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !5175
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %arrayidx, metadata !5173, metadata !DIExpression()), !dbg !5174
  store %struct.basic_block_def* %obj_, %struct.basic_block_def** %arrayidx, align 8, !dbg !5175
  ret %struct.basic_block_def** %arrayidx, !dbg !5175
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_basic_block_base_space(%struct.VEC_basic_block_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !5176 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !5180, metadata !DIExpression()), !dbg !5182
  call void @llvm.dbg.value(metadata i32 1, metadata !5181, metadata !DIExpression()), !dbg !5182
  %tobool = icmp eq %struct.VEC_basic_block_base* %vec_, null, !dbg !5183
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !5183

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 1, !dbg !5183
  %0 = load i32, i32* %alloc, align 4, !dbg !5183
  %num = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 0, !dbg !5183
  %1 = load i32, i32* %num, align 8, !dbg !5183
  %cmp1 = icmp ne i32 %0, %1, !dbg !5183
  %phitmp = zext i1 %cmp1 to i32, !dbg !5183
  br label %cond.end, !dbg !5183

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5183

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !5183
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !5184 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !5188, metadata !DIExpression()), !dbg !5189
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !5190
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !5190
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !5190
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5190

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !5190
  br label %cond.end, !dbg !5190

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !5190
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !5190
  %cmp = icmp eq i32 %call, 1, !dbg !5191
  %conv2 = zext i1 %cmp to i8, !dbg !5190
  ret i8 %conv2, !dbg !5192
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !5193 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !5195, metadata !DIExpression()), !dbg !5196
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !5197
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !5197
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !5197
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !5197

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !5197
  br label %cond.end, !dbg !5197

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !5197
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !5197
  %cmp = icmp eq i32 %call, 1, !dbg !5198
  %conv2 = zext i1 %cmp to i8, !dbg !5197
  ret i8 %conv2, !dbg !5199
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
!llvm.module.flags = !{!1753, !1754, !1755}
!llvm.ident = !{!1756}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !553, nameTableKind: None)
!1 = !DIFile(filename: "loop-unroll.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !132, !138, !143, !148, !167, !174, !181, !375, !384, !388, !531}
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
!388 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !389, line: 45, baseType: !5, size: 32, elements: !390)
!389 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!390 = !{!391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530}
!391 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!392 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!393 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!394 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!395 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!396 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!397 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!398 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!399 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!400 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!401 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!402 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!403 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!404 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!405 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!406 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!407 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!408 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!409 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!410 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!411 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!412 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!413 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!414 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!415 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!416 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!417 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!418 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!419 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!420 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!421 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!422 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!423 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!424 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!425 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!426 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!427 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!428 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!429 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!430 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!431 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!432 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!433 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!434 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!435 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!436 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!437 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!438 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!439 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!440 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!441 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!442 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!443 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!444 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!445 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!446 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!447 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!448 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!449 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!450 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!451 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!452 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!453 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!454 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!455 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!456 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!457 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!458 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!459 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!460 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!461 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!462 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!463 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!464 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!465 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!466 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!467 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!468 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!469 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!470 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!471 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!472 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!473 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!474 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!475 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!476 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!477 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!478 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!479 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!480 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!481 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!482 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!483 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!484 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!485 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!486 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!487 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!488 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!489 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!490 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!491 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!492 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!493 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!494 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!495 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!496 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!497 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!498 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!499 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!500 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!501 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!502 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!503 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!504 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!505 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!506 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!507 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!508 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!509 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!510 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!511 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!512 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!513 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!514 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!515 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!516 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!517 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!518 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!519 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!520 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!521 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!522 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!523 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!524 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!525 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!526 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!527 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!528 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!529 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!530 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!531 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mode_class", file: !532, line: 36, baseType: !5, size: 32, elements: !533)
!532 = !DIFile(filename: "./machmode.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!533 = !{!534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552}
!534 = !DIEnumerator(name: "MODE_RANDOM", value: 0, isUnsigned: true)
!535 = !DIEnumerator(name: "MODE_CC", value: 1, isUnsigned: true)
!536 = !DIEnumerator(name: "MODE_INT", value: 2, isUnsigned: true)
!537 = !DIEnumerator(name: "MODE_PARTIAL_INT", value: 3, isUnsigned: true)
!538 = !DIEnumerator(name: "MODE_FRACT", value: 4, isUnsigned: true)
!539 = !DIEnumerator(name: "MODE_UFRACT", value: 5, isUnsigned: true)
!540 = !DIEnumerator(name: "MODE_ACCUM", value: 6, isUnsigned: true)
!541 = !DIEnumerator(name: "MODE_UACCUM", value: 7, isUnsigned: true)
!542 = !DIEnumerator(name: "MODE_FLOAT", value: 8, isUnsigned: true)
!543 = !DIEnumerator(name: "MODE_DECIMAL_FLOAT", value: 9, isUnsigned: true)
!544 = !DIEnumerator(name: "MODE_COMPLEX_INT", value: 10, isUnsigned: true)
!545 = !DIEnumerator(name: "MODE_COMPLEX_FLOAT", value: 11, isUnsigned: true)
!546 = !DIEnumerator(name: "MODE_VECTOR_INT", value: 12, isUnsigned: true)
!547 = !DIEnumerator(name: "MODE_VECTOR_FRACT", value: 13, isUnsigned: true)
!548 = !DIEnumerator(name: "MODE_VECTOR_UFRACT", value: 14, isUnsigned: true)
!549 = !DIEnumerator(name: "MODE_VECTOR_ACCUM", value: 15, isUnsigned: true)
!550 = !DIEnumerator(name: "MODE_VECTOR_UACCUM", value: 16, isUnsigned: true)
!551 = !DIEnumerator(name: "MODE_VECTOR_FLOAT", value: 17, isUnsigned: true)
!552 = !DIEnumerator(name: "MAX_MODE_CLASS", value: 18, isUnsigned: true)
!553 = !{!554, !555, !556, !557, !560, !561, !563, !578, !5, !683, !1704, !388, !1045, !1744, !1746, !616, !1709, !3, !531, !1723, !1729, !1061, !601, !700, !986, !1748}
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!556 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !559)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_heap", file: !565, line: 32, baseType: !566)
!565 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_heap", file: !565, line: 32, size: 96, elements: !567)
!567 = !{!568}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !566, file: !565, line: 32, baseType: !569, size: 96)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_int_base", file: !565, line: 31, baseType: !570)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_int_base", file: !565, line: 31, size: 96, elements: !571)
!571 = !{!572, !573, !574}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !570, file: !565, line: 31, baseType: !5, size: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !570, file: !565, line: 31, baseType: !5, size: 32, offset: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !570, file: !565, line: 31, baseType: !575, size: 32, offset: 64)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 32, elements: !576)
!576 = !{!577}
!577 = !DISubrange(count: 1)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !376, line: 84, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !376, line: 100, size: 1216, elements: !581)
!581 = !{!582, !583, !584, !1668, !1669, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1694, !1702, !1703}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !580, file: !376, line: 102, baseType: !556, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !580, file: !376, line: 105, baseType: !5, size: 32, offset: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !580, file: !376, line: 108, baseType: !585, size: 64, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !133, line: 217, size: 832, elements: !587)
!587 = !{!588, !1635, !1636, !1637, !1638, !1642, !1643, !1644, !1662, !1663, !1664, !1665, !1666, !1667}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !586, file: !133, line: 219, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !133, line: 151, baseType: !591)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !133, line: 151, size: 128, elements: !592)
!592 = !{!593}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !591, file: !133, line: 151, baseType: !594, size: 128)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !133, line: 150, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !133, line: 150, size: 128, elements: !596)
!596 = !{!597, !598, !599}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !595, file: !133, line: 150, baseType: !5, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !595, file: !133, line: 150, baseType: !5, size: 32, offset: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !595, file: !133, line: 150, baseType: !600, size: 64, offset: 64)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 64, elements: !576)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !602, line: 108, baseType: !603)
!602 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !133, line: 122, size: 512, elements: !605)
!605 = !{!606, !607, !608, !1627, !1628, !1629, !1630, !1631, !1632, !1633}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !604, file: !133, line: 124, baseType: !585, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !604, file: !133, line: 125, baseType: !585, size: 64, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !604, file: !133, line: 131, baseType: !609, size: 64, offset: 128)
!609 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !133, line: 128, size: 64, elements: !610)
!610 = !{!611, !615}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !609, file: !133, line: 129, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !602, line: 66, baseType: !613)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !602, line: 65, flags: DIFlagFwdDecl)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !609, file: !133, line: 130, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !602, line: 50, baseType: !617)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !389, line: 240, size: 384, elements: !619)
!619 = !{!620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !618, file: !389, line: 242, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !618, file: !389, line: 245, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !618, file: !389, line: 252, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !618, file: !389, line: 257, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !618, file: !389, line: 265, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !618, file: !389, line: 277, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !618, file: !389, line: 291, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !618, file: !389, line: 298, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !618, file: !389, line: 305, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !618, file: !389, line: 310, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !618, file: !389, line: 321, baseType: !631, size: 320, offset: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !389, line: 315, size: 320, elements: !632)
!632 = !{!633, !1562, !1564, !1625, !1626}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !631, file: !389, line: 316, baseType: !634, size: 64)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 64, elements: !576)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !389, line: 183, baseType: !636)
!636 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !389, line: 166, size: 64, elements: !637)
!637 = !{!638, !639, !640, !641, !642, !650, !651, !663, !666, !728, !1540, !1541, !1552, !1559}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !636, file: !389, line: 168, baseType: !556, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !636, file: !389, line: 169, baseType: !5, size: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !636, file: !389, line: 170, baseType: !561, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !636, file: !389, line: 171, baseType: !616, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !636, file: !389, line: 172, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !602, line: 53, baseType: !644)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !389, line: 359, size: 128, elements: !646)
!646 = !{!647, !648}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !645, file: !389, line: 360, baseType: !556, size: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !645, file: !389, line: 361, baseType: !649, size: 64, offset: 64)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !616, size: 64, elements: !576)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !636, file: !389, line: 173, baseType: !3, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !636, file: !389, line: 174, baseType: !652, size: 32)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !389, line: 133, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !389, line: 115, size: 32, elements: !654)
!654 = !{!655, !656, !657, !658, !659, !660, !661, !662}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !653, file: !389, line: 118, baseType: !5, size: 8, flags: DIFlagBitField, extraData: i64 0)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !653, file: !389, line: 120, baseType: !5, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !653, file: !389, line: 121, baseType: !5, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !653, file: !389, line: 123, baseType: !5, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !653, file: !389, line: 125, baseType: !5, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !653, file: !389, line: 127, baseType: !5, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !653, file: !389, line: 130, baseType: !5, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !653, file: !389, line: 132, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !636, file: !389, line: 175, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !389, line: 175, flags: DIFlagFwdDecl)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !636, file: !389, line: 176, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !669, line: 75, size: 256, elements: !670)
!669 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!670 = !{!671, !686, !687, !688}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !668, file: !669, line: 76, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !669, line: 68, baseType: !674)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !669, line: 63, size: 320, elements: !675)
!675 = !{!676, !678, !679, !680}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !674, file: !669, line: 64, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !674, file: !669, line: 65, baseType: !677, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !674, file: !669, line: 66, baseType: !5, size: 32, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !674, file: !669, line: 67, baseType: !681, size: 128, offset: 192)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !682, size: 128, elements: !684)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !669, line: 29, baseType: !683)
!683 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!684 = !{!685}
!685 = !DISubrange(count: 2)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !668, file: !669, line: 77, baseType: !672, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !668, file: !669, line: 78, baseType: !5, size: 32, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !668, file: !669, line: 79, baseType: !689, size: 64, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !669, line: 49, baseType: !691)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !669, line: 45, size: 832, elements: !692)
!692 = !{!693, !694, !695}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !691, file: !669, line: 46, baseType: !677, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !691, file: !669, line: 47, baseType: !667, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !691, file: !669, line: 48, baseType: !696, size: 704, offset: 128)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !697, line: 164, size: 704, elements: !698)
!697 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!698 = !{!699, !701, !711, !712, !713, !714, !715, !716, !720, !724, !725, !726, !727}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !696, file: !697, line: 166, baseType: !700, size: 64)
!700 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !696, file: !697, line: 167, baseType: !702, size: 64, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !697, line: 157, size: 192, elements: !704)
!704 = !{!705, !706, !707}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !703, file: !697, line: 159, baseType: !558, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !703, file: !697, line: 160, baseType: !702, size: 64, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !703, file: !697, line: 161, baseType: !708, size: 32, offset: 128)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !559, size: 32, elements: !709)
!709 = !{!710}
!710 = !DISubrange(count: 4)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !696, file: !697, line: 168, baseType: !558, size: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !696, file: !697, line: 169, baseType: !558, size: 64, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !696, file: !697, line: 170, baseType: !558, size: 64, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !696, file: !697, line: 171, baseType: !700, size: 64, offset: 320)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !696, file: !697, line: 172, baseType: !556, size: 32, offset: 384)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !696, file: !697, line: 176, baseType: !717, size: 64, offset: 448)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!702, !560, !700}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !696, file: !697, line: 177, baseType: !721, size: 64, offset: 512)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{null, !560, !702}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !696, file: !697, line: 178, baseType: !560, size: 64, offset: 576)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !696, file: !697, line: 179, baseType: !5, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !696, file: !697, line: 180, baseType: !5, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !696, file: !697, line: 184, baseType: !5, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !636, file: !389, line: 177, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !602, line: 56, baseType: !730)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !149, line: 3371, size: 1792, elements: !732)
!732 = !{!733, !766, !772, !783, !802, !813, !818, !825, !831, !844, !856, !894, !899, !927, !935, !936, !941, !950, !956, !961, !965, !969, !1164, !1213, !1219, !1226, !1233, !1259, !1284, !1301, !1313, !1335, !1350, !1522}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !731, file: !149, line: 3372, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !149, line: 360, size: 64, elements: !735)
!735 = !{!736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !734, file: !149, line: 361, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !734, file: !149, line: 363, baseType: !5, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !734, file: !149, line: 364, baseType: !5, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !734, file: !149, line: 365, baseType: !5, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !734, file: !149, line: 366, baseType: !5, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !734, file: !149, line: 367, baseType: !5, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !734, file: !149, line: 368, baseType: !5, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !734, file: !149, line: 369, baseType: !5, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !734, file: !149, line: 370, baseType: !5, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !734, file: !149, line: 372, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !734, file: !149, line: 373, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !734, file: !149, line: 374, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !734, file: !149, line: 375, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !734, file: !149, line: 376, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !734, file: !149, line: 377, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !734, file: !149, line: 378, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !734, file: !149, line: 379, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !734, file: !149, line: 381, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !734, file: !149, line: 382, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !734, file: !149, line: 383, baseType: !5, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !734, file: !149, line: 384, baseType: !5, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !734, file: !149, line: 385, baseType: !5, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !734, file: !149, line: 386, baseType: !5, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !734, file: !149, line: 387, baseType: !5, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !734, file: !149, line: 388, baseType: !5, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !734, file: !149, line: 390, baseType: !5, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !734, file: !149, line: 391, baseType: !5, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !734, file: !149, line: 392, baseType: !5, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !734, file: !149, line: 394, baseType: !5, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !734, file: !149, line: 399, baseType: !5, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !731, file: !149, line: 3373, baseType: !767, size: 192)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !149, line: 402, size: 192, elements: !768)
!768 = !{!769, !770, !771}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !767, file: !149, line: 403, baseType: !734, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !767, file: !149, line: 404, baseType: !729, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !767, file: !149, line: 405, baseType: !729, size: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !731, file: !149, line: 3374, baseType: !773, size: 320)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !149, line: 1384, size: 320, elements: !774)
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !773, file: !149, line: 1385, baseType: !767, size: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !773, file: !149, line: 1386, baseType: !777, size: 128, offset: 192)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !778, line: 58, baseType: !779)
!778 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !778, line: 54, size: 128, elements: !780)
!780 = !{!781, !782}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !779, file: !778, line: 56, baseType: !683, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !779, file: !778, line: 57, baseType: !700, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !731, file: !149, line: 3375, baseType: !784, size: 256)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !149, line: 1397, size: 256, elements: !785)
!785 = !{!786, !787}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !784, file: !149, line: 1398, baseType: !767, size: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !784, file: !149, line: 1399, baseType: !788, size: 64, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !790, line: 52, size: 256, elements: !791)
!790 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!791 = !{!792, !793, !794, !795, !796, !797, !798}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !789, file: !790, line: 56, baseType: !5, size: 2, flags: DIFlagBitField, extraData: i64 0)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !789, file: !790, line: 57, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !789, file: !790, line: 58, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !789, file: !790, line: 59, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !789, file: !790, line: 60, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !789, file: !790, line: 61, baseType: !5, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !789, file: !790, line: 62, baseType: !799, size: 192, offset: 64)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !683, size: 192, elements: !800)
!800 = !{!801}
!801 = !DISubrange(count: 3)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !731, file: !149, line: 3376, baseType: !803, size: 256)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !149, line: 1408, size: 256, elements: !804)
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !803, file: !149, line: 1409, baseType: !767, size: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !803, file: !149, line: 1410, baseType: !807, size: 64, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !809, line: 27, size: 192, elements: !810)
!809 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!810 = !{!811, !812}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !808, file: !809, line: 29, baseType: !777, size: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !808, file: !809, line: 30, baseType: !3, size: 32, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !731, file: !149, line: 3377, baseType: !814, size: 256)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !149, line: 1437, size: 256, elements: !815)
!815 = !{!816, !817}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !814, file: !149, line: 1438, baseType: !767, size: 192)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !814, file: !149, line: 1439, baseType: !729, size: 64, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !731, file: !149, line: 3378, baseType: !819, size: 256)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !149, line: 1418, size: 256, elements: !820)
!820 = !{!821, !822, !823}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !819, file: !149, line: 1419, baseType: !767, size: 192)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !819, file: !149, line: 1420, baseType: !556, size: 32, offset: 192)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !819, file: !149, line: 1421, baseType: !824, size: 8, offset: 224)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !559, size: 8, elements: !576)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !731, file: !149, line: 3379, baseType: !826, size: 320)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !149, line: 1428, size: 320, elements: !827)
!827 = !{!828, !829, !830}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !826, file: !149, line: 1429, baseType: !767, size: 192)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !826, file: !149, line: 1430, baseType: !729, size: 64, offset: 192)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !826, file: !149, line: 1431, baseType: !729, size: 64, offset: 256)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !731, file: !149, line: 3380, baseType: !832, size: 320)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !149, line: 1460, size: 320, elements: !833)
!833 = !{!834, !835}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !832, file: !149, line: 1461, baseType: !767, size: 192)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !832, file: !149, line: 1462, baseType: !836, size: 128, offset: 192)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !837, line: 31, size: 128, elements: !838)
!837 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!838 = !{!839, !842, !843}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !836, file: !837, line: 32, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !555)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !836, file: !837, line: 33, baseType: !5, size: 32, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !836, file: !837, line: 34, baseType: !5, size: 32, offset: 96)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !731, file: !149, line: 3381, baseType: !845, size: 384)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !149, line: 2507, size: 384, elements: !846)
!846 = !{!847, !848, !853, !854, !855}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !845, file: !149, line: 2508, baseType: !767, size: 192)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !845, file: !149, line: 2509, baseType: !849, size: 32, offset: 192)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !850, line: 58, baseType: !851)
!850 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !852, line: 44, baseType: !5)
!852 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!853 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !845, file: !149, line: 2510, baseType: !5, size: 32, offset: 224)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !845, file: !149, line: 2511, baseType: !729, size: 64, offset: 256)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !845, file: !149, line: 2512, baseType: !729, size: 64, offset: 320)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !731, file: !149, line: 3382, baseType: !857, size: 896)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !149, line: 2652, size: 896, elements: !858)
!858 = !{!859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !857, file: !149, line: 2653, baseType: !845, size: 384)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !857, file: !149, line: 2654, baseType: !729, size: 64, offset: 384)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !857, file: !149, line: 2656, baseType: !5, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !857, file: !149, line: 2658, baseType: !5, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !857, file: !149, line: 2659, baseType: !5, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !857, file: !149, line: 2660, baseType: !5, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !857, file: !149, line: 2661, baseType: !5, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !857, file: !149, line: 2662, baseType: !5, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !857, file: !149, line: 2663, baseType: !5, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !857, file: !149, line: 2664, baseType: !5, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !857, file: !149, line: 2666, baseType: !5, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !857, file: !149, line: 2667, baseType: !5, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !857, file: !149, line: 2668, baseType: !5, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !857, file: !149, line: 2669, baseType: !5, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !857, file: !149, line: 2670, baseType: !5, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !857, file: !149, line: 2671, baseType: !5, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !857, file: !149, line: 2672, baseType: !5, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !857, file: !149, line: 2673, baseType: !5, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !857, file: !149, line: 2674, baseType: !5, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !857, file: !149, line: 2678, baseType: !5, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !857, file: !149, line: 2682, baseType: !5, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !857, file: !149, line: 2685, baseType: !5, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !857, file: !149, line: 2688, baseType: !5, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !857, file: !149, line: 2690, baseType: !5, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !857, file: !149, line: 2692, baseType: !5, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !857, file: !149, line: 2695, baseType: !5, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !857, file: !149, line: 2698, baseType: !5, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !857, file: !149, line: 2703, baseType: !5, size: 32, offset: 512)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !857, file: !149, line: 2705, baseType: !729, size: 64, offset: 576)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !857, file: !149, line: 2706, baseType: !729, size: 64, offset: 640)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !857, file: !149, line: 2707, baseType: !729, size: 64, offset: 704)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !857, file: !149, line: 2708, baseType: !729, size: 64, offset: 768)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !857, file: !149, line: 2711, baseType: !892, size: 64, offset: 832)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !149, line: 2711, flags: DIFlagFwdDecl)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !731, file: !149, line: 3383, baseType: !895, size: 960)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !149, line: 2756, size: 960, elements: !896)
!896 = !{!897, !898}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !895, file: !149, line: 2757, baseType: !857, size: 896)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !895, file: !149, line: 2758, baseType: !616, size: 64, offset: 896)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !731, file: !149, line: 3384, baseType: !900, size: 1472)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !149, line: 3114, size: 1472, elements: !901)
!901 = !{!902, !923, !924, !925, !926}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !900, file: !149, line: 3115, baseType: !903, size: 1216)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !149, line: 2984, size: 1216, elements: !904)
!904 = !{!905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !903, file: !149, line: 2985, baseType: !895, size: 960)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !903, file: !149, line: 2986, baseType: !729, size: 64, offset: 960)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !903, file: !149, line: 2987, baseType: !729, size: 64, offset: 1024)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !903, file: !149, line: 2988, baseType: !729, size: 64, offset: 1088)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !903, file: !149, line: 2991, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !903, file: !149, line: 2992, baseType: !5, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !903, file: !149, line: 2993, baseType: !5, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !903, file: !149, line: 2994, baseType: !5, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !903, file: !149, line: 2995, baseType: !5, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !903, file: !149, line: 2996, baseType: !5, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !903, file: !149, line: 2998, baseType: !5, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !903, file: !149, line: 3000, baseType: !5, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !903, file: !149, line: 3002, baseType: !5, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !903, file: !149, line: 3003, baseType: !5, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !903, file: !149, line: 3004, baseType: !5, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !903, file: !149, line: 3005, baseType: !5, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !903, file: !149, line: 3007, baseType: !5, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !903, file: !149, line: 3010, baseType: !5, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !900, file: !149, line: 3117, baseType: !729, size: 64, offset: 1216)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !900, file: !149, line: 3119, baseType: !729, size: 64, offset: 1280)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !900, file: !149, line: 3121, baseType: !729, size: 64, offset: 1344)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !900, file: !149, line: 3123, baseType: !729, size: 64, offset: 1408)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !731, file: !149, line: 3385, baseType: !928, size: 1088)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !149, line: 2874, size: 1088, elements: !929)
!929 = !{!930, !931, !932}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !928, file: !149, line: 2875, baseType: !895, size: 960)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !928, file: !149, line: 2876, baseType: !616, size: 64, offset: 960)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !928, file: !149, line: 2877, baseType: !933, size: 64, offset: 1024)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !149, line: 2856, flags: DIFlagFwdDecl)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !731, file: !149, line: 3386, baseType: !903, size: 1216)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !731, file: !149, line: 3387, baseType: !937, size: 1280)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !149, line: 3093, size: 1280, elements: !938)
!938 = !{!939, !940}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !937, file: !149, line: 3094, baseType: !903, size: 1216)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !937, file: !149, line: 3095, baseType: !933, size: 64, offset: 1216)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !731, file: !149, line: 3388, baseType: !942, size: 1216)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !149, line: 2824, size: 1216, elements: !943)
!943 = !{!944, !945, !946, !947, !948, !949}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !942, file: !149, line: 2825, baseType: !857, size: 896)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !942, file: !149, line: 2827, baseType: !729, size: 64, offset: 896)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !942, file: !149, line: 2828, baseType: !729, size: 64, offset: 960)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !942, file: !149, line: 2829, baseType: !729, size: 64, offset: 1024)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !942, file: !149, line: 2830, baseType: !729, size: 64, offset: 1088)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !942, file: !149, line: 2831, baseType: !729, size: 64, offset: 1152)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !731, file: !149, line: 3389, baseType: !951, size: 1024)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !149, line: 2850, size: 1024, elements: !952)
!952 = !{!953, !954, !955}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !951, file: !149, line: 2851, baseType: !895, size: 960)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !951, file: !149, line: 2852, baseType: !556, size: 32, offset: 960)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !951, file: !149, line: 2853, baseType: !556, size: 32, offset: 992)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !731, file: !149, line: 3390, baseType: !957, size: 1024)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !149, line: 2857, size: 1024, elements: !958)
!958 = !{!959, !960}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !957, file: !149, line: 2858, baseType: !895, size: 960)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !957, file: !149, line: 2859, baseType: !933, size: 64, offset: 960)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !731, file: !149, line: 3391, baseType: !962, size: 960)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !149, line: 2862, size: 960, elements: !963)
!963 = !{!964}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !962, file: !149, line: 2863, baseType: !895, size: 960)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !731, file: !149, line: 3392, baseType: !966, size: 1472)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !149, line: 3304, size: 1472, elements: !967)
!967 = !{!968}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !966, file: !149, line: 3305, baseType: !900, size: 1472)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !731, file: !149, line: 3393, baseType: !970, size: 1792)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !149, line: 3248, size: 1792, elements: !971)
!971 = !{!972, !973, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !970, file: !149, line: 3249, baseType: !900, size: 1472)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !970, file: !149, line: 3251, baseType: !974, size: 64, offset: 1472)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !976, line: 463, size: 1152, elements: !977)
!976 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!977 = !{!978, !981, !1012, !1013, !1016, !1087, !1088, !1089, !1090, !1091, !1092, !1116, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !975, file: !976, line: 464, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !976, line: 464, flags: DIFlagFwdDecl)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !975, file: !976, line: 467, baseType: !982, size: 64, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !133, line: 374, size: 640, elements: !984)
!984 = !{!985, !987, !988, !1001, !1002, !1003, !1004, !1005, !1006, !1008, !1010, !1011}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !983, file: !133, line: 377, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !602, line: 111, baseType: !585)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !983, file: !133, line: 378, baseType: !986, size: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !983, file: !133, line: 381, baseType: !989, size: 64, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !133, line: 282, baseType: !991)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !133, line: 282, size: 128, elements: !992)
!992 = !{!993}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !991, file: !133, line: 282, baseType: !994, size: 128)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !133, line: 281, baseType: !995)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !133, line: 281, size: 128, elements: !996)
!996 = !{!997, !998, !999}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !995, file: !133, line: 281, baseType: !5, size: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !995, file: !133, line: 281, baseType: !5, size: 32, offset: 32)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !995, file: !133, line: 281, baseType: !1000, size: 64, offset: 64)
!1000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !986, size: 64, elements: !576)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !983, file: !133, line: 384, baseType: !556, size: 32, offset: 192)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !983, file: !133, line: 387, baseType: !556, size: 32, offset: 224)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !983, file: !133, line: 390, baseType: !556, size: 32, offset: 256)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !983, file: !133, line: 394, baseType: !989, size: 64, offset: 320)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !983, file: !133, line: 396, baseType: !132, size: 32, offset: 384)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !983, file: !133, line: 399, baseType: !1007, size: 64, offset: 416)
!1007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 64, elements: !684)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !983, file: !133, line: 402, baseType: !1009, size: 64, offset: 480)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !684)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !983, file: !133, line: 406, baseType: !556, size: 32, offset: 544)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !983, file: !133, line: 409, baseType: !556, size: 32, offset: 576)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !975, file: !976, line: 470, baseType: !613, size: 64, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !975, file: !976, line: 473, baseType: !1014, size: 64, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !976, line: 166, flags: DIFlagFwdDecl)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !975, file: !976, line: 476, baseType: !1017, size: 64, offset: 256)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !376, line: 187, size: 256, elements: !1019)
!1019 = !{!1020, !1021, !1034, !1086}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1018, file: !376, line: 189, baseType: !556, size: 32)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1018, file: !376, line: 192, baseType: !1022, size: 64, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !376, line: 87, baseType: !1024)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !376, line: 87, size: 128, elements: !1025)
!1025 = !{!1026}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1024, file: !376, line: 87, baseType: !1027, size: 128)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !376, line: 85, baseType: !1028)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !376, line: 85, size: 128, elements: !1029)
!1029 = !{!1030, !1031, !1032}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1028, file: !376, line: 85, baseType: !5, size: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1028, file: !376, line: 85, baseType: !5, size: 32, offset: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1028, file: !376, line: 85, baseType: !1033, size: 64, offset: 64)
!1033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 64, elements: !576)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1018, file: !376, line: 197, baseType: !1035, size: 64, offset: 128)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1036, line: 144, baseType: !1037)
!1036 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1036, line: 100, size: 896, elements: !1039)
!1039 = !{!1040, !1048, !1053, !1058, !1060, !1063, !1064, !1065, !1066, !1067, !1072, !1074, !1075, !1080, !1085}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1038, file: !1036, line: 102, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1036, line: 52, baseType: !1042)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!1045, !1046}
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1036, line: 47, baseType: !5)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1038, file: !1036, line: 105, baseType: !1049, size: 64, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1036, line: 59, baseType: !1050)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!556, !1046, !1046}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1038, file: !1036, line: 108, baseType: !1054, size: 64, offset: 128)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1036, line: 63, baseType: !1055)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{null, !560}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1038, file: !1036, line: 111, baseType: !1059, size: 64, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1038, file: !1036, line: 114, baseType: !1061, size: 64, offset: 256)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1062, line: 46, baseType: !683)
!1062 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1038, file: !1036, line: 117, baseType: !1061, size: 64, offset: 320)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1038, file: !1036, line: 120, baseType: !1061, size: 64, offset: 384)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1038, file: !1036, line: 124, baseType: !5, size: 32, offset: 448)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1038, file: !1036, line: 128, baseType: !5, size: 32, offset: 480)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1038, file: !1036, line: 131, baseType: !1068, size: 64, offset: 512)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1036, line: 75, baseType: !1069)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!560, !1061, !1061}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1038, file: !1036, line: 132, baseType: !1073, size: 64, offset: 576)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1036, line: 78, baseType: !1055)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1038, file: !1036, line: 135, baseType: !560, size: 64, offset: 640)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1038, file: !1036, line: 136, baseType: !1076, size: 64, offset: 704)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1036, line: 82, baseType: !1077)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!560, !560, !1061, !1061}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1038, file: !1036, line: 137, baseType: !1081, size: 64, offset: 768)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1036, line: 83, baseType: !1082)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{null, !560, !560}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1038, file: !1036, line: 141, baseType: !5, size: 32, offset: 832)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1018, file: !376, line: 200, baseType: !579, size: 64, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !975, file: !976, line: 479, baseType: !1035, size: 64, offset: 320)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !975, file: !976, line: 484, baseType: !729, size: 64, offset: 384)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !975, file: !976, line: 488, baseType: !729, size: 64, offset: 448)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !975, file: !976, line: 493, baseType: !729, size: 64, offset: 512)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !975, file: !976, line: 496, baseType: !729, size: 64, offset: 576)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !975, file: !976, line: 501, baseType: !1093, size: 64, offset: 640)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !144, line: 2355, size: 576, elements: !1095)
!1095 = !{!1096, !1099, !1100, !1101, !1102, !1104, !1105, !1110, !1111, !1112, !1113, !1114, !1115}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1094, file: !144, line: 2356, baseType: !1097, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !144, line: 2356, flags: DIFlagFwdDecl)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1094, file: !144, line: 2357, baseType: !561, size: 64, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1094, file: !144, line: 2358, baseType: !556, size: 32, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1094, file: !144, line: 2359, baseType: !556, size: 32, offset: 160)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1094, file: !144, line: 2360, baseType: !1103, size: 128, offset: 192)
!1103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 128, elements: !709)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1094, file: !144, line: 2364, baseType: !556, size: 32, offset: 320)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1094, file: !144, line: 2367, baseType: !1106, size: 128, offset: 384)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !144, line: 2349, size: 128, elements: !1107)
!1107 = !{!1108, !1109}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1106, file: !144, line: 2351, baseType: !616, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1106, file: !144, line: 2352, baseType: !700, size: 64, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1094, file: !144, line: 2371, baseType: !143, size: 32, offset: 512)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1094, file: !144, line: 2374, baseType: !5, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1094, file: !144, line: 2377, baseType: !5, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1094, file: !144, line: 2381, baseType: !5, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1094, file: !144, line: 2392, baseType: !5, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1094, file: !144, line: 2396, baseType: !5, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !975, file: !976, line: 504, baseType: !1117, size: 64, offset: 704)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !976, line: 504, flags: DIFlagFwdDecl)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !975, file: !976, line: 507, baseType: !1035, size: 64, offset: 768)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !975, file: !976, line: 510, baseType: !556, size: 32, offset: 832)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !975, file: !976, line: 513, baseType: !556, size: 32, offset: 864)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !975, file: !976, line: 516, baseType: !849, size: 32, offset: 896)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !975, file: !976, line: 519, baseType: !849, size: 32, offset: 928)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !975, file: !976, line: 522, baseType: !5, size: 32, offset: 960)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !975, file: !976, line: 523, baseType: !5, size: 32, offset: 992)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !975, file: !976, line: 528, baseType: !561, size: 64, offset: 1024)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !975, file: !976, line: 535, baseType: !5, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !975, file: !976, line: 539, baseType: !5, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !975, file: !976, line: 543, baseType: !5, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !975, file: !976, line: 546, baseType: !5, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !975, file: !976, line: 550, baseType: !5, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !975, file: !976, line: 554, baseType: !5, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !975, file: !976, line: 559, baseType: !5, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !975, file: !976, line: 562, baseType: !5, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !975, file: !976, line: 571, baseType: !5, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !975, file: !976, line: 573, baseType: !5, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !975, file: !976, line: 574, baseType: !5, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !975, file: !976, line: 581, baseType: !5, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !975, file: !976, line: 585, baseType: !5, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !975, file: !976, line: 588, baseType: !5, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !975, file: !976, line: 592, baseType: !5, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !975, file: !976, line: 598, baseType: !5, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !970, file: !149, line: 3254, baseType: !729, size: 64, offset: 1536)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !970, file: !149, line: 3257, baseType: !729, size: 64, offset: 1600)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !970, file: !149, line: 3258, baseType: !729, size: 64, offset: 1664)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !970, file: !149, line: 3264, baseType: !5, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !970, file: !149, line: 3265, baseType: !5, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !970, file: !149, line: 3267, baseType: !5, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !970, file: !149, line: 3268, baseType: !5, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !970, file: !149, line: 3269, baseType: !5, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !970, file: !149, line: 3271, baseType: !5, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !970, file: !149, line: 3272, baseType: !5, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !970, file: !149, line: 3273, baseType: !5, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !970, file: !149, line: 3274, baseType: !5, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !970, file: !149, line: 3275, baseType: !5, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !970, file: !149, line: 3276, baseType: !5, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !970, file: !149, line: 3277, baseType: !5, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !970, file: !149, line: 3279, baseType: !5, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !970, file: !149, line: 3280, baseType: !5, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !970, file: !149, line: 3281, baseType: !5, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !970, file: !149, line: 3282, baseType: !5, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !970, file: !149, line: 3283, baseType: !5, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !970, file: !149, line: 3284, baseType: !5, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !731, file: !149, line: 3394, baseType: !1165, size: 1344)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !149, line: 2279, size: 1344, elements: !1166)
!1166 = !{!1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1192, !1193, !1194, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1165, file: !149, line: 2280, baseType: !767, size: 192)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1165, file: !149, line: 2281, baseType: !729, size: 64, offset: 192)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1165, file: !149, line: 2282, baseType: !729, size: 64, offset: 256)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1165, file: !149, line: 2283, baseType: !729, size: 64, offset: 320)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1165, file: !149, line: 2284, baseType: !729, size: 64, offset: 384)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1165, file: !149, line: 2285, baseType: !5, size: 32, offset: 448)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1165, file: !149, line: 2287, baseType: !5, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1165, file: !149, line: 2288, baseType: !5, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1165, file: !149, line: 2289, baseType: !5, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1165, file: !149, line: 2290, baseType: !5, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1165, file: !149, line: 2291, baseType: !5, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1165, file: !149, line: 2292, baseType: !5, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1165, file: !149, line: 2294, baseType: !5, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1165, file: !149, line: 2296, baseType: !5, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1165, file: !149, line: 2297, baseType: !5, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1165, file: !149, line: 2298, baseType: !5, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1165, file: !149, line: 2299, baseType: !5, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1165, file: !149, line: 2300, baseType: !5, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1165, file: !149, line: 2301, baseType: !5, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1165, file: !149, line: 2302, baseType: !5, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1165, file: !149, line: 2303, baseType: !5, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1165, file: !149, line: 2305, baseType: !5, size: 32, offset: 512)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1165, file: !149, line: 2306, baseType: !1190, size: 32, offset: 544)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1191, line: 31, baseType: !556)
!1191 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1165, file: !149, line: 2307, baseType: !729, size: 64, offset: 576)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1165, file: !149, line: 2308, baseType: !729, size: 64, offset: 640)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1165, file: !149, line: 2314, baseType: !1195, size: 64, offset: 704)
!1195 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !149, line: 2309, size: 64, elements: !1196)
!1196 = !{!1197, !1198, !1199}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1195, file: !149, line: 2310, baseType: !556, size: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1195, file: !149, line: 2311, baseType: !561, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1195, file: !149, line: 2312, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !149, line: 2277, flags: DIFlagFwdDecl)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1165, file: !149, line: 2315, baseType: !729, size: 64, offset: 768)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1165, file: !149, line: 2316, baseType: !729, size: 64, offset: 832)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1165, file: !149, line: 2317, baseType: !729, size: 64, offset: 896)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1165, file: !149, line: 2318, baseType: !729, size: 64, offset: 960)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1165, file: !149, line: 2319, baseType: !729, size: 64, offset: 1024)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1165, file: !149, line: 2320, baseType: !729, size: 64, offset: 1088)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1165, file: !149, line: 2321, baseType: !729, size: 64, offset: 1152)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1165, file: !149, line: 2322, baseType: !729, size: 64, offset: 1216)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1165, file: !149, line: 2324, baseType: !1211, size: 64, offset: 1280)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !149, line: 2324, flags: DIFlagFwdDecl)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !731, file: !149, line: 3395, baseType: !1214, size: 320)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !149, line: 1469, size: 320, elements: !1215)
!1215 = !{!1216, !1217, !1218}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1214, file: !149, line: 1470, baseType: !767, size: 192)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1214, file: !149, line: 1471, baseType: !729, size: 64, offset: 192)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1214, file: !149, line: 1472, baseType: !729, size: 64, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !731, file: !149, line: 3396, baseType: !1220, size: 320)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !149, line: 1482, size: 320, elements: !1221)
!1221 = !{!1222, !1223, !1224}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1220, file: !149, line: 1483, baseType: !767, size: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1220, file: !149, line: 1484, baseType: !556, size: 32, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1220, file: !149, line: 1485, baseType: !1225, size: 64, offset: 256)
!1225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !729, size: 64, elements: !576)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !731, file: !149, line: 3397, baseType: !1227, size: 384)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !149, line: 1829, size: 384, elements: !1228)
!1228 = !{!1229, !1230, !1231, !1232}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1227, file: !149, line: 1830, baseType: !767, size: 192)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1227, file: !149, line: 1831, baseType: !849, size: 32, offset: 192)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1227, file: !149, line: 1832, baseType: !729, size: 64, offset: 256)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1227, file: !149, line: 1835, baseType: !1225, size: 64, offset: 320)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !731, file: !149, line: 3398, baseType: !1234, size: 704)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !149, line: 1898, size: 704, elements: !1235)
!1235 = !{!1236, !1237, !1238, !1242, !1243, !1246}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1234, file: !149, line: 1899, baseType: !767, size: 192)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1234, file: !149, line: 1902, baseType: !729, size: 64, offset: 192)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1234, file: !149, line: 1905, baseType: !1239, size: 64, offset: 256)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !602, line: 58, baseType: !1240)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !602, line: 57, flags: DIFlagFwdDecl)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1234, file: !149, line: 1908, baseType: !5, size: 32, offset: 320)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1234, file: !149, line: 1911, baseType: !1244, size: 64, offset: 384)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !149, line: 1876, flags: DIFlagFwdDecl)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1234, file: !149, line: 1914, baseType: !1247, size: 256, offset: 448)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !149, line: 1883, size: 256, elements: !1248)
!1248 = !{!1249, !1251, !1252, !1257}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1247, file: !149, line: 1884, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1247, file: !149, line: 1885, baseType: !1250, size: 64, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1247, file: !149, line: 1891, baseType: !1253, size: 64, offset: 128)
!1253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1247, file: !149, line: 1891, size: 64, elements: !1254)
!1254 = !{!1255, !1256}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1253, file: !149, line: 1891, baseType: !1239, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1253, file: !149, line: 1891, baseType: !729, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1247, file: !149, line: 1892, baseType: !1258, size: 64, offset: 192)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !731, file: !149, line: 3399, baseType: !1260, size: 704)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !149, line: 2008, size: 704, elements: !1261)
!1261 = !{!1262, !1263, !1264, !1265, !1266, !1267, !1279, !1280, !1281, !1282, !1283}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1260, file: !149, line: 2009, baseType: !767, size: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1260, file: !149, line: 2011, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1260, file: !149, line: 2012, baseType: !5, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1260, file: !149, line: 2014, baseType: !849, size: 32, offset: 224)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1260, file: !149, line: 2016, baseType: !729, size: 64, offset: 256)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1260, file: !149, line: 2017, baseType: !1268, size: 64, offset: 320)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !149, line: 183, baseType: !1270)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !149, line: 183, size: 128, elements: !1271)
!1271 = !{!1272}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1270, file: !149, line: 183, baseType: !1273, size: 128)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !149, line: 182, baseType: !1274)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !149, line: 182, size: 128, elements: !1275)
!1275 = !{!1276, !1277, !1278}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1274, file: !149, line: 182, baseType: !5, size: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1274, file: !149, line: 182, baseType: !5, size: 32, offset: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1274, file: !149, line: 182, baseType: !1225, size: 64, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1260, file: !149, line: 2019, baseType: !729, size: 64, offset: 384)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1260, file: !149, line: 2020, baseType: !729, size: 64, offset: 448)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1260, file: !149, line: 2021, baseType: !729, size: 64, offset: 512)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1260, file: !149, line: 2022, baseType: !729, size: 64, offset: 576)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1260, file: !149, line: 2023, baseType: !729, size: 64, offset: 640)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !731, file: !149, line: 3400, baseType: !1285, size: 832)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !149, line: 2430, size: 832, elements: !1286)
!1286 = !{!1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1285, file: !149, line: 2431, baseType: !767, size: 192)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1285, file: !149, line: 2433, baseType: !729, size: 64, offset: 192)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1285, file: !149, line: 2434, baseType: !729, size: 64, offset: 256)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1285, file: !149, line: 2435, baseType: !729, size: 64, offset: 320)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1285, file: !149, line: 2436, baseType: !729, size: 64, offset: 384)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1285, file: !149, line: 2437, baseType: !1268, size: 64, offset: 448)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1285, file: !149, line: 2438, baseType: !729, size: 64, offset: 512)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1285, file: !149, line: 2440, baseType: !729, size: 64, offset: 576)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1285, file: !149, line: 2441, baseType: !729, size: 64, offset: 640)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1285, file: !149, line: 2443, baseType: !1297, size: 128, offset: 704)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !149, line: 182, baseType: !1298)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !149, line: 182, size: 128, elements: !1299)
!1299 = !{!1300}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1298, file: !149, line: 182, baseType: !1273, size: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !731, file: !149, line: 3401, baseType: !1302, size: 320)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !149, line: 3327, size: 320, elements: !1303)
!1303 = !{!1304, !1305, !1312}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1302, file: !149, line: 3329, baseType: !767, size: 192)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1302, file: !149, line: 3330, baseType: !1306, size: 64, offset: 192)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !149, line: 3320, size: 192, elements: !1308)
!1308 = !{!1309, !1310, !1311}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1307, file: !149, line: 3322, baseType: !1306, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1307, file: !149, line: 3323, baseType: !1306, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1307, file: !149, line: 3324, baseType: !729, size: 64, offset: 128)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1302, file: !149, line: 3331, baseType: !1306, size: 64, offset: 256)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !731, file: !149, line: 3402, baseType: !1314, size: 256)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !149, line: 1540, size: 256, elements: !1315)
!1315 = !{!1316, !1317}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1314, file: !149, line: 1541, baseType: !767, size: 192)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1314, file: !149, line: 1542, baseType: !1318, size: 64, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !149, line: 1538, baseType: !1320)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !149, line: 1538, size: 192, elements: !1321)
!1321 = !{!1322}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1320, file: !149, line: 1538, baseType: !1323, size: 192)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !149, line: 1537, baseType: !1324)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !149, line: 1537, size: 192, elements: !1325)
!1325 = !{!1326, !1327, !1328}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1324, file: !149, line: 1537, baseType: !5, size: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1324, file: !149, line: 1537, baseType: !5, size: 32, offset: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1324, file: !149, line: 1537, baseType: !1329, size: 128, offset: 64)
!1329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1330, size: 128, elements: !576)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !149, line: 1535, baseType: !1331)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !149, line: 1532, size: 128, elements: !1332)
!1332 = !{!1333, !1334}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1331, file: !149, line: 1533, baseType: !729, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1331, file: !149, line: 1534, baseType: !729, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !731, file: !149, line: 3403, baseType: !1336, size: 512)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !149, line: 1938, size: 512, elements: !1337)
!1337 = !{!1338, !1339, !1340, !1341, !1347, !1348, !1349}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1336, file: !149, line: 1939, baseType: !767, size: 192)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1336, file: !149, line: 1940, baseType: !849, size: 32, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1336, file: !149, line: 1941, baseType: !148, size: 32, offset: 224)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1336, file: !149, line: 1946, baseType: !1342, size: 32, offset: 256)
!1342 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !149, line: 1942, size: 32, elements: !1343)
!1343 = !{!1344, !1345, !1346}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1342, file: !149, line: 1943, baseType: !167, size: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1342, file: !149, line: 1944, baseType: !174, size: 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1342, file: !149, line: 1945, baseType: !181, size: 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1336, file: !149, line: 1950, baseType: !612, size: 64, offset: 320)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1336, file: !149, line: 1951, baseType: !612, size: 64, offset: 384)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1336, file: !149, line: 1953, baseType: !1225, size: 64, offset: 448)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !731, file: !149, line: 3404, baseType: !1351, size: 1664)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !149, line: 3337, size: 1664, elements: !1352)
!1352 = !{!1353, !1354}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1351, file: !149, line: 3338, baseType: !767, size: 192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1351, file: !149, line: 3341, baseType: !1355, size: 1472, offset: 192)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1356, line: 410, size: 1472, elements: !1357)
!1356 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1357 = !{!1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1355, file: !1356, line: 412, baseType: !556, size: 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1355, file: !1356, line: 413, baseType: !556, size: 32, offset: 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1355, file: !1356, line: 414, baseType: !556, size: 32, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1355, file: !1356, line: 415, baseType: !556, size: 32, offset: 96)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1355, file: !1356, line: 416, baseType: !556, size: 32, offset: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1355, file: !1356, line: 417, baseType: !556, size: 32, offset: 160)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1355, file: !1356, line: 418, baseType: !555, size: 8, offset: 192)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1355, file: !1356, line: 419, baseType: !555, size: 8, offset: 200)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1355, file: !1356, line: 420, baseType: !1367, size: 8, offset: 208)
!1367 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1355, file: !1356, line: 421, baseType: !1367, size: 8, offset: 216)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1355, file: !1356, line: 422, baseType: !1367, size: 8, offset: 224)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1355, file: !1356, line: 423, baseType: !1367, size: 8, offset: 232)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1355, file: !1356, line: 424, baseType: !1367, size: 8, offset: 240)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1355, file: !1356, line: 425, baseType: !1367, size: 8, offset: 248)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1355, file: !1356, line: 426, baseType: !1367, size: 8, offset: 256)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1355, file: !1356, line: 427, baseType: !1367, size: 8, offset: 264)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1355, file: !1356, line: 428, baseType: !1367, size: 8, offset: 272)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1355, file: !1356, line: 429, baseType: !1367, size: 8, offset: 280)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1355, file: !1356, line: 430, baseType: !1367, size: 8, offset: 288)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1355, file: !1356, line: 431, baseType: !1367, size: 8, offset: 296)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1355, file: !1356, line: 432, baseType: !1367, size: 8, offset: 304)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1355, file: !1356, line: 433, baseType: !1367, size: 8, offset: 312)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1355, file: !1356, line: 434, baseType: !1367, size: 8, offset: 320)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1355, file: !1356, line: 435, baseType: !1367, size: 8, offset: 328)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1355, file: !1356, line: 436, baseType: !1367, size: 8, offset: 336)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1355, file: !1356, line: 437, baseType: !1367, size: 8, offset: 344)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1355, file: !1356, line: 438, baseType: !1367, size: 8, offset: 352)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1355, file: !1356, line: 439, baseType: !1367, size: 8, offset: 360)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1355, file: !1356, line: 440, baseType: !1367, size: 8, offset: 368)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1355, file: !1356, line: 441, baseType: !1367, size: 8, offset: 376)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1355, file: !1356, line: 442, baseType: !1367, size: 8, offset: 384)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1355, file: !1356, line: 443, baseType: !1367, size: 8, offset: 392)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1355, file: !1356, line: 444, baseType: !1367, size: 8, offset: 400)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1355, file: !1356, line: 445, baseType: !1367, size: 8, offset: 408)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1355, file: !1356, line: 446, baseType: !1367, size: 8, offset: 416)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1355, file: !1356, line: 447, baseType: !1367, size: 8, offset: 424)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1355, file: !1356, line: 448, baseType: !1367, size: 8, offset: 432)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1355, file: !1356, line: 449, baseType: !1367, size: 8, offset: 440)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1355, file: !1356, line: 450, baseType: !1367, size: 8, offset: 448)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1355, file: !1356, line: 451, baseType: !1367, size: 8, offset: 456)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1355, file: !1356, line: 452, baseType: !1367, size: 8, offset: 464)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1355, file: !1356, line: 453, baseType: !1367, size: 8, offset: 472)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1355, file: !1356, line: 454, baseType: !1367, size: 8, offset: 480)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1355, file: !1356, line: 455, baseType: !1367, size: 8, offset: 488)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1355, file: !1356, line: 456, baseType: !1367, size: 8, offset: 496)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1355, file: !1356, line: 457, baseType: !1367, size: 8, offset: 504)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1355, file: !1356, line: 458, baseType: !1367, size: 8, offset: 512)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1355, file: !1356, line: 459, baseType: !1367, size: 8, offset: 520)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1355, file: !1356, line: 460, baseType: !1367, size: 8, offset: 528)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1355, file: !1356, line: 461, baseType: !1367, size: 8, offset: 536)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1355, file: !1356, line: 462, baseType: !1367, size: 8, offset: 544)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1355, file: !1356, line: 463, baseType: !1367, size: 8, offset: 552)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1355, file: !1356, line: 464, baseType: !1367, size: 8, offset: 560)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1355, file: !1356, line: 465, baseType: !1367, size: 8, offset: 568)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1355, file: !1356, line: 466, baseType: !1367, size: 8, offset: 576)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1355, file: !1356, line: 467, baseType: !1367, size: 8, offset: 584)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1355, file: !1356, line: 468, baseType: !1367, size: 8, offset: 592)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1355, file: !1356, line: 469, baseType: !1367, size: 8, offset: 600)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1355, file: !1356, line: 470, baseType: !1367, size: 8, offset: 608)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1355, file: !1356, line: 471, baseType: !1367, size: 8, offset: 616)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1355, file: !1356, line: 472, baseType: !1367, size: 8, offset: 624)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1355, file: !1356, line: 473, baseType: !1367, size: 8, offset: 632)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1355, file: !1356, line: 474, baseType: !1367, size: 8, offset: 640)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1355, file: !1356, line: 475, baseType: !1367, size: 8, offset: 648)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1355, file: !1356, line: 476, baseType: !1367, size: 8, offset: 656)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1355, file: !1356, line: 477, baseType: !1367, size: 8, offset: 664)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1355, file: !1356, line: 478, baseType: !1367, size: 8, offset: 672)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1355, file: !1356, line: 479, baseType: !1367, size: 8, offset: 680)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1355, file: !1356, line: 480, baseType: !1367, size: 8, offset: 688)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1355, file: !1356, line: 481, baseType: !1367, size: 8, offset: 696)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1355, file: !1356, line: 482, baseType: !1367, size: 8, offset: 704)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1355, file: !1356, line: 483, baseType: !1367, size: 8, offset: 712)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1355, file: !1356, line: 484, baseType: !1367, size: 8, offset: 720)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1355, file: !1356, line: 485, baseType: !1367, size: 8, offset: 728)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1355, file: !1356, line: 486, baseType: !1367, size: 8, offset: 736)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1355, file: !1356, line: 487, baseType: !1367, size: 8, offset: 744)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1355, file: !1356, line: 488, baseType: !1367, size: 8, offset: 752)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1355, file: !1356, line: 489, baseType: !1367, size: 8, offset: 760)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1355, file: !1356, line: 490, baseType: !1367, size: 8, offset: 768)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1355, file: !1356, line: 491, baseType: !1367, size: 8, offset: 776)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1355, file: !1356, line: 492, baseType: !1367, size: 8, offset: 784)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1355, file: !1356, line: 493, baseType: !1367, size: 8, offset: 792)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1355, file: !1356, line: 494, baseType: !1367, size: 8, offset: 800)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1355, file: !1356, line: 495, baseType: !1367, size: 8, offset: 808)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1355, file: !1356, line: 496, baseType: !1367, size: 8, offset: 816)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1355, file: !1356, line: 497, baseType: !1367, size: 8, offset: 824)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1355, file: !1356, line: 498, baseType: !1367, size: 8, offset: 832)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1355, file: !1356, line: 499, baseType: !1367, size: 8, offset: 840)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1355, file: !1356, line: 500, baseType: !1367, size: 8, offset: 848)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1355, file: !1356, line: 501, baseType: !1367, size: 8, offset: 856)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1355, file: !1356, line: 502, baseType: !1367, size: 8, offset: 864)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1355, file: !1356, line: 503, baseType: !1367, size: 8, offset: 872)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1355, file: !1356, line: 504, baseType: !1367, size: 8, offset: 880)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1355, file: !1356, line: 505, baseType: !1367, size: 8, offset: 888)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1355, file: !1356, line: 506, baseType: !1367, size: 8, offset: 896)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1355, file: !1356, line: 507, baseType: !1367, size: 8, offset: 904)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1355, file: !1356, line: 508, baseType: !1367, size: 8, offset: 912)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1355, file: !1356, line: 509, baseType: !1367, size: 8, offset: 920)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1355, file: !1356, line: 510, baseType: !1367, size: 8, offset: 928)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1355, file: !1356, line: 511, baseType: !1367, size: 8, offset: 936)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1355, file: !1356, line: 512, baseType: !1367, size: 8, offset: 944)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1355, file: !1356, line: 513, baseType: !1367, size: 8, offset: 952)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1355, file: !1356, line: 514, baseType: !1367, size: 8, offset: 960)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1355, file: !1356, line: 515, baseType: !1367, size: 8, offset: 968)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1355, file: !1356, line: 516, baseType: !1367, size: 8, offset: 976)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1355, file: !1356, line: 517, baseType: !1367, size: 8, offset: 984)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1355, file: !1356, line: 518, baseType: !1367, size: 8, offset: 992)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1355, file: !1356, line: 519, baseType: !1367, size: 8, offset: 1000)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1355, file: !1356, line: 520, baseType: !1367, size: 8, offset: 1008)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1355, file: !1356, line: 521, baseType: !1367, size: 8, offset: 1016)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1355, file: !1356, line: 522, baseType: !1367, size: 8, offset: 1024)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1355, file: !1356, line: 523, baseType: !1367, size: 8, offset: 1032)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1355, file: !1356, line: 524, baseType: !1367, size: 8, offset: 1040)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1355, file: !1356, line: 525, baseType: !1367, size: 8, offset: 1048)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1355, file: !1356, line: 526, baseType: !1367, size: 8, offset: 1056)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1355, file: !1356, line: 527, baseType: !1367, size: 8, offset: 1064)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1355, file: !1356, line: 528, baseType: !1367, size: 8, offset: 1072)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1355, file: !1356, line: 529, baseType: !1367, size: 8, offset: 1080)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1355, file: !1356, line: 530, baseType: !1367, size: 8, offset: 1088)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1355, file: !1356, line: 531, baseType: !1367, size: 8, offset: 1096)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1355, file: !1356, line: 532, baseType: !1367, size: 8, offset: 1104)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1355, file: !1356, line: 533, baseType: !1367, size: 8, offset: 1112)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1355, file: !1356, line: 534, baseType: !1367, size: 8, offset: 1120)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1355, file: !1356, line: 535, baseType: !1367, size: 8, offset: 1128)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1355, file: !1356, line: 536, baseType: !1367, size: 8, offset: 1136)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1355, file: !1356, line: 537, baseType: !1367, size: 8, offset: 1144)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1355, file: !1356, line: 538, baseType: !1367, size: 8, offset: 1152)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1355, file: !1356, line: 539, baseType: !1367, size: 8, offset: 1160)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1355, file: !1356, line: 540, baseType: !1367, size: 8, offset: 1168)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1355, file: !1356, line: 541, baseType: !1367, size: 8, offset: 1176)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1355, file: !1356, line: 542, baseType: !1367, size: 8, offset: 1184)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1355, file: !1356, line: 543, baseType: !1367, size: 8, offset: 1192)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1355, file: !1356, line: 544, baseType: !1367, size: 8, offset: 1200)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1355, file: !1356, line: 545, baseType: !1367, size: 8, offset: 1208)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1355, file: !1356, line: 546, baseType: !1367, size: 8, offset: 1216)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1355, file: !1356, line: 547, baseType: !1367, size: 8, offset: 1224)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1355, file: !1356, line: 548, baseType: !1367, size: 8, offset: 1232)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1355, file: !1356, line: 549, baseType: !1367, size: 8, offset: 1240)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1355, file: !1356, line: 550, baseType: !1367, size: 8, offset: 1248)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1355, file: !1356, line: 551, baseType: !1367, size: 8, offset: 1256)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1355, file: !1356, line: 552, baseType: !1367, size: 8, offset: 1264)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1355, file: !1356, line: 553, baseType: !1367, size: 8, offset: 1272)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1355, file: !1356, line: 554, baseType: !1367, size: 8, offset: 1280)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1355, file: !1356, line: 555, baseType: !1367, size: 8, offset: 1288)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1355, file: !1356, line: 556, baseType: !1367, size: 8, offset: 1296)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1355, file: !1356, line: 557, baseType: !1367, size: 8, offset: 1304)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1355, file: !1356, line: 558, baseType: !1367, size: 8, offset: 1312)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1355, file: !1356, line: 559, baseType: !1367, size: 8, offset: 1320)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1355, file: !1356, line: 560, baseType: !1367, size: 8, offset: 1328)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1355, file: !1356, line: 561, baseType: !1367, size: 8, offset: 1336)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1355, file: !1356, line: 562, baseType: !1367, size: 8, offset: 1344)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1355, file: !1356, line: 563, baseType: !1367, size: 8, offset: 1352)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1355, file: !1356, line: 564, baseType: !1367, size: 8, offset: 1360)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1355, file: !1356, line: 565, baseType: !1367, size: 8, offset: 1368)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1355, file: !1356, line: 566, baseType: !1367, size: 8, offset: 1376)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1355, file: !1356, line: 567, baseType: !1367, size: 8, offset: 1384)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1355, file: !1356, line: 568, baseType: !1367, size: 8, offset: 1392)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1355, file: !1356, line: 569, baseType: !1367, size: 8, offset: 1400)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1355, file: !1356, line: 570, baseType: !1367, size: 8, offset: 1408)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1355, file: !1356, line: 571, baseType: !1367, size: 8, offset: 1416)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1355, file: !1356, line: 572, baseType: !1367, size: 8, offset: 1424)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1355, file: !1356, line: 573, baseType: !1367, size: 8, offset: 1432)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1355, file: !1356, line: 574, baseType: !1367, size: 8, offset: 1440)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !731, file: !149, line: 3405, baseType: !1523, size: 384)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !149, line: 3352, size: 384, elements: !1524)
!1524 = !{!1525, !1526}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1523, file: !149, line: 3353, baseType: !767, size: 192)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1523, file: !149, line: 3356, baseType: !1527, size: 192, offset: 192)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1356, line: 578, size: 192, elements: !1528)
!1528 = !{!1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1527, file: !1356, line: 580, baseType: !556, size: 32)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1527, file: !1356, line: 581, baseType: !556, size: 32, offset: 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1527, file: !1356, line: 582, baseType: !556, size: 32, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1527, file: !1356, line: 583, baseType: !556, size: 32, offset: 96)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1527, file: !1356, line: 584, baseType: !555, size: 8, offset: 128)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1527, file: !1356, line: 585, baseType: !555, size: 8, offset: 136)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1527, file: !1356, line: 586, baseType: !555, size: 8, offset: 144)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1527, file: !1356, line: 587, baseType: !555, size: 8, offset: 152)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1527, file: !1356, line: 588, baseType: !555, size: 8, offset: 160)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1527, file: !1356, line: 589, baseType: !555, size: 8, offset: 168)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1527, file: !1356, line: 590, baseType: !555, size: 8, offset: 176)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !636, file: !389, line: 178, baseType: !585, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !636, file: !389, line: 179, baseType: !1542, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !389, line: 150, baseType: !1544)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !389, line: 142, size: 320, elements: !1545)
!1545 = !{!1546, !1547, !1548, !1549, !1550, !1551}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1544, file: !389, line: 144, baseType: !729, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1544, file: !389, line: 145, baseType: !616, size: 64, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1544, file: !389, line: 146, baseType: !616, size: 64, offset: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1544, file: !389, line: 147, baseType: !1190, size: 32, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1544, file: !389, line: 148, baseType: !5, size: 32, offset: 224)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1544, file: !389, line: 149, baseType: !555, size: 8, offset: 256)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !636, file: !389, line: 180, baseType: !1553, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !389, line: 162, baseType: !1555)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !389, line: 159, size: 128, elements: !1556)
!1556 = !{!1557, !1558}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1555, file: !389, line: 160, baseType: !729, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1555, file: !389, line: 161, baseType: !700, size: 64, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !636, file: !389, line: 181, baseType: !1560, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !389, line: 181, flags: DIFlagFwdDecl)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !631, file: !389, line: 317, baseType: !1563, size: 64)
!1563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !700, size: 64, elements: !576)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !631, file: !389, line: 318, baseType: !1565, size: 320)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !389, line: 188, size: 320, elements: !1566)
!1566 = !{!1567, !1569, !1624}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1565, file: !389, line: 190, baseType: !1568, size: 192)
!1568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 192, elements: !800)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1565, file: !389, line: 193, baseType: !1570, size: 64, offset: 192)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !389, line: 206, size: 320, elements: !1572)
!1572 = !{!1573, !1609, !1610, !1611, !1623}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1571, file: !389, line: 208, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !602, line: 62, baseType: !1576)
!1576 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1577, line: 538, size: 256, elements: !1578)
!1577 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1578 = !{!1579, !1583, !1589, !1600}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1576, file: !1577, line: 539, baseType: !1580, size: 32)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1577, line: 482, size: 32, elements: !1581)
!1581 = !{!1582}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1580, file: !1577, line: 484, baseType: !5, size: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1576, file: !1577, line: 540, baseType: !1584, size: 192)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1577, line: 488, size: 192, elements: !1585)
!1585 = !{!1586, !1587, !1588}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1584, file: !1577, line: 489, baseType: !1580, size: 32)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1584, file: !1577, line: 492, baseType: !561, size: 64, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1584, file: !1577, line: 496, baseType: !729, size: 64, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1576, file: !1577, line: 541, baseType: !1590, size: 256)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1577, line: 504, size: 256, elements: !1591)
!1591 = !{!1592, !1593, !1598, !1599}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1590, file: !1577, line: 505, baseType: !1580, size: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1590, file: !1577, line: 509, baseType: !1594, size: 64, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1577, line: 501, baseType: !1595)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{null, !1046}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1590, file: !1577, line: 510, baseType: !1046, size: 64, offset: 128)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1590, file: !1577, line: 513, baseType: !1574, size: 64, offset: 192)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1576, file: !1577, line: 542, baseType: !1601, size: 128)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1577, line: 530, size: 128, elements: !1602)
!1602 = !{!1603, !1604}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1601, file: !1577, line: 531, baseType: !1580, size: 32)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1601, file: !1577, line: 534, baseType: !1605, size: 64, offset: 64)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1577, line: 525, baseType: !1606)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!555, !729, !561, !683, !683}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1571, file: !389, line: 211, baseType: !5, size: 32, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1571, file: !389, line: 214, baseType: !700, size: 64, offset: 128)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1571, file: !389, line: 224, baseType: !1612, size: 64, offset: 192)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !389, line: 202, baseType: !1614)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !389, line: 202, size: 128, elements: !1615)
!1615 = !{!1616}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1614, file: !389, line: 202, baseType: !1617, size: 128)
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !389, line: 200, baseType: !1618)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !389, line: 200, size: 128, elements: !1619)
!1619 = !{!1620, !1621, !1622}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1618, file: !389, line: 200, baseType: !5, size: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1618, file: !389, line: 200, baseType: !5, size: 32, offset: 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1618, file: !389, line: 200, baseType: !649, size: 64, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1571, file: !389, line: 234, baseType: !1612, size: 64, offset: 256)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1565, file: !389, line: 197, baseType: !700, size: 64, offset: 256)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !631, file: !389, line: 319, baseType: !789, size: 256)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !631, file: !389, line: 320, baseType: !808, size: 192)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !604, file: !133, line: 134, baseType: !560, size: 64, offset: 192)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !604, file: !133, line: 137, baseType: !729, size: 64, offset: 256)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !604, file: !133, line: 138, baseType: !849, size: 32, offset: 320)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !604, file: !133, line: 142, baseType: !5, size: 32, offset: 352)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !604, file: !133, line: 144, baseType: !556, size: 32, offset: 384)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !604, file: !133, line: 145, baseType: !556, size: 32, offset: 416)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !604, file: !133, line: 146, baseType: !1634, size: 64, offset: 448)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !133, line: 119, baseType: !700)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !586, file: !133, line: 220, baseType: !589, size: 64, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !586, file: !133, line: 223, baseType: !560, size: 64, offset: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !586, file: !133, line: 226, baseType: !579, size: 64, offset: 192)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !586, file: !133, line: 229, baseType: !1639, size: 128, offset: 256)
!1639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1640, size: 128, elements: !684)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !133, line: 229, flags: DIFlagFwdDecl)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !586, file: !133, line: 232, baseType: !585, size: 64, offset: 384)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !586, file: !133, line: 233, baseType: !585, size: 64, offset: 448)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !586, file: !133, line: 238, baseType: !1645, size: 64, offset: 512)
!1645 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !133, line: 235, size: 64, elements: !1646)
!1646 = !{!1647, !1653}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1645, file: !133, line: 236, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !133, line: 273, size: 128, elements: !1650)
!1650 = !{!1651, !1652}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1649, file: !133, line: 275, baseType: !612, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1649, file: !133, line: 278, baseType: !612, size: 64, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1645, file: !133, line: 237, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !133, line: 259, size: 320, elements: !1656)
!1656 = !{!1657, !1658, !1659, !1660, !1661}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1655, file: !133, line: 261, baseType: !616, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1655, file: !133, line: 262, baseType: !616, size: 64, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1655, file: !133, line: 266, baseType: !616, size: 64, offset: 128)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1655, file: !133, line: 267, baseType: !616, size: 64, offset: 192)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1655, file: !133, line: 270, baseType: !556, size: 32, offset: 256)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !586, file: !133, line: 241, baseType: !1634, size: 64, offset: 576)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !586, file: !133, line: 244, baseType: !556, size: 32, offset: 640)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !586, file: !133, line: 247, baseType: !556, size: 32, offset: 672)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !586, file: !133, line: 250, baseType: !556, size: 32, offset: 704)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !586, file: !133, line: 253, baseType: !556, size: 32, offset: 736)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !586, file: !133, line: 256, baseType: !556, size: 32, offset: 768)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !580, file: !376, line: 111, baseType: !585, size: 64, offset: 128)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !580, file: !376, line: 114, baseType: !1670, size: 64, offset: 192)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !376, line: 41, size: 64, elements: !1671)
!1671 = !{!1672, !1673}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !1670, file: !376, line: 42, baseType: !375, size: 32)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !1670, file: !376, line: 43, baseType: !5, size: 32, offset: 32)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !580, file: !376, line: 117, baseType: !5, size: 32, offset: 256)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !580, file: !376, line: 120, baseType: !5, size: 32, offset: 288)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !580, file: !376, line: 123, baseType: !1022, size: 64, offset: 320)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !580, file: !376, line: 126, baseType: !579, size: 64, offset: 384)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !580, file: !376, line: 129, baseType: !579, size: 64, offset: 448)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !580, file: !376, line: 132, baseType: !560, size: 64, offset: 512)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !580, file: !376, line: 139, baseType: !729, size: 64, offset: 576)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !580, file: !376, line: 143, baseType: !777, size: 128, offset: 640)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !580, file: !376, line: 146, baseType: !777, size: 128, offset: 768)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !580, file: !376, line: 148, baseType: !555, size: 8, offset: 896)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !580, file: !376, line: 149, baseType: !555, size: 8, offset: 904)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !580, file: !376, line: 153, baseType: !384, size: 32, offset: 928)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !580, file: !376, line: 156, baseType: !1687, size: 64, offset: 960)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !376, line: 48, size: 320, elements: !1689)
!1689 = !{!1690, !1691, !1692, !1693}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1688, file: !376, line: 50, baseType: !1239, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1688, file: !376, line: 59, baseType: !777, size: 128, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1688, file: !376, line: 64, baseType: !555, size: 8, offset: 192)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1688, file: !376, line: 67, baseType: !1687, size: 64, offset: 256)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !580, file: !376, line: 159, baseType: !1695, size: 64, offset: 1024)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !376, line: 72, size: 256, elements: !1697)
!1697 = !{!1698, !1699, !1700, !1701}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1696, file: !376, line: 74, baseType: !603, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1696, file: !376, line: 77, baseType: !1695, size: 64, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1696, file: !376, line: 78, baseType: !1695, size: 64, offset: 128)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1696, file: !376, line: 81, baseType: !1695, size: 64, offset: 192)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !580, file: !376, line: 162, baseType: !555, size: 8, offset: 1088)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !580, file: !376, line: 166, baseType: !729, size: 64, offset: 1152)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opt_info", file: !1, line: 112, size: 576, elements: !1706)
!1706 = !{!1707, !1708, !1719, !1721, !1722, !1739, !1741, !1742, !1743}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "insns_to_split", scope: !1705, file: !1, line: 114, baseType: !1035, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "iv_to_split_head", scope: !1705, file: !1, line: 115, baseType: !1709, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iv_to_split", file: !1, line: 74, size: 384, elements: !1711)
!1711 = !{!1712, !1713, !1714, !1715, !1716, !1717}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1710, file: !1, line: 76, baseType: !616, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "base_var", scope: !1710, file: !1, line: 77, baseType: !616, size: 64, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !1710, file: !1, line: 79, baseType: !616, size: 64, offset: 128)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1710, file: !1, line: 80, baseType: !1709, size: 64, offset: 192)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "n_loc", scope: !1710, file: !1, line: 81, baseType: !5, size: 32, offset: 256)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1710, file: !1, line: 82, baseType: !1718, size: 96, offset: 288)
!1718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 96, elements: !800)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "iv_to_split_tail", scope: !1705, file: !1, line: 116, baseType: !1720, size: 64, offset: 128)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "insns_with_var_to_expand", scope: !1705, file: !1, line: 117, baseType: !1035, size: 64, offset: 192)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "var_to_expand_head", scope: !1705, file: !1, line: 119, baseType: !1723, size: 64, offset: 256)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_to_expand", file: !1, line: 90, size: 384, elements: !1725)
!1725 = !{!1726, !1727, !1728, !1734, !1735, !1736, !1737, !1738}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1724, file: !1, line: 92, baseType: !616, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1724, file: !1, line: 93, baseType: !616, size: 64, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "var_expansions", scope: !1724, file: !1, line: 94, baseType: !1729, size: 64, offset: 128)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_heap", file: !389, line: 201, baseType: !1731)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_heap", file: !389, line: 201, size: 128, elements: !1732)
!1732 = !{!1733}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1731, file: !389, line: 201, baseType: !1617, size: 128)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1724, file: !1, line: 95, baseType: !1723, size: 64, offset: 192)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1724, file: !1, line: 96, baseType: !388, size: 32, offset: 256)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "expansion_count", scope: !1724, file: !1, line: 98, baseType: !556, size: 32, offset: 288)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "reuse_expansion", scope: !1724, file: !1, line: 99, baseType: !556, size: 32, offset: 320)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "accum_pos", scope: !1724, file: !1, line: 103, baseType: !5, size: 32, offset: 352)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "var_to_expand_tail", scope: !1705, file: !1, line: 120, baseType: !1740, size: 64, offset: 320)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "first_new_block", scope: !1705, file: !1, line: 121, baseType: !5, size: 32, offset: 384)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "loop_exit", scope: !1705, file: !1, line: 123, baseType: !986, size: 64, offset: 448)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "loop_preheader", scope: !1705, file: !1, line: 124, baseType: !986, size: 64, offset: 512)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1710)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1724)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_heap", file: !133, line: 283, baseType: !1750)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_heap", file: !133, line: 283, size: 128, elements: !1751)
!1751 = !{!1752}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1750, file: !133, line: 283, baseType: !994, size: 128)
!1753 = !{i32 2, !"Dwarf Version", i32 4}
!1754 = !{i32 2, !"Debug Info Version", i32 3}
!1755 = !{i32 1, !"wchar_size", i32 4}
!1756 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1757 = distinct !DISubprogram(name: "vprintf", scope: !1758, file: !1758, line: 39, type: !1759, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1769)
!1758 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!556, !1761, !1762}
!1761 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !561)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !1764)
!1764 = !{!1765, !1766, !1767, !1768}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1763, file: !1, baseType: !5, size: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1763, file: !1, baseType: !5, size: 32, offset: 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1763, file: !1, baseType: !560, size: 64, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1763, file: !1, baseType: !560, size: 64, offset: 128)
!1769 = !{!1770, !1771}
!1770 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1757, file: !1758, line: 39, type: !1761)
!1771 = !DILocalVariable(name: "__arg", arg: 2, scope: !1757, file: !1758, line: 39, type: !1762)
!1772 = !DILocation(line: 0, scope: !1757)
!1773 = !DILocation(line: 41, column: 20, scope: !1757)
!1774 = !DILocation(line: 41, column: 10, scope: !1757)
!1775 = !DILocation(line: 41, column: 3, scope: !1757)
!1776 = distinct !DISubprogram(name: "getchar", scope: !1758, file: !1758, line: 47, type: !1777, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1779)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!556}
!1779 = !{}
!1780 = !DILocation(line: 49, column: 16, scope: !1776)
!1781 = !DILocation(line: 49, column: 10, scope: !1776)
!1782 = !DILocation(line: 49, column: 3, scope: !1776)
!1783 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1758, file: !1758, line: 56, type: !1784, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1837)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!556, !1786}
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1788, line: 7, baseType: !1789)
!1788 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1790, line: 49, size: 1728, elements: !1791)
!1790 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1791 = !{!1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1807, !1809, !1810, !1811, !1814, !1816, !1817, !1818, !1821, !1823, !1826, !1829, !1830, !1831, !1832, !1833}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1789, file: !1790, line: 51, baseType: !556, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1789, file: !1790, line: 54, baseType: !558, size: 64, offset: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1789, file: !1790, line: 55, baseType: !558, size: 64, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1789, file: !1790, line: 56, baseType: !558, size: 64, offset: 192)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1789, file: !1790, line: 57, baseType: !558, size: 64, offset: 256)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1789, file: !1790, line: 58, baseType: !558, size: 64, offset: 320)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1789, file: !1790, line: 59, baseType: !558, size: 64, offset: 384)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1789, file: !1790, line: 60, baseType: !558, size: 64, offset: 448)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1789, file: !1790, line: 61, baseType: !558, size: 64, offset: 512)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1789, file: !1790, line: 64, baseType: !558, size: 64, offset: 576)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1789, file: !1790, line: 65, baseType: !558, size: 64, offset: 640)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1789, file: !1790, line: 66, baseType: !558, size: 64, offset: 704)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1789, file: !1790, line: 68, baseType: !1805, size: 64, offset: 768)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1790, line: 36, flags: DIFlagFwdDecl)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1789, file: !1790, line: 70, baseType: !1808, size: 64, offset: 832)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1789, file: !1790, line: 72, baseType: !556, size: 32, offset: 896)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1789, file: !1790, line: 73, baseType: !556, size: 32, offset: 928)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1789, file: !1790, line: 74, baseType: !1812, size: 64, offset: 960)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1813, line: 152, baseType: !700)
!1813 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1789, file: !1790, line: 77, baseType: !1815, size: 16, offset: 1024)
!1815 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1789, file: !1790, line: 78, baseType: !1367, size: 8, offset: 1040)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1789, file: !1790, line: 79, baseType: !824, size: 8, offset: 1048)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1789, file: !1790, line: 81, baseType: !1819, size: 64, offset: 1088)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1790, line: 43, baseType: null)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1789, file: !1790, line: 89, baseType: !1822, size: 64, offset: 1152)
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1813, line: 153, baseType: !700)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1789, file: !1790, line: 91, baseType: !1824, size: 64, offset: 1216)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1790, line: 37, flags: DIFlagFwdDecl)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1789, file: !1790, line: 92, baseType: !1827, size: 64, offset: 1280)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1790, line: 38, flags: DIFlagFwdDecl)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1789, file: !1790, line: 93, baseType: !1808, size: 64, offset: 1344)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1789, file: !1790, line: 94, baseType: !560, size: 64, offset: 1408)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1789, file: !1790, line: 95, baseType: !1061, size: 64, offset: 1472)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1789, file: !1790, line: 96, baseType: !556, size: 32, offset: 1536)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1789, file: !1790, line: 98, baseType: !1834, size: 160, offset: 1568)
!1834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !559, size: 160, elements: !1835)
!1835 = !{!1836}
!1836 = !DISubrange(count: 20)
!1837 = !{!1838}
!1838 = !DILocalVariable(name: "__fp", arg: 1, scope: !1783, file: !1758, line: 56, type: !1786)
!1839 = !DILocation(line: 0, scope: !1783)
!1840 = !DILocation(line: 58, column: 10, scope: !1783)
!1841 = !DILocation(line: 58, column: 3, scope: !1783)
!1842 = distinct !DISubprogram(name: "getc_unlocked", scope: !1758, file: !1758, line: 66, type: !1784, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1843)
!1843 = !{!1844}
!1844 = !DILocalVariable(name: "__fp", arg: 1, scope: !1842, file: !1758, line: 66, type: !1786)
!1845 = !DILocation(line: 0, scope: !1842)
!1846 = !DILocation(line: 68, column: 10, scope: !1842)
!1847 = !DILocation(line: 68, column: 3, scope: !1842)
!1848 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1758, file: !1758, line: 73, type: !1777, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1779)
!1849 = !DILocation(line: 75, column: 10, scope: !1848)
!1850 = !DILocation(line: 75, column: 3, scope: !1848)
!1851 = distinct !DISubprogram(name: "putchar", scope: !1758, file: !1758, line: 82, type: !1852, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1854)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!556, !556}
!1854 = !{!1855}
!1855 = !DILocalVariable(name: "__c", arg: 1, scope: !1851, file: !1758, line: 82, type: !556)
!1856 = !DILocation(line: 0, scope: !1851)
!1857 = !DILocation(line: 84, column: 21, scope: !1851)
!1858 = !DILocation(line: 84, column: 10, scope: !1851)
!1859 = !DILocation(line: 84, column: 3, scope: !1851)
!1860 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1758, file: !1758, line: 91, type: !1861, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1863)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!556, !556, !1786}
!1863 = !{!1864, !1865}
!1864 = !DILocalVariable(name: "__c", arg: 1, scope: !1860, file: !1758, line: 91, type: !556)
!1865 = !DILocalVariable(name: "__stream", arg: 2, scope: !1860, file: !1758, line: 91, type: !1786)
!1866 = !DILocation(line: 0, scope: !1860)
!1867 = !DILocation(line: 93, column: 10, scope: !1860)
!1868 = !DILocation(line: 93, column: 3, scope: !1860)
!1869 = distinct !DISubprogram(name: "putc_unlocked", scope: !1758, file: !1758, line: 101, type: !1861, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1870)
!1870 = !{!1871, !1872}
!1871 = !DILocalVariable(name: "__c", arg: 1, scope: !1869, file: !1758, line: 101, type: !556)
!1872 = !DILocalVariable(name: "__stream", arg: 2, scope: !1869, file: !1758, line: 101, type: !1786)
!1873 = !DILocation(line: 0, scope: !1869)
!1874 = !DILocation(line: 103, column: 10, scope: !1869)
!1875 = !DILocation(line: 103, column: 3, scope: !1869)
!1876 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1758, file: !1758, line: 108, type: !1852, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1877)
!1877 = !{!1878}
!1878 = !DILocalVariable(name: "__c", arg: 1, scope: !1876, file: !1758, line: 108, type: !556)
!1879 = !DILocation(line: 0, scope: !1876)
!1880 = !DILocation(line: 110, column: 10, scope: !1876)
!1881 = !DILocation(line: 110, column: 3, scope: !1876)
!1882 = distinct !DISubprogram(name: "getline", scope: !1758, file: !1758, line: 118, type: !1883, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1887)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!1885, !557, !1886, !1786}
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1813, line: 193, baseType: !700)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1887 = !{!1888, !1889, !1890}
!1888 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1882, file: !1758, line: 118, type: !557)
!1889 = !DILocalVariable(name: "__n", arg: 2, scope: !1882, file: !1758, line: 118, type: !1886)
!1890 = !DILocalVariable(name: "__stream", arg: 3, scope: !1882, file: !1758, line: 118, type: !1786)
!1891 = !DILocation(line: 0, scope: !1882)
!1892 = !DILocation(line: 120, column: 10, scope: !1882)
!1893 = !DILocation(line: 120, column: 3, scope: !1882)
!1894 = distinct !DISubprogram(name: "feof_unlocked", scope: !1758, file: !1758, line: 128, type: !1784, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1895)
!1895 = !{!1896}
!1896 = !DILocalVariable(name: "__stream", arg: 1, scope: !1894, file: !1758, line: 128, type: !1786)
!1897 = !DILocation(line: 0, scope: !1894)
!1898 = !DILocation(line: 130, column: 10, scope: !1894)
!1899 = !DILocation(line: 130, column: 3, scope: !1894)
!1900 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1758, file: !1758, line: 135, type: !1784, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1901)
!1901 = !{!1902}
!1902 = !DILocalVariable(name: "__stream", arg: 1, scope: !1900, file: !1758, line: 135, type: !1786)
!1903 = !DILocation(line: 0, scope: !1900)
!1904 = !DILocation(line: 137, column: 10, scope: !1900)
!1905 = !DILocation(line: 137, column: 3, scope: !1900)
!1906 = distinct !DISubprogram(name: "tolower", scope: !1907, file: !1907, line: 207, type: !1852, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1908)
!1907 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1908 = !{!1909}
!1909 = !DILocalVariable(name: "__c", arg: 1, scope: !1906, file: !1907, line: 207, type: !556)
!1910 = !DILocation(line: 0, scope: !1906)
!1911 = !DILocation(line: 209, column: 22, scope: !1906)
!1912 = !DILocation(line: 209, column: 39, scope: !1906)
!1913 = !DILocation(line: 209, column: 38, scope: !1906)
!1914 = !DILocation(line: 209, column: 37, scope: !1906)
!1915 = !DILocation(line: 209, column: 10, scope: !1906)
!1916 = !DILocation(line: 209, column: 3, scope: !1906)
!1917 = distinct !DISubprogram(name: "toupper", scope: !1907, file: !1907, line: 213, type: !1852, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1918)
!1918 = !{!1919}
!1919 = !DILocalVariable(name: "__c", arg: 1, scope: !1917, file: !1907, line: 213, type: !556)
!1920 = !DILocation(line: 0, scope: !1917)
!1921 = !DILocation(line: 215, column: 22, scope: !1917)
!1922 = !DILocation(line: 215, column: 39, scope: !1917)
!1923 = !DILocation(line: 215, column: 38, scope: !1917)
!1924 = !DILocation(line: 215, column: 37, scope: !1917)
!1925 = !DILocation(line: 215, column: 10, scope: !1917)
!1926 = !DILocation(line: 215, column: 3, scope: !1917)
!1927 = distinct !DISubprogram(name: "atoi", scope: !1928, file: !1928, line: 361, type: !1929, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1931)
!1928 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!556, !561}
!1931 = !{!1932}
!1932 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1927, file: !1928, line: 361, type: !561)
!1933 = !DILocation(line: 0, scope: !1927)
!1934 = !DILocation(line: 363, column: 16, scope: !1927)
!1935 = !DILocation(line: 363, column: 10, scope: !1927)
!1936 = !DILocation(line: 363, column: 3, scope: !1927)
!1937 = distinct !DISubprogram(name: "atol", scope: !1928, file: !1928, line: 366, type: !1938, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1940)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!700, !561}
!1940 = !{!1941}
!1941 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1937, file: !1928, line: 366, type: !561)
!1942 = !DILocation(line: 0, scope: !1937)
!1943 = !DILocation(line: 368, column: 10, scope: !1937)
!1944 = !DILocation(line: 368, column: 3, scope: !1937)
!1945 = distinct !DISubprogram(name: "atoll", scope: !1928, file: !1928, line: 373, type: !1946, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1949)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!1948, !561}
!1948 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1949 = !{!1950}
!1950 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1945, file: !1928, line: 373, type: !561)
!1951 = !DILocation(line: 0, scope: !1945)
!1952 = !DILocation(line: 375, column: 10, scope: !1945)
!1953 = !DILocation(line: 375, column: 3, scope: !1945)
!1954 = distinct !DISubprogram(name: "bsearch", scope: !1955, file: !1955, line: 20, type: !1956, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1959)
!1955 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!560, !1046, !1046, !1061, !1061, !1958}
!1958 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1928, line: 808, baseType: !1050)
!1959 = !{!1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969}
!1960 = !DILocalVariable(name: "__key", arg: 1, scope: !1954, file: !1955, line: 20, type: !1046)
!1961 = !DILocalVariable(name: "__base", arg: 2, scope: !1954, file: !1955, line: 20, type: !1046)
!1962 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1954, file: !1955, line: 20, type: !1061)
!1963 = !DILocalVariable(name: "__size", arg: 4, scope: !1954, file: !1955, line: 20, type: !1061)
!1964 = !DILocalVariable(name: "__compar", arg: 5, scope: !1954, file: !1955, line: 21, type: !1958)
!1965 = !DILocalVariable(name: "__l", scope: !1954, file: !1955, line: 23, type: !1061)
!1966 = !DILocalVariable(name: "__u", scope: !1954, file: !1955, line: 23, type: !1061)
!1967 = !DILocalVariable(name: "__idx", scope: !1954, file: !1955, line: 23, type: !1061)
!1968 = !DILocalVariable(name: "__p", scope: !1954, file: !1955, line: 24, type: !1046)
!1969 = !DILocalVariable(name: "__comparison", scope: !1954, file: !1955, line: 25, type: !556)
!1970 = !DILocation(line: 0, scope: !1954)
!1971 = !DILocation(line: 29, column: 3, scope: !1954)
!1972 = !DILocation(line: 27, column: 7, scope: !1954)
!1973 = !DILocation(line: 29, column: 14, scope: !1954)
!1974 = !DILocation(line: 31, column: 20, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1954, file: !1955, line: 30, column: 5)
!1976 = !DILocation(line: 31, column: 27, scope: !1975)
!1977 = !DILocation(line: 32, column: 56, scope: !1975)
!1978 = !DILocation(line: 32, column: 47, scope: !1975)
!1979 = !DILocation(line: 33, column: 22, scope: !1975)
!1980 = !DILocation(line: 34, column: 24, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1975, file: !1955, line: 34, column: 11)
!1982 = !DILocation(line: 34, column: 11, scope: !1975)
!1983 = !DILocation(line: 36, column: 29, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1981, file: !1955, line: 36, column: 16)
!1985 = !DILocation(line: 36, column: 16, scope: !1981)
!1986 = !DILocation(line: 37, column: 14, scope: !1984)
!1987 = distinct !{!1987, !1971, !1988}
!1988 = !DILocation(line: 40, column: 5, scope: !1954)
!1989 = !DILocation(line: 43, column: 1, scope: !1954)
!1990 = distinct !DISubprogram(name: "atof", scope: !1991, file: !1991, line: 25, type: !1992, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1995)
!1991 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!1994, !561}
!1994 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1995 = !{!1996}
!1996 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1990, file: !1991, line: 25, type: !561)
!1997 = !DILocation(line: 0, scope: !1990)
!1998 = !DILocation(line: 27, column: 10, scope: !1990)
!1999 = !DILocation(line: 27, column: 3, scope: !1990)
!2000 = distinct !DISubprogram(name: "strtoimax", scope: !2001, file: !2001, line: 324, type: !2002, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2008)
!2001 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!2004, !1761, !2007, !556}
!2004 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2005, line: 101, baseType: !2006)
!2005 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2006 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1813, line: 72, baseType: !700)
!2007 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !557)
!2008 = !{!2009, !2010, !2011}
!2009 = !DILocalVariable(name: "nptr", arg: 1, scope: !2000, file: !2001, line: 324, type: !1761)
!2010 = !DILocalVariable(name: "endptr", arg: 2, scope: !2000, file: !2001, line: 324, type: !2007)
!2011 = !DILocalVariable(name: "base", arg: 3, scope: !2000, file: !2001, line: 324, type: !556)
!2012 = !DILocation(line: 0, scope: !2000)
!2013 = !DILocation(line: 327, column: 10, scope: !2000)
!2014 = !DILocation(line: 327, column: 3, scope: !2000)
!2015 = distinct !DISubprogram(name: "strtoumax", scope: !2001, file: !2001, line: 336, type: !2016, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2020)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!2018, !1761, !2007, !556}
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2005, line: 102, baseType: !2019)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1813, line: 73, baseType: !683)
!2020 = !{!2021, !2022, !2023}
!2021 = !DILocalVariable(name: "nptr", arg: 1, scope: !2015, file: !2001, line: 336, type: !1761)
!2022 = !DILocalVariable(name: "endptr", arg: 2, scope: !2015, file: !2001, line: 336, type: !2007)
!2023 = !DILocalVariable(name: "base", arg: 3, scope: !2015, file: !2001, line: 336, type: !556)
!2024 = !DILocation(line: 0, scope: !2015)
!2025 = !DILocation(line: 339, column: 10, scope: !2015)
!2026 = !DILocation(line: 339, column: 3, scope: !2015)
!2027 = distinct !DISubprogram(name: "wcstoimax", scope: !2001, file: !2001, line: 348, type: !2028, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2037)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!2004, !2030, !2034, !556}
!2030 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2031)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2033)
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2001, line: 34, baseType: !556)
!2034 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2035)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2037 = !{!2038, !2039, !2040}
!2038 = !DILocalVariable(name: "nptr", arg: 1, scope: !2027, file: !2001, line: 348, type: !2030)
!2039 = !DILocalVariable(name: "endptr", arg: 2, scope: !2027, file: !2001, line: 348, type: !2034)
!2040 = !DILocalVariable(name: "base", arg: 3, scope: !2027, file: !2001, line: 348, type: !556)
!2041 = !DILocation(line: 0, scope: !2027)
!2042 = !DILocation(line: 351, column: 10, scope: !2027)
!2043 = !DILocation(line: 351, column: 3, scope: !2027)
!2044 = distinct !DISubprogram(name: "wcstoumax", scope: !2001, file: !2001, line: 362, type: !2045, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2047)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!2018, !2030, !2034, !556}
!2047 = !{!2048, !2049, !2050}
!2048 = !DILocalVariable(name: "nptr", arg: 1, scope: !2044, file: !2001, line: 362, type: !2030)
!2049 = !DILocalVariable(name: "endptr", arg: 2, scope: !2044, file: !2001, line: 362, type: !2034)
!2050 = !DILocalVariable(name: "base", arg: 3, scope: !2044, file: !2001, line: 362, type: !556)
!2051 = !DILocation(line: 0, scope: !2044)
!2052 = !DILocation(line: 365, column: 10, scope: !2044)
!2053 = !DILocation(line: 365, column: 3, scope: !2044)
!2054 = distinct !DISubprogram(name: "stat", scope: !2055, file: !2055, line: 453, type: !2056, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2093)
!2055 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!556, !561, !2058}
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2060, line: 46, size: 1152, elements: !2061)
!2060 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2061 = !{!2062, !2064, !2066, !2068, !2070, !2072, !2074, !2075, !2076, !2077, !2079, !2081, !2089, !2090, !2091}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2059, file: !2060, line: 48, baseType: !2063, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1813, line: 145, baseType: !683)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2059, file: !2060, line: 53, baseType: !2065, size: 64, offset: 64)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1813, line: 148, baseType: !683)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2059, file: !2060, line: 61, baseType: !2067, size: 64, offset: 128)
!2067 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1813, line: 151, baseType: !683)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2059, file: !2060, line: 62, baseType: !2069, size: 32, offset: 192)
!2069 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1813, line: 150, baseType: !5)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2059, file: !2060, line: 64, baseType: !2071, size: 32, offset: 224)
!2071 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1813, line: 146, baseType: !5)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2059, file: !2060, line: 65, baseType: !2073, size: 32, offset: 256)
!2073 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1813, line: 147, baseType: !5)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2059, file: !2060, line: 67, baseType: !556, size: 32, offset: 288)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2059, file: !2060, line: 69, baseType: !2063, size: 64, offset: 320)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2059, file: !2060, line: 74, baseType: !1812, size: 64, offset: 384)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2059, file: !2060, line: 78, baseType: !2078, size: 64, offset: 448)
!2078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1813, line: 174, baseType: !700)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2059, file: !2060, line: 80, baseType: !2080, size: 64, offset: 512)
!2080 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1813, line: 179, baseType: !700)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2059, file: !2060, line: 91, baseType: !2082, size: 128, offset: 576)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2083, line: 10, size: 128, elements: !2084)
!2083 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2084 = !{!2085, !2087}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2082, file: !2083, line: 12, baseType: !2086, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1813, line: 160, baseType: !700)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2082, file: !2083, line: 16, baseType: !2088, size: 64, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1813, line: 196, baseType: !700)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2059, file: !2060, line: 92, baseType: !2082, size: 128, offset: 704)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2059, file: !2060, line: 93, baseType: !2082, size: 128, offset: 832)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2059, file: !2060, line: 106, baseType: !2092, size: 192, offset: 960)
!2092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2088, size: 192, elements: !800)
!2093 = !{!2094, !2095}
!2094 = !DILocalVariable(name: "__path", arg: 1, scope: !2054, file: !2055, line: 453, type: !561)
!2095 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2054, file: !2055, line: 453, type: !2058)
!2096 = !DILocation(line: 0, scope: !2054)
!2097 = !DILocation(line: 455, column: 10, scope: !2054)
!2098 = !DILocation(line: 455, column: 3, scope: !2054)
!2099 = distinct !DISubprogram(name: "lstat", scope: !2055, file: !2055, line: 460, type: !2056, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2100)
!2100 = !{!2101, !2102}
!2101 = !DILocalVariable(name: "__path", arg: 1, scope: !2099, file: !2055, line: 460, type: !561)
!2102 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2099, file: !2055, line: 460, type: !2058)
!2103 = !DILocation(line: 0, scope: !2099)
!2104 = !DILocation(line: 462, column: 10, scope: !2099)
!2105 = !DILocation(line: 462, column: 3, scope: !2099)
!2106 = distinct !DISubprogram(name: "fstat", scope: !2055, file: !2055, line: 467, type: !2107, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2109)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!556, !556, !2058}
!2109 = !{!2110, !2111}
!2110 = !DILocalVariable(name: "__fd", arg: 1, scope: !2106, file: !2055, line: 467, type: !556)
!2111 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2106, file: !2055, line: 467, type: !2058)
!2112 = !DILocation(line: 0, scope: !2106)
!2113 = !DILocation(line: 469, column: 10, scope: !2106)
!2114 = !DILocation(line: 469, column: 3, scope: !2106)
!2115 = distinct !DISubprogram(name: "fstatat", scope: !2055, file: !2055, line: 474, type: !2116, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2118)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!556, !556, !561, !2058, !556}
!2118 = !{!2119, !2120, !2121, !2122}
!2119 = !DILocalVariable(name: "__fd", arg: 1, scope: !2115, file: !2055, line: 474, type: !556)
!2120 = !DILocalVariable(name: "__filename", arg: 2, scope: !2115, file: !2055, line: 474, type: !561)
!2121 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2115, file: !2055, line: 474, type: !2058)
!2122 = !DILocalVariable(name: "__flag", arg: 4, scope: !2115, file: !2055, line: 474, type: !556)
!2123 = !DILocation(line: 0, scope: !2115)
!2124 = !DILocation(line: 477, column: 10, scope: !2115)
!2125 = !DILocation(line: 477, column: 3, scope: !2115)
!2126 = distinct !DISubprogram(name: "mknod", scope: !2055, file: !2055, line: 483, type: !2127, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2129)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!556, !561, !2069, !2063}
!2129 = !{!2130, !2131, !2132}
!2130 = !DILocalVariable(name: "__path", arg: 1, scope: !2126, file: !2055, line: 483, type: !561)
!2131 = !DILocalVariable(name: "__mode", arg: 2, scope: !2126, file: !2055, line: 483, type: !2069)
!2132 = !DILocalVariable(name: "__dev", arg: 3, scope: !2126, file: !2055, line: 483, type: !2063)
!2133 = !DILocation(line: 0, scope: !2126)
!2134 = !DILocation(line: 485, column: 10, scope: !2126)
!2135 = !DILocation(line: 485, column: 3, scope: !2126)
!2136 = distinct !DISubprogram(name: "mknodat", scope: !2055, file: !2055, line: 491, type: !2137, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2139)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!556, !556, !561, !2069, !2063}
!2139 = !{!2140, !2141, !2142, !2143}
!2140 = !DILocalVariable(name: "__fd", arg: 1, scope: !2136, file: !2055, line: 491, type: !556)
!2141 = !DILocalVariable(name: "__path", arg: 2, scope: !2136, file: !2055, line: 491, type: !561)
!2142 = !DILocalVariable(name: "__mode", arg: 3, scope: !2136, file: !2055, line: 491, type: !2069)
!2143 = !DILocalVariable(name: "__dev", arg: 4, scope: !2136, file: !2055, line: 491, type: !2063)
!2144 = !DILocation(line: 0, scope: !2136)
!2145 = !DILocation(line: 494, column: 10, scope: !2136)
!2146 = !DILocation(line: 494, column: 3, scope: !2136)
!2147 = distinct !DISubprogram(name: "stat64", scope: !2055, file: !2055, line: 502, type: !2148, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2170)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!556, !561, !2150}
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2060, line: 119, size: 1152, elements: !2152)
!2152 = !{!2153, !2154, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2166, !2167, !2168, !2169}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2151, file: !2060, line: 121, baseType: !2063, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2151, file: !2060, line: 123, baseType: !2155, size: 64, offset: 64)
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1813, line: 149, baseType: !683)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2151, file: !2060, line: 124, baseType: !2067, size: 64, offset: 128)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2151, file: !2060, line: 125, baseType: !2069, size: 32, offset: 192)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2151, file: !2060, line: 132, baseType: !2071, size: 32, offset: 224)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2151, file: !2060, line: 133, baseType: !2073, size: 32, offset: 256)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2151, file: !2060, line: 135, baseType: !556, size: 32, offset: 288)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2151, file: !2060, line: 136, baseType: !2063, size: 64, offset: 320)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2151, file: !2060, line: 137, baseType: !1812, size: 64, offset: 384)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2151, file: !2060, line: 143, baseType: !2078, size: 64, offset: 448)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2151, file: !2060, line: 144, baseType: !2165, size: 64, offset: 512)
!2165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1813, line: 180, baseType: !700)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2151, file: !2060, line: 152, baseType: !2082, size: 128, offset: 576)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2151, file: !2060, line: 153, baseType: !2082, size: 128, offset: 704)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2151, file: !2060, line: 154, baseType: !2082, size: 128, offset: 832)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2151, file: !2060, line: 164, baseType: !2092, size: 192, offset: 960)
!2170 = !{!2171, !2172}
!2171 = !DILocalVariable(name: "__path", arg: 1, scope: !2147, file: !2055, line: 502, type: !561)
!2172 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2147, file: !2055, line: 502, type: !2150)
!2173 = !DILocation(line: 0, scope: !2147)
!2174 = !DILocation(line: 504, column: 10, scope: !2147)
!2175 = !DILocation(line: 504, column: 3, scope: !2147)
!2176 = distinct !DISubprogram(name: "lstat64", scope: !2055, file: !2055, line: 509, type: !2148, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2177)
!2177 = !{!2178, !2179}
!2178 = !DILocalVariable(name: "__path", arg: 1, scope: !2176, file: !2055, line: 509, type: !561)
!2179 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2176, file: !2055, line: 509, type: !2150)
!2180 = !DILocation(line: 0, scope: !2176)
!2181 = !DILocation(line: 511, column: 10, scope: !2176)
!2182 = !DILocation(line: 511, column: 3, scope: !2176)
!2183 = distinct !DISubprogram(name: "fstat64", scope: !2055, file: !2055, line: 516, type: !2184, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2186)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!556, !556, !2150}
!2186 = !{!2187, !2188}
!2187 = !DILocalVariable(name: "__fd", arg: 1, scope: !2183, file: !2055, line: 516, type: !556)
!2188 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2183, file: !2055, line: 516, type: !2150)
!2189 = !DILocation(line: 0, scope: !2183)
!2190 = !DILocation(line: 518, column: 10, scope: !2183)
!2191 = !DILocation(line: 518, column: 3, scope: !2183)
!2192 = distinct !DISubprogram(name: "fstatat64", scope: !2055, file: !2055, line: 523, type: !2193, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2195)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!556, !556, !561, !2150, !556}
!2195 = !{!2196, !2197, !2198, !2199}
!2196 = !DILocalVariable(name: "__fd", arg: 1, scope: !2192, file: !2055, line: 523, type: !556)
!2197 = !DILocalVariable(name: "__filename", arg: 2, scope: !2192, file: !2055, line: 523, type: !561)
!2198 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2192, file: !2055, line: 523, type: !2150)
!2199 = !DILocalVariable(name: "__flag", arg: 4, scope: !2192, file: !2055, line: 523, type: !556)
!2200 = !DILocation(line: 0, scope: !2192)
!2201 = !DILocation(line: 526, column: 10, scope: !2192)
!2202 = !DILocation(line: 526, column: 3, scope: !2192)
!2203 = distinct !DISubprogram(name: "unroll_and_peel_loops", scope: !1, file: !1, line: 156, type: !2204, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2206)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{null, !556}
!2206 = !{!2207, !2208, !2209, !2210}
!2207 = !DILocalVariable(name: "flags", arg: 1, scope: !2203, file: !1, line: 156, type: !556)
!2208 = !DILocalVariable(name: "loop", scope: !2203, file: !1, line: 158, type: !579)
!2209 = !DILocalVariable(name: "check", scope: !2203, file: !1, line: 159, type: !555)
!2210 = !DILocalVariable(name: "li", scope: !2203, file: !1, line: 160, type: !2211)
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_iterator", file: !376, line: 515, baseType: !2212)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !376, line: 508, size: 128, elements: !2213)
!2213 = !{!2214, !2215}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "to_visit", scope: !2212, file: !376, line: 511, baseType: !563, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !2212, file: !376, line: 514, baseType: !5, size: 32, offset: 64)
!2216 = !DILocation(line: 0, scope: !2203)
!2217 = !DILocation(line: 158, column: 3, scope: !2203)
!2218 = !DILocation(line: 160, column: 3, scope: !2203)
!2219 = !DILocation(line: 164, column: 3, scope: !2203)
!2220 = !DILocation(line: 167, column: 3, scope: !2203)
!2221 = !DILocation(line: 170, column: 3, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2203, file: !1, line: 170, column: 3)
!2223 = !DILocation(line: 170, column: 3, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2222, file: !1, line: 170, column: 3)
!2225 = !DILocation(line: 174, column: 34, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2224, file: !1, line: 171, column: 5)
!2227 = !DILocation(line: 174, column: 7, scope: !2226)
!2228 = !DILocation(line: 178, column: 4, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2226, file: !1, line: 175, column: 2)
!2230 = !DILocation(line: 180, column: 22, scope: !2229)
!2231 = !DILocation(line: 180, column: 4, scope: !2229)
!2232 = !DILocation(line: 181, column: 4, scope: !2229)
!2233 = !DILocation(line: 183, column: 4, scope: !2229)
!2234 = !DILocation(line: 184, column: 4, scope: !2229)
!2235 = !DILocation(line: 186, column: 4, scope: !2229)
!2236 = !DILocation(line: 187, column: 4, scope: !2229)
!2237 = !DILocation(line: 189, column: 4, scope: !2229)
!2238 = !DILocation(line: 190, column: 4, scope: !2229)
!2239 = !DILocation(line: 195, column: 4, scope: !2229)
!2240 = !DILocation(line: 196, column: 2, scope: !2229)
!2241 = distinct !{!2241, !2221, !2242}
!2242 = !DILocation(line: 204, column: 5, scope: !2222)
!2243 = !DILocation(line: 206, column: 3, scope: !2203)
!2244 = !DILocation(line: 207, column: 1, scope: !2203)
!2245 = distinct !DISubprogram(name: "peel_loops_completely", scope: !1, file: !1, line: 232, type: !2204, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2246)
!2246 = !{!2247, !2248, !2249}
!2247 = !DILocalVariable(name: "flags", arg: 1, scope: !2245, file: !1, line: 232, type: !556)
!2248 = !DILocalVariable(name: "loop", scope: !2245, file: !1, line: 234, type: !579)
!2249 = !DILocalVariable(name: "li", scope: !2245, file: !1, line: 235, type: !2211)
!2250 = !DILocation(line: 0, scope: !2245)
!2251 = !DILocation(line: 234, column: 3, scope: !2245)
!2252 = !DILocation(line: 235, column: 3, scope: !2245)
!2253 = !DILocation(line: 238, column: 3, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2245, file: !1, line: 238, column: 3)
!2255 = !DILocation(line: 238, column: 3, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2254, file: !1, line: 238, column: 3)
!2257 = !DILocation(line: 240, column: 26, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2256, file: !1, line: 239, column: 5)
!2259 = !DILocation(line: 240, column: 35, scope: !2258)
!2260 = !DILocation(line: 242, column: 11, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2258, file: !1, line: 242, column: 11)
!2262 = !DILocation(line: 242, column: 11, scope: !2258)
!2263 = !DILocation(line: 245, column: 10, scope: !2261)
!2264 = !DILocation(line: 243, column: 2, scope: !2261)
!2265 = !DILocation(line: 247, column: 38, scope: !2258)
!2266 = !DILocation(line: 247, column: 22, scope: !2258)
!2267 = !DILocation(line: 247, column: 7, scope: !2258)
!2268 = !DILocation(line: 247, column: 13, scope: !2258)
!2269 = !DILocation(line: 247, column: 20, scope: !2258)
!2270 = !DILocation(line: 249, column: 33, scope: !2258)
!2271 = !DILocation(line: 249, column: 7, scope: !2258)
!2272 = !DILocation(line: 250, column: 11, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2258, file: !1, line: 250, column: 11)
!2274 = !DILocation(line: 250, column: 30, scope: !2273)
!2275 = !DILocation(line: 250, column: 39, scope: !2273)
!2276 = !DILocation(line: 250, column: 11, scope: !2258)
!2277 = !DILocation(line: 251, column: 2, scope: !2273)
!2278 = !DILocation(line: 253, column: 11, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2258, file: !1, line: 253, column: 11)
!2280 = !DILocation(line: 0, scope: !2279)
!2281 = !DILocation(line: 253, column: 30, scope: !2279)
!2282 = !DILocation(line: 253, column: 39, scope: !2279)
!2283 = !DILocation(line: 253, column: 11, scope: !2258)
!2284 = !DILocation(line: 255, column: 4, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2279, file: !1, line: 254, column: 2)
!2286 = !DILocation(line: 260, column: 2, scope: !2285)
!2287 = distinct !{!2287, !2253, !2288}
!2288 = !DILocation(line: 261, column: 5, scope: !2254)
!2289 = !DILocation(line: 262, column: 1, scope: !2245)
!2290 = distinct !DISubprogram(name: "decide_unrolling_and_peeling", scope: !1, file: !1, line: 266, type: !2204, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2291)
!2291 = !{!2292, !2293, !2294}
!2292 = !DILocalVariable(name: "flags", arg: 1, scope: !2290, file: !1, line: 266, type: !556)
!2293 = !DILocalVariable(name: "loop", scope: !2290, file: !1, line: 268, type: !579)
!2294 = !DILocalVariable(name: "li", scope: !2290, file: !1, line: 269, type: !2211)
!2295 = !DILocation(line: 0, scope: !2290)
!2296 = !DILocation(line: 268, column: 3, scope: !2290)
!2297 = !DILocation(line: 269, column: 3, scope: !2290)
!2298 = !DILocation(line: 272, column: 3, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2290, file: !1, line: 272, column: 3)
!2300 = !DILocation(line: 272, column: 3, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2299, file: !1, line: 272, column: 3)
!2302 = !DILocation(line: 274, column: 26, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2301, file: !1, line: 273, column: 5)
!2304 = !DILocation(line: 274, column: 35, scope: !2303)
!2305 = !DILocation(line: 276, column: 11, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2303, file: !1, line: 276, column: 11)
!2307 = !DILocation(line: 276, column: 11, scope: !2303)
!2308 = !DILocation(line: 277, column: 66, scope: !2306)
!2309 = !DILocation(line: 277, column: 2, scope: !2306)
!2310 = !DILocation(line: 280, column: 37, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2303, file: !1, line: 280, column: 11)
!2312 = !DILocation(line: 280, column: 11, scope: !2311)
!2313 = !DILocation(line: 280, column: 11, scope: !2303)
!2314 = !DILocation(line: 282, column: 8, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !1, line: 282, column: 8)
!2316 = distinct !DILexicalBlock(scope: !2311, file: !1, line: 281, column: 2)
!2317 = !DILocation(line: 282, column: 8, scope: !2316)
!2318 = !DILocation(line: 283, column: 6, scope: !2315)
!2319 = !DILocation(line: 288, column: 34, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2303, file: !1, line: 288, column: 11)
!2321 = !DILocation(line: 288, column: 12, scope: !2320)
!2322 = !DILocation(line: 288, column: 11, scope: !2303)
!2323 = !DILocation(line: 290, column: 8, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !1, line: 290, column: 8)
!2325 = distinct !DILexicalBlock(scope: !2320, file: !1, line: 289, column: 2)
!2326 = !DILocation(line: 290, column: 8, scope: !2325)
!2327 = !DILocation(line: 291, column: 6, scope: !2324)
!2328 = !DILocation(line: 297, column: 11, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2303, file: !1, line: 297, column: 11)
!2330 = !DILocation(line: 297, column: 17, scope: !2329)
!2331 = !DILocation(line: 297, column: 11, scope: !2303)
!2332 = !DILocation(line: 299, column: 8, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !1, line: 299, column: 8)
!2334 = distinct !DILexicalBlock(scope: !2329, file: !1, line: 298, column: 2)
!2335 = !DILocation(line: 299, column: 8, scope: !2334)
!2336 = !DILocation(line: 300, column: 6, scope: !2333)
!2337 = !DILocation(line: 304, column: 22, scope: !2303)
!2338 = !DILocation(line: 304, column: 7, scope: !2303)
!2339 = !DILocation(line: 304, column: 13, scope: !2303)
!2340 = !DILocation(line: 304, column: 20, scope: !2303)
!2341 = !DILocation(line: 305, column: 49, scope: !2303)
!2342 = !DILocation(line: 305, column: 25, scope: !2303)
!2343 = !DILocation(line: 305, column: 7, scope: !2303)
!2344 = !DILocation(line: 305, column: 13, scope: !2303)
!2345 = !DILocation(line: 305, column: 23, scope: !2303)
!2346 = !DILocation(line: 310, column: 7, scope: !2303)
!2347 = !DILocation(line: 311, column: 11, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2303, file: !1, line: 311, column: 11)
!2349 = !DILocation(line: 311, column: 30, scope: !2348)
!2350 = !DILocation(line: 311, column: 39, scope: !2348)
!2351 = !DILocation(line: 311, column: 11, scope: !2303)
!2352 = !DILocation(line: 312, column: 2, scope: !2348)
!2353 = !DILocation(line: 313, column: 11, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2303, file: !1, line: 313, column: 11)
!2355 = !DILocation(line: 0, scope: !2354)
!2356 = !DILocation(line: 313, column: 30, scope: !2354)
!2357 = !DILocation(line: 313, column: 39, scope: !2354)
!2358 = !DILocation(line: 313, column: 11, scope: !2303)
!2359 = !DILocation(line: 314, column: 2, scope: !2354)
!2360 = !DILocation(line: 315, column: 11, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2303, file: !1, line: 315, column: 11)
!2362 = !DILocation(line: 0, scope: !2361)
!2363 = !DILocation(line: 315, column: 30, scope: !2361)
!2364 = !DILocation(line: 315, column: 39, scope: !2361)
!2365 = !DILocation(line: 315, column: 11, scope: !2303)
!2366 = !DILocation(line: 316, column: 2, scope: !2361)
!2367 = distinct !{!2367, !2298, !2368}
!2368 = !DILocation(line: 317, column: 5, scope: !2299)
!2369 = !DILocation(line: 318, column: 1, scope: !2290)
!2370 = distinct !DISubprogram(name: "fel_init", scope: !376, file: !376, line: 535, type: !2371, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2375)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{null, !2373, !2374, !5}
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!2375 = !{!2376, !2377, !2378, !2379, !2380, !2381}
!2376 = !DILocalVariable(name: "li", arg: 1, scope: !2370, file: !376, line: 535, type: !2373)
!2377 = !DILocalVariable(name: "loop", arg: 2, scope: !2370, file: !376, line: 535, type: !2374)
!2378 = !DILocalVariable(name: "flags", arg: 3, scope: !2370, file: !376, line: 535, type: !5)
!2379 = !DILocalVariable(name: "aloop", scope: !2370, file: !376, line: 537, type: !579)
!2380 = !DILocalVariable(name: "i", scope: !2370, file: !376, line: 538, type: !5)
!2381 = !DILocalVariable(name: "mn", scope: !2370, file: !376, line: 539, type: !556)
!2382 = !DILocation(line: 0, scope: !2370)
!2383 = !DILocation(line: 541, column: 7, scope: !2370)
!2384 = !DILocation(line: 541, column: 11, scope: !2370)
!2385 = !DILocation(line: 542, column: 8, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2370, file: !376, line: 542, column: 7)
!2387 = !DILocation(line: 542, column: 7, scope: !2370)
!2388 = !DILocation(line: 544, column: 11, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2386, file: !376, line: 543, column: 5)
!2390 = !DILocation(line: 544, column: 20, scope: !2389)
!2391 = !DILocation(line: 545, column: 13, scope: !2389)
!2392 = !DILocation(line: 546, column: 7, scope: !2389)
!2393 = !DILocation(line: 549, column: 18, scope: !2370)
!2394 = !DILocation(line: 549, column: 7, scope: !2370)
!2395 = !DILocation(line: 549, column: 16, scope: !2370)
!2396 = !DILocation(line: 0, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !376, line: 560, column: 12)
!2398 = distinct !DILexicalBlock(scope: !2370, file: !376, line: 552, column: 7)
!2399 = !DILocation(line: 563, column: 7, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !376, line: 563, column: 7)
!2401 = distinct !DILexicalBlock(scope: !2397, file: !376, line: 561, column: 5)
!2402 = !DILocation(line: 564, column: 5, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2400, file: !376, line: 563, column: 7)
!2404 = !DILocation(line: 564, column: 12, scope: !2403)
!2405 = !DILocation(line: 564, column: 18, scope: !2403)
!2406 = !DILocation(line: 568, column: 7, scope: !2401)
!2407 = !DILocation(line: 565, column: 20, scope: !2403)
!2408 = !DILocation(line: 563, column: 7, scope: !2403)
!2409 = distinct !{!2409, !2399, !2410}
!2410 = !DILocation(line: 566, column: 2, scope: !2400)
!2411 = !DILocation(line: 570, column: 8, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !376, line: 570, column: 8)
!2413 = distinct !DILexicalBlock(scope: !2401, file: !376, line: 569, column: 2)
!2414 = !DILocation(line: 570, column: 15, scope: !2412)
!2415 = !DILocation(line: 570, column: 19, scope: !2412)
!2416 = !DILocation(line: 570, column: 8, scope: !2413)
!2417 = !DILocation(line: 571, column: 6, scope: !2412)
!2418 = !DILocation(line: 573, column: 15, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2413, file: !376, line: 573, column: 8)
!2420 = !DILocation(line: 573, column: 8, scope: !2419)
!2421 = !DILocation(line: 573, column: 8, scope: !2413)
!2422 = !DILocation(line: 575, column: 13, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !376, line: 575, column: 8)
!2424 = distinct !DILexicalBlock(scope: !2419, file: !376, line: 574, column: 6)
!2425 = !DILocation(line: 576, column: 6, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2423, file: !376, line: 575, column: 8)
!2427 = !DILocation(line: 576, column: 13, scope: !2426)
!2428 = !DILocation(line: 576, column: 19, scope: !2426)
!2429 = !DILocation(line: 575, column: 8, scope: !2423)
!2430 = !DILocation(line: 577, column: 21, scope: !2426)
!2431 = !DILocation(line: 575, column: 8, scope: !2426)
!2432 = distinct !{!2432, !2429, !2433}
!2433 = !DILocation(line: 578, column: 3, scope: !2423)
!2434 = !DILocation(line: 580, column: 14, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2419, file: !376, line: 580, column: 13)
!2436 = !DILocation(line: 580, column: 13, scope: !2419)
!2437 = !DILocation(line: 583, column: 14, scope: !2435)
!2438 = distinct !{!2438, !2406, !2439}
!2439 = !DILocation(line: 584, column: 2, scope: !2401)
!2440 = !DILocation(line: 608, column: 3, scope: !2370)
!2441 = !DILocation(line: 609, column: 1, scope: !2370)
!2442 = distinct !DISubprogram(name: "peel_loop_simple", scope: !1, file: !1, line: 1290, type: !2443, scopeLine: 1291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2445)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{null, !579}
!2445 = !{!2446, !2447, !2458, !2459, !2475, !2476}
!2446 = !DILocalVariable(name: "loop", arg: 1, scope: !2442, file: !1, line: 1290, type: !579)
!2447 = !DILocalVariable(name: "wont_exit", scope: !2442, file: !1, line: 1292, type: !2448)
!2448 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap", file: !2449, line: 45, baseType: !2450)
!2449 = !DIFile(filename: "./sbitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_bitmap_def", file: !2449, line: 39, size: 192, elements: !2452)
!2452 = !{!2453, !2454, !2455, !2456}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "popcount", scope: !2451, file: !2449, line: 41, baseType: !554, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "n_bits", scope: !2451, file: !2449, line: 42, baseType: !5, size: 32, offset: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2451, file: !2449, line: 43, baseType: !5, size: 32, offset: 96)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !2451, file: !2449, line: 44, baseType: !2457, size: 64, offset: 128)
!2457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !683, size: 64, elements: !576)
!2458 = !DILocalVariable(name: "npeel", scope: !2442, file: !1, line: 1293, type: !5)
!2459 = !DILocalVariable(name: "desc", scope: !2442, file: !1, line: 1294, type: !2460)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "niter_desc", file: !376, line: 353, size: 640, elements: !2462)
!2462 = !{!2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "out_edge", scope: !2461, file: !376, line: 356, baseType: !601, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "in_edge", scope: !2461, file: !376, line: 359, baseType: !601, size: 64, offset: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "simple_p", scope: !2461, file: !376, line: 363, baseType: !555, size: 8, offset: 128)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "const_iter", scope: !2461, file: !376, line: 366, baseType: !555, size: 8, offset: 136)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "niter", scope: !2461, file: !376, line: 369, baseType: !683, size: 64, offset: 192)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "niter_max", scope: !2461, file: !376, line: 372, baseType: !683, size: 64, offset: 256)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "assumptions", scope: !2461, file: !376, line: 375, baseType: !616, size: 64, offset: 320)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "noloop_assumptions", scope: !2461, file: !376, line: 379, baseType: !616, size: 64, offset: 384)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "infinite", scope: !2461, file: !376, line: 382, baseType: !616, size: 64, offset: 448)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "signed_p", scope: !2461, file: !376, line: 385, baseType: !555, size: 8, offset: 512)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2461, file: !376, line: 388, baseType: !3, size: 32, offset: 544)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "niter_expr", scope: !2461, file: !376, line: 391, baseType: !616, size: 64, offset: 576)
!2475 = !DILocalVariable(name: "opt_info", scope: !2442, file: !1, line: 1295, type: !1704)
!2476 = !DILocalVariable(name: "ok", scope: !2442, file: !1, line: 1296, type: !555)
!2477 = !DILocation(line: 0, scope: !2442)
!2478 = !DILocation(line: 1293, column: 39, scope: !2442)
!2479 = !DILocation(line: 1294, column: 29, scope: !2442)
!2480 = !DILocation(line: 1298, column: 7, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2442, file: !1, line: 1298, column: 7)
!2482 = !DILocation(line: 1298, column: 43, scope: !2481)
!2483 = !DILocation(line: 1298, column: 34, scope: !2481)
!2484 = !DILocation(line: 1299, column: 16, scope: !2481)
!2485 = !DILocation(line: 1299, column: 5, scope: !2481)
!2486 = !DILocation(line: 1301, column: 36, scope: !2442)
!2487 = !DILocation(line: 1301, column: 15, scope: !2442)
!2488 = !DILocation(line: 1302, column: 3, scope: !2442)
!2489 = !DILocation(line: 1304, column: 3, scope: !2442)
!2490 = !DILocation(line: 1306, column: 45, scope: !2442)
!2491 = !DILocation(line: 1309, column: 14, scope: !2442)
!2492 = !DILocation(line: 1309, column: 11, scope: !2442)
!2493 = !DILocation(line: 1306, column: 8, scope: !2442)
!2494 = !DILocation(line: 1312, column: 3, scope: !2442)
!2495 = !DILocation(line: 1314, column: 9, scope: !2442)
!2496 = !DILocation(line: 1314, column: 3, scope: !2442)
!2497 = !DILocation(line: 1316, column: 7, scope: !2442)
!2498 = !DILocation(line: 1318, column: 7, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2500, file: !1, line: 1317, column: 5)
!2500 = distinct !DILexicalBlock(scope: !2442, file: !1, line: 1316, column: 7)
!2501 = !DILocation(line: 1319, column: 7, scope: !2499)
!2502 = !DILocation(line: 1320, column: 5, scope: !2499)
!2503 = !DILocation(line: 1322, column: 13, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2442, file: !1, line: 1322, column: 7)
!2505 = !DILocation(line: 1322, column: 7, scope: !2504)
!2506 = !DILocation(line: 1322, column: 7, scope: !2442)
!2507 = !DILocation(line: 1324, column: 17, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !1, line: 1324, column: 11)
!2509 = distinct !DILexicalBlock(scope: !2504, file: !1, line: 1323, column: 5)
!2510 = !DILocation(line: 1324, column: 11, scope: !2508)
!2511 = !DILocation(line: 1324, column: 11, scope: !2509)
!2512 = !DILocation(line: 1326, column: 19, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2508, file: !1, line: 1325, column: 2)
!2514 = !DILocation(line: 1326, column: 10, scope: !2513)
!2515 = !DILocation(line: 1326, column: 16, scope: !2513)
!2516 = !DILocation(line: 1327, column: 23, scope: !2513)
!2517 = !DILocation(line: 1327, column: 10, scope: !2513)
!2518 = !DILocation(line: 1327, column: 21, scope: !2513)
!2519 = !DILocation(line: 1328, column: 10, scope: !2513)
!2520 = !DILocation(line: 1328, column: 29, scope: !2513)
!2521 = !DILocation(line: 1329, column: 2, scope: !2513)
!2522 = !DILocation(line: 1336, column: 4, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2508, file: !1, line: 1331, column: 2)
!2524 = !DILocation(line: 1339, column: 7, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2442, file: !1, line: 1339, column: 7)
!2526 = !DILocation(line: 1339, column: 7, scope: !2442)
!2527 = !DILocation(line: 1340, column: 5, scope: !2525)
!2528 = !DILocation(line: 1341, column: 1, scope: !2442)
!2529 = distinct !DISubprogram(name: "unroll_loop_constant_iterations", scope: !1, file: !1, line: 639, type: !2443, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2530)
!2530 = !{!2531, !2532, !2533, !2534, !2535, !2536, !2542, !2543, !2544, !2545, !2546, !2547, !2548}
!2531 = !DILocalVariable(name: "loop", arg: 1, scope: !2529, file: !1, line: 639, type: !579)
!2532 = !DILocalVariable(name: "niter", scope: !2529, file: !1, line: 641, type: !683)
!2533 = !DILocalVariable(name: "exit_mod", scope: !2529, file: !1, line: 642, type: !5)
!2534 = !DILocalVariable(name: "wont_exit", scope: !2529, file: !1, line: 643, type: !2448)
!2535 = !DILocalVariable(name: "i", scope: !2529, file: !1, line: 644, type: !5)
!2536 = !DILocalVariable(name: "remove_edges", scope: !2529, file: !1, line: 645, type: !2537)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_heap", file: !133, line: 152, baseType: !2539)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_heap", file: !133, line: 152, size: 128, elements: !2540)
!2540 = !{!2541}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2539, file: !133, line: 152, baseType: !594, size: 128)
!2542 = !DILocalVariable(name: "e", scope: !2529, file: !1, line: 646, type: !601)
!2543 = !DILocalVariable(name: "max_unroll", scope: !2529, file: !1, line: 647, type: !5)
!2544 = !DILocalVariable(name: "desc", scope: !2529, file: !1, line: 648, type: !2460)
!2545 = !DILocalVariable(name: "exit_at_end", scope: !2529, file: !1, line: 649, type: !555)
!2546 = !DILocalVariable(name: "opt_info", scope: !2529, file: !1, line: 650, type: !1704)
!2547 = !DILocalVariable(name: "ok", scope: !2529, file: !1, line: 651, type: !555)
!2548 = !DILocalVariable(name: "exit_block", scope: !2549, file: !1, line: 771, type: !986)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !1, line: 770, column: 5)
!2550 = distinct !DILexicalBlock(scope: !2529, file: !1, line: 769, column: 7)
!2551 = !DILocation(line: 0, scope: !2529)
!2552 = !DILocation(line: 645, column: 3, scope: !2529)
!2553 = !DILocation(line: 646, column: 3, scope: !2529)
!2554 = !DILocation(line: 647, column: 44, scope: !2529)
!2555 = !DILocation(line: 648, column: 29, scope: !2529)
!2556 = !DILocation(line: 649, column: 22, scope: !2529)
!2557 = !DILocation(line: 653, column: 17, scope: !2529)
!2558 = !DILocation(line: 656, column: 3, scope: !2529)
!2559 = !DILocation(line: 658, column: 20, scope: !2529)
!2560 = !DILocation(line: 658, column: 14, scope: !2529)
!2561 = !DILocation(line: 660, column: 15, scope: !2529)
!2562 = !DILocation(line: 661, column: 3, scope: !2529)
!2563 = !DILocation(line: 663, column: 16, scope: !2529)
!2564 = !DILocation(line: 664, column: 7, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2529, file: !1, line: 664, column: 7)
!2566 = !DILocation(line: 665, column: 10, scope: !2565)
!2567 = !DILocation(line: 665, column: 7, scope: !2565)
!2568 = !DILocation(line: 666, column: 16, scope: !2565)
!2569 = !DILocation(line: 666, column: 5, scope: !2565)
!2570 = !DILocation(line: 668, column: 8, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2529, file: !1, line: 668, column: 7)
!2572 = !DILocation(line: 0, scope: !2571)
!2573 = !DILocation(line: 668, column: 7, scope: !2529)
!2574 = !DILocation(line: 674, column: 11, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2571, file: !1, line: 669, column: 5)
!2576 = !DILocation(line: 675, column: 2, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2575, file: !1, line: 674, column: 11)
!2578 = !DILocation(line: 678, column: 7, scope: !2575)
!2579 = !DILocation(line: 679, column: 17, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2575, file: !1, line: 679, column: 11)
!2581 = !DILocation(line: 679, column: 11, scope: !2580)
!2582 = !DILocation(line: 679, column: 11, scope: !2575)
!2583 = !DILocation(line: 680, column: 2, scope: !2580)
!2584 = !DILocation(line: 682, column: 11, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2575, file: !1, line: 682, column: 11)
!2586 = !DILocation(line: 682, column: 11, scope: !2575)
!2587 = !DILocation(line: 684, column: 4, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2585, file: !1, line: 683, column: 2)
!2589 = !DILocation(line: 685, column: 53, scope: !2588)
!2590 = !DILocation(line: 687, column: 29, scope: !2588)
!2591 = !DILocation(line: 690, column: 15, scope: !2588)
!2592 = !DILocation(line: 690, column: 36, scope: !2588)
!2593 = !DILocation(line: 690, column: 24, scope: !2588)
!2594 = !DILocation(line: 690, column: 12, scope: !2588)
!2595 = !DILocation(line: 685, column: 16, scope: !2588)
!2596 = !DILocation(line: 693, column: 4, scope: !2588)
!2597 = !DILocation(line: 695, column: 36, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2588, file: !1, line: 695, column: 15)
!2599 = !DILocation(line: 695, column: 24, scope: !2598)
!2600 = !DILocation(line: 696, column: 7, scope: !2598)
!2601 = !DILocation(line: 698, column: 29, scope: !2588)
!2602 = !DILocation(line: 699, column: 16, scope: !2588)
!2603 = !DILocation(line: 700, column: 10, scope: !2588)
!2604 = !DILocation(line: 700, column: 20, scope: !2588)
!2605 = !DILocation(line: 701, column: 2, scope: !2588)
!2606 = !DILocation(line: 703, column: 7, scope: !2575)
!2607 = !DILocation(line: 704, column: 5, scope: !2575)
!2608 = !DILocation(line: 710, column: 11, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2571, file: !1, line: 706, column: 5)
!2610 = !DILocation(line: 711, column: 2, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2609, file: !1, line: 710, column: 11)
!2612 = !DILocation(line: 716, column: 20, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2609, file: !1, line: 716, column: 11)
!2614 = !DILocation(line: 717, column: 4, scope: !2613)
!2615 = !DILocation(line: 717, column: 13, scope: !2613)
!2616 = !DILocation(line: 717, column: 7, scope: !2613)
!2617 = !DILocation(line: 716, column: 11, scope: !2609)
!2618 = !DILocation(line: 719, column: 4, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2613, file: !1, line: 718, column: 2)
!2620 = !DILocation(line: 720, column: 14, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2619, file: !1, line: 720, column: 8)
!2622 = !DILocation(line: 720, column: 8, scope: !2621)
!2623 = !DILocation(line: 720, column: 8, scope: !2619)
!2624 = !DILocation(line: 721, column: 6, scope: !2621)
!2625 = !DILocation(line: 723, column: 11, scope: !2619)
!2626 = !DILocation(line: 724, column: 46, scope: !2619)
!2627 = !DILocation(line: 725, column: 21, scope: !2619)
!2628 = !DILocation(line: 726, column: 29, scope: !2619)
!2629 = !DILocation(line: 729, column: 15, scope: !2619)
!2630 = !DILocation(line: 729, column: 36, scope: !2619)
!2631 = !DILocation(line: 729, column: 24, scope: !2619)
!2632 = !DILocation(line: 729, column: 12, scope: !2619)
!2633 = !DILocation(line: 724, column: 9, scope: !2619)
!2634 = !DILocation(line: 732, column: 4, scope: !2619)
!2635 = !DILocation(line: 734, column: 24, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2619, file: !1, line: 734, column: 15)
!2637 = !DILocation(line: 735, column: 8, scope: !2636)
!2638 = !DILocation(line: 737, column: 28, scope: !2619)
!2639 = !DILocation(line: 737, column: 19, scope: !2619)
!2640 = !DILocation(line: 737, column: 16, scope: !2619)
!2641 = !DILocation(line: 738, column: 10, scope: !2619)
!2642 = !DILocation(line: 738, column: 20, scope: !2619)
!2643 = !DILocation(line: 739, column: 29, scope: !2619)
!2644 = !DILocation(line: 741, column: 4, scope: !2619)
!2645 = !DILocation(line: 742, column: 4, scope: !2619)
!2646 = !DILocation(line: 743, column: 2, scope: !2619)
!2647 = !DILocation(line: 745, column: 7, scope: !2609)
!2648 = !DILocation(line: 750, column: 3, scope: !2529)
!2649 = !DILocation(line: 751, column: 45, scope: !2529)
!2650 = !DILocation(line: 753, column: 28, scope: !2529)
!2651 = !DILocation(line: 756, column: 14, scope: !2529)
!2652 = !DILocation(line: 756, column: 11, scope: !2529)
!2653 = !DILocation(line: 751, column: 8, scope: !2529)
!2654 = !DILocation(line: 759, column: 3, scope: !2529)
!2655 = !DILocation(line: 761, column: 7, scope: !2529)
!2656 = !DILocation(line: 763, column: 7, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !1, line: 762, column: 5)
!2658 = distinct !DILexicalBlock(scope: !2529, file: !1, line: 761, column: 7)
!2659 = !DILocation(line: 764, column: 7, scope: !2657)
!2660 = !DILocation(line: 765, column: 5, scope: !2657)
!2661 = !DILocation(line: 767, column: 9, scope: !2529)
!2662 = !DILocation(line: 767, column: 3, scope: !2529)
!2663 = !DILocation(line: 769, column: 7, scope: !2529)
!2664 = !DILocation(line: 771, column: 51, scope: !2549)
!2665 = !DILocation(line: 771, column: 60, scope: !2549)
!2666 = !DILocation(line: 771, column: 32, scope: !2549)
!2667 = !DILocation(line: 0, scope: !2549)
!2668 = !DILocation(line: 774, column: 11, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2549, file: !1, line: 774, column: 11)
!2670 = !DILocation(line: 774, column: 38, scope: !2669)
!2671 = !DILocation(line: 774, column: 52, scope: !2669)
!2672 = !DILocation(line: 774, column: 62, scope: !2669)
!2673 = !DILocation(line: 774, column: 43, scope: !2669)
!2674 = !DILocation(line: 0, scope: !2669)
!2675 = !DILocation(line: 774, column: 11, scope: !2549)
!2676 = !DILocation(line: 776, column: 21, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2669, file: !1, line: 775, column: 2)
!2678 = !DILocation(line: 776, column: 19, scope: !2677)
!2679 = !DILocation(line: 777, column: 20, scope: !2677)
!2680 = !DILocation(line: 777, column: 18, scope: !2677)
!2681 = !DILocation(line: 778, column: 2, scope: !2677)
!2682 = !DILocation(line: 781, column: 21, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2669, file: !1, line: 780, column: 2)
!2684 = !DILocation(line: 781, column: 19, scope: !2683)
!2685 = !DILocation(line: 782, column: 20, scope: !2683)
!2686 = !DILocation(line: 782, column: 18, scope: !2683)
!2687 = !DILocation(line: 786, column: 15, scope: !2529)
!2688 = !DILocation(line: 787, column: 9, scope: !2529)
!2689 = !DILocation(line: 787, column: 19, scope: !2529)
!2690 = !DILocation(line: 788, column: 22, scope: !2529)
!2691 = !DILocation(line: 788, column: 9, scope: !2529)
!2692 = !DILocation(line: 788, column: 20, scope: !2529)
!2693 = !DILocation(line: 791, column: 8, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2529, file: !1, line: 791, column: 3)
!2695 = !DILocation(line: 0, scope: !2694)
!2696 = !DILocation(line: 791, column: 15, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2694, file: !1, line: 791, column: 3)
!2698 = !DILocation(line: 791, column: 3, scope: !2694)
!2699 = !DILocation(line: 792, column: 18, scope: !2697)
!2700 = !DILocation(line: 792, column: 5, scope: !2697)
!2701 = !DILocation(line: 791, column: 56, scope: !2697)
!2702 = !DILocation(line: 791, column: 3, scope: !2697)
!2703 = distinct !{!2703, !2698, !2704}
!2704 = !DILocation(line: 792, column: 19, scope: !2694)
!2705 = !DILocation(line: 793, column: 3, scope: !2529)
!2706 = !DILocation(line: 795, column: 7, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2529, file: !1, line: 795, column: 7)
!2708 = !DILocation(line: 795, column: 7, scope: !2529)
!2709 = !DILocation(line: 798, column: 19, scope: !2707)
!2710 = !DILocation(line: 796, column: 5, scope: !2707)
!2711 = !DILocation(line: 799, column: 1, scope: !2529)
!2712 = distinct !DISubprogram(name: "unroll_loop_runtime_iterations", scope: !1, file: !1, line: 959, type: !2443, scopeLine: 960, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2713)
!2713 = !{!2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2745, !2746}
!2714 = !DILocalVariable(name: "loop", arg: 1, scope: !2712, file: !1, line: 959, type: !579)
!2715 = !DILocalVariable(name: "old_niter", scope: !2712, file: !1, line: 961, type: !616)
!2716 = !DILocalVariable(name: "niter", scope: !2712, file: !1, line: 961, type: !616)
!2717 = !DILocalVariable(name: "init_code", scope: !2712, file: !1, line: 961, type: !616)
!2718 = !DILocalVariable(name: "branch_code", scope: !2712, file: !1, line: 961, type: !616)
!2719 = !DILocalVariable(name: "tmp", scope: !2712, file: !1, line: 961, type: !616)
!2720 = !DILocalVariable(name: "i", scope: !2712, file: !1, line: 962, type: !5)
!2721 = !DILocalVariable(name: "j", scope: !2712, file: !1, line: 962, type: !5)
!2722 = !DILocalVariable(name: "p", scope: !2712, file: !1, line: 962, type: !5)
!2723 = !DILocalVariable(name: "preheader", scope: !2712, file: !1, line: 963, type: !986)
!2724 = !DILocalVariable(name: "body", scope: !2712, file: !1, line: 963, type: !2725)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!2726 = !DILocalVariable(name: "swtch", scope: !2712, file: !1, line: 963, type: !986)
!2727 = !DILocalVariable(name: "ezc_swtch", scope: !2712, file: !1, line: 963, type: !986)
!2728 = !DILocalVariable(name: "dom_bbs", scope: !2712, file: !1, line: 964, type: !1748)
!2729 = !DILocalVariable(name: "wont_exit", scope: !2712, file: !1, line: 965, type: !2448)
!2730 = !DILocalVariable(name: "may_exit_copy", scope: !2712, file: !1, line: 966, type: !556)
!2731 = !DILocalVariable(name: "n_peel", scope: !2712, file: !1, line: 967, type: !5)
!2732 = !DILocalVariable(name: "remove_edges", scope: !2712, file: !1, line: 968, type: !2537)
!2733 = !DILocalVariable(name: "e", scope: !2712, file: !1, line: 969, type: !601)
!2734 = !DILocalVariable(name: "extra_zero_check", scope: !2712, file: !1, line: 970, type: !555)
!2735 = !DILocalVariable(name: "last_may_exit", scope: !2712, file: !1, line: 970, type: !555)
!2736 = !DILocalVariable(name: "max_unroll", scope: !2712, file: !1, line: 971, type: !5)
!2737 = !DILocalVariable(name: "desc", scope: !2712, file: !1, line: 972, type: !2460)
!2738 = !DILocalVariable(name: "exit_at_end", scope: !2712, file: !1, line: 973, type: !555)
!2739 = !DILocalVariable(name: "opt_info", scope: !2712, file: !1, line: 974, type: !1704)
!2740 = !DILocalVariable(name: "ok", scope: !2712, file: !1, line: 975, type: !555)
!2741 = !DILocalVariable(name: "ldom", scope: !2742, file: !1, line: 987, type: !1748)
!2742 = distinct !DILexicalBlock(scope: !2743, file: !1, line: 986, column: 5)
!2743 = distinct !DILexicalBlock(scope: !2744, file: !1, line: 985, column: 3)
!2744 = distinct !DILexicalBlock(scope: !2712, file: !1, line: 985, column: 3)
!2745 = !DILocalVariable(name: "bb", scope: !2742, file: !1, line: 988, type: !986)
!2746 = !DILocalVariable(name: "exit_block", scope: !2747, file: !1, line: 1143, type: !986)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !1, line: 1142, column: 5)
!2748 = distinct !DILexicalBlock(scope: !2712, file: !1, line: 1141, column: 7)
!2749 = !DILocation(line: 0, scope: !2712)
!2750 = !DILocation(line: 964, column: 3, scope: !2712)
!2751 = !DILocation(line: 968, column: 3, scope: !2712)
!2752 = !DILocation(line: 969, column: 3, scope: !2712)
!2753 = !DILocation(line: 971, column: 44, scope: !2712)
!2754 = !DILocation(line: 972, column: 29, scope: !2712)
!2755 = !DILocation(line: 973, column: 22, scope: !2712)
!2756 = !DILocation(line: 977, column: 7, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2712, file: !1, line: 977, column: 7)
!2758 = !DILocation(line: 978, column: 10, scope: !2757)
!2759 = !DILocation(line: 978, column: 7, scope: !2757)
!2760 = !DILocation(line: 979, column: 16, scope: !2757)
!2761 = !DILocation(line: 979, column: 5, scope: !2757)
!2762 = !DILocation(line: 982, column: 11, scope: !2712)
!2763 = !DILocation(line: 984, column: 10, scope: !2712)
!2764 = !DILocation(line: 0, scope: !2743)
!2765 = !DILocation(line: 0, scope: !2742)
!2766 = !DILocation(line: 985, column: 8, scope: !2744)
!2767 = !DILocation(line: 0, scope: !2744)
!2768 = !DILocation(line: 985, column: 25, scope: !2743)
!2769 = !DILocation(line: 985, column: 17, scope: !2743)
!2770 = !DILocation(line: 985, column: 3, scope: !2744)
!2771 = !DILocation(line: 987, column: 7, scope: !2742)
!2772 = !DILocation(line: 988, column: 7, scope: !2742)
!2773 = !DILocation(line: 990, column: 48, scope: !2742)
!2774 = !DILocation(line: 990, column: 14, scope: !2742)
!2775 = !DILocation(line: 990, column: 12, scope: !2742)
!2776 = !DILocation(line: 991, column: 12, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2742, file: !1, line: 991, column: 7)
!2778 = !DILocation(line: 991, column: 19, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2777, file: !1, line: 991, column: 7)
!2780 = !DILocation(line: 0, scope: !2777)
!2781 = !DILocation(line: 991, column: 7, scope: !2777)
!2782 = !DILocation(line: 992, column: 36, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2779, file: !1, line: 992, column: 6)
!2784 = !DILocation(line: 992, column: 7, scope: !2783)
!2785 = !DILocation(line: 992, column: 6, scope: !2779)
!2786 = !DILocation(line: 993, column: 4, scope: !2783)
!2787 = !DILocation(line: 991, column: 60, scope: !2779)
!2788 = !DILocation(line: 991, column: 7, scope: !2779)
!2789 = distinct !{!2789, !2781, !2790}
!2790 = !DILocation(line: 993, column: 4, scope: !2777)
!2791 = !DILocation(line: 995, column: 7, scope: !2742)
!2792 = !DILocation(line: 996, column: 5, scope: !2743)
!2793 = !DILocation(line: 985, column: 37, scope: !2743)
!2794 = !DILocation(line: 985, column: 3, scope: !2743)
!2795 = distinct !{!2795, !2770, !2796}
!2796 = !DILocation(line: 996, column: 5, scope: !2744)
!2797 = !DILocation(line: 997, column: 9, scope: !2712)
!2798 = !DILocation(line: 997, column: 3, scope: !2712)
!2799 = !DILocation(line: 999, column: 8, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2712, file: !1, line: 999, column: 7)
!2801 = !DILocation(line: 999, column: 7, scope: !2712)
!2802 = !DILocation(line: 1019, column: 3, scope: !2712)
!2803 = !DILocation(line: 1020, column: 42, scope: !2712)
!2804 = !DILocation(line: 1020, column: 23, scope: !2712)
!2805 = !DILocation(line: 1021, column: 40, scope: !2712)
!2806 = !DILocation(line: 1021, column: 24, scope: !2712)
!2807 = !DILocation(line: 1021, column: 9, scope: !2712)
!2808 = !DILocation(line: 1022, column: 11, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2712, file: !1, line: 1022, column: 7)
!2810 = !DILocation(line: 1022, column: 7, scope: !2712)
!2811 = !DILocation(line: 1023, column: 5, scope: !2809)
!2812 = !DILocation(line: 1028, column: 38, scope: !2712)
!2813 = !DILocation(line: 1030, column: 11, scope: !2712)
!2814 = !DILocation(line: 1028, column: 11, scope: !2712)
!2815 = !DILocation(line: 1033, column: 15, scope: !2712)
!2816 = !DILocation(line: 1034, column: 3, scope: !2712)
!2817 = !DILocation(line: 1035, column: 3, scope: !2712)
!2818 = !DILocation(line: 1038, column: 26, scope: !2712)
!2819 = !DILocation(line: 1038, column: 3, scope: !2712)
!2820 = !DILocation(line: 1040, column: 16, scope: !2712)
!2821 = !DILocation(line: 1042, column: 41, scope: !2712)
!2822 = !DILocation(line: 1042, column: 15, scope: !2712)
!2823 = !DILocation(line: 1048, column: 3, scope: !2712)
!2824 = !DILocation(line: 1050, column: 7, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2712, file: !1, line: 1049, column: 7)
!2826 = !DILocation(line: 1050, column: 17, scope: !2825)
!2827 = !DILocation(line: 1050, column: 11, scope: !2825)
!2828 = !DILocation(line: 1049, column: 7, scope: !2712)
!2829 = !DILocation(line: 1051, column: 5, scope: !2825)
!2830 = !DILocation(line: 1052, column: 15, scope: !2712)
!2831 = !DILocation(line: 1052, column: 43, scope: !2712)
!2832 = !DILocation(line: 1053, column: 45, scope: !2712)
!2833 = !DILocation(line: 1054, column: 31, scope: !2712)
!2834 = !DILocation(line: 1053, column: 8, scope: !2712)
!2835 = !DILocation(line: 1057, column: 3, scope: !2712)
!2836 = !DILocation(line: 1060, column: 23, scope: !2712)
!2837 = !DILocation(line: 1060, column: 11, scope: !2712)
!2838 = !DILocation(line: 0, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2840, file: !1, line: 1063, column: 5)
!2840 = distinct !DILexicalBlock(scope: !2841, file: !1, line: 1062, column: 3)
!2841 = distinct !DILexicalBlock(scope: !2712, file: !1, line: 1062, column: 3)
!2842 = !DILocation(line: 1062, column: 8, scope: !2841)
!2843 = !DILocation(line: 1062, column: 17, scope: !2840)
!2844 = !DILocation(line: 0, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2839, file: !1, line: 1066, column: 11)
!2846 = !DILocation(line: 1062, column: 3, scope: !2841)
!2847 = !DILocation(line: 1065, column: 7, scope: !2839)
!2848 = !DILocation(line: 1066, column: 13, scope: !2845)
!2849 = !DILocation(line: 1066, column: 27, scope: !2845)
!2850 = !DILocation(line: 1067, column: 2, scope: !2845)
!2851 = !DILocation(line: 1068, column: 49, scope: !2839)
!2852 = !DILocation(line: 1069, column: 28, scope: !2839)
!2853 = !DILocation(line: 1068, column: 12, scope: !2839)
!2854 = !DILocation(line: 1072, column: 7, scope: !2839)
!2855 = !DILocation(line: 1075, column: 18, scope: !2839)
!2856 = !DILocation(line: 1075, column: 22, scope: !2839)
!2857 = !DILocation(line: 1076, column: 33, scope: !2839)
!2858 = !DILocation(line: 1076, column: 28, scope: !2839)
!2859 = !DILocation(line: 1078, column: 31, scope: !2839)
!2860 = !DILocation(line: 1078, column: 19, scope: !2839)
!2861 = !DILocation(line: 1079, column: 43, scope: !2839)
!2862 = !DILocation(line: 1079, column: 61, scope: !2839)
!2863 = !DILocation(line: 1080, column: 8, scope: !2839)
!2864 = !DILocation(line: 1079, column: 21, scope: !2839)
!2865 = !DILocation(line: 1085, column: 7, scope: !2839)
!2866 = !DILocation(line: 1087, column: 38, scope: !2839)
!2867 = !DILocation(line: 1087, column: 15, scope: !2839)
!2868 = !DILocation(line: 1088, column: 7, scope: !2839)
!2869 = !DILocation(line: 1089, column: 64, scope: !2839)
!2870 = !DILocation(line: 1089, column: 7, scope: !2839)
!2871 = !DILocation(line: 1089, column: 33, scope: !2839)
!2872 = !DILocation(line: 1089, column: 45, scope: !2839)
!2873 = !DILocation(line: 1091, column: 8, scope: !2839)
!2874 = !DILocation(line: 1091, column: 34, scope: !2839)
!2875 = !DILocation(line: 1091, column: 40, scope: !2839)
!2876 = !DILocation(line: 1090, column: 11, scope: !2839)
!2877 = !DILocation(line: 1090, column: 9, scope: !2839)
!2878 = !DILocation(line: 1092, column: 10, scope: !2839)
!2879 = !DILocation(line: 1092, column: 22, scope: !2839)
!2880 = !DILocation(line: 1062, column: 28, scope: !2840)
!2881 = !DILocation(line: 1062, column: 3, scope: !2840)
!2882 = distinct !{!2882, !2846, !2883}
!2883 = !DILocation(line: 1093, column: 5, scope: !2841)
!2884 = !DILocation(line: 1095, column: 7, scope: !2712)
!2885 = !DILocation(line: 1098, column: 42, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !1, line: 1096, column: 5)
!2887 = distinct !DILexicalBlock(scope: !2712, file: !1, line: 1095, column: 7)
!2888 = !DILocation(line: 1098, column: 28, scope: !2886)
!2889 = !DILocation(line: 1100, column: 31, scope: !2886)
!2890 = !DILocation(line: 1100, column: 19, scope: !2886)
!2891 = !DILocation(line: 1101, column: 43, scope: !2886)
!2892 = !DILocation(line: 1101, column: 61, scope: !2886)
!2893 = !DILocation(line: 1102, column: 8, scope: !2886)
!2894 = !DILocation(line: 1101, column: 21, scope: !2886)
!2895 = !DILocation(line: 1104, column: 7, scope: !2886)
!2896 = !DILocation(line: 1106, column: 38, scope: !2886)
!2897 = !DILocation(line: 1106, column: 15, scope: !2886)
!2898 = !DILocation(line: 1107, column: 7, scope: !2886)
!2899 = !DILocation(line: 1108, column: 64, scope: !2886)
!2900 = !DILocation(line: 1108, column: 7, scope: !2886)
!2901 = !DILocation(line: 1108, column: 33, scope: !2886)
!2902 = !DILocation(line: 1108, column: 45, scope: !2886)
!2903 = !DILocation(line: 1110, column: 8, scope: !2886)
!2904 = !DILocation(line: 1110, column: 34, scope: !2886)
!2905 = !DILocation(line: 1110, column: 40, scope: !2886)
!2906 = !DILocation(line: 1109, column: 11, scope: !2886)
!2907 = !DILocation(line: 1109, column: 9, scope: !2886)
!2908 = !DILocation(line: 1111, column: 10, scope: !2886)
!2909 = !DILocation(line: 1111, column: 22, scope: !2886)
!2910 = !DILocation(line: 1112, column: 5, scope: !2886)
!2911 = !DILocation(line: 1115, column: 43, scope: !2712)
!2912 = !DILocation(line: 1115, column: 3, scope: !2712)
!2913 = !DILocation(line: 1119, column: 3, scope: !2712)
!2914 = !DILocation(line: 1120, column: 3, scope: !2712)
!2915 = !DILocation(line: 1121, column: 3, scope: !2712)
!2916 = !DILocation(line: 1123, column: 45, scope: !2712)
!2917 = !DILocation(line: 1125, column: 28, scope: !2712)
!2918 = !DILocation(line: 1128, column: 14, scope: !2712)
!2919 = !DILocation(line: 1128, column: 11, scope: !2712)
!2920 = !DILocation(line: 1123, column: 8, scope: !2712)
!2921 = !DILocation(line: 1131, column: 3, scope: !2712)
!2922 = !DILocation(line: 1133, column: 7, scope: !2712)
!2923 = !DILocation(line: 1135, column: 7, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !1, line: 1134, column: 5)
!2925 = distinct !DILexicalBlock(scope: !2712, file: !1, line: 1133, column: 7)
!2926 = !DILocation(line: 1136, column: 7, scope: !2924)
!2927 = !DILocation(line: 1137, column: 5, scope: !2924)
!2928 = !DILocation(line: 1139, column: 9, scope: !2712)
!2929 = !DILocation(line: 1139, column: 3, scope: !2712)
!2930 = !DILocation(line: 1141, column: 7, scope: !2748)
!2931 = !DILocation(line: 1141, column: 7, scope: !2712)
!2932 = !DILocation(line: 1143, column: 51, scope: !2747)
!2933 = !DILocation(line: 1143, column: 60, scope: !2747)
!2934 = !DILocation(line: 1143, column: 32, scope: !2747)
!2935 = !DILocation(line: 0, scope: !2747)
!2936 = !DILocation(line: 1147, column: 11, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2747, file: !1, line: 1147, column: 11)
!2938 = !DILocation(line: 1147, column: 38, scope: !2937)
!2939 = !DILocation(line: 1147, column: 52, scope: !2937)
!2940 = !DILocation(line: 1147, column: 62, scope: !2937)
!2941 = !DILocation(line: 1147, column: 43, scope: !2937)
!2942 = !DILocation(line: 0, scope: !2937)
!2943 = !DILocation(line: 1147, column: 11, scope: !2747)
!2944 = !DILocation(line: 1149, column: 21, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2937, file: !1, line: 1148, column: 2)
!2946 = !DILocation(line: 1149, column: 19, scope: !2945)
!2947 = !DILocation(line: 1150, column: 20, scope: !2945)
!2948 = !DILocation(line: 1150, column: 18, scope: !2945)
!2949 = !DILocation(line: 1151, column: 2, scope: !2945)
!2950 = !DILocation(line: 1154, column: 21, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2937, file: !1, line: 1153, column: 2)
!2952 = !DILocation(line: 1154, column: 19, scope: !2951)
!2953 = !DILocation(line: 1155, column: 20, scope: !2951)
!2954 = !DILocation(line: 1155, column: 18, scope: !2951)
!2955 = !DILocation(line: 1160, column: 8, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2712, file: !1, line: 1160, column: 3)
!2957 = !DILocation(line: 0, scope: !2956)
!2958 = !DILocation(line: 1160, column: 15, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2956, file: !1, line: 1160, column: 3)
!2960 = !DILocation(line: 1160, column: 3, scope: !2956)
!2961 = !DILocation(line: 1161, column: 18, scope: !2959)
!2962 = !DILocation(line: 1161, column: 5, scope: !2959)
!2963 = !DILocation(line: 1160, column: 56, scope: !2959)
!2964 = !DILocation(line: 1160, column: 3, scope: !2959)
!2965 = distinct !{!2965, !2960, !2966}
!2966 = !DILocation(line: 1161, column: 19, scope: !2956)
!2967 = !DILocation(line: 1162, column: 3, scope: !2712)
!2968 = !DILocation(line: 1168, column: 3, scope: !2712)
!2969 = !DILocation(line: 1170, column: 38, scope: !2712)
!2970 = !DILocation(line: 1171, column: 5, scope: !2712)
!2971 = !DILocation(line: 1170, column: 5, scope: !2712)
!2972 = !DILocation(line: 1169, column: 20, scope: !2712)
!2973 = !DILocation(line: 1172, column: 9, scope: !2712)
!2974 = !DILocation(line: 1172, column: 19, scope: !2712)
!2975 = !DILocation(line: 1173, column: 7, scope: !2712)
!2976 = !DILocation(line: 1176, column: 36, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2978, file: !1, line: 1174, column: 5)
!2978 = distinct !DILexicalBlock(scope: !2712, file: !1, line: 1173, column: 7)
!2979 = !DILocation(line: 1176, column: 60, scope: !2977)
!2980 = !DILocation(line: 1176, column: 2, scope: !2977)
!2981 = !DILocation(line: 1175, column: 24, scope: !2977)
!2982 = !DILocation(line: 1177, column: 13, scope: !2977)
!2983 = !DILocation(line: 1177, column: 32, scope: !2977)
!2984 = !DILocation(line: 1178, column: 22, scope: !2977)
!2985 = !DILocation(line: 1179, column: 5, scope: !2977)
!2986 = !DILocation(line: 1181, column: 7, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2712, file: !1, line: 1181, column: 7)
!2988 = !DILocation(line: 1181, column: 7, scope: !2712)
!2989 = !DILocation(line: 1185, column: 19, scope: !2987)
!2990 = !DILocation(line: 1182, column: 5, scope: !2987)
!2991 = !DILocation(line: 1187, column: 3, scope: !2712)
!2992 = !DILocation(line: 1188, column: 1, scope: !2712)
!2993 = distinct !DISubprogram(name: "unroll_loop_stupid", scope: !1, file: !1, line: 1439, type: !2443, scopeLine: 1440, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2994)
!2994 = !{!2995, !2996, !2997, !2998, !2999, !3000}
!2995 = !DILocalVariable(name: "loop", arg: 1, scope: !2993, file: !1, line: 1439, type: !579)
!2996 = !DILocalVariable(name: "wont_exit", scope: !2993, file: !1, line: 1441, type: !2448)
!2997 = !DILocalVariable(name: "nunroll", scope: !2993, file: !1, line: 1442, type: !5)
!2998 = !DILocalVariable(name: "desc", scope: !2993, file: !1, line: 1443, type: !2460)
!2999 = !DILocalVariable(name: "opt_info", scope: !2993, file: !1, line: 1444, type: !1704)
!3000 = !DILocalVariable(name: "ok", scope: !2993, file: !1, line: 1445, type: !555)
!3001 = !DILocation(line: 0, scope: !2993)
!3002 = !DILocation(line: 1442, column: 41, scope: !2993)
!3003 = !DILocation(line: 1443, column: 29, scope: !2993)
!3004 = !DILocation(line: 1447, column: 7, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2993, file: !1, line: 1447, column: 7)
!3006 = !DILocation(line: 1448, column: 10, scope: !3005)
!3007 = !DILocation(line: 1448, column: 7, scope: !3005)
!3008 = !DILocation(line: 1449, column: 16, scope: !3005)
!3009 = !DILocation(line: 1449, column: 5, scope: !3005)
!3010 = !DILocation(line: 1452, column: 38, scope: !2993)
!3011 = !DILocation(line: 1452, column: 15, scope: !2993)
!3012 = !DILocation(line: 1453, column: 3, scope: !2993)
!3013 = !DILocation(line: 1454, column: 3, scope: !2993)
!3014 = !DILocation(line: 1456, column: 45, scope: !2993)
!3015 = !DILocation(line: 1460, column: 14, scope: !2993)
!3016 = !DILocation(line: 1460, column: 11, scope: !2993)
!3017 = !DILocation(line: 1456, column: 8, scope: !2993)
!3018 = !DILocation(line: 1463, column: 3, scope: !2993)
!3019 = !DILocation(line: 1465, column: 7, scope: !2993)
!3020 = !DILocation(line: 1467, column: 7, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3022, file: !1, line: 1466, column: 5)
!3022 = distinct !DILexicalBlock(scope: !2993, file: !1, line: 1465, column: 7)
!3023 = !DILocation(line: 1468, column: 7, scope: !3021)
!3024 = !DILocation(line: 1469, column: 5, scope: !3021)
!3025 = !DILocation(line: 1471, column: 9, scope: !2993)
!3026 = !DILocation(line: 1471, column: 3, scope: !2993)
!3027 = !DILocation(line: 1473, column: 13, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !2993, file: !1, line: 1473, column: 7)
!3029 = !DILocation(line: 1473, column: 7, scope: !3028)
!3030 = !DILocation(line: 1473, column: 7, scope: !2993)
!3031 = !DILocation(line: 1481, column: 22, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3028, file: !1, line: 1474, column: 5)
!3033 = !DILocation(line: 1482, column: 5, scope: !3032)
!3034 = !DILocation(line: 1484, column: 7, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !2993, file: !1, line: 1484, column: 7)
!3036 = !DILocation(line: 1484, column: 7, scope: !2993)
!3037 = !DILocation(line: 1486, column: 16, scope: !3035)
!3038 = !DILocation(line: 1485, column: 5, scope: !3035)
!3039 = !DILocation(line: 1487, column: 1, scope: !2993)
!3040 = distinct !DISubprogram(name: "fel_next", scope: !376, file: !376, line: 518, type: !3041, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3043)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{null, !2373, !2374}
!3043 = !{!3044, !3045, !3046}
!3044 = !DILocalVariable(name: "li", arg: 1, scope: !3040, file: !376, line: 518, type: !2373)
!3045 = !DILocalVariable(name: "loop", arg: 2, scope: !3040, file: !376, line: 518, type: !2374)
!3046 = !DILocalVariable(name: "anum", scope: !3040, file: !376, line: 520, type: !556)
!3047 = !DILocation(line: 0, scope: !3040)
!3048 = !DILocation(line: 520, column: 3, scope: !3040)
!3049 = !DILocation(line: 522, column: 3, scope: !3040)
!3050 = !DILocation(line: 522, column: 10, scope: !3040)
!3051 = !DILocation(line: 524, column: 14, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3040, file: !376, line: 523, column: 5)
!3053 = !DILocation(line: 525, column: 25, scope: !3052)
!3054 = !DILocation(line: 525, column: 15, scope: !3052)
!3055 = !DILocation(line: 525, column: 13, scope: !3052)
!3056 = !DILocation(line: 526, column: 11, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3052, file: !376, line: 526, column: 11)
!3058 = !DILocation(line: 526, column: 11, scope: !3052)
!3059 = distinct !{!3059, !3049, !3060}
!3060 = !DILocation(line: 528, column: 5, scope: !3040)
!3061 = !DILocation(line: 530, column: 3, scope: !3040)
!3062 = !DILocation(line: 531, column: 9, scope: !3040)
!3063 = !DILocation(line: 532, column: 1, scope: !3040)
!3064 = distinct !DISubprogram(name: "split_edge_and_insert", scope: !1, file: !1, line: 885, type: !3065, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3067)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!986, !601, !616}
!3067 = !{!3068, !3069, !3070}
!3068 = !DILocalVariable(name: "e", arg: 1, scope: !3064, file: !1, line: 885, type: !601)
!3069 = !DILocalVariable(name: "insns", arg: 2, scope: !3064, file: !1, line: 885, type: !616)
!3070 = !DILocalVariable(name: "bb", scope: !3064, file: !1, line: 887, type: !986)
!3071 = !DILocation(line: 0, scope: !3064)
!3072 = !DILocation(line: 889, column: 8, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3064, file: !1, line: 889, column: 7)
!3074 = !DILocation(line: 889, column: 7, scope: !3064)
!3075 = !DILocation(line: 891, column: 8, scope: !3064)
!3076 = !DILocation(line: 892, column: 27, scope: !3064)
!3077 = !DILocation(line: 892, column: 3, scope: !3064)
!3078 = !DILocation(line: 924, column: 3, scope: !3064)
!3079 = !DILocation(line: 925, column: 1, scope: !3064)
!3080 = distinct !DISubprogram(name: "VEC_int_heap_alloc", scope: !565, file: !565, line: 32, type: !3081, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3083)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!563, !556}
!3083 = !{!3084}
!3084 = !DILocalVariable(name: "alloc_", arg: 1, scope: !3080, file: !565, line: 32, type: !556)
!3085 = !DILocation(line: 0, scope: !3080)
!3086 = !DILocation(line: 32, column: 1, scope: !3080)
!3087 = distinct !DISubprogram(name: "number_of_loops", scope: !376, file: !376, line: 459, type: !3088, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1779)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!5}
!3090 = !DILocation(line: 461, column: 8, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3087, file: !376, line: 461, column: 7)
!3092 = !DILocation(line: 461, column: 7, scope: !3087)
!3093 = !DILocation(line: 464, column: 10, scope: !3087)
!3094 = !DILocation(line: 464, column: 3, scope: !3087)
!3095 = !DILocation(line: 0, scope: !3087)
!3096 = !DILocation(line: 465, column: 1, scope: !3087)
!3097 = distinct !DISubprogram(name: "VEC_loop_p_base_iterate", scope: !376, file: !376, line: 85, type: !3098, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3102)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!556, !3100, !5, !2374}
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1027)
!3102 = !{!3103, !3104, !3105}
!3103 = !DILocalVariable(name: "vec_", arg: 1, scope: !3097, file: !376, line: 85, type: !3100)
!3104 = !DILocalVariable(name: "ix_", arg: 2, scope: !3097, file: !376, line: 85, type: !5)
!3105 = !DILocalVariable(name: "ptr", arg: 3, scope: !3097, file: !376, line: 85, type: !2374)
!3106 = !DILocation(line: 0, scope: !3097)
!3107 = distinct !DISubprogram(name: "VEC_int_base_quick_push", scope: !565, file: !565, line: 31, type: !3108, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3112)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!3110, !3111, !556}
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!3112 = !{!3113, !3114, !3115}
!3113 = !DILocalVariable(name: "vec_", arg: 1, scope: !3107, file: !565, line: 31, type: !3111)
!3114 = !DILocalVariable(name: "obj_", arg: 2, scope: !3107, file: !565, line: 31, type: !556)
!3115 = !DILocalVariable(name: "slot_", scope: !3107, file: !565, line: 31, type: !3110)
!3116 = !DILocation(line: 0, scope: !3107)
!3117 = !DILocation(line: 31, column: 1, scope: !3107)
!3118 = distinct !DISubprogram(name: "loop_outer", scope: !376, file: !376, line: 434, type: !3119, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3123)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!579, !3121}
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !580)
!3123 = !{!3124, !3125}
!3124 = !DILocalVariable(name: "loop", arg: 1, scope: !3118, file: !376, line: 434, type: !3121)
!3125 = !DILocalVariable(name: "n", scope: !3118, file: !376, line: 436, type: !5)
!3126 = !DILocation(line: 0, scope: !3118)
!3127 = !DILocation(line: 436, column: 16, scope: !3118)
!3128 = !DILocation(line: 438, column: 9, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3118, file: !376, line: 438, column: 7)
!3130 = !DILocation(line: 438, column: 7, scope: !3118)
!3131 = !DILocation(line: 441, column: 10, scope: !3118)
!3132 = !DILocation(line: 441, column: 3, scope: !3118)
!3133 = !DILocation(line: 442, column: 1, scope: !3118)
!3134 = distinct !DISubprogram(name: "VEC_loop_p_base_length", scope: !376, file: !376, line: 85, type: !3135, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3137)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!5, !3100}
!3137 = !{!3138}
!3138 = !DILocalVariable(name: "vec_", arg: 1, scope: !3134, file: !376, line: 85, type: !3100)
!3139 = !DILocation(line: 0, scope: !3134)
!3140 = !DILocation(line: 85, column: 1, scope: !3134)
!3141 = distinct !DISubprogram(name: "VEC_loop_p_base_index", scope: !376, file: !376, line: 85, type: !3142, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3144)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!578, !3100, !5}
!3144 = !{!3145, !3146}
!3145 = !DILocalVariable(name: "vec_", arg: 1, scope: !3141, file: !376, line: 85, type: !3100)
!3146 = !DILocalVariable(name: "ix_", arg: 2, scope: !3141, file: !376, line: 85, type: !5)
!3147 = !DILocation(line: 0, scope: !3141)
!3148 = !DILocation(line: 85, column: 1, scope: !3141)
!3149 = distinct !DISubprogram(name: "VEC_int_base_iterate", scope: !565, file: !565, line: 31, type: !3150, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3154)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!556, !3152, !5, !3110}
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !569)
!3154 = !{!3155, !3156, !3157}
!3155 = !DILocalVariable(name: "vec_", arg: 1, scope: !3149, file: !565, line: 31, type: !3152)
!3156 = !DILocalVariable(name: "ix_", arg: 2, scope: !3149, file: !565, line: 31, type: !5)
!3157 = !DILocalVariable(name: "ptr", arg: 3, scope: !3149, file: !565, line: 31, type: !3110)
!3158 = !DILocation(line: 0, scope: !3149)
!3159 = !DILocation(line: 31, column: 1, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3149, file: !565, line: 31, column: 1)
!3161 = !DILocation(line: 31, column: 1, scope: !3149)
!3162 = !DILocation(line: 31, column: 1, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3160, file: !565, line: 31, column: 1)
!3164 = !DILocation(line: 31, column: 1, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3160, file: !565, line: 31, column: 1)
!3166 = !DILocation(line: 0, scope: !3160)
!3167 = distinct !DISubprogram(name: "get_loop", scope: !376, file: !376, line: 417, type: !3168, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3170)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!579, !5}
!3170 = !{!3171}
!3171 = !DILocalVariable(name: "num", arg: 1, scope: !3167, file: !376, line: 417, type: !5)
!3172 = !DILocation(line: 0, scope: !3167)
!3173 = !DILocation(line: 419, column: 10, scope: !3167)
!3174 = !DILocation(line: 419, column: 3, scope: !3167)
!3175 = distinct !DISubprogram(name: "VEC_int_heap_free", scope: !565, file: !565, line: 32, type: !3176, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3179)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{null, !3178}
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!3179 = !{!3180}
!3180 = !DILocalVariable(name: "vec_", arg: 1, scope: !3175, file: !565, line: 32, type: !3178)
!3181 = !DILocation(line: 0, scope: !3175)
!3182 = !DILocation(line: 32, column: 1, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3175, file: !565, line: 32, column: 1)
!3184 = !DILocation(line: 32, column: 1, scope: !3175)
!3185 = distinct !DISubprogram(name: "decide_peel_once_rolling", scope: !1, file: !1, line: 323, type: !3186, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3188)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{null, !579, !556}
!3188 = !{!3189, !3190, !3191}
!3189 = !DILocalVariable(name: "loop", arg: 1, scope: !3185, file: !1, line: 323, type: !579)
!3190 = !DILocalVariable(name: "flags", arg: 2, scope: !3185, file: !1, line: 323, type: !556)
!3191 = !DILocalVariable(name: "desc", scope: !3185, file: !1, line: 325, type: !2460)
!3192 = !DILocation(line: 0, scope: !3185)
!3193 = !DILocation(line: 327, column: 7, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3185, file: !1, line: 327, column: 7)
!3195 = !DILocation(line: 327, column: 7, scope: !3185)
!3196 = !DILocation(line: 328, column: 5, scope: !3194)
!3197 = !DILocation(line: 331, column: 18, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3185, file: !1, line: 331, column: 7)
!3199 = !DILocation(line: 331, column: 68, scope: !3198)
!3200 = !DILocation(line: 331, column: 60, scope: !3198)
!3201 = !DILocation(line: 331, column: 7, scope: !3185)
!3202 = !DILocation(line: 333, column: 11, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3204, file: !1, line: 333, column: 11)
!3204 = distinct !DILexicalBlock(scope: !3198, file: !1, line: 332, column: 5)
!3205 = !DILocation(line: 333, column: 11, scope: !3204)
!3206 = !DILocation(line: 334, column: 2, scope: !3203)
!3207 = !DILocation(line: 339, column: 10, scope: !3185)
!3208 = !DILocation(line: 342, column: 14, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3185, file: !1, line: 342, column: 7)
!3210 = !DILocation(line: 342, column: 8, scope: !3209)
!3211 = !DILocation(line: 343, column: 7, scope: !3209)
!3212 = !DILocation(line: 343, column: 16, scope: !3209)
!3213 = !DILocation(line: 343, column: 10, scope: !3209)
!3214 = !DILocation(line: 344, column: 7, scope: !3209)
!3215 = !DILocation(line: 344, column: 16, scope: !3209)
!3216 = !DILocation(line: 344, column: 10, scope: !3209)
!3217 = !DILocation(line: 345, column: 7, scope: !3209)
!3218 = !DILocation(line: 345, column: 17, scope: !3209)
!3219 = !DILocation(line: 345, column: 11, scope: !3209)
!3220 = !DILocation(line: 346, column: 7, scope: !3209)
!3221 = !DILocation(line: 346, column: 16, scope: !3209)
!3222 = !DILocation(line: 346, column: 22, scope: !3209)
!3223 = !DILocation(line: 342, column: 7, scope: !3185)
!3224 = !DILocation(line: 348, column: 11, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !1, line: 348, column: 11)
!3226 = distinct !DILexicalBlock(scope: !3209, file: !1, line: 347, column: 5)
!3227 = !DILocation(line: 348, column: 11, scope: !3226)
!3228 = !DILocation(line: 349, column: 2, scope: !3225)
!3229 = !DILocation(line: 355, column: 7, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3185, file: !1, line: 355, column: 7)
!3231 = !DILocation(line: 355, column: 7, scope: !3185)
!3232 = !DILocation(line: 356, column: 5, scope: !3230)
!3233 = !DILocation(line: 357, column: 22, scope: !3185)
!3234 = !DILocation(line: 357, column: 31, scope: !3185)
!3235 = !DILocation(line: 358, column: 1, scope: !3185)
!3236 = distinct !DISubprogram(name: "decide_peel_completely", scope: !1, file: !1, line: 362, type: !3186, scopeLine: 363, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3237)
!3237 = !{!3238, !3239, !3240, !3241}
!3238 = !DILocalVariable(name: "loop", arg: 1, scope: !3236, file: !1, line: 362, type: !579)
!3239 = !DILocalVariable(name: "flags", arg: 2, scope: !3236, file: !1, line: 362, type: !556)
!3240 = !DILocalVariable(name: "npeel", scope: !3236, file: !1, line: 364, type: !5)
!3241 = !DILocalVariable(name: "desc", scope: !3236, file: !1, line: 365, type: !2460)
!3242 = !DILocation(line: 0, scope: !3236)
!3243 = !DILocation(line: 367, column: 7, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3236, file: !1, line: 367, column: 7)
!3245 = !DILocation(line: 367, column: 7, scope: !3236)
!3246 = !DILocation(line: 368, column: 5, scope: !3244)
!3247 = !DILocation(line: 371, column: 13, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3236, file: !1, line: 371, column: 7)
!3249 = !DILocation(line: 371, column: 7, scope: !3248)
!3250 = !DILocation(line: 371, column: 7, scope: !3236)
!3251 = !DILocation(line: 373, column: 11, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3253, file: !1, line: 373, column: 11)
!3253 = distinct !DILexicalBlock(scope: !3248, file: !1, line: 372, column: 5)
!3254 = !DILocation(line: 373, column: 11, scope: !3253)
!3255 = !DILocation(line: 374, column: 2, scope: !3252)
!3256 = !DILocation(line: 379, column: 7, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3236, file: !1, line: 379, column: 7)
!3258 = !DILocation(line: 379, column: 7, scope: !3236)
!3259 = !DILocation(line: 381, column: 11, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3261, file: !1, line: 381, column: 11)
!3261 = distinct !DILexicalBlock(scope: !3257, file: !1, line: 380, column: 5)
!3262 = !DILocation(line: 381, column: 11, scope: !3261)
!3263 = !DILocation(line: 382, column: 2, scope: !3260)
!3264 = !DILocation(line: 387, column: 8, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3236, file: !1, line: 387, column: 7)
!3266 = !DILocation(line: 387, column: 7, scope: !3236)
!3267 = !DILocation(line: 389, column: 11, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3269, file: !1, line: 389, column: 11)
!3269 = distinct !DILexicalBlock(scope: !3265, file: !1, line: 388, column: 5)
!3270 = !DILocation(line: 389, column: 11, scope: !3269)
!3271 = !DILocation(line: 390, column: 2, scope: !3268)
!3272 = !DILocation(line: 396, column: 11, scope: !3236)
!3273 = !DILocation(line: 396, column: 67, scope: !3236)
!3274 = !DILocation(line: 396, column: 59, scope: !3236)
!3275 = !DILocation(line: 397, column: 26, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3236, file: !1, line: 397, column: 7)
!3277 = !DILocation(line: 397, column: 13, scope: !3276)
!3278 = !DILocation(line: 397, column: 7, scope: !3236)
!3279 = !DILocation(line: 398, column: 5, scope: !3276)
!3280 = !DILocation(line: 401, column: 8, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3236, file: !1, line: 401, column: 7)
!3282 = !DILocation(line: 401, column: 7, scope: !3236)
!3283 = !DILocation(line: 403, column: 11, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3285, file: !1, line: 403, column: 11)
!3285 = distinct !DILexicalBlock(scope: !3281, file: !1, line: 402, column: 5)
!3286 = !DILocation(line: 403, column: 11, scope: !3285)
!3287 = !DILocation(line: 404, column: 2, scope: !3284)
!3288 = !DILocation(line: 409, column: 10, scope: !3236)
!3289 = !DILocation(line: 412, column: 14, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3236, file: !1, line: 412, column: 7)
!3291 = !DILocation(line: 412, column: 8, scope: !3290)
!3292 = !DILocation(line: 413, column: 7, scope: !3290)
!3293 = !DILocation(line: 413, column: 16, scope: !3290)
!3294 = !DILocation(line: 413, column: 10, scope: !3290)
!3295 = !DILocation(line: 414, column: 7, scope: !3290)
!3296 = !DILocation(line: 414, column: 17, scope: !3290)
!3297 = !DILocation(line: 414, column: 11, scope: !3290)
!3298 = !DILocation(line: 415, column: 7, scope: !3290)
!3299 = !DILocation(line: 415, column: 16, scope: !3290)
!3300 = !DILocation(line: 415, column: 10, scope: !3290)
!3301 = !DILocation(line: 412, column: 7, scope: !3236)
!3302 = !DILocation(line: 417, column: 11, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3304, file: !1, line: 417, column: 11)
!3304 = distinct !DILexicalBlock(scope: !3290, file: !1, line: 416, column: 5)
!3305 = !DILocation(line: 417, column: 11, scope: !3304)
!3306 = !DILocation(line: 418, column: 2, scope: !3303)
!3307 = !DILocation(line: 423, column: 13, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3236, file: !1, line: 423, column: 7)
!3309 = !DILocation(line: 423, column: 27, scope: !3308)
!3310 = !DILocation(line: 423, column: 21, scope: !3308)
!3311 = !DILocation(line: 423, column: 19, scope: !3308)
!3312 = !DILocation(line: 423, column: 7, scope: !3236)
!3313 = !DILocation(line: 425, column: 11, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3308, file: !1, line: 424, column: 5)
!3315 = !DILocation(line: 427, column: 4, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3317, file: !1, line: 426, column: 2)
!3317 = distinct !DILexicalBlock(scope: !3314, file: !1, line: 425, column: 11)
!3318 = !DILocation(line: 429, column: 13, scope: !3316)
!3319 = !DILocation(line: 429, column: 57, scope: !3316)
!3320 = !DILocation(line: 429, column: 4, scope: !3316)
!3321 = !DILocation(line: 430, column: 13, scope: !3316)
!3322 = !DILocation(line: 430, column: 4, scope: !3316)
!3323 = !DILocation(line: 431, column: 2, scope: !3316)
!3324 = !DILocation(line: 436, column: 7, scope: !3236)
!3325 = !DILocation(line: 437, column: 5, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3236, file: !1, line: 436, column: 7)
!3327 = !DILocation(line: 438, column: 22, scope: !3236)
!3328 = !DILocation(line: 438, column: 31, scope: !3236)
!3329 = !DILocation(line: 439, column: 1, scope: !3236)
!3330 = distinct !DISubprogram(name: "peel_loop_completely", scope: !1, file: !1, line: 456, type: !2443, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3331)
!3331 = !{!3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340}
!3332 = !DILocalVariable(name: "loop", arg: 1, scope: !3330, file: !1, line: 456, type: !579)
!3333 = !DILocalVariable(name: "wont_exit", scope: !3330, file: !1, line: 458, type: !2448)
!3334 = !DILocalVariable(name: "npeel", scope: !3330, file: !1, line: 459, type: !683)
!3335 = !DILocalVariable(name: "i", scope: !3330, file: !1, line: 460, type: !5)
!3336 = !DILocalVariable(name: "remove_edges", scope: !3330, file: !1, line: 461, type: !2537)
!3337 = !DILocalVariable(name: "ein", scope: !3330, file: !1, line: 462, type: !601)
!3338 = !DILocalVariable(name: "desc", scope: !3330, file: !1, line: 463, type: !2460)
!3339 = !DILocalVariable(name: "opt_info", scope: !3330, file: !1, line: 464, type: !1704)
!3340 = !DILocalVariable(name: "ok", scope: !3341, file: !1, line: 470, type: !555)
!3341 = distinct !DILexicalBlock(scope: !3342, file: !1, line: 469, column: 5)
!3342 = distinct !DILexicalBlock(scope: !3330, file: !1, line: 468, column: 7)
!3343 = !DILocation(line: 0, scope: !3330)
!3344 = !DILocation(line: 461, column: 3, scope: !3330)
!3345 = !DILocation(line: 462, column: 3, scope: !3330)
!3346 = !DILocation(line: 463, column: 29, scope: !3330)
!3347 = !DILocation(line: 466, column: 17, scope: !3330)
!3348 = !DILocation(line: 468, column: 7, scope: !3342)
!3349 = !DILocation(line: 468, column: 7, scope: !3330)
!3350 = !DILocation(line: 472, column: 34, scope: !3341)
!3351 = !DILocation(line: 472, column: 19, scope: !3341)
!3352 = !DILocation(line: 473, column: 7, scope: !3341)
!3353 = !DILocation(line: 474, column: 7, scope: !3341)
!3354 = !DILocation(line: 475, column: 17, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3341, file: !1, line: 475, column: 11)
!3356 = !DILocation(line: 475, column: 11, scope: !3355)
!3357 = !DILocation(line: 475, column: 11, scope: !3341)
!3358 = !DILocation(line: 476, column: 2, scope: !3355)
!3359 = !DILocation(line: 478, column: 20, scope: !3341)
!3360 = !DILocation(line: 480, column: 11, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3341, file: !1, line: 480, column: 11)
!3362 = !DILocation(line: 480, column: 11, scope: !3341)
!3363 = !DILocation(line: 481, column: 20, scope: !3361)
!3364 = !DILocation(line: 481, column: 9, scope: !3361)
!3365 = !DILocation(line: 483, column: 7, scope: !3341)
!3366 = !DILocation(line: 484, column: 49, scope: !3341)
!3367 = !DILocation(line: 486, column: 25, scope: !3341)
!3368 = !DILocation(line: 490, column: 11, scope: !3341)
!3369 = !DILocation(line: 490, column: 8, scope: !3341)
!3370 = !DILocation(line: 484, column: 12, scope: !3341)
!3371 = !DILocation(line: 0, scope: !3341)
!3372 = !DILocation(line: 492, column: 7, scope: !3341)
!3373 = !DILocation(line: 494, column: 13, scope: !3341)
!3374 = !DILocation(line: 494, column: 7, scope: !3341)
!3375 = !DILocation(line: 496, column: 11, scope: !3341)
!3376 = !DILocation(line: 498, column: 5, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3378, file: !1, line: 497, column: 3)
!3378 = distinct !DILexicalBlock(scope: !3341, file: !1, line: 496, column: 11)
!3379 = !DILocation(line: 499, column: 5, scope: !3377)
!3380 = !DILocation(line: 500, column: 3, scope: !3377)
!3381 = !DILocation(line: 503, column: 12, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3341, file: !1, line: 503, column: 7)
!3383 = !DILocation(line: 0, scope: !3382)
!3384 = !DILocation(line: 503, column: 19, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3382, file: !1, line: 503, column: 7)
!3386 = !DILocation(line: 503, column: 7, scope: !3382)
!3387 = !DILocation(line: 504, column: 15, scope: !3385)
!3388 = !DILocation(line: 504, column: 2, scope: !3385)
!3389 = !DILocation(line: 503, column: 62, scope: !3385)
!3390 = !DILocation(line: 503, column: 7, scope: !3385)
!3391 = distinct !{!3391, !3386, !3392}
!3392 = !DILocation(line: 504, column: 18, scope: !3382)
!3393 = !DILocation(line: 505, column: 7, scope: !3341)
!3394 = !DILocation(line: 506, column: 5, scope: !3341)
!3395 = !DILocation(line: 508, column: 15, scope: !3330)
!3396 = !DILocation(line: 508, column: 7, scope: !3330)
!3397 = !DILocation(line: 509, column: 3, scope: !3330)
!3398 = !DILocation(line: 513, column: 16, scope: !3330)
!3399 = !DILocation(line: 513, column: 3, scope: !3330)
!3400 = !DILocation(line: 515, column: 7, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3330, file: !1, line: 515, column: 7)
!3402 = !DILocation(line: 515, column: 7, scope: !3330)
!3403 = !DILocation(line: 516, column: 66, scope: !3401)
!3404 = !DILocation(line: 516, column: 5, scope: !3401)
!3405 = !DILocation(line: 517, column: 1, scope: !3330)
!3406 = distinct !DISubprogram(name: "RESET_BIT", scope: !2449, file: !2449, line: 82, type: !3407, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3409)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{null, !2448, !5}
!3409 = !{!3410, !3411, !3412}
!3410 = !DILocalVariable(name: "map", arg: 1, scope: !3406, file: !2449, line: 82, type: !2448)
!3411 = !DILocalVariable(name: "bitno", arg: 2, scope: !3406, file: !2449, line: 82, type: !5)
!3412 = !DILocalVariable(name: "oldbit", scope: !3413, file: !2449, line: 86, type: !555)
!3413 = distinct !DILexicalBlock(scope: !3414, file: !2449, line: 85, column: 5)
!3414 = distinct !DILexicalBlock(scope: !3406, file: !2449, line: 84, column: 7)
!3415 = !DILocation(line: 0, scope: !3406)
!3416 = !DILocation(line: 84, column: 12, scope: !3414)
!3417 = !DILocation(line: 84, column: 7, scope: !3414)
!3418 = !DILocation(line: 84, column: 7, scope: !3406)
!3419 = !DILocation(line: 92, column: 42, scope: !3406)
!3420 = !DILocation(line: 92, column: 31, scope: !3406)
!3421 = !DILocation(line: 91, column: 19, scope: !3406)
!3422 = !DILocation(line: 91, column: 3, scope: !3406)
!3423 = !DILocation(line: 87, column: 16, scope: !3413)
!3424 = !DILocation(line: 88, column: 11, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3413, file: !2449, line: 88, column: 11)
!3426 = !DILocation(line: 88, column: 11, scope: !3413)
!3427 = !DILocation(line: 89, column: 2, scope: !3425)
!3428 = !DILocation(line: 89, column: 41, scope: !3425)
!3429 = !DILocation(line: 92, column: 8, scope: !3406)
!3430 = !DILocation(line: 92, column: 5, scope: !3406)
!3431 = !DILocation(line: 93, column: 1, scope: !3406)
!3432 = distinct !DISubprogram(name: "analyze_insns_in_loop", scope: !1, file: !1, line: 1793, type: !3433, scopeLine: 1794, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3435)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!1704, !579}
!3435 = !{!3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448}
!3436 = !DILocalVariable(name: "loop", arg: 1, scope: !3432, file: !1, line: 1793, type: !579)
!3437 = !DILocalVariable(name: "body", scope: !3432, file: !1, line: 1795, type: !2725)
!3438 = !DILocalVariable(name: "bb", scope: !3432, file: !1, line: 1795, type: !986)
!3439 = !DILocalVariable(name: "i", scope: !3432, file: !1, line: 1796, type: !5)
!3440 = !DILocalVariable(name: "opt_info", scope: !3432, file: !1, line: 1797, type: !1704)
!3441 = !DILocalVariable(name: "insn", scope: !3432, file: !1, line: 1798, type: !616)
!3442 = !DILocalVariable(name: "ivts", scope: !3432, file: !1, line: 1799, type: !1709)
!3443 = !DILocalVariable(name: "ves", scope: !3432, file: !1, line: 1800, type: !1723)
!3444 = !DILocalVariable(name: "slot1", scope: !3432, file: !1, line: 1801, type: !1059)
!3445 = !DILocalVariable(name: "slot2", scope: !3432, file: !1, line: 1802, type: !1059)
!3446 = !DILocalVariable(name: "edges", scope: !3432, file: !1, line: 1803, type: !2537)
!3447 = !DILocalVariable(name: "exit", scope: !3432, file: !1, line: 1804, type: !601)
!3448 = !DILocalVariable(name: "can_apply", scope: !3432, file: !1, line: 1805, type: !555)
!3449 = !DILocation(line: 0, scope: !3432)
!3450 = !DILocation(line: 1797, column: 31, scope: !3432)
!3451 = !DILocation(line: 1803, column: 3, scope: !3432)
!3452 = !DILocation(line: 1803, column: 29, scope: !3432)
!3453 = !DILocation(line: 1803, column: 21, scope: !3432)
!3454 = !DILocation(line: 1807, column: 3, scope: !3432)
!3455 = !DILocation(line: 1809, column: 10, scope: !3432)
!3456 = !DILocation(line: 1811, column: 7, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3432, file: !1, line: 1811, column: 7)
!3458 = !DILocation(line: 1811, column: 7, scope: !3432)
!3459 = !DILocation(line: 1813, column: 57, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3457, file: !1, line: 1812, column: 5)
!3461 = !DILocation(line: 1813, column: 49, scope: !3460)
!3462 = !DILocation(line: 1813, column: 47, scope: !3460)
!3463 = !DILocation(line: 1813, column: 34, scope: !3460)
!3464 = !DILocation(line: 1813, column: 17, scope: !3460)
!3465 = !DILocation(line: 1813, column: 32, scope: !3460)
!3466 = !DILocation(line: 1815, column: 17, scope: !3460)
!3467 = !DILocation(line: 1815, column: 34, scope: !3460)
!3468 = !DILocation(line: 1816, column: 17, scope: !3460)
!3469 = !DILocation(line: 1816, column: 34, scope: !3460)
!3470 = !DILocation(line: 1822, column: 7, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3432, file: !1, line: 1822, column: 7)
!3472 = !DILocation(line: 1817, column: 5, scope: !3460)
!3473 = !DILocation(line: 1820, column: 30, scope: !3432)
!3474 = !DILocation(line: 1820, column: 58, scope: !3432)
!3475 = !DILocation(line: 1820, column: 13, scope: !3432)
!3476 = !DILocation(line: 1820, column: 28, scope: !3432)
!3477 = !DILocation(line: 1822, column: 32, scope: !3471)
!3478 = !DILocation(line: 1822, column: 7, scope: !3432)
!3479 = !DILocation(line: 1824, column: 14, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3471, file: !1, line: 1823, column: 5)
!3481 = !DILocation(line: 1825, column: 19, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3480, file: !1, line: 1825, column: 11)
!3483 = !DILocation(line: 1825, column: 25, scope: !3482)
!3484 = !DILocation(line: 1825, column: 11, scope: !3480)
!3485 = !DILocation(line: 1827, column: 26, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3482, file: !1, line: 1826, column: 2)
!3487 = !DILocation(line: 1827, column: 14, scope: !3486)
!3488 = !DILocation(line: 1827, column: 24, scope: !3486)
!3489 = !DILocation(line: 1829, column: 2, scope: !3486)
!3490 = !DILocation(line: 1832, column: 7, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3432, file: !1, line: 1832, column: 7)
!3492 = !DILocation(line: 1833, column: 7, scope: !3491)
!3493 = !DILocation(line: 1835, column: 67, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3491, file: !1, line: 1834, column: 5)
!3495 = !DILocation(line: 1835, column: 59, scope: !3494)
!3496 = !DILocation(line: 1835, column: 57, scope: !3494)
!3497 = !DILocation(line: 1835, column: 44, scope: !3494)
!3498 = !DILocation(line: 1835, column: 17, scope: !3494)
!3499 = !DILocation(line: 1835, column: 42, scope: !3494)
!3500 = !DILocation(line: 1838, column: 17, scope: !3494)
!3501 = !DILocation(line: 1838, column: 36, scope: !3494)
!3502 = !DILocation(line: 1839, column: 17, scope: !3494)
!3503 = !DILocation(line: 1839, column: 36, scope: !3494)
!3504 = !DILocation(line: 1840, column: 5, scope: !3494)
!3505 = !DILocation(line: 0, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3507, file: !1, line: 1842, column: 3)
!3507 = distinct !DILexicalBlock(scope: !3432, file: !1, line: 1842, column: 3)
!3508 = !DILocation(line: 0, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3510, file: !1, line: 1845, column: 11)
!3510 = distinct !DILexicalBlock(scope: !3506, file: !1, line: 1843, column: 5)
!3511 = !DILocation(line: 0, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3513, file: !1, line: 1853, column: 13)
!3513 = distinct !DILexicalBlock(scope: !3514, file: !1, line: 1849, column: 7)
!3514 = distinct !DILexicalBlock(scope: !3515, file: !1, line: 1848, column: 7)
!3515 = distinct !DILexicalBlock(scope: !3510, file: !1, line: 1848, column: 7)
!3516 = !DILocation(line: 0, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3518, file: !1, line: 1857, column: 11)
!3518 = distinct !DILexicalBlock(scope: !3513, file: !1, line: 1856, column: 13)
!3519 = !DILocation(line: 0, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3513, file: !1, line: 1866, column: 13)
!3521 = !DILocation(line: 0, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3523, file: !1, line: 1870, column: 11)
!3523 = distinct !DILexicalBlock(scope: !3513, file: !1, line: 1869, column: 13)
!3524 = !DILocation(line: 1842, column: 8, scope: !3507)
!3525 = !DILocation(line: 0, scope: !3507)
!3526 = !DILocation(line: 1799, column: 23, scope: !3432)
!3527 = !DILocation(line: 1800, column: 25, scope: !3432)
!3528 = !DILocation(line: 1842, column: 25, scope: !3506)
!3529 = !DILocation(line: 1842, column: 17, scope: !3506)
!3530 = !DILocation(line: 1842, column: 3, scope: !3507)
!3531 = !DILocation(line: 1844, column: 12, scope: !3510)
!3532 = !DILocation(line: 1845, column: 50, scope: !3509)
!3533 = !DILocation(line: 1845, column: 12, scope: !3509)
!3534 = !DILocation(line: 1845, column: 11, scope: !3510)
!3535 = !DILocation(line: 1848, column: 7, scope: !3515)
!3536 = !DILocation(line: 0, scope: !3515)
!3537 = !DILocation(line: 1848, column: 7, scope: !3514)
!3538 = !DILocation(line: 1850, column: 14, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3513, file: !1, line: 1850, column: 13)
!3540 = !DILocation(line: 1850, column: 13, scope: !3513)
!3541 = !DILocation(line: 1853, column: 23, scope: !3512)
!3542 = !DILocation(line: 1853, column: 13, scope: !3512)
!3543 = !DILocation(line: 1853, column: 13, scope: !3513)
!3544 = !DILocation(line: 1854, column: 18, scope: !3512)
!3545 = !DILocation(line: 1854, column: 11, scope: !3512)
!3546 = !DILocation(line: 1856, column: 13, scope: !3518)
!3547 = !DILocation(line: 1856, column: 13, scope: !3513)
!3548 = !DILocation(line: 1858, column: 47, scope: !3517)
!3549 = !DILocation(line: 1858, column: 63, scope: !3517)
!3550 = !DILocation(line: 1858, column: 21, scope: !3517)
!3551 = !DILocation(line: 1859, column: 6, scope: !3517)
!3552 = !DILocation(line: 1860, column: 20, scope: !3517)
!3553 = !DILocation(line: 1861, column: 17, scope: !3517)
!3554 = !DILocation(line: 1861, column: 34, scope: !3517)
!3555 = !DILocation(line: 1862, column: 42, scope: !3517)
!3556 = !DILocation(line: 1862, column: 33, scope: !3517)
!3557 = !DILocation(line: 1863, column: 13, scope: !3517)
!3558 = !DILocation(line: 1866, column: 23, scope: !3520)
!3559 = !DILocation(line: 1866, column: 13, scope: !3520)
!3560 = !DILocation(line: 1866, column: 13, scope: !3513)
!3561 = !DILocation(line: 1867, column: 17, scope: !3520)
!3562 = !DILocation(line: 1867, column: 11, scope: !3520)
!3563 = !DILocation(line: 1869, column: 13, scope: !3523)
!3564 = !DILocation(line: 1869, column: 13, scope: !3513)
!3565 = !DILocation(line: 1871, column: 47, scope: !3522)
!3566 = !DILocation(line: 1871, column: 73, scope: !3522)
!3567 = !DILocation(line: 1871, column: 21, scope: !3522)
!3568 = !DILocation(line: 1872, column: 6, scope: !3522)
!3569 = !DILocation(line: 1873, column: 20, scope: !3522)
!3570 = !DILocation(line: 1874, column: 17, scope: !3522)
!3571 = !DILocation(line: 1874, column: 36, scope: !3522)
!3572 = !DILocation(line: 1875, column: 43, scope: !3522)
!3573 = !DILocation(line: 1875, column: 35, scope: !3522)
!3574 = !DILocation(line: 1876, column: 11, scope: !3522)
!3575 = distinct !{!3575, !3535, !3576}
!3576 = !DILocation(line: 1877, column: 7, scope: !3515)
!3577 = !DILocation(line: 1842, column: 37, scope: !3506)
!3578 = !DILocation(line: 1842, column: 3, scope: !3506)
!3579 = distinct !{!3579, !3530, !3580}
!3580 = !DILocation(line: 1878, column: 5, scope: !3507)
!3581 = !DILocation(line: 1880, column: 3, scope: !3432)
!3582 = !DILocation(line: 1881, column: 9, scope: !3432)
!3583 = !DILocation(line: 1881, column: 3, scope: !3432)
!3584 = !DILocation(line: 1883, column: 1, scope: !3432)
!3585 = !DILocation(line: 1882, column: 3, scope: !3432)
!3586 = distinct !DISubprogram(name: "opt_info_start_duplication", scope: !1, file: !1, line: 1889, type: !3587, scopeLine: 1890, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3589)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{null, !1704}
!3589 = !{!3590}
!3590 = !DILocalVariable(name: "opt_info", arg: 1, scope: !3586, file: !1, line: 1889, type: !1704)
!3591 = !DILocation(line: 0, scope: !3586)
!3592 = !DILocation(line: 1891, column: 7, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3586, file: !1, line: 1891, column: 7)
!3594 = !DILocation(line: 1891, column: 7, scope: !3586)
!3595 = !DILocation(line: 1892, column: 33, scope: !3593)
!3596 = !DILocation(line: 1892, column: 15, scope: !3593)
!3597 = !DILocation(line: 1892, column: 31, scope: !3593)
!3598 = !DILocation(line: 1892, column: 5, scope: !3593)
!3599 = !DILocation(line: 1893, column: 1, scope: !3586)
!3600 = distinct !DISubprogram(name: "apply_opt_in_copies", scope: !1, file: !1, line: 2197, type: !3601, scopeLine: 2200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3603)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{null, !1704, !5, !555, !555}
!3603 = !{!3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618}
!3604 = !DILocalVariable(name: "opt_info", arg: 1, scope: !3600, file: !1, line: 2197, type: !1704)
!3605 = !DILocalVariable(name: "n_copies", arg: 2, scope: !3600, file: !1, line: 2198, type: !5)
!3606 = !DILocalVariable(name: "unrolling", arg: 3, scope: !3600, file: !1, line: 2198, type: !555)
!3607 = !DILocalVariable(name: "rewrite_original_loop", arg: 4, scope: !3600, file: !1, line: 2199, type: !555)
!3608 = !DILocalVariable(name: "i", scope: !3600, file: !1, line: 2201, type: !5)
!3609 = !DILocalVariable(name: "delta", scope: !3600, file: !1, line: 2201, type: !5)
!3610 = !DILocalVariable(name: "bb", scope: !3600, file: !1, line: 2202, type: !986)
!3611 = !DILocalVariable(name: "orig_bb", scope: !3600, file: !1, line: 2202, type: !986)
!3612 = !DILocalVariable(name: "insn", scope: !3600, file: !1, line: 2203, type: !616)
!3613 = !DILocalVariable(name: "orig_insn", scope: !3600, file: !1, line: 2203, type: !616)
!3614 = !DILocalVariable(name: "next", scope: !3600, file: !1, line: 2203, type: !616)
!3615 = !DILocalVariable(name: "ivts_templ", scope: !3600, file: !1, line: 2204, type: !1710)
!3616 = !DILocalVariable(name: "ivts", scope: !3600, file: !1, line: 2204, type: !1709)
!3617 = !DILocalVariable(name: "ve_templ", scope: !3600, file: !1, line: 2205, type: !1724)
!3618 = !DILocalVariable(name: "ves", scope: !3600, file: !1, line: 2205, type: !1723)
!3619 = !DILocation(line: 0, scope: !3600)
!3620 = !DILocation(line: 2204, column: 3, scope: !3600)
!3621 = !DILocation(line: 2205, column: 3, scope: !3600)
!3622 = !DILocation(line: 2209, column: 3, scope: !3600)
!3623 = !DILocation(line: 2212, column: 17, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3600, file: !1, line: 2212, column: 7)
!3625 = !DILocation(line: 2212, column: 7, scope: !3624)
!3626 = !DILocation(line: 2212, column: 7, scope: !3600)
!3627 = !DILocation(line: 2213, column: 27, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3624, file: !1, line: 2213, column: 5)
!3629 = !DILocation(line: 2213, column: 10, scope: !3628)
!3630 = !DILocation(line: 0, scope: !3628)
!3631 = !DILocation(line: 2213, column: 5, scope: !3628)
!3632 = !DILocation(line: 2214, column: 7, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3628, file: !1, line: 2213, column: 5)
!3634 = !DILocation(line: 2213, column: 64, scope: !3633)
!3635 = !DILocation(line: 2213, column: 5, scope: !3633)
!3636 = distinct !{!3636, !3631, !3637}
!3637 = !DILocation(line: 2214, column: 36, scope: !3628)
!3638 = !DILocation(line: 2216, column: 22, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3600, file: !1, line: 2216, column: 3)
!3640 = !DILocation(line: 0, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3642, file: !1, line: 2228, column: 9)
!3642 = distinct !DILexicalBlock(scope: !3643, file: !1, line: 2227, column: 7)
!3643 = distinct !DILexicalBlock(scope: !3644, file: !1, line: 2227, column: 7)
!3644 = distinct !DILexicalBlock(scope: !3645, file: !1, line: 2217, column: 5)
!3645 = distinct !DILexicalBlock(scope: !3639, file: !1, line: 2216, column: 3)
!3646 = !DILocation(line: 0, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3641, file: !1, line: 2256, column: 15)
!3648 = !DILocation(line: 2216, column: 8, scope: !3639)
!3649 = !DILocation(line: 0, scope: !3639)
!3650 = !DILocation(line: 2216, column: 54, scope: !3645)
!3651 = !DILocation(line: 2216, column: 41, scope: !3645)
!3652 = !DILocation(line: 2216, column: 3, scope: !3639)
!3653 = !DILocation(line: 2218, column: 12, scope: !3644)
!3654 = !DILocation(line: 2219, column: 17, scope: !3644)
!3655 = !DILocation(line: 2223, column: 53, scope: !3644)
!3656 = !DILocation(line: 2223, column: 41, scope: !3644)
!3657 = !DILocation(line: 2223, column: 15, scope: !3644)
!3658 = !DILocation(line: 2225, column: 15, scope: !3644)
!3659 = !DILocation(line: 2226, column: 19, scope: !3644)
!3660 = !DILocation(line: 2227, column: 19, scope: !3643)
!3661 = !DILocation(line: 0, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3663, file: !1, line: 2250, column: 23)
!3663 = distinct !DILexicalBlock(scope: !3664, file: !1, line: 2246, column: 17)
!3664 = distinct !DILexicalBlock(scope: !3665, file: !1, line: 2245, column: 19)
!3665 = distinct !DILexicalBlock(scope: !3666, file: !1, line: 2241, column: 13)
!3666 = distinct !DILexicalBlock(scope: !3641, file: !1, line: 2240, column: 15)
!3667 = !DILocation(line: 2227, column: 12, scope: !3643)
!3668 = !DILocation(line: 2227, column: 41, scope: !3642)
!3669 = !DILocation(line: 0, scope: !3644)
!3670 = !DILocation(line: 0, scope: !3643)
!3671 = !DILocation(line: 2227, column: 38, scope: !3642)
!3672 = !DILocation(line: 2227, column: 7, scope: !3643)
!3673 = !DILocation(line: 2229, column: 18, scope: !3641)
!3674 = !DILocation(line: 2230, column: 16, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3641, file: !1, line: 2230, column: 15)
!3676 = !DILocation(line: 2230, column: 15, scope: !3641)
!3677 = !DILocation(line: 2233, column: 11, scope: !3641)
!3678 = !DILocation(line: 2233, column: 19, scope: !3641)
!3679 = !DILocation(line: 2234, column: 25, scope: !3641)
!3680 = distinct !{!3680, !3677, !3679}
!3681 = !DILocation(line: 2236, column: 27, scope: !3641)
!3682 = !DILocation(line: 2237, column: 25, scope: !3641)
!3683 = !DILocation(line: 2240, column: 25, scope: !3666)
!3684 = !DILocation(line: 2240, column: 15, scope: !3666)
!3685 = !DILocation(line: 2240, column: 15, scope: !3641)
!3686 = !DILocation(line: 2243, column: 3, scope: !3665)
!3687 = !DILocation(line: 2242, column: 22, scope: !3665)
!3688 = !DILocation(line: 2245, column: 19, scope: !3664)
!3689 = !DILocation(line: 2245, column: 19, scope: !3665)
!3690 = !DILocation(line: 2247, column: 5, scope: !3663)
!3691 = !DILocation(line: 2250, column: 23, scope: !3663)
!3692 = !DILocation(line: 2251, column: 21, scope: !3662)
!3693 = !DILocation(line: 2252, column: 19, scope: !3663)
!3694 = !DILocation(line: 2253, column: 17, scope: !3663)
!3695 = !DILocation(line: 2256, column: 25, scope: !3647)
!3696 = !DILocation(line: 2256, column: 38, scope: !3647)
!3697 = !DILocation(line: 2256, column: 28, scope: !3647)
!3698 = !DILocation(line: 2256, column: 15, scope: !3641)
!3699 = !DILocation(line: 2259, column: 3, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3647, file: !1, line: 2257, column: 13)
!3701 = !DILocation(line: 2258, column: 21, scope: !3700)
!3702 = !DILocation(line: 2260, column: 19, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3700, file: !1, line: 2260, column: 19)
!3704 = !DILocation(line: 2260, column: 19, scope: !3700)
!3705 = !DILocation(line: 2262, column: 5, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3703, file: !1, line: 2261, column: 17)
!3707 = !DILocation(line: 2264, column: 19, scope: !3706)
!3708 = !DILocation(line: 2265, column: 17, scope: !3706)
!3709 = !DILocation(line: 2267, column: 23, scope: !3641)
!3710 = !DILocation(line: 2268, column: 9, scope: !3641)
!3711 = !DILocation(line: 2227, column: 7, scope: !3642)
!3712 = distinct !{!3712, !3672, !3713}
!3713 = !DILocation(line: 2268, column: 9, scope: !3643)
!3714 = !DILocation(line: 2216, column: 73, scope: !3645)
!3715 = !DILocation(line: 2216, column: 3, scope: !3645)
!3716 = distinct !{!3716, !3652, !3717}
!3717 = !DILocation(line: 2269, column: 5, scope: !3639)
!3718 = !DILocation(line: 2271, column: 8, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3600, file: !1, line: 2271, column: 7)
!3720 = !DILocation(line: 2271, column: 7, scope: !3600)
!3721 = !DILocation(line: 2276, column: 17, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3600, file: !1, line: 2276, column: 7)
!3723 = !DILocation(line: 2276, column: 7, scope: !3722)
!3724 = !DILocation(line: 2276, column: 7, scope: !3600)
!3725 = !DILocation(line: 2278, column: 28, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3727, file: !1, line: 2278, column: 7)
!3727 = distinct !DILexicalBlock(scope: !3722, file: !1, line: 2277, column: 5)
!3728 = !DILocation(line: 0, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3726, file: !1, line: 2278, column: 7)
!3730 = !DILocation(line: 2278, column: 12, scope: !3726)
!3731 = !DILocation(line: 0, scope: !3726)
!3732 = !DILocation(line: 2278, column: 7, scope: !3726)
!3733 = !DILocation(line: 2279, column: 54, scope: !3729)
!3734 = !DILocation(line: 2279, column: 2, scope: !3729)
!3735 = !DILocation(line: 2278, column: 64, scope: !3729)
!3736 = !DILocation(line: 2278, column: 7, scope: !3729)
!3737 = distinct !{!3737, !3732, !3738}
!3738 = !DILocation(line: 2279, column: 68, scope: !3726)
!3739 = !DILocation(line: 0, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3741, file: !1, line: 2280, column: 7)
!3741 = distinct !DILexicalBlock(scope: !3727, file: !1, line: 2280, column: 7)
!3742 = !DILocation(line: 2280, column: 12, scope: !3741)
!3743 = !DILocation(line: 0, scope: !3741)
!3744 = !DILocation(line: 2280, column: 7, scope: !3741)
!3745 = !DILocation(line: 2281, column: 50, scope: !3740)
!3746 = !DILocation(line: 2281, column: 2, scope: !3740)
!3747 = !DILocation(line: 2280, column: 64, scope: !3740)
!3748 = !DILocation(line: 2280, column: 7, scope: !3740)
!3749 = distinct !{!3749, !3744, !3750}
!3750 = !DILocation(line: 2281, column: 59, scope: !3741)
!3751 = !DILocation(line: 2287, column: 22, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3600, file: !1, line: 2287, column: 3)
!3753 = !DILocation(line: 2287, column: 8, scope: !3752)
!3754 = !DILocation(line: 0, scope: !3752)
!3755 = !DILocation(line: 2287, column: 54, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3752, file: !1, line: 2287, column: 3)
!3757 = !DILocation(line: 2287, column: 41, scope: !3756)
!3758 = !DILocation(line: 2287, column: 3, scope: !3752)
!3759 = !DILocation(line: 2289, column: 12, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3756, file: !1, line: 2288, column: 5)
!3761 = !DILocation(line: 2290, column: 17, scope: !3760)
!3762 = !DILocation(line: 2291, column: 11, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3760, file: !1, line: 2291, column: 11)
!3764 = !DILocation(line: 2291, column: 33, scope: !3763)
!3765 = !DILocation(line: 2291, column: 11, scope: !3760)
!3766 = !DILocation(line: 2294, column: 15, scope: !3760)
!3767 = !DILocation(line: 2295, column: 24, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3760, file: !1, line: 2295, column: 7)
!3769 = !DILocation(line: 0, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3768, file: !1, line: 2295, column: 7)
!3771 = !DILocation(line: 0, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3773, file: !1, line: 2311, column: 23)
!3773 = distinct !DILexicalBlock(scope: !3774, file: !1, line: 2310, column: 17)
!3774 = distinct !DILexicalBlock(scope: !3775, file: !1, line: 2309, column: 19)
!3775 = distinct !DILexicalBlock(scope: !3776, file: !1, line: 2306, column: 13)
!3776 = distinct !DILexicalBlock(scope: !3777, file: !1, line: 2305, column: 15)
!3777 = distinct !DILexicalBlock(scope: !3770, file: !1, line: 2298, column: 9)
!3778 = !DILocation(line: 2295, column: 12, scope: !3768)
!3779 = !DILocation(line: 0, scope: !3768)
!3780 = !DILocation(line: 2296, column: 25, scope: !3770)
!3781 = !DILocation(line: 2296, column: 22, scope: !3770)
!3782 = !DILocation(line: 2295, column: 7, scope: !3768)
!3783 = !DILocation(line: 2299, column: 18, scope: !3777)
!3784 = !DILocation(line: 2301, column: 16, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3777, file: !1, line: 2301, column: 15)
!3786 = !DILocation(line: 2301, column: 15, scope: !3777)
!3787 = !DILocation(line: 2304, column: 27, scope: !3777)
!3788 = !DILocation(line: 2305, column: 25, scope: !3776)
!3789 = !DILocation(line: 2305, column: 15, scope: !3776)
!3790 = !DILocation(line: 2305, column: 15, scope: !3777)
!3791 = !DILocation(line: 2308, column: 3, scope: !3775)
!3792 = !DILocation(line: 2307, column: 22, scope: !3775)
!3793 = !DILocation(line: 2309, column: 19, scope: !3774)
!3794 = !DILocation(line: 2309, column: 19, scope: !3775)
!3795 = !DILocation(line: 2312, column: 21, scope: !3772)
!3796 = !DILocation(line: 2313, column: 19, scope: !3773)
!3797 = !DILocation(line: 2314, column: 19, scope: !3773)
!3798 = !DILocation(line: 2295, column: 7, scope: !3770)
!3799 = distinct !{!3799, !3782, !3800}
!3800 = !DILocation(line: 2318, column: 9, scope: !3768)
!3801 = !DILocation(line: 2287, column: 73, scope: !3756)
!3802 = !DILocation(line: 2287, column: 3, scope: !3756)
!3803 = distinct !{!3803, !3758, !3804}
!3804 = !DILocation(line: 2319, column: 5, scope: !3752)
!3805 = !DILocation(line: 2320, column: 1, scope: !3600)
!3806 = distinct !DISubprogram(name: "free_opt_info", scope: !1, file: !1, line: 2325, type: !3587, scopeLine: 2326, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3807)
!3807 = !{!3808, !3809}
!3808 = !DILocalVariable(name: "opt_info", arg: 1, scope: !3806, file: !1, line: 2325, type: !1704)
!3809 = !DILocalVariable(name: "ves", scope: !3810, file: !1, line: 2331, type: !1723)
!3810 = distinct !DILexicalBlock(scope: !3811, file: !1, line: 2330, column: 5)
!3811 = distinct !DILexicalBlock(scope: !3806, file: !1, line: 2329, column: 7)
!3812 = !DILocation(line: 0, scope: !3806)
!3813 = !DILocation(line: 2327, column: 17, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3806, file: !1, line: 2327, column: 7)
!3815 = !DILocation(line: 2327, column: 7, scope: !3814)
!3816 = !DILocation(line: 2327, column: 7, scope: !3806)
!3817 = !DILocation(line: 2328, column: 5, scope: !3814)
!3818 = !DILocation(line: 2329, column: 17, scope: !3811)
!3819 = !DILocation(line: 2329, column: 7, scope: !3811)
!3820 = !DILocation(line: 2329, column: 7, scope: !3806)
!3821 = !DILocation(line: 2333, column: 28, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3810, file: !1, line: 2333, column: 7)
!3823 = !DILocation(line: 2333, column: 12, scope: !3822)
!3824 = !DILocation(line: 0, scope: !3822)
!3825 = !DILocation(line: 0, scope: !3810)
!3826 = !DILocation(line: 2333, column: 7, scope: !3822)
!3827 = !DILocation(line: 2334, column: 2, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3822, file: !1, line: 2333, column: 7)
!3829 = !DILocation(line: 2333, column: 64, scope: !3828)
!3830 = !DILocation(line: 2333, column: 7, scope: !3828)
!3831 = distinct !{!3831, !3826, !3832}
!3832 = !DILocation(line: 2334, column: 2, scope: !3822)
!3833 = !DILocation(line: 2335, column: 30, scope: !3810)
!3834 = !DILocation(line: 2335, column: 7, scope: !3810)
!3835 = !DILocation(line: 2336, column: 5, scope: !3810)
!3836 = !DILocation(line: 2337, column: 9, scope: !3806)
!3837 = !DILocation(line: 2337, column: 3, scope: !3806)
!3838 = !DILocation(line: 2338, column: 1, scope: !3806)
!3839 = distinct !DISubprogram(name: "VEC_edge_base_iterate", scope: !133, file: !133, line: 150, type: !3840, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3845)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!556, !3842, !5, !3844}
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!3845 = !{!3846, !3847, !3848}
!3846 = !DILocalVariable(name: "vec_", arg: 1, scope: !3839, file: !133, line: 150, type: !3842)
!3847 = !DILocalVariable(name: "ix_", arg: 2, scope: !3839, file: !133, line: 150, type: !5)
!3848 = !DILocalVariable(name: "ptr", arg: 3, scope: !3839, file: !133, line: 150, type: !3844)
!3849 = !DILocation(line: 0, scope: !3839)
!3850 = !DILocation(line: 150, column: 1, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3839, file: !133, line: 150, column: 1)
!3852 = !DILocation(line: 150, column: 1, scope: !3839)
!3853 = !DILocation(line: 150, column: 1, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3851, file: !133, line: 150, column: 1)
!3855 = !DILocation(line: 150, column: 1, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3851, file: !133, line: 150, column: 1)
!3857 = !DILocation(line: 0, scope: !3851)
!3858 = distinct !DISubprogram(name: "VEC_edge_heap_free", scope: !133, file: !133, line: 152, type: !3859, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3862)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{null, !3861}
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!3862 = !{!3863}
!3863 = !DILocalVariable(name: "vec_", arg: 1, scope: !3858, file: !133, line: 152, type: !3861)
!3864 = !DILocation(line: 0, scope: !3858)
!3865 = !DILocation(line: 152, column: 1, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3858, file: !133, line: 152, column: 1)
!3867 = !DILocation(line: 152, column: 1, scope: !3858)
!3868 = distinct !DISubprogram(name: "si_info_hash", scope: !1, file: !1, line: 1492, type: !1043, scopeLine: 1493, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3869)
!3869 = !{!3870}
!3870 = !DILocalVariable(name: "ivts", arg: 1, scope: !3868, file: !1, line: 1492, type: !1046)
!3871 = !DILocation(line: 0, scope: !3868)
!3872 = !DILocation(line: 1494, column: 22, scope: !3868)
!3873 = !DILocation(line: 1494, column: 3, scope: !3868)
!3874 = distinct !DISubprogram(name: "si_info_eq", scope: !1, file: !1, line: 1500, type: !1051, scopeLine: 1501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3875)
!3875 = !{!3876, !3877, !3878, !3880}
!3876 = !DILocalVariable(name: "ivts1", arg: 1, scope: !3874, file: !1, line: 1500, type: !1046)
!3877 = !DILocalVariable(name: "ivts2", arg: 2, scope: !3874, file: !1, line: 1500, type: !1046)
!3878 = !DILocalVariable(name: "i1", scope: !3874, file: !1, line: 1502, type: !3879)
!3879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1744)
!3880 = !DILocalVariable(name: "i2", scope: !3874, file: !1, line: 1503, type: !3879)
!3881 = !DILocation(line: 0, scope: !3874)
!3882 = !DILocation(line: 1505, column: 14, scope: !3874)
!3883 = !DILocation(line: 1505, column: 26, scope: !3874)
!3884 = !DILocation(line: 1505, column: 19, scope: !3874)
!3885 = !DILocation(line: 1505, column: 3, scope: !3874)
!3886 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !133, file: !133, line: 150, type: !3887, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3889)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!5, !3842}
!3889 = !{!3890}
!3890 = !DILocalVariable(name: "vec_", arg: 1, scope: !3886, file: !133, line: 150, type: !3842)
!3891 = !DILocation(line: 0, scope: !3886)
!3892 = !DILocation(line: 150, column: 1, scope: !3886)
!3893 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !133, file: !133, line: 150, type: !3894, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3896)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!601, !3842, !5}
!3896 = !{!3897, !3898}
!3897 = !DILocalVariable(name: "vec_", arg: 1, scope: !3893, file: !133, line: 150, type: !3842)
!3898 = !DILocalVariable(name: "ix_", arg: 2, scope: !3893, file: !133, line: 150, type: !5)
!3899 = !DILocation(line: 0, scope: !3893)
!3900 = !DILocation(line: 150, column: 1, scope: !3893)
!3901 = distinct !DISubprogram(name: "ve_info_hash", scope: !1, file: !1, line: 1511, type: !1043, scopeLine: 1512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3902)
!3902 = !{!3903}
!3903 = !DILocalVariable(name: "ves", arg: 1, scope: !3901, file: !1, line: 1511, type: !1046)
!3904 = !DILocation(line: 0, scope: !3901)
!3905 = !DILocation(line: 1513, column: 22, scope: !3901)
!3906 = !DILocation(line: 1513, column: 3, scope: !3901)
!3907 = distinct !DISubprogram(name: "ve_info_eq", scope: !1, file: !1, line: 1520, type: !1051, scopeLine: 1521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3908)
!3908 = !{!3909, !3910, !3911, !3913}
!3909 = !DILocalVariable(name: "ivts1", arg: 1, scope: !3907, file: !1, line: 1520, type: !1046)
!3910 = !DILocalVariable(name: "ivts2", arg: 2, scope: !3907, file: !1, line: 1520, type: !1046)
!3911 = !DILocalVariable(name: "i1", scope: !3907, file: !1, line: 1522, type: !3912)
!3912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1746)
!3913 = !DILocalVariable(name: "i2", scope: !3907, file: !1, line: 1523, type: !3912)
!3914 = !DILocation(line: 0, scope: !3907)
!3915 = !DILocation(line: 1525, column: 14, scope: !3907)
!3916 = !DILocation(line: 1525, column: 26, scope: !3907)
!3917 = !DILocation(line: 1525, column: 19, scope: !3907)
!3918 = !DILocation(line: 1525, column: 3, scope: !3907)
!3919 = distinct !DISubprogram(name: "analyze_iv_to_split_insn", scope: !1, file: !1, line: 1738, type: !3920, scopeLine: 1739, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3922)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!1709, !616}
!3922 = !{!3923, !3924, !3925, !3926, !3937, !3938}
!3923 = !DILocalVariable(name: "insn", arg: 1, scope: !3919, file: !1, line: 1738, type: !616)
!3924 = !DILocalVariable(name: "set", scope: !3919, file: !1, line: 1740, type: !616)
!3925 = !DILocalVariable(name: "dest", scope: !3919, file: !1, line: 1740, type: !616)
!3926 = !DILocalVariable(name: "iv", scope: !3919, file: !1, line: 1741, type: !3927)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_iv", file: !376, line: 328, size: 448, elements: !3928)
!3928 = !{!3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3927, file: !376, line: 332, baseType: !616, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !3927, file: !376, line: 332, baseType: !616, size: 64, offset: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "extend", scope: !3927, file: !376, line: 335, baseType: !388, size: 32, offset: 128)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "delta", scope: !3927, file: !376, line: 338, baseType: !616, size: 64, offset: 192)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !3927, file: !376, line: 338, baseType: !616, size: 64, offset: 256)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "extend_mode", scope: !3927, file: !376, line: 341, baseType: !3, size: 32, offset: 320)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3927, file: !376, line: 344, baseType: !3, size: 32, offset: 352)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "first_special", scope: !3927, file: !376, line: 347, baseType: !5, size: 1, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!3937 = !DILocalVariable(name: "ivts", scope: !3919, file: !1, line: 1742, type: !1709)
!3938 = !DILocalVariable(name: "ok", scope: !3919, file: !1, line: 1743, type: !555)
!3939 = !DILocation(line: 0, scope: !3919)
!3940 = !DILocation(line: 1741, column: 3, scope: !3919)
!3941 = !DILocation(line: 1747, column: 9, scope: !3919)
!3942 = !DILocation(line: 1748, column: 8, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3919, file: !1, line: 1748, column: 7)
!3944 = !DILocation(line: 1748, column: 7, scope: !3919)
!3945 = !DILocation(line: 1751, column: 10, scope: !3919)
!3946 = !DILocation(line: 1752, column: 8, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3919, file: !1, line: 1752, column: 7)
!3948 = !DILocation(line: 1752, column: 7, scope: !3919)
!3949 = !DILocation(line: 1755, column: 8, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3919, file: !1, line: 1755, column: 7)
!3951 = !DILocation(line: 1755, column: 7, scope: !3919)
!3952 = !DILocation(line: 1758, column: 8, scope: !3919)
!3953 = !DILocation(line: 1768, column: 9, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3919, file: !1, line: 1768, column: 7)
!3955 = !DILocation(line: 1768, column: 7, scope: !3919)
!3956 = !DILocation(line: 1771, column: 10, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3919, file: !1, line: 1771, column: 7)
!3958 = !DILocation(line: 1771, column: 18, scope: !3957)
!3959 = !DILocation(line: 1771, column: 15, scope: !3957)
!3960 = !DILocation(line: 1772, column: 7, scope: !3957)
!3961 = !DILocation(line: 1772, column: 13, scope: !3957)
!3962 = !DILocation(line: 1772, column: 24, scope: !3957)
!3963 = !DILocation(line: 1772, column: 18, scope: !3957)
!3964 = !DILocation(line: 1771, column: 7, scope: !3919)
!3965 = !DILocation(line: 1776, column: 10, scope: !3919)
!3966 = !DILocation(line: 1777, column: 9, scope: !3919)
!3967 = !DILocation(line: 1777, column: 14, scope: !3919)
!3968 = !DILocation(line: 1778, column: 9, scope: !3919)
!3969 = !DILocation(line: 1778, column: 18, scope: !3919)
!3970 = !DILocation(line: 1779, column: 19, scope: !3919)
!3971 = !DILocation(line: 1779, column: 9, scope: !3919)
!3972 = !DILocation(line: 1779, column: 14, scope: !3919)
!3973 = !DILocation(line: 1780, column: 9, scope: !3919)
!3974 = !DILocation(line: 1780, column: 14, scope: !3919)
!3975 = !DILocation(line: 1781, column: 9, scope: !3919)
!3976 = !DILocation(line: 1781, column: 15, scope: !3919)
!3977 = !DILocation(line: 1782, column: 9, scope: !3919)
!3978 = !DILocation(line: 1782, column: 3, scope: !3919)
!3979 = !DILocation(line: 1782, column: 16, scope: !3919)
!3980 = !DILocation(line: 1784, column: 3, scope: !3919)
!3981 = !DILocation(line: 1785, column: 1, scope: !3919)
!3982 = distinct !DISubprogram(name: "analyze_insn_to_expand_var", scope: !1, file: !1, line: 1610, type: !3983, scopeLine: 1611, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3985)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!1723, !579, !616}
!3985 = !{!3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998}
!3986 = !DILocalVariable(name: "loop", arg: 1, scope: !3982, file: !1, line: 1610, type: !579)
!3987 = !DILocalVariable(name: "insn", arg: 2, scope: !3982, file: !1, line: 1610, type: !616)
!3988 = !DILocalVariable(name: "set", scope: !3982, file: !1, line: 1612, type: !616)
!3989 = !DILocalVariable(name: "dest", scope: !3982, file: !1, line: 1612, type: !616)
!3990 = !DILocalVariable(name: "src", scope: !3982, file: !1, line: 1612, type: !616)
!3991 = !DILocalVariable(name: "op1", scope: !3982, file: !1, line: 1612, type: !616)
!3992 = !DILocalVariable(name: "op2", scope: !3982, file: !1, line: 1612, type: !616)
!3993 = !DILocalVariable(name: "something", scope: !3982, file: !1, line: 1612, type: !616)
!3994 = !DILocalVariable(name: "ves", scope: !3982, file: !1, line: 1613, type: !1723)
!3995 = !DILocalVariable(name: "mode1", scope: !3982, file: !1, line: 1614, type: !3)
!3996 = !DILocalVariable(name: "mode2", scope: !3982, file: !1, line: 1614, type: !3)
!3997 = !DILocalVariable(name: "accum_pos", scope: !3982, file: !1, line: 1615, type: !5)
!3998 = !DILocalVariable(name: "debug_uses", scope: !3982, file: !1, line: 1616, type: !556)
!3999 = !DILocation(line: 0, scope: !3982)
!4000 = !DILocation(line: 1616, column: 3, scope: !3982)
!4001 = !DILocation(line: 1616, column: 7, scope: !3982)
!4002 = !DILocation(line: 1618, column: 9, scope: !3982)
!4003 = !DILocation(line: 1619, column: 8, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !3982, file: !1, line: 1619, column: 7)
!4005 = !DILocation(line: 1619, column: 7, scope: !3982)
!4006 = !DILocation(line: 1622, column: 10, scope: !3982)
!4007 = !DILocation(line: 1623, column: 9, scope: !3982)
!4008 = !DILocation(line: 1625, column: 7, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !3982, file: !1, line: 1625, column: 7)
!4010 = !DILocation(line: 1625, column: 22, scope: !4009)
!4011 = !DILocation(line: 1626, column: 7, scope: !4009)
!4012 = !DILocation(line: 1626, column: 25, scope: !4009)
!4013 = !DILocation(line: 1627, column: 7, scope: !4009)
!4014 = !DILocation(line: 1627, column: 25, scope: !4009)
!4015 = !DILocation(line: 1625, column: 7, scope: !3982)
!4016 = !DILocation(line: 1639, column: 39, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !3982, file: !1, line: 1639, column: 7)
!4018 = !DILocation(line: 1639, column: 8, scope: !4017)
!4019 = !DILocation(line: 1639, column: 7, scope: !3982)
!4020 = !DILocation(line: 1642, column: 9, scope: !3982)
!4021 = !DILocation(line: 1643, column: 9, scope: !3982)
!4022 = !DILocation(line: 1645, column: 8, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !3982, file: !1, line: 1645, column: 7)
!4024 = !DILocation(line: 1646, column: 7, scope: !4023)
!4025 = !DILocation(line: 1646, column: 28, scope: !4023)
!4026 = !DILocation(line: 1647, column: 12, scope: !4023)
!4027 = !DILocation(line: 1647, column: 15, scope: !4023)
!4028 = !DILocation(line: 1645, column: 7, scope: !3982)
!4029 = !DILocation(line: 1650, column: 7, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !3982, file: !1, line: 1650, column: 7)
!4031 = !DILocation(line: 1650, column: 7, scope: !3982)
!4032 = !DILocation(line: 1652, column: 12, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !4030, file: !1, line: 1652, column: 12)
!4034 = !DILocation(line: 1652, column: 12, scope: !4030)
!4035 = !DILocation(line: 0, scope: !4030)
!4036 = !DILocation(line: 1662, column: 7, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !3982, file: !1, line: 1661, column: 7)
!4038 = !DILocation(line: 1662, column: 10, scope: !4037)
!4039 = !DILocation(line: 1662, column: 25, scope: !4037)
!4040 = !DILocation(line: 1661, column: 7, scope: !3982)
!4041 = !DILocation(line: 1665, column: 15, scope: !3982)
!4042 = !DILocation(line: 1667, column: 7, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !3982, file: !1, line: 1667, column: 7)
!4044 = !DILocation(line: 1667, column: 7, scope: !3982)
!4045 = !DILocation(line: 1670, column: 8, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !3982, file: !1, line: 1670, column: 7)
!4047 = !DILocation(line: 1670, column: 7, scope: !3982)
!4048 = !DILocation(line: 1673, column: 11, scope: !3982)
!4049 = !DILocation(line: 1674, column: 11, scope: !3982)
!4050 = !DILocation(line: 1675, column: 8, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !3982, file: !1, line: 1675, column: 7)
!4052 = !DILocation(line: 1676, column: 8, scope: !4051)
!4053 = !DILocation(line: 1676, column: 11, scope: !4051)
!4054 = !DILocation(line: 1677, column: 7, scope: !4051)
!4055 = !DILocation(line: 1677, column: 11, scope: !4051)
!4056 = !DILocation(line: 1675, column: 7, scope: !3982)
!4057 = !DILocation(line: 1680, column: 7, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !3982, file: !1, line: 1680, column: 7)
!4059 = !DILocation(line: 1680, column: 7, scope: !3982)
!4060 = !DILocation(line: 1682, column: 5, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4058, file: !1, line: 1681, column: 3)
!4062 = !DILocation(line: 1684, column: 16, scope: !4061)
!4063 = !DILocation(line: 1684, column: 5, scope: !4061)
!4064 = !DILocation(line: 1685, column: 14, scope: !4061)
!4065 = !DILocation(line: 1685, column: 5, scope: !4061)
!4066 = !DILocation(line: 1686, column: 3, scope: !4061)
!4067 = !DILocation(line: 1688, column: 7, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !3982, file: !1, line: 1688, column: 7)
!4069 = !DILocation(line: 1688, column: 7, scope: !3982)
!4070 = !DILocation(line: 1697, column: 5, scope: !4068)
!4071 = !DILocation(line: 1700, column: 9, scope: !3982)
!4072 = !DILocation(line: 1701, column: 8, scope: !3982)
!4073 = !DILocation(line: 1701, column: 13, scope: !3982)
!4074 = !DILocation(line: 1702, column: 14, scope: !3982)
!4075 = !DILocation(line: 1702, column: 8, scope: !3982)
!4076 = !DILocation(line: 1702, column: 12, scope: !3982)
!4077 = !DILocation(line: 1703, column: 25, scope: !3982)
!4078 = !DILocation(line: 1703, column: 8, scope: !3982)
!4079 = !DILocation(line: 1703, column: 23, scope: !3982)
!4080 = !DILocation(line: 1704, column: 8, scope: !3982)
!4081 = !DILocation(line: 1704, column: 13, scope: !3982)
!4082 = !DILocation(line: 1705, column: 13, scope: !3982)
!4083 = !DILocation(line: 1705, column: 8, scope: !3982)
!4084 = !DILocation(line: 1705, column: 11, scope: !3982)
!4085 = !DILocation(line: 1706, column: 8, scope: !3982)
!4086 = !DILocation(line: 1706, column: 24, scope: !3982)
!4087 = !DILocation(line: 1707, column: 8, scope: !3982)
!4088 = !DILocation(line: 1707, column: 24, scope: !3982)
!4089 = !DILocation(line: 1708, column: 8, scope: !3982)
!4090 = !DILocation(line: 1708, column: 18, scope: !3982)
!4091 = !DILocation(line: 1709, column: 3, scope: !3982)
!4092 = !DILocation(line: 1710, column: 1, scope: !3982)
!4093 = distinct !DISubprogram(name: "referenced_in_one_insn_in_loop_p", scope: !1, file: !1, line: 1533, type: !4094, scopeLine: 1535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4096)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!555, !579, !616, !3110}
!4096 = !{!4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104}
!4097 = !DILocalVariable(name: "loop", arg: 1, scope: !4093, file: !1, line: 1533, type: !579)
!4098 = !DILocalVariable(name: "reg", arg: 2, scope: !4093, file: !1, line: 1533, type: !616)
!4099 = !DILocalVariable(name: "debug_uses", arg: 3, scope: !4093, file: !1, line: 1534, type: !3110)
!4100 = !DILocalVariable(name: "body", scope: !4093, file: !1, line: 1536, type: !2725)
!4101 = !DILocalVariable(name: "bb", scope: !4093, file: !1, line: 1536, type: !986)
!4102 = !DILocalVariable(name: "i", scope: !4093, file: !1, line: 1537, type: !5)
!4103 = !DILocalVariable(name: "count_ref", scope: !4093, file: !1, line: 1538, type: !556)
!4104 = !DILocalVariable(name: "insn", scope: !4093, file: !1, line: 1539, type: !616)
!4105 = !DILocation(line: 0, scope: !4093)
!4106 = !DILocation(line: 1541, column: 10, scope: !4093)
!4107 = !DILocation(line: 0, scope: !4108)
!4108 = distinct !DILexicalBlock(scope: !4109, file: !1, line: 1542, column: 3)
!4109 = distinct !DILexicalBlock(scope: !4093, file: !1, line: 1542, column: 3)
!4110 = !DILocation(line: 1542, column: 8, scope: !4109)
!4111 = !DILocation(line: 0, scope: !4109)
!4112 = !DILocation(line: 1542, column: 25, scope: !4108)
!4113 = !DILocation(line: 1542, column: 17, scope: !4108)
!4114 = !DILocation(line: 1542, column: 3, scope: !4109)
!4115 = !DILocation(line: 1544, column: 12, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4108, file: !1, line: 1543, column: 5)
!4117 = !DILocation(line: 1546, column: 7, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4116, file: !1, line: 1546, column: 7)
!4119 = !DILocation(line: 1538, column: 7, scope: !4093)
!4120 = !DILocation(line: 0, scope: !4118)
!4121 = !DILocation(line: 1546, column: 7, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4118, file: !1, line: 1546, column: 7)
!4123 = !DILocation(line: 1547, column: 7, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4122, file: !1, line: 1547, column: 6)
!4125 = !DILocation(line: 1547, column: 6, scope: !4122)
!4126 = !DILocation(line: 1549, column: 11, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4124, file: !1, line: 1549, column: 11)
!4128 = !DILocation(line: 1549, column: 11, scope: !4124)
!4129 = !DILocation(line: 1550, column: 4, scope: !4127)
!4130 = !DILocation(line: 1551, column: 11, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4127, file: !1, line: 1551, column: 11)
!4132 = !DILocation(line: 1551, column: 23, scope: !4131)
!4133 = !DILocation(line: 1551, column: 11, scope: !4127)
!4134 = distinct !{!4134, !4117, !4135}
!4135 = !DILocation(line: 1552, column: 4, scope: !4118)
!4136 = !DILocation(line: 1542, column: 37, scope: !4108)
!4137 = !DILocation(line: 1542, column: 3, scope: !4108)
!4138 = distinct !{!4138, !4114, !4139}
!4139 = !DILocation(line: 1553, column: 5, scope: !4109)
!4140 = !DILocation(line: 1554, column: 9, scope: !4093)
!4141 = !DILocation(line: 1554, column: 3, scope: !4093)
!4142 = !DILocation(line: 1555, column: 22, scope: !4093)
!4143 = !DILocation(line: 1555, column: 10, scope: !4093)
!4144 = !DILocation(line: 1555, column: 3, scope: !4093)
!4145 = distinct !DISubprogram(name: "reset_debug_uses_in_loop", scope: !1, file: !1, line: 1561, type: !4146, scopeLine: 1562, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4148)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{null, !579, !616, !556}
!4148 = !{!4149, !4150, !4151, !4152, !4153, !4154, !4155}
!4149 = !DILocalVariable(name: "loop", arg: 1, scope: !4145, file: !1, line: 1561, type: !579)
!4150 = !DILocalVariable(name: "reg", arg: 2, scope: !4145, file: !1, line: 1561, type: !616)
!4151 = !DILocalVariable(name: "debug_uses", arg: 3, scope: !4145, file: !1, line: 1561, type: !556)
!4152 = !DILocalVariable(name: "body", scope: !4145, file: !1, line: 1563, type: !2725)
!4153 = !DILocalVariable(name: "bb", scope: !4145, file: !1, line: 1563, type: !986)
!4154 = !DILocalVariable(name: "i", scope: !4145, file: !1, line: 1564, type: !5)
!4155 = !DILocalVariable(name: "insn", scope: !4145, file: !1, line: 1565, type: !616)
!4156 = !DILocation(line: 0, scope: !4145)
!4157 = !DILocation(line: 1567, column: 10, scope: !4145)
!4158 = !DILocation(line: 1568, column: 39, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4160, file: !1, line: 1568, column: 3)
!4160 = distinct !DILexicalBlock(scope: !4145, file: !1, line: 1568, column: 3)
!4161 = !DILocation(line: 1568, column: 8, scope: !4160)
!4162 = !DILocation(line: 1568, column: 15, scope: !4159)
!4163 = !DILocation(line: 1568, column: 26, scope: !4159)
!4164 = !DILocation(line: 1568, column: 31, scope: !4159)
!4165 = !DILocation(line: 1568, column: 3, scope: !4160)
!4166 = !DILocation(line: 1570, column: 12, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4159, file: !1, line: 1569, column: 5)
!4168 = !DILocation(line: 1572, column: 7, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4167, file: !1, line: 1572, column: 7)
!4170 = !DILocation(line: 0, scope: !4169)
!4171 = !DILocation(line: 1572, column: 7, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4169, file: !1, line: 1572, column: 7)
!4173 = !DILocation(line: 1573, column: 7, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4172, file: !1, line: 1573, column: 6)
!4175 = !DILocation(line: 1573, column: 27, scope: !4174)
!4176 = !DILocation(line: 1573, column: 31, scope: !4174)
!4177 = !DILocation(line: 1573, column: 6, scope: !4172)
!4178 = !DILocation(line: 1577, column: 30, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4174, file: !1, line: 1576, column: 4)
!4180 = !DILocation(line: 1578, column: 9, scope: !4179)
!4181 = !DILocation(line: 1577, column: 6, scope: !4179)
!4182 = !DILocation(line: 1579, column: 11, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4179, file: !1, line: 1579, column: 10)
!4184 = !DILocation(line: 1579, column: 10, scope: !4179)
!4185 = distinct !{!4185, !4168, !4186}
!4186 = !DILocation(line: 1581, column: 4, scope: !4169)
!4187 = !DILocation(line: 1568, column: 51, scope: !4159)
!4188 = !DILocation(line: 1568, column: 3, scope: !4159)
!4189 = distinct !{!4189, !4165, !4190}
!4190 = !DILocation(line: 1582, column: 5, scope: !4160)
!4191 = !DILocation(line: 1583, column: 9, scope: !4145)
!4192 = !DILocation(line: 1583, column: 3, scope: !4145)
!4193 = !DILocation(line: 1584, column: 1, scope: !4145)
!4194 = distinct !DISubprogram(name: "VEC_rtx_heap_alloc", scope: !389, file: !389, line: 201, type: !4195, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4197)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!1729, !556}
!4197 = !{!4198}
!4198 = !DILocalVariable(name: "alloc_", arg: 1, scope: !4194, file: !389, line: 201, type: !556)
!4199 = !DILocation(line: 0, scope: !4194)
!4200 = !DILocation(line: 201, column: 1, scope: !4194)
!4201 = distinct !DISubprogram(name: "allocate_basic_variable", scope: !1, file: !1, line: 1938, type: !4202, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4204)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{null, !1709}
!4204 = !{!4205, !4206}
!4205 = !DILocalVariable(name: "ivts", arg: 1, scope: !4201, file: !1, line: 1938, type: !1709)
!4206 = !DILocalVariable(name: "expr", scope: !4201, file: !1, line: 1940, type: !616)
!4207 = !DILocation(line: 0, scope: !4201)
!4208 = !DILocation(line: 1940, column: 30, scope: !4201)
!4209 = !DILocation(line: 1940, column: 15, scope: !4201)
!4210 = !DILocation(line: 1940, column: 14, scope: !4201)
!4211 = !DILocation(line: 1942, column: 33, scope: !4201)
!4212 = !DILocation(line: 1942, column: 20, scope: !4201)
!4213 = !DILocation(line: 1942, column: 9, scope: !4201)
!4214 = !DILocation(line: 1942, column: 18, scope: !4201)
!4215 = !DILocation(line: 1943, column: 1, scope: !4201)
!4216 = distinct !DISubprogram(name: "VEC_basic_block_base_index", scope: !133, file: !133, line: 281, type: !4217, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4221)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!986, !4219, !5}
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !994)
!4221 = !{!4222, !4223}
!4222 = !DILocalVariable(name: "vec_", arg: 1, scope: !4216, file: !133, line: 281, type: !4219)
!4223 = !DILocalVariable(name: "ix_", arg: 2, scope: !4216, file: !133, line: 281, type: !5)
!4224 = !DILocation(line: 0, scope: !4216)
!4225 = !DILocation(line: 281, column: 1, scope: !4216)
!4226 = distinct !DISubprogram(name: "determine_split_iv_delta", scope: !1, file: !1, line: 1901, type: !4227, scopeLine: 1902, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4229)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!5, !5, !5, !555}
!4229 = !{!4230, !4231, !4232}
!4230 = !DILocalVariable(name: "n_copy", arg: 1, scope: !4226, file: !1, line: 1901, type: !5)
!4231 = !DILocalVariable(name: "n_copies", arg: 2, scope: !4226, file: !1, line: 1901, type: !5)
!4232 = !DILocalVariable(name: "unrolling", arg: 3, scope: !4226, file: !1, line: 1901, type: !555)
!4233 = !DILocation(line: 0, scope: !4226)
!4234 = !DILocation(line: 1903, column: 7, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4226, file: !1, line: 1903, column: 7)
!4236 = !DILocation(line: 1903, column: 7, scope: !4226)
!4237 = !DILocation(line: 1913, column: 11, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4239, file: !1, line: 1913, column: 11)
!4239 = distinct !DILexicalBlock(scope: !4235, file: !1, line: 1910, column: 5)
!4240 = !DILocation(line: 1914, column: 16, scope: !4238)
!4241 = !DILocation(line: 1913, column: 11, scope: !4239)
!4242 = !DILocation(line: 1918, column: 1, scope: !4226)
!4243 = distinct !DISubprogram(name: "insert_base_initialization", scope: !1, file: !1, line: 1949, type: !4244, scopeLine: 1950, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4246)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{null, !1709, !616}
!4246 = !{!4247, !4248, !4249, !4250}
!4247 = !DILocalVariable(name: "ivts", arg: 1, scope: !4243, file: !1, line: 1949, type: !1709)
!4248 = !DILocalVariable(name: "insn", arg: 2, scope: !4243, file: !1, line: 1949, type: !616)
!4249 = !DILocalVariable(name: "expr", scope: !4243, file: !1, line: 1951, type: !616)
!4250 = !DILocalVariable(name: "seq", scope: !4243, file: !1, line: 1952, type: !616)
!4251 = !DILocation(line: 0, scope: !4243)
!4252 = !DILocation(line: 1951, column: 40, scope: !4243)
!4253 = !DILocation(line: 1951, column: 25, scope: !4243)
!4254 = !DILocation(line: 1951, column: 24, scope: !4243)
!4255 = !DILocation(line: 1951, column: 14, scope: !4243)
!4256 = !DILocation(line: 1954, column: 3, scope: !4243)
!4257 = !DILocation(line: 1955, column: 37, scope: !4243)
!4258 = !DILocation(line: 1955, column: 10, scope: !4243)
!4259 = !DILocation(line: 1956, column: 21, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4243, file: !1, line: 1956, column: 7)
!4261 = !DILocation(line: 1956, column: 12, scope: !4260)
!4262 = !DILocation(line: 1956, column: 7, scope: !4243)
!4263 = !DILocation(line: 1957, column: 5, scope: !4260)
!4264 = !DILocation(line: 1958, column: 9, scope: !4243)
!4265 = !DILocation(line: 1959, column: 3, scope: !4243)
!4266 = !DILocation(line: 1961, column: 3, scope: !4243)
!4267 = !DILocation(line: 1962, column: 1, scope: !4243)
!4268 = distinct !DISubprogram(name: "split_iv", scope: !1, file: !1, line: 1968, type: !4269, scopeLine: 1969, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4271)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{null, !1709, !616, !5}
!4271 = !{!4272, !4273, !4274, !4275, !4276, !4278, !4279, !4280, !4281, !4282, !4283, !4284}
!4272 = !DILocalVariable(name: "ivts", arg: 1, scope: !4268, file: !1, line: 1968, type: !1709)
!4273 = !DILocalVariable(name: "insn", arg: 2, scope: !4268, file: !1, line: 1968, type: !616)
!4274 = !DILocalVariable(name: "delta", arg: 3, scope: !4268, file: !1, line: 1968, type: !5)
!4275 = !DILocalVariable(name: "expr", scope: !4268, file: !1, line: 1970, type: !616)
!4276 = !DILocalVariable(name: "loc", scope: !4268, file: !1, line: 1970, type: !4277)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!4278 = !DILocalVariable(name: "seq", scope: !4268, file: !1, line: 1970, type: !616)
!4279 = !DILocalVariable(name: "incr", scope: !4268, file: !1, line: 1970, type: !616)
!4280 = !DILocalVariable(name: "var", scope: !4268, file: !1, line: 1970, type: !616)
!4281 = !DILocalVariable(name: "mode", scope: !4268, file: !1, line: 1971, type: !3)
!4282 = !DILocalVariable(name: "src", scope: !4268, file: !1, line: 1972, type: !616)
!4283 = !DILocalVariable(name: "dest", scope: !4268, file: !1, line: 1972, type: !616)
!4284 = !DILocalVariable(name: "set", scope: !4268, file: !1, line: 1972, type: !616)
!4285 = !DILocation(line: 0, scope: !4268)
!4286 = !DILocation(line: 1971, column: 28, scope: !4268)
!4287 = !DILocation(line: 1975, column: 8, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !4268, file: !1, line: 1975, column: 7)
!4289 = !DILocation(line: 1975, column: 7, scope: !4268)
!4290 = !DILocation(line: 1976, column: 5, scope: !4288)
!4291 = !DILocation(line: 1980, column: 13, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4288, file: !1, line: 1978, column: 5)
!4293 = !DILocation(line: 1980, column: 33, scope: !4292)
!4294 = !DILocation(line: 1980, column: 19, scope: !4292)
!4295 = !DILocation(line: 1979, column: 14, scope: !4292)
!4296 = !DILocation(line: 1981, column: 41, scope: !4292)
!4297 = !DILocation(line: 1982, column: 13, scope: !4292)
!4298 = !DILocation(line: 1981, column: 14, scope: !4292)
!4299 = !DILocation(line: 0, scope: !4288)
!4300 = !DILocation(line: 1986, column: 24, scope: !4268)
!4301 = !DILocation(line: 1986, column: 9, scope: !4268)
!4302 = !DILocation(line: 1989, column: 7, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4268, file: !1, line: 1989, column: 7)
!4304 = !DILocation(line: 1989, column: 7, scope: !4268)
!4305 = !DILocation(line: 1993, column: 3, scope: !4268)
!4306 = !DILocation(line: 1994, column: 9, scope: !4268)
!4307 = !DILocation(line: 1995, column: 10, scope: !4268)
!4308 = !DILocation(line: 1996, column: 12, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4268, file: !1, line: 1996, column: 7)
!4310 = !DILocation(line: 1996, column: 7, scope: !4268)
!4311 = !DILocation(line: 1997, column: 5, scope: !4309)
!4312 = !DILocation(line: 1998, column: 9, scope: !4268)
!4313 = !DILocation(line: 1999, column: 3, scope: !4268)
!4314 = !DILocation(line: 2000, column: 3, scope: !4268)
!4315 = !DILocation(line: 2002, column: 7, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4268, file: !1, line: 2002, column: 7)
!4317 = !DILocation(line: 2002, column: 7, scope: !4268)
!4318 = !DILocation(line: 2007, column: 9, scope: !4268)
!4319 = !DILocation(line: 2008, column: 3, scope: !4268)
!4320 = !DILocation(line: 2010, column: 3, scope: !4268)
!4321 = !DILocation(line: 2011, column: 8, scope: !4268)
!4322 = !DILocation(line: 2012, column: 19, scope: !4268)
!4323 = !DILocation(line: 2012, column: 9, scope: !4268)
!4324 = !DILocation(line: 2013, column: 20, scope: !4268)
!4325 = !DILocation(line: 2013, column: 10, scope: !4268)
!4326 = !DILocation(line: 2014, column: 9, scope: !4268)
!4327 = !DILocation(line: 2015, column: 11, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4268, file: !1, line: 2015, column: 7)
!4329 = !DILocation(line: 2015, column: 7, scope: !4268)
!4330 = !DILocation(line: 2016, column: 5, scope: !4328)
!4331 = !DILocation(line: 2017, column: 9, scope: !4268)
!4332 = !DILocation(line: 2018, column: 3, scope: !4268)
!4333 = !DILocation(line: 2020, column: 3, scope: !4268)
!4334 = !DILocation(line: 2021, column: 3, scope: !4268)
!4335 = !DILocation(line: 2022, column: 1, scope: !4268)
!4336 = distinct !DISubprogram(name: "expand_var_during_unrolling", scope: !1, file: !1, line: 2050, type: !4337, scopeLine: 2051, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4339)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{null, !1723, !616}
!4339 = !{!4340, !4341, !4342, !4343, !4344}
!4340 = !DILocalVariable(name: "ve", arg: 1, scope: !4336, file: !1, line: 2050, type: !1723)
!4341 = !DILocalVariable(name: "insn", arg: 2, scope: !4336, file: !1, line: 2050, type: !616)
!4342 = !DILocalVariable(name: "new_reg", scope: !4336, file: !1, line: 2052, type: !616)
!4343 = !DILocalVariable(name: "set", scope: !4336, file: !1, line: 2052, type: !616)
!4344 = !DILocalVariable(name: "really_new_expansion", scope: !4336, file: !1, line: 2053, type: !555)
!4345 = !DILocation(line: 0, scope: !4336)
!4346 = !DILocation(line: 2055, column: 9, scope: !4336)
!4347 = !DILocation(line: 2056, column: 3, scope: !4336)
!4348 = !DILocation(line: 2060, column: 7, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4336, file: !1, line: 2060, column: 7)
!4350 = !DILocation(line: 2060, column: 57, scope: !4349)
!4351 = !DILocation(line: 2060, column: 51, scope: !4349)
!4352 = !DILocation(line: 2060, column: 7, scope: !4336)
!4353 = !DILocation(line: 2063, column: 30, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4349, file: !1, line: 2061, column: 5)
!4355 = !DILocation(line: 2063, column: 17, scope: !4354)
!4356 = !DILocation(line: 2064, column: 5, scope: !4354)
!4357 = !DILocation(line: 2066, column: 15, scope: !4349)
!4358 = !DILocation(line: 0, scope: !4349)
!4359 = !DILocation(line: 2068, column: 27, scope: !4336)
!4360 = !DILocation(line: 2068, column: 3, scope: !4336)
!4361 = !DILocation(line: 2069, column: 27, scope: !4336)
!4362 = !DILocation(line: 2069, column: 3, scope: !4336)
!4363 = !DILocation(line: 2071, column: 7, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4336, file: !1, line: 2071, column: 7)
!4365 = !DILocation(line: 2071, column: 7, scope: !4336)
!4366 = !DILocation(line: 2074, column: 9, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4368, file: !1, line: 2073, column: 7)
!4368 = distinct !DILexicalBlock(scope: !4364, file: !1, line: 2072, column: 9)
!4369 = !DILocation(line: 2075, column: 28, scope: !4367)
!4370 = !DILocation(line: 2076, column: 7, scope: !4367)
!4371 = !DILocation(line: 2077, column: 1, scope: !4336)
!4372 = distinct !DISubprogram(name: "insert_var_expansion_initialization", scope: !1, file: !1, line: 2107, type: !4373, scopeLine: 2109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4375)
!4373 = !DISubroutineType(types: !4374)
!4374 = !{null, !1723, !986}
!4375 = !{!4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384}
!4376 = !DILocalVariable(name: "ve", arg: 1, scope: !4372, file: !1, line: 2107, type: !1723)
!4377 = !DILocalVariable(name: "place", arg: 2, scope: !4372, file: !1, line: 2108, type: !986)
!4378 = !DILocalVariable(name: "seq", scope: !4372, file: !1, line: 2110, type: !616)
!4379 = !DILocalVariable(name: "var", scope: !4372, file: !1, line: 2110, type: !616)
!4380 = !DILocalVariable(name: "zero_init", scope: !4372, file: !1, line: 2110, type: !616)
!4381 = !DILocalVariable(name: "insn", scope: !4372, file: !1, line: 2110, type: !616)
!4382 = !DILocalVariable(name: "i", scope: !4372, file: !1, line: 2111, type: !5)
!4383 = !DILocalVariable(name: "mode", scope: !4372, file: !1, line: 2112, type: !3)
!4384 = !DILocalVariable(name: "honor_signed_zero_p", scope: !4372, file: !1, line: 2113, type: !555)
!4385 = !DILocation(line: 0, scope: !4372)
!4386 = !DILocation(line: 2110, column: 3, scope: !4372)
!4387 = !DILocation(line: 2112, column: 28, scope: !4372)
!4388 = !DILocation(line: 2113, column: 30, scope: !4372)
!4389 = !DILocation(line: 2115, column: 7, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4372, file: !1, line: 2115, column: 7)
!4391 = !DILocation(line: 2115, column: 44, scope: !4390)
!4392 = !DILocation(line: 2115, column: 7, scope: !4372)
!4393 = !DILocation(line: 2118, column: 3, scope: !4372)
!4394 = !DILocation(line: 2119, column: 11, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4372, file: !1, line: 2119, column: 7)
!4396 = !DILocation(line: 2119, column: 14, scope: !4395)
!4397 = !DILocation(line: 2119, column: 22, scope: !4395)
!4398 = !DILocation(line: 2119, column: 32, scope: !4395)
!4399 = !DILocation(line: 2119, column: 7, scope: !4372)
!4400 = !DILocation(line: 0, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4402, file: !1, line: 2122, column: 6)
!4402 = distinct !DILexicalBlock(scope: !4403, file: !1, line: 2121, column: 7)
!4403 = distinct !DILexicalBlock(scope: !4404, file: !1, line: 2120, column: 5)
!4404 = distinct !DILexicalBlock(scope: !4395, file: !1, line: 2120, column: 5)
!4405 = !DILocation(line: 2120, column: 10, scope: !4404)
!4406 = !DILocation(line: 0, scope: !4404)
!4407 = !DILocation(line: 2120, column: 17, scope: !4403)
!4408 = !DILocation(line: 2120, column: 5, scope: !4404)
!4409 = !DILocation(line: 2127, column: 25, scope: !4402)
!4410 = !DILocation(line: 2127, column: 9, scope: !4402)
!4411 = !DILocation(line: 2120, column: 65, scope: !4403)
!4412 = !DILocation(line: 2120, column: 5, scope: !4403)
!4413 = distinct !{!4413, !4408, !4414}
!4414 = !DILocation(line: 2128, column: 7, scope: !4404)
!4415 = !DILocation(line: 2136, column: 9, scope: !4372)
!4416 = !DILocation(line: 2123, column: 16, scope: !4401)
!4417 = !DILocation(line: 2129, column: 19, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4395, file: !1, line: 2129, column: 12)
!4419 = !DILocation(line: 2129, column: 12, scope: !4395)
!4420 = !DILocation(line: 0, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4422, file: !1, line: 2131, column: 7)
!4422 = distinct !DILexicalBlock(scope: !4423, file: !1, line: 2130, column: 5)
!4423 = distinct !DILexicalBlock(scope: !4418, file: !1, line: 2130, column: 5)
!4424 = !DILocation(line: 2130, column: 5, scope: !4423)
!4425 = !DILocation(line: 0, scope: !4423)
!4426 = !DILocation(line: 2130, column: 17, scope: !4422)
!4427 = !DILocation(line: 2132, column: 22, scope: !4421)
!4428 = !DILocation(line: 2133, column: 25, scope: !4421)
!4429 = !DILocation(line: 2133, column: 9, scope: !4421)
!4430 = !DILocation(line: 2130, column: 65, scope: !4422)
!4431 = !DILocation(line: 2130, column: 5, scope: !4422)
!4432 = distinct !{!4432, !4424, !4433}
!4433 = !DILocation(line: 2134, column: 7, scope: !4423)
!4434 = !DILocation(line: 2137, column: 3, scope: !4372)
!4435 = !DILocation(line: 2139, column: 10, scope: !4372)
!4436 = !DILocation(line: 2140, column: 3, scope: !4372)
!4437 = !DILocation(line: 2140, column: 11, scope: !4372)
!4438 = !DILocation(line: 2141, column: 12, scope: !4372)
!4439 = distinct !{!4439, !4436, !4438}
!4440 = !DILocation(line: 2143, column: 3, scope: !4372)
!4441 = !DILocation(line: 2144, column: 1, scope: !4372)
!4442 = distinct !DISubprogram(name: "combine_var_copies_in_loop_exit", scope: !1, file: !1, line: 2151, type: !4373, scopeLine: 2152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4443)
!4443 = !{!4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451}
!4444 = !DILocalVariable(name: "ve", arg: 1, scope: !4442, file: !1, line: 2151, type: !1723)
!4445 = !DILocalVariable(name: "place", arg: 2, scope: !4442, file: !1, line: 2151, type: !986)
!4446 = !DILocalVariable(name: "sum", scope: !4442, file: !1, line: 2153, type: !616)
!4447 = !DILocalVariable(name: "expr", scope: !4442, file: !1, line: 2154, type: !616)
!4448 = !DILocalVariable(name: "seq", scope: !4442, file: !1, line: 2154, type: !616)
!4449 = !DILocalVariable(name: "var", scope: !4442, file: !1, line: 2154, type: !616)
!4450 = !DILocalVariable(name: "insn", scope: !4442, file: !1, line: 2154, type: !616)
!4451 = !DILocalVariable(name: "i", scope: !4442, file: !1, line: 2155, type: !5)
!4452 = !DILocation(line: 0, scope: !4442)
!4453 = !DILocation(line: 2153, column: 17, scope: !4442)
!4454 = !DILocation(line: 2154, column: 3, scope: !4442)
!4455 = !DILocation(line: 2157, column: 7, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4442, file: !1, line: 2157, column: 7)
!4457 = !DILocation(line: 2157, column: 44, scope: !4456)
!4458 = !DILocation(line: 2157, column: 7, scope: !4442)
!4459 = !DILocation(line: 2160, column: 3, scope: !4442)
!4460 = !DILocation(line: 2161, column: 11, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4442, file: !1, line: 2161, column: 7)
!4462 = !DILocation(line: 2161, column: 14, scope: !4461)
!4463 = !DILocation(line: 2161, column: 22, scope: !4461)
!4464 = !DILocation(line: 2161, column: 32, scope: !4461)
!4465 = !DILocation(line: 2161, column: 7, scope: !4442)
!4466 = !DILocation(line: 0, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4468, file: !1, line: 2163, column: 7)
!4468 = distinct !DILexicalBlock(scope: !4469, file: !1, line: 2162, column: 5)
!4469 = distinct !DILexicalBlock(scope: !4461, file: !1, line: 2162, column: 5)
!4470 = !DILocation(line: 2162, column: 10, scope: !4469)
!4471 = !DILocation(line: 0, scope: !4469)
!4472 = !DILocation(line: 2162, column: 17, scope: !4468)
!4473 = !DILocation(line: 2162, column: 5, scope: !4469)
!4474 = !DILocation(line: 2164, column: 42, scope: !4467)
!4475 = !DILocation(line: 2165, column: 36, scope: !4467)
!4476 = !DILocation(line: 2164, column: 15, scope: !4467)
!4477 = !DILocation(line: 2162, column: 65, scope: !4468)
!4478 = !DILocation(line: 2162, column: 5, scope: !4468)
!4479 = distinct !{!4479, !4473, !4480}
!4480 = !DILocation(line: 2166, column: 7, scope: !4469)
!4481 = !DILocation(line: 2167, column: 19, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4461, file: !1, line: 2167, column: 12)
!4483 = !DILocation(line: 2167, column: 12, scope: !4461)
!4484 = !DILocation(line: 0, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4486, file: !1, line: 2169, column: 7)
!4486 = distinct !DILexicalBlock(scope: !4487, file: !1, line: 2168, column: 5)
!4487 = distinct !DILexicalBlock(scope: !4482, file: !1, line: 2168, column: 5)
!4488 = !DILocation(line: 2168, column: 5, scope: !4487)
!4489 = !DILocation(line: 0, scope: !4487)
!4490 = !DILocation(line: 2168, column: 17, scope: !4486)
!4491 = !DILocation(line: 2170, column: 42, scope: !4485)
!4492 = !DILocation(line: 2171, column: 36, scope: !4485)
!4493 = !DILocation(line: 2170, column: 15, scope: !4485)
!4494 = !DILocation(line: 2168, column: 65, scope: !4486)
!4495 = !DILocation(line: 2168, column: 5, scope: !4486)
!4496 = distinct !{!4496, !4488, !4497}
!4497 = !DILocation(line: 2172, column: 7, scope: !4487)
!4498 = !DILocation(line: 2174, column: 34, scope: !4442)
!4499 = !DILocation(line: 2153, column: 7, scope: !4442)
!4500 = !DILocation(line: 2174, column: 10, scope: !4442)
!4501 = !DILocation(line: 2175, column: 19, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4442, file: !1, line: 2175, column: 7)
!4503 = !DILocation(line: 2175, column: 12, scope: !4502)
!4504 = !DILocation(line: 2175, column: 7, scope: !4442)
!4505 = !DILocation(line: 2176, column: 5, scope: !4502)
!4506 = !DILocation(line: 2177, column: 9, scope: !4442)
!4507 = !DILocation(line: 2178, column: 3, scope: !4442)
!4508 = !DILocation(line: 2180, column: 10, scope: !4442)
!4509 = !DILocation(line: 2181, column: 3, scope: !4442)
!4510 = !DILocation(line: 2181, column: 11, scope: !4442)
!4511 = !DILocation(line: 2182, column: 12, scope: !4442)
!4512 = distinct !{!4512, !4509, !4511}
!4513 = !DILocation(line: 2184, column: 3, scope: !4442)
!4514 = !DILocation(line: 2185, column: 1, scope: !4442)
!4515 = distinct !DISubprogram(name: "get_ivts_expr", scope: !1, file: !1, line: 1924, type: !4516, scopeLine: 1925, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4518)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{!4277, !616, !1709}
!4518 = !{!4519, !4520, !4521, !4522}
!4519 = !DILocalVariable(name: "expr", arg: 1, scope: !4515, file: !1, line: 1924, type: !616)
!4520 = !DILocalVariable(name: "ivts", arg: 2, scope: !4515, file: !1, line: 1924, type: !1709)
!4521 = !DILocalVariable(name: "i", scope: !4515, file: !1, line: 1926, type: !5)
!4522 = !DILocalVariable(name: "ret", scope: !4515, file: !1, line: 1927, type: !4277)
!4523 = !DILocation(line: 0, scope: !4515)
!4524 = !DILocation(line: 0, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4526, file: !1, line: 1929, column: 3)
!4526 = distinct !DILexicalBlock(scope: !4515, file: !1, line: 1929, column: 3)
!4527 = !DILocation(line: 1929, column: 17, scope: !4525)
!4528 = !DILocation(line: 1929, column: 8, scope: !4526)
!4529 = !DILocation(line: 0, scope: !4526)
!4530 = !DILocation(line: 1929, column: 3, scope: !4526)
!4531 = !DILocation(line: 1930, column: 12, scope: !4525)
!4532 = !DILocation(line: 1929, column: 33, scope: !4525)
!4533 = !DILocation(line: 1929, column: 3, scope: !4525)
!4534 = distinct !{!4534, !4530, !4535}
!4535 = !DILocation(line: 1930, column: 12, scope: !4526)
!4536 = !DILocation(line: 1932, column: 3, scope: !4515)
!4537 = distinct !DISubprogram(name: "get_expansion", scope: !1, file: !1, line: 2028, type: !4538, scopeLine: 2029, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4540)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{!616, !1723}
!4540 = !{!4541, !4542}
!4541 = !DILocalVariable(name: "ve", arg: 1, scope: !4537, file: !1, line: 2028, type: !1723)
!4542 = !DILocalVariable(name: "reg", scope: !4537, file: !1, line: 2030, type: !616)
!4543 = !DILocation(line: 0, scope: !4537)
!4544 = !DILocation(line: 2032, column: 11, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !4537, file: !1, line: 2032, column: 7)
!4546 = !DILocation(line: 2032, column: 27, scope: !4545)
!4547 = !DILocation(line: 2032, column: 7, scope: !4537)
!4548 = !DILocation(line: 2033, column: 15, scope: !4545)
!4549 = !DILocation(line: 2033, column: 5, scope: !4545)
!4550 = !DILocation(line: 2035, column: 11, scope: !4545)
!4551 = !DILocation(line: 0, scope: !4545)
!4552 = !DILocation(line: 2037, column: 7, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4537, file: !1, line: 2037, column: 7)
!4554 = !DILocation(line: 2037, column: 62, scope: !4553)
!4555 = !DILocation(line: 2037, column: 44, scope: !4553)
!4556 = !DILocation(line: 2037, column: 7, scope: !4537)
!4557 = !DILocation(line: 2038, column: 5, scope: !4553)
!4558 = !DILocation(line: 2040, column: 24, scope: !4553)
!4559 = !DILocation(line: 0, scope: !4553)
!4560 = !DILocation(line: 2042, column: 3, scope: !4537)
!4561 = distinct !DISubprogram(name: "VEC_rtx_heap_safe_push", scope: !389, file: !389, line: 201, type: !4562, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4565)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{!4277, !4564, !616}
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!4565 = !{!4566, !4567}
!4566 = !DILocalVariable(name: "vec_", arg: 1, scope: !4561, file: !389, line: 201, type: !4564)
!4567 = !DILocalVariable(name: "obj_", arg: 2, scope: !4561, file: !389, line: 201, type: !616)
!4568 = !DILocation(line: 0, scope: !4561)
!4569 = !DILocation(line: 201, column: 1, scope: !4561)
!4570 = distinct !DISubprogram(name: "VEC_rtx_base_index", scope: !389, file: !389, line: 200, type: !4571, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4575)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{!616, !4573, !5}
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1617)
!4575 = !{!4576, !4577}
!4576 = !DILocalVariable(name: "vec_", arg: 1, scope: !4570, file: !389, line: 200, type: !4573)
!4577 = !DILocalVariable(name: "ix_", arg: 2, scope: !4570, file: !389, line: 200, type: !5)
!4578 = !DILocation(line: 0, scope: !4570)
!4579 = !DILocation(line: 200, column: 1, scope: !4570)
!4580 = distinct !DISubprogram(name: "VEC_rtx_base_length", scope: !389, file: !389, line: 200, type: !4581, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4583)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!5, !4573}
!4583 = !{!4584}
!4584 = !DILocalVariable(name: "vec_", arg: 1, scope: !4580, file: !389, line: 200, type: !4573)
!4585 = !DILocation(line: 0, scope: !4580)
!4586 = !DILocation(line: 200, column: 1, scope: !4580)
!4587 = distinct !DISubprogram(name: "VEC_rtx_heap_reserve", scope: !389, file: !389, line: 201, type: !4588, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4590)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{!556, !4564, !556}
!4590 = !{!4591, !4592, !4593}
!4591 = !DILocalVariable(name: "vec_", arg: 1, scope: !4587, file: !389, line: 201, type: !4564)
!4592 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4587, file: !389, line: 201, type: !556)
!4593 = !DILocalVariable(name: "extend", scope: !4587, file: !389, line: 201, type: !556)
!4594 = !DILocation(line: 0, scope: !4587)
!4595 = !DILocation(line: 201, column: 1, scope: !4587)
!4596 = !DILocation(line: 201, column: 1, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4587, file: !389, line: 201, column: 1)
!4598 = distinct !DISubprogram(name: "VEC_rtx_base_quick_push", scope: !389, file: !389, line: 200, type: !4599, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4602)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!4277, !4601, !616}
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!4602 = !{!4603, !4604, !4605}
!4603 = !DILocalVariable(name: "vec_", arg: 1, scope: !4598, file: !389, line: 200, type: !4601)
!4604 = !DILocalVariable(name: "obj_", arg: 2, scope: !4598, file: !389, line: 200, type: !616)
!4605 = !DILocalVariable(name: "slot_", scope: !4598, file: !389, line: 200, type: !4277)
!4606 = !DILocation(line: 0, scope: !4598)
!4607 = !DILocation(line: 200, column: 1, scope: !4598)
!4608 = distinct !DISubprogram(name: "VEC_rtx_base_space", scope: !389, file: !389, line: 200, type: !4609, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4611)
!4609 = !DISubroutineType(types: !4610)
!4610 = !{!556, !4601, !556}
!4611 = !{!4612, !4613}
!4612 = !DILocalVariable(name: "vec_", arg: 1, scope: !4608, file: !389, line: 200, type: !4601)
!4613 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4608, file: !389, line: 200, type: !556)
!4614 = !DILocation(line: 0, scope: !4608)
!4615 = !DILocation(line: 200, column: 1, scope: !4608)
!4616 = distinct !DISubprogram(name: "VEC_rtx_base_iterate", scope: !389, file: !389, line: 200, type: !4617, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4619)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{!556, !4573, !5, !4277}
!4619 = !{!4620, !4621, !4622}
!4620 = !DILocalVariable(name: "vec_", arg: 1, scope: !4616, file: !389, line: 200, type: !4573)
!4621 = !DILocalVariable(name: "ix_", arg: 2, scope: !4616, file: !389, line: 200, type: !5)
!4622 = !DILocalVariable(name: "ptr", arg: 3, scope: !4616, file: !389, line: 200, type: !4277)
!4623 = !DILocation(line: 0, scope: !4616)
!4624 = !DILocation(line: 200, column: 1, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4616, file: !389, line: 200, column: 1)
!4626 = !DILocation(line: 200, column: 1, scope: !4616)
!4627 = !DILocation(line: 200, column: 1, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4625, file: !389, line: 200, column: 1)
!4629 = !DILocation(line: 200, column: 1, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4625, file: !389, line: 200, column: 1)
!4631 = !DILocation(line: 0, scope: !4625)
!4632 = distinct !DISubprogram(name: "VEC_rtx_heap_free", scope: !389, file: !389, line: 201, type: !4633, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4635)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{null, !4564}
!4635 = !{!4636}
!4636 = !DILocalVariable(name: "vec_", arg: 1, scope: !4632, file: !389, line: 201, type: !4564)
!4637 = !DILocation(line: 0, scope: !4632)
!4638 = !DILocation(line: 201, column: 1, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4632, file: !389, line: 201, column: 1)
!4640 = !DILocation(line: 201, column: 1, scope: !4632)
!4641 = distinct !DISubprogram(name: "decide_unroll_constant_iterations", scope: !1, file: !1, line: 523, type: !3186, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4642)
!4642 = !{!4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652}
!4643 = !DILocalVariable(name: "loop", arg: 1, scope: !4641, file: !1, line: 523, type: !579)
!4644 = !DILocalVariable(name: "flags", arg: 2, scope: !4641, file: !1, line: 523, type: !556)
!4645 = !DILocalVariable(name: "nunroll", scope: !4641, file: !1, line: 525, type: !5)
!4646 = !DILocalVariable(name: "nunroll_by_av", scope: !4641, file: !1, line: 525, type: !5)
!4647 = !DILocalVariable(name: "best_copies", scope: !4641, file: !1, line: 525, type: !5)
!4648 = !DILocalVariable(name: "best_unroll", scope: !4641, file: !1, line: 525, type: !5)
!4649 = !DILocalVariable(name: "n_copies", scope: !4641, file: !1, line: 525, type: !5)
!4650 = !DILocalVariable(name: "i", scope: !4641, file: !1, line: 525, type: !5)
!4651 = !DILocalVariable(name: "desc", scope: !4641, file: !1, line: 526, type: !2460)
!4652 = !DILocalVariable(name: "exit_mod", scope: !4653, file: !1, line: 589, type: !5)
!4653 = distinct !DILexicalBlock(scope: !4654, file: !1, line: 588, column: 5)
!4654 = distinct !DILexicalBlock(scope: !4655, file: !1, line: 587, column: 3)
!4655 = distinct !DILexicalBlock(scope: !4641, file: !1, line: 587, column: 3)
!4656 = !DILocation(line: 0, scope: !4641)
!4657 = !DILocation(line: 528, column: 15, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4641, file: !1, line: 528, column: 7)
!4659 = !DILocation(line: 528, column: 7, scope: !4641)
!4660 = !DILocation(line: 534, column: 7, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4641, file: !1, line: 534, column: 7)
!4662 = !DILocation(line: 534, column: 7, scope: !4641)
!4663 = !DILocation(line: 535, column: 5, scope: !4661)
!4664 = !DILocation(line: 541, column: 13, scope: !4641)
!4665 = !DILocation(line: 541, column: 60, scope: !4641)
!4666 = !DILocation(line: 541, column: 52, scope: !4641)
!4667 = !DILocation(line: 543, column: 7, scope: !4641)
!4668 = !DILocation(line: 543, column: 62, scope: !4641)
!4669 = !DILocation(line: 543, column: 54, scope: !4641)
!4670 = !DILocation(line: 544, column: 15, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4641, file: !1, line: 544, column: 7)
!4672 = !DILocation(line: 544, column: 7, scope: !4641)
!4673 = !DILocation(line: 546, column: 28, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4641, file: !1, line: 546, column: 7)
!4675 = !DILocation(line: 546, column: 15, scope: !4674)
!4676 = !DILocation(line: 546, column: 7, scope: !4641)
!4677 = !DILocation(line: 547, column: 5, scope: !4674)
!4678 = !DILocation(line: 550, column: 15, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4641, file: !1, line: 550, column: 7)
!4680 = !DILocation(line: 550, column: 7, scope: !4641)
!4681 = !DILocation(line: 552, column: 11, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4683, file: !1, line: 552, column: 11)
!4683 = distinct !DILexicalBlock(scope: !4679, file: !1, line: 551, column: 5)
!4684 = !DILocation(line: 552, column: 11, scope: !4683)
!4685 = !DILocation(line: 553, column: 2, scope: !4682)
!4686 = !DILocation(line: 558, column: 10, scope: !4641)
!4687 = !DILocation(line: 561, column: 14, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4641, file: !1, line: 561, column: 7)
!4689 = !DILocation(line: 561, column: 8, scope: !4688)
!4690 = !DILocation(line: 561, column: 23, scope: !4688)
!4691 = !DILocation(line: 561, column: 33, scope: !4688)
!4692 = !DILocation(line: 561, column: 27, scope: !4688)
!4693 = !DILocation(line: 561, column: 44, scope: !4688)
!4694 = !DILocation(line: 561, column: 53, scope: !4688)
!4695 = !DILocation(line: 561, column: 47, scope: !4688)
!4696 = !DILocation(line: 561, column: 7, scope: !4641)
!4697 = !DILocation(line: 563, column: 11, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4699, file: !1, line: 563, column: 11)
!4699 = distinct !DILexicalBlock(scope: !4688, file: !1, line: 562, column: 5)
!4700 = !DILocation(line: 563, column: 11, scope: !4699)
!4701 = !DILocation(line: 564, column: 2, scope: !4698)
!4702 = !DILocation(line: 570, column: 13, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4641, file: !1, line: 570, column: 7)
!4704 = !DILocation(line: 570, column: 23, scope: !4703)
!4705 = !DILocation(line: 570, column: 21, scope: !4703)
!4706 = !DILocation(line: 570, column: 19, scope: !4703)
!4707 = !DILocation(line: 570, column: 7, scope: !4641)
!4708 = !DILocation(line: 572, column: 11, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4710, file: !1, line: 572, column: 11)
!4710 = distinct !DILexicalBlock(scope: !4703, file: !1, line: 571, column: 5)
!4711 = !DILocation(line: 572, column: 11, scope: !4710)
!4712 = !DILocation(line: 573, column: 2, scope: !4709)
!4713 = !DILocation(line: 581, column: 29, scope: !4641)
!4714 = !DILocation(line: 583, column: 19, scope: !4641)
!4715 = !DILocation(line: 584, column: 9, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4641, file: !1, line: 584, column: 7)
!4717 = !DILocation(line: 584, column: 7, scope: !4716)
!4718 = !DILocation(line: 584, column: 13, scope: !4716)
!4719 = !DILocation(line: 584, column: 7, scope: !4641)
!4720 = !DILocation(line: 585, column: 9, scope: !4716)
!4721 = !DILocation(line: 585, column: 5, scope: !4716)
!4722 = !DILocation(line: 0, scope: !4654)
!4723 = !DILocation(line: 0, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4725, file: !1, line: 593, column: 16)
!4725 = distinct !DILexicalBlock(scope: !4653, file: !1, line: 591, column: 11)
!4726 = !DILocation(line: 587, column: 3, scope: !4641)
!4727 = !DILocation(line: 587, column: 12, scope: !4654)
!4728 = !DILocation(line: 587, column: 3, scope: !4655)
!4729 = !DILocation(line: 589, column: 33, scope: !4653)
!4730 = !DILocation(line: 589, column: 44, scope: !4653)
!4731 = !DILocation(line: 589, column: 41, scope: !4653)
!4732 = !DILocation(line: 589, column: 39, scope: !4653)
!4733 = !DILocation(line: 589, column: 27, scope: !4653)
!4734 = !DILocation(line: 0, scope: !4653)
!4735 = !DILocation(line: 591, column: 12, scope: !4725)
!4736 = !DILocation(line: 591, column: 11, scope: !4653)
!4737 = !DILocation(line: 592, column: 22, scope: !4725)
!4738 = !DILocation(line: 592, column: 26, scope: !4725)
!4739 = !DILocation(line: 592, column: 2, scope: !4725)
!4740 = !DILocation(line: 593, column: 25, scope: !4724)
!4741 = !DILocation(line: 594, column: 9, scope: !4724)
!4742 = !DILocation(line: 594, column: 18, scope: !4724)
!4743 = !DILocation(line: 594, column: 37, scope: !4724)
!4744 = !DILocation(line: 593, column: 16, scope: !4725)
!4745 = !DILocation(line: 595, column: 22, scope: !4724)
!4746 = !DILocation(line: 595, column: 26, scope: !4724)
!4747 = !DILocation(line: 595, column: 2, scope: !4724)
!4748 = !DILocation(line: 0, scope: !4725)
!4749 = !DILocation(line: 599, column: 20, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4653, file: !1, line: 599, column: 11)
!4751 = !DILocation(line: 599, column: 11, scope: !4653)
!4752 = !DILocation(line: 587, column: 29, scope: !4654)
!4753 = !DILocation(line: 587, column: 3, scope: !4654)
!4754 = distinct !{!4754, !4728, !4755}
!4755 = !DILocation(line: 604, column: 5, scope: !4655)
!4756 = !DILocation(line: 606, column: 7, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4641, file: !1, line: 606, column: 7)
!4758 = !DILocation(line: 606, column: 7, scope: !4641)
!4759 = !DILocation(line: 608, column: 19, scope: !4757)
!4760 = !DILocation(line: 607, column: 5, scope: !4757)
!4761 = !DILocation(line: 613, column: 7, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4641, file: !1, line: 613, column: 7)
!4763 = !DILocation(line: 610, column: 22, scope: !4641)
!4764 = !DILocation(line: 610, column: 31, scope: !4641)
!4765 = !DILocation(line: 611, column: 22, scope: !4641)
!4766 = !DILocation(line: 611, column: 28, scope: !4641)
!4767 = !DILocation(line: 613, column: 7, scope: !4641)
!4768 = !DILocation(line: 614, column: 5, scope: !4762)
!4769 = !DILocation(line: 617, column: 1, scope: !4641)
!4770 = distinct !DISubprogram(name: "decide_unroll_runtime_iterations", scope: !1, file: !1, line: 804, type: !3186, scopeLine: 805, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4771)
!4771 = !{!4772, !4773, !4774, !4775, !4776, !4777}
!4772 = !DILocalVariable(name: "loop", arg: 1, scope: !4770, file: !1, line: 804, type: !579)
!4773 = !DILocalVariable(name: "flags", arg: 2, scope: !4770, file: !1, line: 804, type: !556)
!4774 = !DILocalVariable(name: "nunroll", scope: !4770, file: !1, line: 806, type: !5)
!4775 = !DILocalVariable(name: "nunroll_by_av", scope: !4770, file: !1, line: 806, type: !5)
!4776 = !DILocalVariable(name: "i", scope: !4770, file: !1, line: 806, type: !5)
!4777 = !DILocalVariable(name: "desc", scope: !4770, file: !1, line: 807, type: !2460)
!4778 = !DILocation(line: 0, scope: !4770)
!4779 = !DILocation(line: 809, column: 15, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4770, file: !1, line: 809, column: 7)
!4781 = !DILocation(line: 809, column: 7, scope: !4770)
!4782 = !DILocation(line: 815, column: 7, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4770, file: !1, line: 815, column: 7)
!4784 = !DILocation(line: 815, column: 7, scope: !4770)
!4785 = !DILocation(line: 816, column: 5, scope: !4783)
!4786 = !DILocation(line: 822, column: 13, scope: !4770)
!4787 = !DILocation(line: 822, column: 60, scope: !4770)
!4788 = !DILocation(line: 822, column: 52, scope: !4770)
!4789 = !DILocation(line: 823, column: 19, scope: !4770)
!4790 = !DILocation(line: 823, column: 74, scope: !4770)
!4791 = !DILocation(line: 823, column: 66, scope: !4770)
!4792 = !DILocation(line: 824, column: 15, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !4770, file: !1, line: 824, column: 7)
!4794 = !DILocation(line: 824, column: 7, scope: !4770)
!4795 = !DILocation(line: 826, column: 28, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4770, file: !1, line: 826, column: 7)
!4797 = !DILocation(line: 826, column: 15, scope: !4796)
!4798 = !DILocation(line: 826, column: 7, scope: !4770)
!4799 = !DILocation(line: 827, column: 5, scope: !4796)
!4800 = !DILocation(line: 830, column: 15, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4770, file: !1, line: 830, column: 7)
!4802 = !DILocation(line: 830, column: 7, scope: !4770)
!4803 = !DILocation(line: 832, column: 11, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4805, file: !1, line: 832, column: 11)
!4805 = distinct !DILexicalBlock(scope: !4801, file: !1, line: 831, column: 5)
!4806 = !DILocation(line: 832, column: 11, scope: !4805)
!4807 = !DILocation(line: 833, column: 2, scope: !4804)
!4808 = !DILocation(line: 838, column: 10, scope: !4770)
!4809 = !DILocation(line: 841, column: 14, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4770, file: !1, line: 841, column: 7)
!4811 = !DILocation(line: 841, column: 8, scope: !4810)
!4812 = !DILocation(line: 841, column: 23, scope: !4810)
!4813 = !DILocation(line: 841, column: 32, scope: !4810)
!4814 = !DILocation(line: 841, column: 26, scope: !4810)
!4815 = !DILocation(line: 841, column: 7, scope: !4770)
!4816 = !DILocation(line: 843, column: 11, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4818, file: !1, line: 843, column: 11)
!4818 = distinct !DILexicalBlock(scope: !4810, file: !1, line: 842, column: 5)
!4819 = !DILocation(line: 843, column: 11, scope: !4818)
!4820 = !DILocation(line: 844, column: 2, scope: !4817)
!4821 = !DILocation(line: 850, column: 13, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4770, file: !1, line: 850, column: 7)
!4823 = !DILocation(line: 850, column: 7, scope: !4822)
!4824 = !DILocation(line: 850, column: 7, scope: !4770)
!4825 = !DILocation(line: 852, column: 11, scope: !4826)
!4826 = distinct !DILexicalBlock(scope: !4827, file: !1, line: 852, column: 11)
!4827 = distinct !DILexicalBlock(scope: !4822, file: !1, line: 851, column: 5)
!4828 = !DILocation(line: 852, column: 11, scope: !4827)
!4829 = !DILocation(line: 853, column: 2, scope: !4826)
!4830 = !DILocation(line: 858, column: 13, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4770, file: !1, line: 858, column: 7)
!4832 = !DILocation(line: 858, column: 21, scope: !4831)
!4833 = !DILocation(line: 858, column: 7, scope: !4831)
!4834 = !DILocation(line: 858, column: 27, scope: !4831)
!4835 = !DILocation(line: 858, column: 30, scope: !4831)
!4836 = !DILocation(line: 858, column: 66, scope: !4831)
!4837 = !DILocation(line: 858, column: 62, scope: !4831)
!4838 = !DILocation(line: 858, column: 7, scope: !4770)
!4839 = !DILocation(line: 860, column: 11, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4841, file: !1, line: 860, column: 11)
!4841 = distinct !DILexicalBlock(scope: !4831, file: !1, line: 859, column: 5)
!4842 = !DILocation(line: 860, column: 11, scope: !4841)
!4843 = !DILocation(line: 861, column: 2, scope: !4840)
!4844 = !DILocation(line: 867, column: 8, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4770, file: !1, line: 867, column: 3)
!4846 = !DILocation(line: 0, scope: !4845)
!4847 = !DILocation(line: 867, column: 17, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4845, file: !1, line: 867, column: 3)
!4849 = !DILocation(line: 867, column: 21, scope: !4848)
!4850 = !DILocation(line: 867, column: 3, scope: !4845)
!4851 = !DILocation(line: 867, column: 3, scope: !4848)
!4852 = distinct !{!4852, !4850, !4853}
!4853 = !DILocation(line: 868, column: 5, scope: !4845)
!4854 = !DILocation(line: 870, column: 22, scope: !4770)
!4855 = !DILocation(line: 870, column: 31, scope: !4770)
!4856 = !DILocation(line: 871, column: 32, scope: !4770)
!4857 = !DILocation(line: 871, column: 22, scope: !4770)
!4858 = !DILocation(line: 871, column: 28, scope: !4770)
!4859 = !DILocation(line: 873, column: 7, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4770, file: !1, line: 873, column: 7)
!4861 = !DILocation(line: 873, column: 7, scope: !4770)
!4862 = !DILocation(line: 874, column: 5, scope: !4860)
!4863 = !DILocation(line: 878, column: 1, scope: !4770)
!4864 = distinct !DISubprogram(name: "decide_unroll_stupid", scope: !1, file: !1, line: 1345, type: !3186, scopeLine: 1346, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4865)
!4865 = !{!4866, !4867, !4868, !4869, !4870, !4871}
!4866 = !DILocalVariable(name: "loop", arg: 1, scope: !4864, file: !1, line: 1345, type: !579)
!4867 = !DILocalVariable(name: "flags", arg: 2, scope: !4864, file: !1, line: 1345, type: !556)
!4868 = !DILocalVariable(name: "nunroll", scope: !4864, file: !1, line: 1347, type: !5)
!4869 = !DILocalVariable(name: "nunroll_by_av", scope: !4864, file: !1, line: 1347, type: !5)
!4870 = !DILocalVariable(name: "i", scope: !4864, file: !1, line: 1347, type: !5)
!4871 = !DILocalVariable(name: "desc", scope: !4864, file: !1, line: 1348, type: !2460)
!4872 = !DILocation(line: 0, scope: !4864)
!4873 = !DILocation(line: 1350, column: 15, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4864, file: !1, line: 1350, column: 7)
!4875 = !DILocation(line: 1350, column: 7, scope: !4864)
!4876 = !DILocation(line: 1356, column: 7, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4864, file: !1, line: 1356, column: 7)
!4878 = !DILocation(line: 1356, column: 7, scope: !4864)
!4879 = !DILocation(line: 1357, column: 5, scope: !4877)
!4880 = !DILocation(line: 1361, column: 13, scope: !4864)
!4881 = !DILocation(line: 1361, column: 60, scope: !4864)
!4882 = !DILocation(line: 1361, column: 52, scope: !4864)
!4883 = !DILocation(line: 1363, column: 7, scope: !4864)
!4884 = !DILocation(line: 1363, column: 62, scope: !4864)
!4885 = !DILocation(line: 1363, column: 54, scope: !4864)
!4886 = !DILocation(line: 1364, column: 15, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4864, file: !1, line: 1364, column: 7)
!4888 = !DILocation(line: 1364, column: 7, scope: !4864)
!4889 = !DILocation(line: 1366, column: 28, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !4864, file: !1, line: 1366, column: 7)
!4891 = !DILocation(line: 1366, column: 15, scope: !4890)
!4892 = !DILocation(line: 1366, column: 7, scope: !4864)
!4893 = !DILocation(line: 1367, column: 5, scope: !4890)
!4894 = !DILocation(line: 1370, column: 15, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4864, file: !1, line: 1370, column: 7)
!4896 = !DILocation(line: 1370, column: 7, scope: !4864)
!4897 = !DILocation(line: 1372, column: 11, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4899, file: !1, line: 1372, column: 11)
!4899 = distinct !DILexicalBlock(scope: !4895, file: !1, line: 1371, column: 5)
!4900 = !DILocation(line: 1372, column: 11, scope: !4899)
!4901 = !DILocation(line: 1373, column: 2, scope: !4898)
!4902 = !DILocation(line: 1378, column: 10, scope: !4864)
!4903 = !DILocation(line: 1381, column: 13, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4864, file: !1, line: 1381, column: 7)
!4905 = !DILocation(line: 1381, column: 7, scope: !4904)
!4906 = !DILocation(line: 1381, column: 22, scope: !4904)
!4907 = !DILocation(line: 1381, column: 32, scope: !4904)
!4908 = !DILocation(line: 1381, column: 26, scope: !4904)
!4909 = !DILocation(line: 1381, column: 7, scope: !4864)
!4910 = !DILocation(line: 1383, column: 11, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4912, file: !1, line: 1383, column: 11)
!4912 = distinct !DILexicalBlock(scope: !4904, file: !1, line: 1382, column: 5)
!4913 = !DILocation(line: 1383, column: 11, scope: !4912)
!4914 = !DILocation(line: 1384, column: 2, scope: !4911)
!4915 = !DILocation(line: 1390, column: 7, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4864, file: !1, line: 1390, column: 7)
!4917 = !DILocation(line: 1390, column: 32, scope: !4916)
!4918 = !DILocation(line: 1390, column: 7, scope: !4864)
!4919 = !DILocation(line: 1392, column: 11, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4921, file: !1, line: 1392, column: 11)
!4921 = distinct !DILexicalBlock(scope: !4916, file: !1, line: 1391, column: 5)
!4922 = !DILocation(line: 1392, column: 11, scope: !4921)
!4923 = !DILocation(line: 1393, column: 2, scope: !4920)
!4924 = !DILocation(line: 1398, column: 13, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4864, file: !1, line: 1398, column: 7)
!4926 = !DILocation(line: 1398, column: 21, scope: !4925)
!4927 = !DILocation(line: 1398, column: 7, scope: !4925)
!4928 = !DILocation(line: 1399, column: 7, scope: !4925)
!4929 = !DILocation(line: 1399, column: 10, scope: !4925)
!4930 = !DILocation(line: 1399, column: 46, scope: !4925)
!4931 = !DILocation(line: 1399, column: 42, scope: !4925)
!4932 = !DILocation(line: 1398, column: 7, scope: !4864)
!4933 = !DILocation(line: 1401, column: 11, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4935, file: !1, line: 1401, column: 11)
!4935 = distinct !DILexicalBlock(scope: !4925, file: !1, line: 1400, column: 5)
!4936 = !DILocation(line: 1401, column: 11, scope: !4935)
!4937 = !DILocation(line: 1402, column: 2, scope: !4934)
!4938 = !DILocation(line: 1409, column: 8, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4864, file: !1, line: 1409, column: 3)
!4940 = !DILocation(line: 0, scope: !4939)
!4941 = !DILocation(line: 1409, column: 17, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4939, file: !1, line: 1409, column: 3)
!4943 = !DILocation(line: 1409, column: 21, scope: !4942)
!4944 = !DILocation(line: 1409, column: 3, scope: !4939)
!4945 = !DILocation(line: 1409, column: 3, scope: !4942)
!4946 = distinct !{!4946, !4944, !4947}
!4947 = !DILocation(line: 1410, column: 5, scope: !4939)
!4948 = !DILocation(line: 1412, column: 22, scope: !4864)
!4949 = !DILocation(line: 1412, column: 31, scope: !4864)
!4950 = !DILocation(line: 1413, column: 32, scope: !4864)
!4951 = !DILocation(line: 1413, column: 22, scope: !4864)
!4952 = !DILocation(line: 1413, column: 28, scope: !4864)
!4953 = !DILocation(line: 1415, column: 7, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4864, file: !1, line: 1415, column: 7)
!4955 = !DILocation(line: 1415, column: 7, scope: !4864)
!4956 = !DILocation(line: 1416, column: 5, scope: !4954)
!4957 = !DILocation(line: 1419, column: 1, scope: !4864)
!4958 = distinct !DISubprogram(name: "decide_peel_simple", scope: !1, file: !1, line: 1192, type: !3186, scopeLine: 1193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4959)
!4959 = !{!4960, !4961, !4962, !4963, !4964}
!4960 = !DILocalVariable(name: "loop", arg: 1, scope: !4958, file: !1, line: 1192, type: !579)
!4961 = !DILocalVariable(name: "flags", arg: 2, scope: !4958, file: !1, line: 1192, type: !556)
!4962 = !DILocalVariable(name: "npeel", scope: !4958, file: !1, line: 1194, type: !5)
!4963 = !DILocalVariable(name: "desc", scope: !4958, file: !1, line: 1195, type: !2460)
!4964 = !DILocalVariable(name: "niter", scope: !4965, file: !1, line: 1241, type: !5)
!4965 = distinct !DILexicalBlock(scope: !4966, file: !1, line: 1240, column: 5)
!4966 = distinct !DILexicalBlock(scope: !4958, file: !1, line: 1239, column: 7)
!4967 = !DILocation(line: 0, scope: !4958)
!4968 = !DILocation(line: 1197, column: 15, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4958, file: !1, line: 1197, column: 7)
!4970 = !DILocation(line: 1197, column: 7, scope: !4958)
!4971 = !DILocation(line: 1203, column: 7, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !4958, file: !1, line: 1203, column: 7)
!4973 = !DILocation(line: 1203, column: 7, scope: !4958)
!4974 = !DILocation(line: 1204, column: 5, scope: !4972)
!4975 = !DILocation(line: 1207, column: 11, scope: !4958)
!4976 = !DILocation(line: 1207, column: 56, scope: !4958)
!4977 = !DILocation(line: 1207, column: 48, scope: !4958)
!4978 = !DILocation(line: 1208, column: 26, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4958, file: !1, line: 1208, column: 7)
!4980 = !DILocation(line: 1208, column: 13, scope: !4979)
!4981 = !DILocation(line: 1208, column: 7, scope: !4958)
!4982 = !DILocation(line: 1209, column: 5, scope: !4979)
!4983 = !DILocation(line: 1212, column: 8, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4958, file: !1, line: 1212, column: 7)
!4985 = !DILocation(line: 1212, column: 7, scope: !4958)
!4986 = !DILocation(line: 1214, column: 11, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4988, file: !1, line: 1214, column: 11)
!4988 = distinct !DILexicalBlock(scope: !4984, file: !1, line: 1213, column: 5)
!4989 = !DILocation(line: 1214, column: 11, scope: !4988)
!4990 = !DILocation(line: 1215, column: 2, scope: !4987)
!4991 = !DILocation(line: 1220, column: 10, scope: !4958)
!4992 = !DILocation(line: 1223, column: 13, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4958, file: !1, line: 1223, column: 7)
!4994 = !DILocation(line: 1223, column: 7, scope: !4993)
!4995 = !DILocation(line: 1223, column: 22, scope: !4993)
!4996 = !DILocation(line: 1223, column: 32, scope: !4993)
!4997 = !DILocation(line: 1223, column: 26, scope: !4993)
!4998 = !DILocation(line: 1223, column: 44, scope: !4993)
!4999 = !DILocation(line: 1223, column: 53, scope: !4993)
!5000 = !DILocation(line: 1223, column: 47, scope: !4993)
!5001 = !DILocation(line: 1223, column: 7, scope: !4958)
!5002 = !DILocation(line: 1225, column: 11, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !5004, file: !1, line: 1225, column: 11)
!5004 = distinct !DILexicalBlock(scope: !4993, file: !1, line: 1224, column: 5)
!5005 = !DILocation(line: 1225, column: 11, scope: !5004)
!5006 = !DILocation(line: 1226, column: 2, scope: !5003)
!5007 = !DILocation(line: 1232, column: 7, scope: !5008)
!5008 = distinct !DILexicalBlock(scope: !4958, file: !1, line: 1232, column: 7)
!5009 = !DILocation(line: 1232, column: 32, scope: !5008)
!5010 = !DILocation(line: 1232, column: 7, scope: !4958)
!5011 = !DILocation(line: 1234, column: 11, scope: !5012)
!5012 = distinct !DILexicalBlock(scope: !5013, file: !1, line: 1234, column: 11)
!5013 = distinct !DILexicalBlock(scope: !5008, file: !1, line: 1233, column: 5)
!5014 = !DILocation(line: 1234, column: 11, scope: !5013)
!5015 = !DILocation(line: 1235, column: 2, scope: !5012)
!5016 = !DILocation(line: 1239, column: 13, scope: !4966)
!5017 = !DILocation(line: 1239, column: 21, scope: !4966)
!5018 = !DILocation(line: 1239, column: 7, scope: !4966)
!5019 = !DILocation(line: 1239, column: 7, scope: !4958)
!5020 = !DILocation(line: 1241, column: 24, scope: !4965)
!5021 = !DILocation(line: 0, scope: !4965)
!5022 = !DILocation(line: 1242, column: 17, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !4965, file: !1, line: 1242, column: 11)
!5024 = !DILocation(line: 1242, column: 21, scope: !5023)
!5025 = !DILocation(line: 1242, column: 11, scope: !4965)
!5026 = !DILocation(line: 1244, column: 8, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !5028, file: !1, line: 1244, column: 8)
!5028 = distinct !DILexicalBlock(scope: !5023, file: !1, line: 1243, column: 2)
!5029 = !DILocation(line: 1244, column: 8, scope: !5028)
!5030 = !DILocation(line: 1246, column: 8, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !5027, file: !1, line: 1245, column: 6)
!5032 = !DILocation(line: 1247, column: 17, scope: !5031)
!5033 = !DILocation(line: 1248, column: 10, scope: !5031)
!5034 = !DILocation(line: 1247, column: 8, scope: !5031)
!5035 = !DILocation(line: 1249, column: 17, scope: !5031)
!5036 = !DILocation(line: 1249, column: 8, scope: !5031)
!5037 = !DILocation(line: 1251, column: 6, scope: !5031)
!5038 = !DILocation(line: 1255, column: 5, scope: !4966)
!5039 = !DILocation(line: 1260, column: 11, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !5041, file: !1, line: 1260, column: 11)
!5041 = distinct !DILexicalBlock(scope: !4966, file: !1, line: 1257, column: 5)
!5042 = !DILocation(line: 1260, column: 11, scope: !5041)
!5043 = !DILocation(line: 1261, column: 2, scope: !5040)
!5044 = !DILocation(line: 1267, column: 22, scope: !4958)
!5045 = !DILocation(line: 1267, column: 31, scope: !4958)
!5046 = !DILocation(line: 1268, column: 22, scope: !4958)
!5047 = !DILocation(line: 1268, column: 28, scope: !4958)
!5048 = !DILocation(line: 1270, column: 7, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !4958, file: !1, line: 1270, column: 7)
!5050 = !DILocation(line: 1270, column: 7, scope: !4958)
!5051 = !DILocation(line: 1271, column: 5, scope: !5049)
!5052 = !DILocation(line: 1273, column: 1, scope: !4958)
!5053 = distinct !DISubprogram(name: "loop_exit_at_end_p", scope: !1, file: !1, line: 212, type: !5054, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5056)
!5054 = !DISubroutineType(types: !5055)
!5055 = !{!555, !579}
!5056 = !{!5057, !5058, !5059}
!5057 = !DILocalVariable(name: "loop", arg: 1, scope: !5053, file: !1, line: 212, type: !579)
!5058 = !DILocalVariable(name: "desc", scope: !5053, file: !1, line: 214, type: !2460)
!5059 = !DILocalVariable(name: "insn", scope: !5053, file: !1, line: 215, type: !616)
!5060 = !DILocation(line: 0, scope: !5053)
!5061 = !DILocation(line: 214, column: 29, scope: !5053)
!5062 = !DILocation(line: 217, column: 13, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5053, file: !1, line: 217, column: 7)
!5064 = !DILocation(line: 217, column: 22, scope: !5063)
!5065 = !DILocation(line: 217, column: 36, scope: !5063)
!5066 = !DILocation(line: 217, column: 27, scope: !5063)
!5067 = !DILocation(line: 217, column: 7, scope: !5053)
!5068 = !DILocation(line: 221, column: 3, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !5053, file: !1, line: 221, column: 3)
!5070 = !DILocation(line: 221, column: 3, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5069, file: !1, line: 221, column: 3)
!5072 = !DILocation(line: 0, scope: !5069)
!5073 = !DILocation(line: 223, column: 11, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5075, file: !1, line: 223, column: 11)
!5075 = distinct !DILexicalBlock(scope: !5071, file: !1, line: 222, column: 5)
!5076 = distinct !{!5076, !5068, !5077}
!5077 = !DILocation(line: 225, column: 5, scope: !5069)
!5078 = !DILocation(line: 228, column: 1, scope: !5053)
!5079 = distinct !DISubprogram(name: "SET_BIT", scope: !2449, file: !2449, line: 63, type: !3407, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5080)
!5080 = !{!5081, !5082, !5083}
!5081 = !DILocalVariable(name: "map", arg: 1, scope: !5079, file: !2449, line: 63, type: !2448)
!5082 = !DILocalVariable(name: "bitno", arg: 2, scope: !5079, file: !2449, line: 63, type: !5)
!5083 = !DILocalVariable(name: "oldbit", scope: !5084, file: !2449, line: 67, type: !555)
!5084 = distinct !DILexicalBlock(scope: !5085, file: !2449, line: 66, column: 5)
!5085 = distinct !DILexicalBlock(scope: !5079, file: !2449, line: 65, column: 7)
!5086 = !DILocation(line: 0, scope: !5079)
!5087 = !DILocation(line: 65, column: 12, scope: !5085)
!5088 = !DILocation(line: 65, column: 7, scope: !5085)
!5089 = !DILocation(line: 65, column: 7, scope: !5079)
!5090 = !DILocation(line: 73, column: 40, scope: !5079)
!5091 = !DILocation(line: 73, column: 29, scope: !5079)
!5092 = !DILocation(line: 72, column: 19, scope: !5079)
!5093 = !DILocation(line: 72, column: 3, scope: !5079)
!5094 = !DILocation(line: 68, column: 16, scope: !5084)
!5095 = !DILocation(line: 69, column: 12, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5084, file: !2449, line: 69, column: 11)
!5097 = !DILocation(line: 69, column: 11, scope: !5084)
!5098 = !DILocation(line: 70, column: 2, scope: !5096)
!5099 = !DILocation(line: 70, column: 41, scope: !5096)
!5100 = !DILocation(line: 73, column: 5, scope: !5079)
!5101 = !DILocation(line: 74, column: 1, scope: !5079)
!5102 = distinct !DISubprogram(name: "VEC_basic_block_base_iterate", scope: !133, file: !133, line: 281, type: !5103, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5105)
!5103 = !DISubroutineType(types: !5104)
!5104 = !{!556, !4219, !5, !2725}
!5105 = !{!5106, !5107, !5108}
!5106 = !DILocalVariable(name: "vec_", arg: 1, scope: !5102, file: !133, line: 281, type: !4219)
!5107 = !DILocalVariable(name: "ix_", arg: 2, scope: !5102, file: !133, line: 281, type: !5)
!5108 = !DILocalVariable(name: "ptr", arg: 3, scope: !5102, file: !133, line: 281, type: !2725)
!5109 = !DILocation(line: 0, scope: !5102)
!5110 = !DILocation(line: 281, column: 1, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5102, file: !133, line: 281, column: 1)
!5112 = !DILocation(line: 281, column: 1, scope: !5102)
!5113 = !DILocation(line: 281, column: 1, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5111, file: !133, line: 281, column: 1)
!5115 = !DILocation(line: 281, column: 1, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5111, file: !133, line: 281, column: 1)
!5117 = !DILocation(line: 0, scope: !5111)
!5118 = distinct !DISubprogram(name: "VEC_basic_block_heap_safe_push", scope: !133, file: !133, line: 283, type: !5119, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5122)
!5119 = !DISubroutineType(types: !5120)
!5120 = !{!2725, !5121, !986}
!5121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!5122 = !{!5123, !5124}
!5123 = !DILocalVariable(name: "vec_", arg: 1, scope: !5118, file: !133, line: 283, type: !5121)
!5124 = !DILocalVariable(name: "obj_", arg: 2, scope: !5118, file: !133, line: 283, type: !986)
!5125 = !DILocation(line: 0, scope: !5118)
!5126 = !DILocation(line: 283, column: 1, scope: !5118)
!5127 = distinct !DISubprogram(name: "VEC_basic_block_heap_free", scope: !133, file: !133, line: 283, type: !5128, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5130)
!5128 = !DISubroutineType(types: !5129)
!5129 = !{null, !5121}
!5130 = !{!5131}
!5131 = !DILocalVariable(name: "vec_", arg: 1, scope: !5127, file: !133, line: 283, type: !5121)
!5132 = !DILocation(line: 0, scope: !5127)
!5133 = !DILocation(line: 283, column: 1, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5127, file: !133, line: 283, column: 1)
!5135 = !DILocation(line: 283, column: 1, scope: !5127)
!5136 = distinct !DISubprogram(name: "single_pred_edge", scope: !133, file: !133, line: 653, type: !5137, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5142)
!5137 = !DISubroutineType(types: !5138)
!5138 = !{!601, !5139}
!5139 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !602, line: 112, baseType: !5140)
!5140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5141, size: 64)
!5141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !586)
!5142 = !{!5143}
!5143 = !DILocalVariable(name: "bb", arg: 1, scope: !5136, file: !133, line: 653, type: !5139)
!5144 = !DILocation(line: 0, scope: !5136)
!5145 = !DILocation(line: 655, column: 3, scope: !5136)
!5146 = !DILocation(line: 656, column: 10, scope: !5136)
!5147 = !DILocation(line: 656, column: 3, scope: !5136)
!5148 = distinct !DISubprogram(name: "single_succ_edge", scope: !133, file: !133, line: 643, type: !5137, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5149)
!5149 = !{!5150}
!5150 = !DILocalVariable(name: "bb", arg: 1, scope: !5148, file: !133, line: 643, type: !5139)
!5151 = !DILocation(line: 0, scope: !5148)
!5152 = !DILocation(line: 645, column: 3, scope: !5148)
!5153 = !DILocation(line: 646, column: 10, scope: !5148)
!5154 = !DILocation(line: 646, column: 3, scope: !5148)
!5155 = distinct !DISubprogram(name: "VEC_basic_block_heap_reserve", scope: !133, file: !133, line: 283, type: !5156, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5158)
!5156 = !DISubroutineType(types: !5157)
!5157 = !{!556, !5121, !556}
!5158 = !{!5159, !5160, !5161}
!5159 = !DILocalVariable(name: "vec_", arg: 1, scope: !5155, file: !133, line: 283, type: !5121)
!5160 = !DILocalVariable(name: "alloc_", arg: 2, scope: !5155, file: !133, line: 283, type: !556)
!5161 = !DILocalVariable(name: "extend", scope: !5155, file: !133, line: 283, type: !556)
!5162 = !DILocation(line: 0, scope: !5155)
!5163 = !DILocation(line: 283, column: 1, scope: !5155)
!5164 = !DILocation(line: 283, column: 1, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5155, file: !133, line: 283, column: 1)
!5166 = distinct !DISubprogram(name: "VEC_basic_block_base_quick_push", scope: !133, file: !133, line: 281, type: !5167, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5170)
!5167 = !DISubroutineType(types: !5168)
!5168 = !{!2725, !5169, !986}
!5169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!5170 = !{!5171, !5172, !5173}
!5171 = !DILocalVariable(name: "vec_", arg: 1, scope: !5166, file: !133, line: 281, type: !5169)
!5172 = !DILocalVariable(name: "obj_", arg: 2, scope: !5166, file: !133, line: 281, type: !986)
!5173 = !DILocalVariable(name: "slot_", scope: !5166, file: !133, line: 281, type: !2725)
!5174 = !DILocation(line: 0, scope: !5166)
!5175 = !DILocation(line: 281, column: 1, scope: !5166)
!5176 = distinct !DISubprogram(name: "VEC_basic_block_base_space", scope: !133, file: !133, line: 281, type: !5177, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5179)
!5177 = !DISubroutineType(types: !5178)
!5178 = !{!556, !5169, !556}
!5179 = !{!5180, !5181}
!5180 = !DILocalVariable(name: "vec_", arg: 1, scope: !5176, file: !133, line: 281, type: !5169)
!5181 = !DILocalVariable(name: "alloc_", arg: 2, scope: !5176, file: !133, line: 281, type: !556)
!5182 = !DILocation(line: 0, scope: !5176)
!5183 = !DILocation(line: 281, column: 1, scope: !5176)
!5184 = distinct !DISubprogram(name: "single_pred_p", scope: !133, file: !133, line: 634, type: !5185, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5187)
!5185 = !DISubroutineType(types: !5186)
!5186 = !{!555, !5139}
!5187 = !{!5188}
!5188 = !DILocalVariable(name: "bb", arg: 1, scope: !5184, file: !133, line: 634, type: !5139)
!5189 = !DILocation(line: 0, scope: !5184)
!5190 = !DILocation(line: 636, column: 10, scope: !5184)
!5191 = !DILocation(line: 636, column: 33, scope: !5184)
!5192 = !DILocation(line: 636, column: 3, scope: !5184)
!5193 = distinct !DISubprogram(name: "single_succ_p", scope: !133, file: !133, line: 626, type: !5185, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5194)
!5194 = !{!5195}
!5195 = !DILocalVariable(name: "bb", arg: 1, scope: !5193, file: !133, line: 626, type: !5139)
!5196 = !DILocation(line: 0, scope: !5193)
!5197 = !DILocation(line: 628, column: 10, scope: !5193)
!5198 = !DILocation(line: 628, column: 33, scope: !5193)
!5199 = !DILocation(line: 628, column: 3, scope: !5193)
