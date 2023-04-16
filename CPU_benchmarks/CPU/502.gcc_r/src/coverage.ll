; ModuleID = 'coverage.bc'
source_filename = "coverage.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.gcov_var = type { %struct._IO_FILE*, i32, i32, i32, i32, i32, i32, i32, i64, i32* }
%struct.lang_hooks = type { i8*, i64, void (%union.tree_node*)*, i64 (i32)*, i32 (i32, i8**)*, void (%struct.diagnostic_context*)*, i32 (i64, i8*, i32)*, i8 (i8*, i64)*, i8 (i8**)*, i8 ()*, void ()*, void (i32)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void ()*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i32 (%union.tree_node*, %union.tree_node*)*, void (%struct.diagnostic_context*, i8*, %struct.diagnostic_info*)*, i64 (i64)*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node**, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void ()*, %union.tree_node* (%union.tree_node*, i8*, i8*)*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, i8 }
%struct.diagnostic_context = type opaque
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
%struct.loop = type opaque
%struct.et_node = type opaque
%union.basic_block_il_dependent = type { %struct.gimple_bb_info* }
%struct.gimple_bb_info = type { %struct.gimple_seq_d*, %struct.gimple_seq_d* }
%struct.VEC_basic_block_gc = type { %struct.VEC_basic_block_base }
%struct.VEC_basic_block_base = type { i32, i32, [1 x %struct.basic_block_def*] }
%struct.gimple_seq_d = type opaque
%struct.gimple_df = type opaque
%struct.loops = type opaque
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.diagnostic_info = type opaque
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
%struct.lang_hooks_for_tree_inlining = type { i8 (%union.tree_node*, %union.tree_node*)* }
%struct.lang_hooks_for_callgraph = type { %union.tree_node* (%union.tree_node**, i32*)* }
%struct.lang_hooks_for_tree_dump = type { i8 (i8*, %union.tree_node*)*, i32 (%union.tree_node*)* }
%struct.lang_hooks_for_decls = type { i32 ()*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* ()*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, void ()*, i8 (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, i8 (%union.tree_node*, i8)*, i8 (%union.tree_node*, i8)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)* }
%struct.lang_hooks_for_types = type { %union.tree_node* (i32)*, i32 (%union.tree_node*)*, %union.tree_node* (i32, i32)*, %union.tree_node* (i32, i32)*, i8 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%union.tree_node*, i8*)*, void (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void (%struct.gimplify_omp_ctx*, %union.tree_node*)*, i8 (%union.tree_node*, %union.tree_node*)*, i8 (%union.tree_node*, %struct.array_descr_info*)*, void (%union.tree_node*, %union.tree_node**, %union.tree_node**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, i8 }
%struct.gimplify_omp_ctx = type opaque
%struct.array_descr_info = type opaque
%struct.lang_hooks_for_lto = type { void (i8*)*, void (i8*, i64, i8*)*, void ()* }
%struct.function_list = type { %struct.function_list*, i32, i32, [8 x i32] }
%struct.ggc_root_tab = type { i8*, i64, i64, void (i8*)*, void (i8*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.gcov_summary = type { i32, [1 x %struct.gcov_ctr_summary] }
%struct.gcov_ctr_summary = type { i32, i32, i64, i64, i64 }
%struct.counts_entry = type { i32, i32, i32, i64*, %struct.gcov_ctr_summary, %struct.counts_entry* }
%struct.expanded_location = type { i8*, i32, i32, i8 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@gcov_var = common dso_local local_unnamed_addr global %struct.gcov_var zeroinitializer, align 8, !dbg !0
@.str = private unnamed_addr constant [14 x i8] c"./gcov-io.ccc\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"r+b\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"w+b\00", align 1
@lang_hooks = external dso_local local_unnamed_addr global %struct.lang_hooks, align 8
@counts_hash = internal unnamed_addr global %struct.htab* null, align 8, !dbg !1552
@get_coverage_counts.warned = internal unnamed_addr global i32 0, align 4, !dbg !1494
@input_location = external dso_local local_unnamed_addr global i32, align 4
@flag_guess_branch_prob = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"file %s not found, execution counts estimated\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"file %s not found, execution counts assumed to be zero\00", align 1
@da_file_name = internal unnamed_addr global i8* null, align 8, !dbg !1544
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"no coverage for function %qE found\00", align 1
@current_function_decl = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@get_coverage_counts.warned.8 = internal unnamed_addr global i32 0, align 4, !dbg !1512
@warn_coverage_mismatch = external dso_local local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [61 x i8] c"coverage mismatch for function %qE while reading counter %qs\00", align 1
@ctr_names = internal unnamed_addr constant [8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0)], align 16, !dbg !1554
@inhibit_warnings = external dso_local local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"checksum is %x instead of %x\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"number of counters is %d instead of %d\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"coverage mismatch ignored due to -Wcoverage-mismatch\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"execution counts estimated\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"execution counts assumed to be zero\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"this can result in poorly optimized code\00", align 1
@no_coverage = internal unnamed_addr global i1 false, align 4, !dbg !1631
@tree_ctr_tables = internal global [8 x %union.tree_node*] zeroinitializer, align 16, !dbg !1546
@.str.16 = private unnamed_addr constant [7 x i8] c"*.%s%u\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"LPBX\00", align 1
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.18 = private unnamed_addr constant [20 x i8] c"Using data file %s\0A\00", align 1
@fn_n_ctrs = internal unnamed_addr global [8 x i32] zeroinitializer, align 16, !dbg !1534
@fn_b_ctrs = internal unnamed_addr global [8 x i32] zeroinitializer, align 16, !dbg !1536
@fn_ctr_mask = internal unnamed_addr global i32 0, align 4, !dbg !1532
@.str.19 = private unnamed_addr constant [11 x i8] c"coverage.c\00", align 1
@prg_n_ctrs = internal unnamed_addr global [8 x i32] zeroinitializer, align 16, !dbg !1530
@flag_test_coverage = external dso_local local_unnamed_addr global i32, align 4
@flag_compare_debug = external dso_local local_unnamed_addr global i32, align 4
@bbg_function_announced = internal unnamed_addr global i1 false, align 4, !dbg !1632
@bbg_file_opened = internal unnamed_addr global i32 0, align 4, !dbg !1540
@bbg_file_name = internal unnamed_addr global i8* null, align 8, !dbg !1538
@.str.20 = private unnamed_addr constant [15 x i8] c"cannot open %s\00", align 1
@local_tick = external dso_local local_unnamed_addr global i32, align 4
@.str.21 = private unnamed_addr constant [18 x i8] c"error writing %qs\00", align 1
@functions_tail = internal unnamed_addr global %struct.function_list** @functions_head, align 8, !dbg !1560
@prg_ctr_mask = internal unnamed_addr global i32 0, align 4, !dbg !1528
@profile_data_prefix = external dso_local local_unnamed_addr global i8*, align 8
@.str.22 = private unnamed_addr constant [6 x i8] c".gcda\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c".gcno\00", align 1
@flag_profile_use = external dso_local local_unnamed_addr global i32, align 4
@ctr_labels = internal global [8 x %struct.rtx_def*] zeroinitializer, align 16, !dbg !1549
@gt_ggc_r_gt_coverage_h = dso_local local_unnamed_addr constant [3 x %struct.ggc_root_tab] [%struct.ggc_root_tab { i8* bitcast ([8 x %struct.rtx_def*]* @ctr_labels to i8*), i64 8, i64 8, void (i8*)* @gt_ggc_mx_rtx_def, void (i8*)* @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { i8* bitcast ([8 x %union.tree_node*]* @tree_ctr_tables to i8*), i64 8, i64 8, void (i8*)* @gt_ggc_mx_lang_tree_node, void (i8*)* @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab zeroinitializer], align 16, !dbg !1514
@.str.24 = private unnamed_addr constant [5 x i8] c"arcs\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"interval\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"pow2\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"single\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"delta\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"indirect_call\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"average\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"ior\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"_GLOBAL__N_\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"_GLOBAL__\00", align 1
@functions_head = internal global %struct.function_list* null, align 8, !dbg !1563
@.str.34 = private unnamed_addr constant [28 x i8] c"%qs is not a gcov data file\00", align 1
@.str.35 = private unnamed_addr constant [45 x i8] c"%qs is version %q.*s, expected version %q.*s\00", align 1
@.str.36 = private unnamed_addr constant [67 x i8] c"coverage mismatch for function %u while reading execution counters\00", align 1
@.str.37 = private unnamed_addr constant [50 x i8] c"cannot merge separate %s counters for function %u\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"%qs has overflowed\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"%qs is corrupted\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"./gcov-io.h\00", align 1
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@.str.41 = private unnamed_addr constant [12 x i8] c"__gcov_init\00", align 1
@integer_types = external dso_local local_unnamed_addr global [11 x %union.tree_node*], align 16
@.str.42 = private unnamed_addr constant [12 x i8] c"__gcov_info\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"__gcov_fn_info\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"__gcov_ctr_info\00", align 1
@ctr_merge_functions = internal unnamed_addr constant [8 x i8*] [i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0)], align 16, !dbg !1565
@.str.45 = private unnamed_addr constant [17 x i8] c"__gcov_merge_add\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"__gcov_merge_single\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"__gcov_merge_delta\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"__gcov_merge_ior\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1637 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1650, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1651, metadata !DIExpression()), !dbg !1652
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1653
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1654
  ret i32 %call, !dbg !1655
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1656 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1660
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1661
  ret i32 %call, !dbg !1662
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1663 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1667, metadata !DIExpression()), !dbg !1668
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1669
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1669
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1669
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1669
  %cmp = icmp uge i8* %0, %1, !dbg !1669
  %conv1 = zext i1 %cmp to i64, !dbg !1669
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1669
  %tobool = icmp eq i64 %expval, 0, !dbg !1669
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1669

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1669
  br label %cond.end, !dbg !1669

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1669
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1669
  %2 = load i8, i8* %0, align 1, !dbg !1669
  %conv3 = zext i8 %2 to i32, !dbg !1669
  br label %cond.end, !dbg !1669

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1669
  ret i32 %cond, !dbg !1670
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1671 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1673, metadata !DIExpression()), !dbg !1674
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1675
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1675
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1675
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1675
  %cmp = icmp uge i8* %0, %1, !dbg !1675
  %conv1 = zext i1 %cmp to i64, !dbg !1675
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1675
  %tobool = icmp eq i64 %expval, 0, !dbg !1675
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1675

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1675
  br label %cond.end, !dbg !1675

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1675
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1675
  %2 = load i8, i8* %0, align 1, !dbg !1675
  %conv3 = zext i8 %2 to i32, !dbg !1675
  br label %cond.end, !dbg !1675

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1675
  ret i32 %cond, !dbg !1676
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1677 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1678
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1678
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1678
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1678
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1678
  %cmp = icmp uge i8* %1, %2, !dbg !1678
  %conv1 = zext i1 %cmp to i64, !dbg !1678
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1678
  %tobool = icmp eq i64 %expval, 0, !dbg !1678
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1678

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1678
  br label %cond.end, !dbg !1678

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1678
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1678
  %3 = load i8, i8* %1, align 1, !dbg !1678
  %conv3 = zext i8 %3 to i32, !dbg !1678
  br label %cond.end, !dbg !1678

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1678
  ret i32 %cond, !dbg !1679
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1680 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1684, metadata !DIExpression()), !dbg !1685
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1686
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1687
  ret i32 %call, !dbg !1688
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1689 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1693, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1694, metadata !DIExpression()), !dbg !1695
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1696
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1696
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1696
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1696
  %cmp = icmp uge i8* %0, %1, !dbg !1696
  %conv1 = zext i1 %cmp to i64, !dbg !1696
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1696
  %tobool = icmp eq i64 %expval, 0, !dbg !1696
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1696

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1696
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1696
  br label %cond.end, !dbg !1696

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1696
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1696
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1696
  store i8 %conv2, i8* %0, align 1, !dbg !1696
  %conv6 = and i32 %__c, 255, !dbg !1696
  br label %cond.end, !dbg !1696

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1696
  ret i32 %cond, !dbg !1697
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1698 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1700, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1701, metadata !DIExpression()), !dbg !1702
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1703
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1703
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1703
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1703
  %cmp = icmp uge i8* %0, %1, !dbg !1703
  %conv1 = zext i1 %cmp to i64, !dbg !1703
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1703
  %tobool = icmp eq i64 %expval, 0, !dbg !1703
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1703

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1703
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1703
  br label %cond.end, !dbg !1703

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1703
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1703
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1703
  store i8 %conv2, i8* %0, align 1, !dbg !1703
  %conv6 = and i32 %__c, 255, !dbg !1703
  br label %cond.end, !dbg !1703

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1703
  ret i32 %cond, !dbg !1704
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1705 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1707, metadata !DIExpression()), !dbg !1708
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1709
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1709
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1709
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1709
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1709
  %cmp = icmp uge i8* %1, %2, !dbg !1709
  %conv1 = zext i1 %cmp to i64, !dbg !1709
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1709
  %tobool = icmp eq i64 %expval, 0, !dbg !1709
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1709

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1709
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1709
  br label %cond.end, !dbg !1709

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1709
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1709
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1709
  store i8 %conv4, i8* %1, align 1, !dbg !1709
  %conv6 = and i32 %__c, 255, !dbg !1709
  br label %cond.end, !dbg !1709

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1709
  ret i32 %cond, !dbg !1710
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1711 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1717, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1718, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1719, metadata !DIExpression()), !dbg !1720
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1721
  ret i64 %call, !dbg !1722
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1723 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1725, metadata !DIExpression()), !dbg !1726
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1727
  %0 = load i32, i32* %_flags, align 8, !dbg !1727
  %and = lshr i32 %0, 4, !dbg !1727
  %and.lobit = and i32 %and, 1, !dbg !1727
  ret i32 %and.lobit, !dbg !1728
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1729 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1731, metadata !DIExpression()), !dbg !1732
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1733
  %0 = load i32, i32* %_flags, align 8, !dbg !1733
  %and = lshr i32 %0, 5, !dbg !1733
  %and.lobit = and i32 %and, 1, !dbg !1733
  ret i32 %and.lobit, !dbg !1734
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1735 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1738, metadata !DIExpression()), !dbg !1739
  %__c.off = add i32 %__c, 128, !dbg !1740
  %0 = icmp ult i32 %__c.off, 384, !dbg !1740
  br i1 %0, label %cond.true, label %cond.end, !dbg !1740

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1741
  %1 = load i32*, i32** %call, align 8, !dbg !1742
  %idxprom = sext i32 %__c to i64, !dbg !1743
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1743
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1743
  br label %cond.end, !dbg !1744

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1744
  ret i32 %cond, !dbg !1745
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1746 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1748, metadata !DIExpression()), !dbg !1749
  %__c.off = add i32 %__c, 128, !dbg !1750
  %0 = icmp ult i32 %__c.off, 384, !dbg !1750
  br i1 %0, label %cond.true, label %cond.end, !dbg !1750

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1751
  %1 = load i32*, i32** %call, align 8, !dbg !1752
  %idxprom = sext i32 %__c to i64, !dbg !1753
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1753
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1753
  br label %cond.end, !dbg !1754

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1754
  ret i32 %cond, !dbg !1755
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1756 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1761, metadata !DIExpression()), !dbg !1762
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1763
  %conv = trunc i64 %call to i32, !dbg !1764
  ret i32 %conv, !dbg !1765
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1766 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1770, metadata !DIExpression()), !dbg !1771
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1772
  ret i64 %call, !dbg !1773
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1774 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1779, metadata !DIExpression()), !dbg !1780
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1781
  ret i64 %call, !dbg !1782
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1783 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1789, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1790, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1791, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1792, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1793, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i64 0, metadata !1794, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1795, metadata !DIExpression()), !dbg !1799
  br label %while.cond, !dbg !1800

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1801
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1799
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1795, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1794, metadata !DIExpression()), !dbg !1799
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1802
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1800

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1803
  %div = lshr i64 %add, 1, !dbg !1805
  call void @llvm.dbg.value(metadata i64 %div, metadata !1796, metadata !DIExpression()), !dbg !1799
  %mul = mul i64 %div, %__size, !dbg !1806
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1807
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1797, metadata !DIExpression()), !dbg !1799
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1808
  call void @llvm.dbg.value(metadata i32 %call, metadata !1798, metadata !DIExpression()), !dbg !1799
  %cmp1 = icmp slt i32 %call, 0, !dbg !1809
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1811

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1812
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1814

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1815
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1794, metadata !DIExpression()), !dbg !1799
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1799
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1799
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1795, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1794, metadata !DIExpression()), !dbg !1799
  br label %while.cond, !dbg !1800, !llvm.loop !1816

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1799
  ret i8* %retval.0, !dbg !1818
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1819 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1825, metadata !DIExpression()), !dbg !1826
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1827
  ret double %call, !dbg !1828
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1829 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1838, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1839, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata i32 %base, metadata !1840, metadata !DIExpression()), !dbg !1841
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1842
  ret i64 %call, !dbg !1843
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1844 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1850, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1851, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i32 %base, metadata !1852, metadata !DIExpression()), !dbg !1853
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1854
  ret i64 %call, !dbg !1855
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1856 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1867, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1868, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i32 %base, metadata !1869, metadata !DIExpression()), !dbg !1870
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1871
  ret i64 %call, !dbg !1872
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1873 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1877, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1878, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i32 %base, metadata !1879, metadata !DIExpression()), !dbg !1880
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1881
  ret i64 %call, !dbg !1882
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1883 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1923, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1924, metadata !DIExpression()), !dbg !1925
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1926
  ret i32 %call, !dbg !1927
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1928 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1930, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1931, metadata !DIExpression()), !dbg !1932
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1933
  ret i32 %call, !dbg !1934
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1935 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1939, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1940, metadata !DIExpression()), !dbg !1941
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !1942
  ret i32 %call, !dbg !1943
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1944 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1948, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1949, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1950, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1951, metadata !DIExpression()), !dbg !1952
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !1953
  ret i32 %call, !dbg !1954
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1955 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1959, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1960, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1961, metadata !DIExpression()), !dbg !1962
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1961, metadata !DIExpression(DW_OP_deref)), !dbg !1962
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1963
  ret i32 %call, !dbg !1964
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1965 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1969, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1970, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1971, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1972, metadata !DIExpression()), !dbg !1973
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1972, metadata !DIExpression(DW_OP_deref)), !dbg !1973
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1974
  ret i32 %call, !dbg !1975
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1976 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2000, metadata !DIExpression()), !dbg !2002
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2001, metadata !DIExpression()), !dbg !2002
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2003
  ret i32 %call, !dbg !2004
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2005 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2007, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2008, metadata !DIExpression()), !dbg !2009
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2010
  ret i32 %call, !dbg !2011
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2012 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2016, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2017, metadata !DIExpression()), !dbg !2018
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2019
  ret i32 %call, !dbg !2020
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2021 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2025, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2026, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2027, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2028, metadata !DIExpression()), !dbg !2029
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2030
  ret i32 %call, !dbg !2031
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gcov_open(i8* %name, i32 %mode) local_unnamed_addr #5 !dbg !2032 {
entry:
  call void @llvm.dbg.value(metadata i8* %name, metadata !2037, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i32 %mode, metadata !2038, metadata !DIExpression()), !dbg !2039
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 0), align 8, !dbg !2040
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !2040
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2040

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2040
  br label %cond.end, !dbg !2040

cond.end:                                         ; preds = %entry, %cond.true
  store i32 0, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 1), align 8, !dbg !2041
  store i32 0, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 3), align 8, !dbg !2042
  store i32 0, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 2), align 4, !dbg !2043
  store i32 -1, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 4), align 4, !dbg !2044
  store i32 0, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 5), align 8, !dbg !2045
  store i32 0, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 7), align 8, !dbg !2046
  %cmp = icmp sgt i32 %mode, -1, !dbg !2047
  br i1 %cmp, label %if.then, label %cond.end.if.end_crit_edge, !dbg !2049

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  %.pre = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 0), align 8, !dbg !2050
  br label %if.end, !dbg !2049

if.then:                                          ; preds = %cond.end
  %cmp1 = icmp eq i32 %mode, 0, !dbg !2052
  %cond2 = select i1 %cmp1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), !dbg !2052
  %call = tail call %struct._IO_FILE* @fopen_unlocked(i8* %name, i8* %cond2) #6, !dbg !2052
  store %struct._IO_FILE* %call, %struct._IO_FILE** getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 0), align 8, !dbg !2053
  br label %if.end, !dbg !2054

if.end:                                           ; preds = %cond.end.if.end_crit_edge, %if.then
  %1 = phi %struct._IO_FILE* [ %.pre, %cond.end.if.end_crit_edge ], [ %call, %if.then ], !dbg !2050
  %tobool3 = icmp eq %struct._IO_FILE* %1, null, !dbg !2055
  br i1 %tobool3, label %if.else, label %if.then4, !dbg !2056

if.then4:                                         ; preds = %if.end
  store i32 1, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 6), align 4, !dbg !2057
  br label %if.end12, !dbg !2058

if.else:                                          ; preds = %if.end
  %cmp5 = icmp slt i32 %mode, 1, !dbg !2059
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !2061

if.then6:                                         ; preds = %if.else
  %call7 = tail call %struct._IO_FILE* @fopen_unlocked(i8* %name, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2062
  store %struct._IO_FILE* %call7, %struct._IO_FILE** getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 0), align 8, !dbg !2064
  %tobool8 = icmp eq %struct._IO_FILE* %call7, null, !dbg !2065
  br i1 %tobool8, label %if.end12, label %if.then9, !dbg !2067

if.then9:                                         ; preds = %if.then6
  %mul = shl nsw i32 %mode, 1, !dbg !2068
  %add = or i32 %mul, 1, !dbg !2069
  store i32 %add, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 6), align 4, !dbg !2070
  br label %if.end12, !dbg !2071

if.end12:                                         ; preds = %if.then6, %if.else, %if.then9, %if.then4
  %2 = phi %struct._IO_FILE* [ null, %if.then6 ], [ null, %if.else ], [ %call7, %if.then9 ], [ %1, %if.then4 ], !dbg !2072
  %tobool13 = icmp eq %struct._IO_FILE* %2, null, !dbg !2074
  br i1 %tobool13, label %return, label %if.end15, !dbg !2075

if.end15:                                         ; preds = %if.end12
  tail call void @setbuf(%struct._IO_FILE* nonnull %2, i8* null) #6, !dbg !2076
  br label %return, !dbg !2077

return:                                           ; preds = %if.end12, %if.end15
  %retval.0 = phi i32 [ 1, %if.end15 ], [ 0, %if.end12 ], !dbg !2039
  ret i32 %retval.0, !dbg !2078
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local %struct._IO_FILE* @fopen_unlocked(i8*, i8*) local_unnamed_addr #2

declare dso_local void @setbuf(%struct._IO_FILE*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gcov_close() local_unnamed_addr #5 !dbg !2079 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 0), align 8, !dbg !2080
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !2082
  br i1 %tobool, label %if.end3, label %if.then, !dbg !2083

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 2), align 4, !dbg !2084
  %tobool1 = icmp ne i32 %1, 0, !dbg !2087
  %2 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 6), align 4, !dbg !2088
  %cmp = icmp slt i32 %2, 0, !dbg !2089
  %or.cond = and i1 %tobool1, %cmp, !dbg !2090
  br i1 %or.cond, label %if.then2, label %if.end, !dbg !2090

if.then2:                                         ; preds = %if.then
  tail call fastcc void @gcov_write_block(i32 %1) #7, !dbg !2091
  %.pre = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 0), align 8, !dbg !2092
  br label %if.end, !dbg !2091

if.end:                                           ; preds = %if.then2, %if.then
  %3 = phi %struct._IO_FILE* [ %.pre, %if.then2 ], [ %0, %if.then ], !dbg !2092
  %call = tail call i32 @fclose(%struct._IO_FILE* %3) #6, !dbg !2093
  store %struct._IO_FILE* null, %struct._IO_FILE** getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 0), align 8, !dbg !2094
  store i32 0, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 3), align 8, !dbg !2095
  br label %if.end3, !dbg !2096

if.end3:                                          ; preds = %entry, %if.end
  %4 = load i8*, i8** bitcast (i32** getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 9) to i8**), align 8, !dbg !2097
  tail call void @free(i8* %4) #6, !dbg !2098
  store i64 0, i64* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 8), align 8, !dbg !2099
  store i32* null, i32** getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 9), align 8, !dbg !2100
  store i32 0, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 6), align 4, !dbg !2101
  %5 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 5), align 8, !dbg !2102
  ret i32 %5, !dbg !2103
}

; Function Attrs: nounwind uwtable
define internal fastcc void @gcov_write_block(i32 %size) unnamed_addr #5 !dbg !2104 {
entry:
  call void @llvm.dbg.value(metadata i32 %size, metadata !2108, metadata !DIExpression()), !dbg !2109
  %0 = load i8*, i8** bitcast (i32** getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 9) to i8**), align 8, !dbg !2110
  %shl = shl i32 %size, 2, !dbg !2112
  %conv = zext i32 %shl to i64, !dbg !2113
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 0), align 8, !dbg !2114
  %call = tail call i64 @fwrite(i8* %0, i64 %conv, i64 1, %struct._IO_FILE* %1) #6, !dbg !2115
  %cmp = icmp eq i64 %call, 1, !dbg !2116
  br i1 %cmp, label %if.end, label %if.then, !dbg !2117

if.then:                                          ; preds = %entry
  store i32 1, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 5), align 8, !dbg !2118
  br label %if.end, !dbg !2119

if.end:                                           ; preds = %entry, %if.then
  %2 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 1), align 8, !dbg !2120
  %add = add i32 %2, %size, !dbg !2120
  store i32 %add, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 1), align 8, !dbg !2120
  %3 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 2), align 4, !dbg !2121
  %sub = sub i32 %3, %size, !dbg !2121
  store i32 %sub, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 2), align 4, !dbg !2121
  ret void, !dbg !2122
}

declare dso_local i32 @fclose(%struct._IO_FILE*) local_unnamed_addr #2

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gcov_magic(i32 %magic, i32 %expected) local_unnamed_addr #5 !dbg !2123 {
entry:
  call void @llvm.dbg.value(metadata i32 %magic, metadata !2127, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i32 %expected, metadata !2128, metadata !DIExpression()), !dbg !2129
  %cmp = icmp eq i32 %magic, %expected, !dbg !2130
  br i1 %cmp, label %return, label %if.end, !dbg !2132

if.end:                                           ; preds = %entry
  %or4 = tail call i32 @llvm.bswap.i32(i32 %magic), !dbg !2133
  call void @llvm.dbg.value(metadata i32 %or4, metadata !2127, metadata !DIExpression()), !dbg !2129
  %cmp5 = icmp eq i32 %or4, %expected, !dbg !2134
  br i1 %cmp5, label %if.then6, label %return, !dbg !2136

if.then6:                                         ; preds = %if.end
  store i32 1, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 7), align 8, !dbg !2137
  br label %return, !dbg !2139

return:                                           ; preds = %if.end, %entry, %if.then6
  %retval.0 = phi i32 [ -1, %if.then6 ], [ 1, %entry ], [ 0, %if.end ], !dbg !2129
  ret i32 %retval.0, !dbg !2140
}

; Function Attrs: nounwind uwtable
define dso_local void @gcov_write_unsigned(i32 %value) local_unnamed_addr #5 !dbg !2141 {
entry:
  call void @llvm.dbg.value(metadata i32 %value, metadata !2145, metadata !DIExpression()), !dbg !2147
  %call = tail call fastcc i32* @gcov_write_words(i32 1) #7, !dbg !2148
  call void @llvm.dbg.value(metadata i32* %call, metadata !2146, metadata !DIExpression()), !dbg !2147
  store i32 %value, i32* %call, align 4, !dbg !2149
  ret void, !dbg !2150
}

; Function Attrs: nounwind uwtable
define internal fastcc i32* @gcov_write_words(i32 %words) unnamed_addr #5 !dbg !2151 {
entry:
  call void @llvm.dbg.value(metadata i32 %words, metadata !2155, metadata !DIExpression()), !dbg !2157
  %0 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 6), align 4, !dbg !2158
  %cmp = icmp slt i32 %0, 0, !dbg !2158
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2158

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 235, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2158
  br label %cond.end, !dbg !2158

cond.end:                                         ; preds = %entry, %cond.true
  %1 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 2), align 4, !dbg !2159
  %add = add i32 %1, %words, !dbg !2161
  %conv = zext i32 %add to i64, !dbg !2162
  %2 = load i64, i64* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 8), align 8, !dbg !2163
  %cmp1 = icmp ult i64 %2, %conv, !dbg !2164
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2165

if.then:                                          ; preds = %cond.end
  tail call fastcc void @gcov_allocate(i32 %add) #7, !dbg !2166
  %.pre = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 2), align 4, !dbg !2167
  %.pre1 = add i32 %.pre, %words, !dbg !2168
  br label %if.end, !dbg !2166

if.end:                                           ; preds = %if.then, %cond.end
  %add4.pre-phi = phi i32 [ %.pre1, %if.then ], [ %add, %cond.end ], !dbg !2168
  %3 = phi i32 [ %.pre, %if.then ], [ %1, %cond.end ], !dbg !2167
  %4 = load i32*, i32** getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 9), align 8, !dbg !2169
  %idxprom = zext i32 %3 to i64, !dbg !2170
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom, !dbg !2170
  call void @llvm.dbg.value(metadata i32* %arrayidx, metadata !2156, metadata !DIExpression()), !dbg !2157
  store i32 %add4.pre-phi, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 2), align 4, !dbg !2168
  ret i32* %arrayidx, !dbg !2171
}

; Function Attrs: nounwind uwtable
define dso_local void @gcov_write_string(i8* %string) local_unnamed_addr #5 !dbg !2172 {
entry:
  call void @llvm.dbg.value(metadata i8* %string, metadata !2176, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i32 0, metadata !2177, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i32 0, metadata !2178, metadata !DIExpression()), !dbg !2180
  %tobool = icmp eq i8* %string, null, !dbg !2181
  br i1 %tobool, label %if.end, label %if.then, !dbg !2183

if.then:                                          ; preds = %entry
  %call = tail call i64 @strlen(i8* nonnull %string) #6, !dbg !2184
  %conv = trunc i64 %call to i32, !dbg !2184
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2177, metadata !DIExpression()), !dbg !2180
  %add = add i32 %conv, 4, !dbg !2186
  %shr = lshr i32 %add, 2, !dbg !2187
  call void @llvm.dbg.value(metadata i32 %shr, metadata !2178, metadata !DIExpression()), !dbg !2180
  %phitmp = and i64 %call, 4294967295, !dbg !2188
  br label %if.end, !dbg !2188

if.end:                                           ; preds = %entry, %if.then
  %length.0 = phi i64 [ %phitmp, %if.then ], [ 0, %entry ]
  %alloc.0 = phi i32 [ %shr, %if.then ], [ 0, %entry ], !dbg !2180
  call void @llvm.dbg.value(metadata i32 %alloc.0, metadata !2178, metadata !DIExpression()), !dbg !2180
  %add1 = add nuw nsw i32 %alloc.0, 1, !dbg !2189
  %call2 = tail call fastcc i32* @gcov_write_words(i32 %add1) #7, !dbg !2190
  call void @llvm.dbg.value(metadata i32* %call2, metadata !2179, metadata !DIExpression()), !dbg !2180
  store i32 %alloc.0, i32* %call2, align 4, !dbg !2191
  %idxprom = zext i32 %alloc.0 to i64, !dbg !2192
  %arrayidx3 = getelementptr inbounds i32, i32* %call2, i64 %idxprom, !dbg !2192
  store i32 0, i32* %arrayidx3, align 4, !dbg !2193
  %arrayidx4 = getelementptr inbounds i32, i32* %call2, i64 1, !dbg !2194
  %0 = bitcast i32* %arrayidx4 to i8*, !dbg !2195
  %call6 = tail call i8* @memcpy(i8* nonnull %0, i8* %string, i64 %length.0) #6, !dbg !2196
  ret void, !dbg !2197
}

declare dso_local i64 @strlen(i8*) local_unnamed_addr #2

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gcov_write_tag(i32 %tag) local_unnamed_addr #5 !dbg !2198 {
entry:
  call void @llvm.dbg.value(metadata i32 %tag, metadata !2202, metadata !DIExpression()), !dbg !2205
  %0 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 1), align 8, !dbg !2206
  %1 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 2), align 4, !dbg !2207
  %add = add i32 %0, %1, !dbg !2208
  call void @llvm.dbg.value(metadata i32 %add, metadata !2203, metadata !DIExpression()), !dbg !2205
  %call = tail call fastcc i32* @gcov_write_words(i32 2) #7, !dbg !2209
  call void @llvm.dbg.value(metadata i32* %call, metadata !2204, metadata !DIExpression()), !dbg !2205
  store i32 %tag, i32* %call, align 4, !dbg !2210
  %arrayidx1 = getelementptr inbounds i32, i32* %call, i64 1, !dbg !2211
  store i32 0, i32* %arrayidx1, align 4, !dbg !2212
  ret i32 %add, !dbg !2213
}

; Function Attrs: nounwind uwtable
define dso_local void @gcov_write_length(i32 %position) local_unnamed_addr #5 !dbg !2214 {
entry:
  call void @llvm.dbg.value(metadata i32 %position, metadata !2218, metadata !DIExpression()), !dbg !2222
  %0 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 6), align 4, !dbg !2223
  %cmp = icmp slt i32 %0, 0, !dbg !2223
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2223

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 337, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2223
  br label %cond.end, !dbg !2223

cond.end:                                         ; preds = %entry, %cond.true
  %add = add i32 %position, 2, !dbg !2224
  %1 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 1), align 8, !dbg !2224
  %2 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 2), align 4, !dbg !2224
  %add1 = add i32 %1, %2, !dbg !2224
  %cmp2 = icmp ugt i32 %add, %add1, !dbg !2224
  br i1 %cmp2, label %cond.true3, label %cond.end5, !dbg !2224

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 338, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2224
  %.pre = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 1), align 8, !dbg !2225
  br label %cond.end5, !dbg !2224

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %3 = phi i32 [ %1, %cond.end ], [ %.pre, %cond.true3 ], !dbg !2225
  %cmp7 = icmp ugt i32 %3, %position, !dbg !2225
  br i1 %cmp7, label %cond.true8, label %cond.end10, !dbg !2225

cond.true8:                                       ; preds = %cond.end5
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 339, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2225
  %.pre1 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 1), align 8, !dbg !2226
  br label %cond.end10, !dbg !2225

cond.end10:                                       ; preds = %cond.end5, %cond.true8
  %4 = phi i32 [ %3, %cond.end5 ], [ %.pre1, %cond.true8 ], !dbg !2226
  %sub = sub i32 %position, %4, !dbg !2227
  call void @llvm.dbg.value(metadata i32 %sub, metadata !2219, metadata !DIExpression()), !dbg !2222
  %5 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 2), align 4, !dbg !2228
  %sub12 = sub i32 %5, %sub, !dbg !2229
  %sub13 = add i32 %sub12, -2, !dbg !2230
  call void @llvm.dbg.value(metadata i32 %sub13, metadata !2220, metadata !DIExpression()), !dbg !2222
  %6 = load i32*, i32** getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 9), align 8, !dbg !2231
  %idxprom = zext i32 %sub to i64, !dbg !2232
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom, !dbg !2232
  call void @llvm.dbg.value(metadata i32* %arrayidx, metadata !2221, metadata !DIExpression()), !dbg !2222
  %arrayidx14 = getelementptr inbounds i32, i32* %arrayidx, i64 1, !dbg !2233
  store i32 %sub13, i32* %arrayidx14, align 4, !dbg !2234
  %7 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 2), align 4, !dbg !2235
  %cmp15 = icmp ugt i32 %7, 1023, !dbg !2237
  br i1 %cmp15, label %if.then, label %if.end, !dbg !2238

if.then:                                          ; preds = %cond.end10
  tail call fastcc void @gcov_write_block(i32 %7) #7, !dbg !2239
  br label %if.end, !dbg !2239

if.end:                                           ; preds = %if.then, %cond.end10
  ret void, !dbg !2240
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gcov_read_unsigned() local_unnamed_addr #5 !dbg !2241 {
entry:
  %call = tail call fastcc i32* @gcov_read_words(i32 1) #7, !dbg !2249
  call void @llvm.dbg.value(metadata i32* %call, metadata !2246, metadata !DIExpression()), !dbg !2250
  %tobool = icmp eq i32* %call, null, !dbg !2251
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2253

if.end:                                           ; preds = %entry
  %0 = load i32, i32* %call, align 4, !dbg !2254
  %call1 = tail call fastcc i32 @from_file(i32 %0) #7, !dbg !2255
  call void @llvm.dbg.value(metadata i32 %call1, metadata !2245, metadata !DIExpression()), !dbg !2250
  br label %cleanup, !dbg !2256

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry ], !dbg !2250
  ret i32 %retval.0, !dbg !2257
}

; Function Attrs: nounwind uwtable
define internal fastcc i32* @gcov_read_words(i32 %words) unnamed_addr #5 !dbg !2258 {
entry:
  call void @llvm.dbg.value(metadata i32 %words, metadata !2262, metadata !DIExpression()), !dbg !2265
  %0 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 3), align 8, !dbg !2266
  %1 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 2), align 4, !dbg !2267
  %sub = sub i32 %0, %1, !dbg !2268
  call void @llvm.dbg.value(metadata i32 %sub, metadata !2264, metadata !DIExpression()), !dbg !2265
  %2 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 6), align 4, !dbg !2269
  %cmp = icmp sgt i32 %2, 0, !dbg !2269
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2269

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 394, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2269
  br label %cond.end, !dbg !2269

cond.end:                                         ; preds = %entry, %cond.true
  %cmp1 = icmp ult i32 %sub, %words, !dbg !2270
  br i1 %cmp1, label %if.then, label %if.end23, !dbg !2272

if.then:                                          ; preds = %cond.end
  %3 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 2), align 4, !dbg !2273
  %4 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 1), align 8, !dbg !2275
  %add = add i32 %4, %3, !dbg !2275
  store i32 %add, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 1), align 8, !dbg !2275
  %5 = load i8*, i8** bitcast (i32** getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 9) to i8**), align 8, !dbg !2276
  %.cast = bitcast i8* %5 to i32*, !dbg !2277
  %idx.ext = zext i32 %3 to i64, !dbg !2278
  %add.ptr = getelementptr inbounds i32, i32* %.cast, i64 %idx.ext, !dbg !2278
  %6 = bitcast i32* %add.ptr to i8*, !dbg !2279
  %mul = shl i32 %sub, 2, !dbg !2280
  %conv = zext i32 %mul to i64, !dbg !2281
  %call = tail call i8* @memmove(i8* %5, i8* %6, i64 %conv) #6, !dbg !2282
  store i32 0, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 2), align 4, !dbg !2283
  store i32 %sub, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 3), align 8, !dbg !2284
  %add2 = add i32 %sub, %words, !dbg !2285
  %conv3 = zext i32 %add2 to i64, !dbg !2287
  %7 = load i64, i64* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 8), align 8, !dbg !2288
  %cmp4 = icmp ult i64 %7, %conv3, !dbg !2289
  br i1 %cmp4, label %if.then6, label %if.end, !dbg !2290

if.then6:                                         ; preds = %if.then
  tail call fastcc void @gcov_allocate(i32 %add2) #7, !dbg !2291
  %.pre = load i64, i64* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 8), align 8, !dbg !2292
  %.pre1 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 3), align 8, !dbg !2293
  br label %if.end, !dbg !2291

if.end:                                           ; preds = %if.then6, %if.then
  %8 = phi i32 [ %.pre1, %if.then6 ], [ %sub, %if.then ], !dbg !2293
  %9 = phi i64 [ %.pre, %if.then6 ], [ %7, %if.then ], !dbg !2292
  %10 = trunc i64 %9 to i32, !dbg !2294
  %conv10 = sub i32 %10, %8, !dbg !2294
  call void @llvm.dbg.value(metadata i32 %conv10, metadata !2264, metadata !DIExpression()), !dbg !2265
  %11 = load i32*, i32** getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 9), align 8, !dbg !2295
  %idx.ext11 = zext i32 %8 to i64, !dbg !2296
  %add.ptr12 = getelementptr inbounds i32, i32* %11, i64 %idx.ext11, !dbg !2296
  %12 = bitcast i32* %add.ptr12 to i8*, !dbg !2297
  %shl = shl i32 %conv10, 2, !dbg !2298
  %conv13 = zext i32 %shl to i64, !dbg !2299
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 0), align 8, !dbg !2300
  %call14 = tail call i64 @fread(i8* %12, i64 1, i64 %conv13, %struct._IO_FILE* %13) #6, !dbg !2301
  %shr = lshr i64 %call14, 2, !dbg !2302
  %conv15 = trunc i64 %shr to i32, !dbg !2301
  call void @llvm.dbg.value(metadata i32 %conv15, metadata !2264, metadata !DIExpression()), !dbg !2265
  %14 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 3), align 8, !dbg !2303
  %add16 = add i32 %14, %conv15, !dbg !2303
  store i32 %add16, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 3), align 8, !dbg !2303
  %cmp17 = icmp ult i32 %add16, %words, !dbg !2304
  br i1 %cmp17, label %if.then19, label %if.end23, !dbg !2306

if.then19:                                        ; preds = %if.end
  %sub20 = sub i32 %words, %add16, !dbg !2307
  %15 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 4), align 4, !dbg !2309
  %add21 = add i32 %15, %sub20, !dbg !2309
  store i32 %add21, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 4), align 4, !dbg !2309
  store i32 0, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 3), align 8, !dbg !2310
  br label %cleanup, !dbg !2311

if.end23:                                         ; preds = %if.end, %cond.end
  %16 = load i32*, i32** getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 9), align 8, !dbg !2312
  %17 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 2), align 4, !dbg !2313
  %idxprom = zext i32 %17 to i64, !dbg !2314
  %arrayidx = getelementptr inbounds i32, i32* %16, i64 %idxprom, !dbg !2314
  call void @llvm.dbg.value(metadata i32* %arrayidx, metadata !2263, metadata !DIExpression()), !dbg !2265
  %add24 = add i32 %17, %words, !dbg !2315
  store i32 %add24, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 2), align 4, !dbg !2315
  br label %cleanup, !dbg !2316

cleanup:                                          ; preds = %if.end23, %if.then19
  %retval.0 = phi i32* [ null, %if.then19 ], [ %arrayidx, %if.end23 ], !dbg !2265
  ret i32* %retval.0, !dbg !2317
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @from_file(i32 %value) unnamed_addr #0 !dbg !2318 {
entry:
  call void @llvm.dbg.value(metadata i32 %value, metadata !2322, metadata !DIExpression()), !dbg !2323
  %0 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 7), align 8, !dbg !2324
  %tobool = icmp eq i32 %0, 0, !dbg !2326
  br i1 %tobool, label %if.end, label %if.then, !dbg !2327

if.then:                                          ; preds = %entry
  %or4 = tail call i32 @llvm.bswap.i32(i32 %value), !dbg !2328
  call void @llvm.dbg.value(metadata i32 %or4, metadata !2322, metadata !DIExpression()), !dbg !2323
  br label %if.end, !dbg !2330

if.end:                                           ; preds = %entry, %if.then
  %value.addr.0 = phi i32 [ %or4, %if.then ], [ %value, %entry ]
  call void @llvm.dbg.value(metadata i32 %value.addr.0, metadata !2322, metadata !DIExpression()), !dbg !2323
  ret i32 %value.addr.0, !dbg !2331
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gcov_read_counter() local_unnamed_addr #5 !dbg !2332 {
entry:
  %call = tail call fastcc i32* @gcov_read_words(i32 2) #7, !dbg !2338
  call void @llvm.dbg.value(metadata i32* %call, metadata !2337, metadata !DIExpression()), !dbg !2339
  %tobool = icmp eq i32* %call, null, !dbg !2340
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2342

if.end:                                           ; preds = %entry
  %0 = load i32, i32* %call, align 4, !dbg !2343
  %call1 = tail call fastcc i32 @from_file(i32 %0) #7, !dbg !2344
  %conv = zext i32 %call1 to i64, !dbg !2344
  call void @llvm.dbg.value(metadata i64 %conv, metadata !2336, metadata !DIExpression()), !dbg !2339
  %arrayidx2 = getelementptr inbounds i32, i32* %call, i64 1, !dbg !2345
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !2345
  %call3 = tail call fastcc i32 @from_file(i32 %1) #7, !dbg !2347
  %conv4 = zext i32 %call3 to i64, !dbg !2348
  %shl = shl nuw i64 %conv4, 32, !dbg !2349
  %or = or i64 %shl, %conv, !dbg !2350
  call void @llvm.dbg.value(metadata i64 %or, metadata !2336, metadata !DIExpression()), !dbg !2339
  br label %cleanup, !dbg !2351

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %or, %if.end ], [ 0, %entry ], !dbg !2339
  ret i64 %retval.0, !dbg !2352
}

; Function Attrs: nounwind uwtable
define dso_local i8* @gcov_read_string() local_unnamed_addr #5 !dbg !2353 {
entry:
  %call = tail call i32 @gcov_read_unsigned() #7, !dbg !2358
  call void @llvm.dbg.value(metadata i32 %call, metadata !2357, metadata !DIExpression()), !dbg !2359
  %tobool = icmp eq i32 %call, 0, !dbg !2360
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2362

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32* @gcov_read_words(i32 %call) #7, !dbg !2363
  %0 = bitcast i32* %call1 to i8*, !dbg !2364
  br label %cleanup, !dbg !2365

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %0, %if.end ], [ null, %entry ], !dbg !2359
  ret i8* %retval.0, !dbg !2366
}

; Function Attrs: nounwind uwtable
define dso_local void @gcov_read_summary(%struct.gcov_summary* %summary) local_unnamed_addr #5 !dbg !2367 {
entry:
  call void @llvm.dbg.value(metadata %struct.gcov_summary* %summary, metadata !2377, metadata !DIExpression()), !dbg !2381
  %call = tail call i32 @gcov_read_unsigned() #7, !dbg !2382
  %checksum = getelementptr inbounds %struct.gcov_summary, %struct.gcov_summary* %summary, i64 0, i32 0, !dbg !2383
  store i32 %call, i32* %checksum, align 8, !dbg !2384
  %arraydecay = getelementptr inbounds %struct.gcov_summary, %struct.gcov_summary* %summary, i64 0, i32 1, i64 0, !dbg !2385
  call void @llvm.dbg.value(metadata %struct.gcov_ctr_summary* %arraydecay, metadata !2379, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i32 1, metadata !2378, metadata !DIExpression()), !dbg !2381
  br label %for.cond, !dbg !2387

for.cond:                                         ; preds = %for.body, %entry
  %ix.0 = phi i32 [ 1, %entry ], [ %dec, %for.body ], !dbg !2388
  %csum.0 = phi %struct.gcov_ctr_summary* [ %arraydecay, %entry ], [ %incdec.ptr, %for.body ], !dbg !2388
  call void @llvm.dbg.value(metadata %struct.gcov_ctr_summary* %csum.0, metadata !2379, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i32 %ix.0, metadata !2378, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i32 %ix.0, metadata !2378, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2381
  %tobool = icmp eq i32 %ix.0, 0, !dbg !2389
  br i1 %tobool, label %for.end, label %for.body, !dbg !2389

for.body:                                         ; preds = %for.cond
  %dec = add nsw i32 %ix.0, -1, !dbg !2390
  call void @llvm.dbg.value(metadata i32 %dec, metadata !2378, metadata !DIExpression()), !dbg !2381
  %call1 = tail call i32 @gcov_read_unsigned() #7, !dbg !2392
  %num = getelementptr inbounds %struct.gcov_ctr_summary, %struct.gcov_ctr_summary* %csum.0, i64 0, i32 0, !dbg !2394
  store i32 %call1, i32* %num, align 8, !dbg !2395
  %call2 = tail call i32 @gcov_read_unsigned() #7, !dbg !2396
  %runs = getelementptr inbounds %struct.gcov_ctr_summary, %struct.gcov_ctr_summary* %csum.0, i64 0, i32 1, !dbg !2397
  store i32 %call2, i32* %runs, align 4, !dbg !2398
  %call3 = tail call i64 @gcov_read_counter() #7, !dbg !2399
  %sum_all = getelementptr inbounds %struct.gcov_ctr_summary, %struct.gcov_ctr_summary* %csum.0, i64 0, i32 2, !dbg !2400
  store i64 %call3, i64* %sum_all, align 8, !dbg !2401
  %call4 = tail call i64 @gcov_read_counter() #7, !dbg !2402
  %run_max = getelementptr inbounds %struct.gcov_ctr_summary, %struct.gcov_ctr_summary* %csum.0, i64 0, i32 3, !dbg !2403
  store i64 %call4, i64* %run_max, align 8, !dbg !2404
  %call5 = tail call i64 @gcov_read_counter() #7, !dbg !2405
  %sum_max = getelementptr inbounds %struct.gcov_ctr_summary, %struct.gcov_ctr_summary* %csum.0, i64 0, i32 4, !dbg !2406
  store i64 %call5, i64* %sum_max, align 8, !dbg !2407
  %incdec.ptr = getelementptr inbounds %struct.gcov_ctr_summary, %struct.gcov_ctr_summary* %csum.0, i64 1, !dbg !2408
  call void @llvm.dbg.value(metadata %struct.gcov_ctr_summary* %incdec.ptr, metadata !2379, metadata !DIExpression()), !dbg !2381
  br label %for.cond, !dbg !2409, !llvm.loop !2410

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2412
}

; Function Attrs: nounwind uwtable
define dso_local void @gcov_sync(i32 %base, i32 %length) local_unnamed_addr #5 !dbg !2413 {
entry:
  call void @llvm.dbg.value(metadata i32 %base, metadata !2417, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i32 %length, metadata !2418, metadata !DIExpression()), !dbg !2419
  %0 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 6), align 4, !dbg !2420
  %cmp = icmp sgt i32 %0, 0, !dbg !2420
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2420

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 508, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2420
  br label %cond.end, !dbg !2420

cond.end:                                         ; preds = %entry, %cond.true
  %add = add i32 %base, %length, !dbg !2421
  call void @llvm.dbg.value(metadata i32 %add, metadata !2417, metadata !DIExpression()), !dbg !2419
  %1 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 1), align 8, !dbg !2422
  %sub = sub i32 %add, %1, !dbg !2424
  %2 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 3), align 8, !dbg !2425
  %cmp1 = icmp ugt i32 %sub, %2, !dbg !2426
  br i1 %cmp1, label %if.else, label %if.then, !dbg !2427

if.then:                                          ; preds = %cond.end
  store i32 %sub, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 2), align 4, !dbg !2428
  br label %if.end, !dbg !2429

if.else:                                          ; preds = %cond.end
  store i32 0, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 3), align 8, !dbg !2430
  store i32 0, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 2), align 4, !dbg !2432
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 0), align 8, !dbg !2433
  %shl = shl i32 %add, 2, !dbg !2434
  %conv = zext i32 %shl to i64, !dbg !2435
  %call = tail call i32 @fseek(%struct._IO_FILE* %3, i64 %conv, i32 0) #6, !dbg !2436
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 0), align 8, !dbg !2437
  %call3 = tail call i64 @ftell(%struct._IO_FILE* %4) #6, !dbg !2438
  %5 = lshr i64 %call3, 2, !dbg !2439
  %conv4 = trunc i64 %5 to i32, !dbg !2438
  store i32 %conv4, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 1), align 8, !dbg !2440
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2441
}

declare dso_local i32 @fseek(%struct._IO_FILE*, i64, i32) local_unnamed_addr #2

declare dso_local i64 @ftell(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @get_gcov_type() local_unnamed_addr #5 !dbg !2442 {
entry:
  %0 = load %union.tree_node* (i32, i32)*, %union.tree_node* (i32, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 34, i32 3), align 8, !dbg !2445
  %call = tail call %union.tree_node* %0(i32 64, i32 0) #6, !dbg !2446
  ret %union.tree_node* %call, !dbg !2447
}

; Function Attrs: nounwind uwtable
define dso_local i64* @get_coverage_counts(i32 %counter, i32 %expected, %struct.gcov_ctr_summary** %summary) local_unnamed_addr #5 !dbg !1496 {
entry:
  %elt = alloca %struct.counts_entry, align 8
  call void @llvm.dbg.value(metadata i32 %counter, metadata !1503, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 %expected, metadata !1504, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata %struct.gcov_ctr_summary** %summary, metadata !1505, metadata !DIExpression()), !dbg !2448
  %0 = bitcast %struct.counts_entry* %elt to i8*, !dbg !2449
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #8, !dbg !2449
  call void @llvm.dbg.value(metadata i32 -1, metadata !1508, metadata !DIExpression()), !dbg !2448
  %1 = load %struct.htab*, %struct.htab** @counts_hash, align 8, !dbg !2450
  %tobool = icmp eq %struct.htab* %1, null, !dbg !2450
  br i1 %tobool, label %if.then, label %if.end5, !dbg !2452

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @get_coverage_counts.warned, align 4, !dbg !2453
  %inc = add nsw i32 %2, 1, !dbg !2453
  store i32 %inc, i32* @get_coverage_counts.warned, align 4, !dbg !2453
  %tobool2 = icmp eq i32 %2, 0, !dbg !2453
  br i1 %tobool2, label %if.then3, label %cleanup, !dbg !2456

if.then3:                                         ; preds = %if.then
  %3 = load i32, i32* @input_location, align 4, !dbg !2457
  %4 = load i32, i32* @flag_guess_branch_prob, align 4, !dbg !2458
  %tobool4 = icmp eq i32 %4, 0, !dbg !2458
  %cond = select i1 %tobool4, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), !dbg !2458
  %5 = load i8*, i8** @da_file_name, align 8, !dbg !2459
  tail call void (i32, i8*, ...) @inform(i32 %3, i8* %cond, i8* %5) #6, !dbg !2460
  br label %cleanup, !dbg !2460

if.end5:                                          ; preds = %entry
  %6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2461
  %funcdef_no = getelementptr inbounds %struct.function, %struct.function* %6, i64 0, i32 14, !dbg !2461
  %7 = load i32, i32* %funcdef_no, align 4, !dbg !2461
  %add = add nsw i32 %7, 1, !dbg !2462
  %ident = getelementptr inbounds %struct.counts_entry, %struct.counts_entry* %elt, i64 0, i32 0, !dbg !2463
  store i32 %add, i32* %ident, align 8, !dbg !2464
  %ctr = getelementptr inbounds %struct.counts_entry, %struct.counts_entry* %elt, i64 0, i32 1, !dbg !2465
  store i32 %counter, i32* %ctr, align 4, !dbg !2466
  %call = call i8* @htab_find(%struct.htab* nonnull %1, i8* nonnull %0) #6, !dbg !2467
  call void @llvm.dbg.value(metadata i8* %call, metadata !1506, metadata !DIExpression()), !dbg !2448
  %tobool6 = icmp eq i8* %call, null, !dbg !2468
  br i1 %tobool6, label %if.then7, label %if.end10, !dbg !2470

if.then7:                                         ; preds = %if.end5
  %8 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !2471
  %call8 = call %union.tree_node* @decl_assembler_name(%union.tree_node* %8) #6, !dbg !2471
  %call9 = call zeroext i8 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), %union.tree_node* %call8) #6, !dbg !2473
  br label %cleanup, !dbg !2474

if.end10:                                         ; preds = %if.end5
  %call11 = call fastcc i32 @compute_checksum() #7, !dbg !2475
  call void @llvm.dbg.value(metadata i32 %call11, metadata !1508, metadata !DIExpression()), !dbg !2448
  %checksum12 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !2476
  %9 = bitcast i8* %checksum12 to i32*, !dbg !2476
  %10 = load i32, i32* %9, align 8, !dbg !2476
  %cmp = icmp eq i32 %10, %call11, !dbg !2477
  br i1 %cmp, label %lor.lhs.false, label %if.then15, !dbg !2478

lor.lhs.false:                                    ; preds = %if.end10
  %summary13 = getelementptr inbounds i8, i8* %call, i64 24, !dbg !2479
  %num = bitcast i8* %summary13 to i32*, !dbg !2480
  %11 = load i32, i32* %num, align 8, !dbg !2480
  %cmp14 = icmp eq i32 %11, %expected, !dbg !2481
  br i1 %cmp14, label %if.end46, label %if.then15, !dbg !2482

if.then15:                                        ; preds = %lor.lhs.false, %if.end10
  %12 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !2483
  %call16 = call %union.tree_node* @decl_assembler_name(%union.tree_node* %12) #6, !dbg !2483
  call void @llvm.dbg.value(metadata %union.tree_node* %call16, metadata !1509, metadata !DIExpression()), !dbg !2484
  %13 = load i32, i32* @warn_coverage_mismatch, align 4, !dbg !2485
  %tobool17 = icmp eq i32 %13, 0, !dbg !2485
  %idxprom = zext i32 %counter to i64, !dbg !2487
  %arrayidx = getelementptr inbounds [8 x i8*], [8 x i8*]* @ctr_names, i64 0, i64 %idxprom, !dbg !2487
  %14 = load i8*, i8** %arrayidx, align 8, !dbg !2487
  br i1 %tobool17, label %if.else, label %if.then18, !dbg !2488

if.then18:                                        ; preds = %if.then15
  %call19 = call zeroext i8 (i32, i8*, ...) @warning(i32 63, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0), %union.tree_node* %call16, i8* %14) #6, !dbg !2489
  br label %if.end22, !dbg !2489

if.else:                                          ; preds = %if.then15
  call void (i8*, ...) @error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0), %union.tree_node* %call16, i8* %14) #6, !dbg !2490
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then18
  %15 = load i32, i32* @inhibit_warnings, align 4, !dbg !2491
  %tobool23 = icmp eq i32 %15, 0, !dbg !2491
  br i1 %tobool23, label %if.then24, label %if.end33, !dbg !2493

if.then24:                                        ; preds = %if.end22
  %16 = load i32, i32* %9, align 8, !dbg !2494
  %cmp26 = icmp eq i32 %16, %call11, !dbg !2497
  %17 = load i32, i32* @input_location, align 4, !dbg !2498
  br i1 %cmp26, label %if.else29, label %if.then27, !dbg !2499

if.then27:                                        ; preds = %if.then24
  call void (i32, i8*, ...) @inform(i32 %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %16, i32 %call11) #6, !dbg !2500
  br label %if.end33, !dbg !2500

if.else29:                                        ; preds = %if.then24
  %summary30 = getelementptr inbounds i8, i8* %call, i64 24, !dbg !2501
  %num31 = bitcast i8* %summary30 to i32*, !dbg !2502
  %18 = load i32, i32* %num31, align 8, !dbg !2502
  call void (i32, i8*, ...) @inform(i32 %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i32 %18, i32 %expected) #6, !dbg !2503
  br label %if.end33

if.end33:                                         ; preds = %if.end22, %if.then27, %if.else29
  %19 = load i32, i32* @warn_coverage_mismatch, align 4, !dbg !2504
  %tobool34 = icmp eq i32 %19, 0, !dbg !2504
  %20 = load i32, i32* @inhibit_warnings, align 4, !dbg !2506
  %tobool35 = icmp ne i32 %20, 0, !dbg !2506
  %or.cond = or i1 %tobool34, %tobool35, !dbg !2507
  br i1 %or.cond, label %cleanup, label %land.lhs.true36, !dbg !2507

land.lhs.true36:                                  ; preds = %if.end33
  %21 = load i32, i32* @get_coverage_counts.warned.8, align 4, !dbg !2508
  %inc37 = add nsw i32 %21, 1, !dbg !2508
  store i32 %inc37, i32* @get_coverage_counts.warned.8, align 4, !dbg !2508
  %tobool38 = icmp eq i32 %21, 0, !dbg !2508
  br i1 %tobool38, label %if.then39, label %cleanup, !dbg !2509

if.then39:                                        ; preds = %land.lhs.true36
  %22 = load i32, i32* @input_location, align 4, !dbg !2510
  call void (i32, i8*, ...) @inform(i32 %22, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !2512
  %23 = load i32, i32* @input_location, align 4, !dbg !2513
  %24 = load i32, i32* @flag_guess_branch_prob, align 4, !dbg !2514
  %tobool40 = icmp eq i32 %24, 0, !dbg !2514
  %cond41 = select i1 %tobool40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), !dbg !2514
  call void (i32, i8*, ...) @inform(i32 %23, i8* %cond41) #6, !dbg !2515
  %25 = load i32, i32* @flag_guess_branch_prob, align 4, !dbg !2516
  %tobool42 = icmp eq i32 %25, 0, !dbg !2516
  br i1 %tobool42, label %if.then43, label %cleanup, !dbg !2518

if.then43:                                        ; preds = %if.then39
  %26 = load i32, i32* @input_location, align 4, !dbg !2519
  call void (i32, i8*, ...) @inform(i32 %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !2520
  br label %cleanup, !dbg !2520

if.end46:                                         ; preds = %lor.lhs.false
  %tobool47 = icmp eq %struct.gcov_ctr_summary** %summary, null, !dbg !2521
  br i1 %tobool47, label %if.end50, label %if.then48, !dbg !2523

if.then48:                                        ; preds = %if.end46
  %27 = bitcast %struct.gcov_ctr_summary** %summary to i8**, !dbg !2524
  store i8* %summary13, i8** %27, align 8, !dbg !2524
  br label %if.end50, !dbg !2525

if.end50:                                         ; preds = %if.end46, %if.then48
  %counts = getelementptr inbounds i8, i8* %call, i64 16, !dbg !2526
  %28 = bitcast i8* %counts to i64**, !dbg !2526
  %29 = load i64*, i64** %28, align 8, !dbg !2526
  br label %cleanup, !dbg !2527

cleanup:                                          ; preds = %if.then39, %land.lhs.true36, %if.then, %if.end33, %if.then43, %if.then3, %if.end50, %if.then7
  %retval.0 = phi i64* [ %29, %if.end50 ], [ null, %if.then7 ], [ null, %if.then3 ], [ null, %if.then ], [ null, %if.then39 ], [ null, %if.then43 ], [ null, %if.end33 ], [ null, %land.lhs.true36 ], !dbg !2448
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #8, !dbg !2528
  ret i64* %retval.0, !dbg !2528
}

declare dso_local void @inform(i32, i8*, ...) local_unnamed_addr #2

declare dso_local i8* @htab_find(%struct.htab*, i8*) local_unnamed_addr #2

declare dso_local zeroext i8 @warning(i32, i8*, ...) local_unnamed_addr #2

declare dso_local %union.tree_node* @decl_assembler_name(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @compute_checksum() unnamed_addr #5 !dbg !2529 {
entry:
  %xloc = alloca %struct.expanded_location, align 8
  %0 = bitcast %struct.expanded_location* %xloc to i8*, !dbg !2542
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2542
  %1 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** bitcast (%union.tree_node** @current_function_decl to %struct.tree_decl_minimal**), align 8, !dbg !2543
  %locus = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %1, i64 0, i32 1, !dbg !2543
  %2 = load i32, i32* %locus, align 8, !dbg !2543
  call void @llvm.dbg.value(metadata %struct.expanded_location* %xloc, metadata !2533, metadata !DIExpression(DW_OP_deref)), !dbg !2544
  call void @expand_location(%struct.expanded_location* nonnull sret %xloc, i32 %2) #6, !dbg !2545
  %line = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %xloc, i64 0, i32 1, !dbg !2546
  %3 = load i32, i32* %line, align 8, !dbg !2546
  call void @llvm.dbg.value(metadata i32 %3, metadata !2541, metadata !DIExpression()), !dbg !2544
  %file = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %xloc, i64 0, i32 0, !dbg !2547
  %4 = load i8*, i8** %file, align 8, !dbg !2547
  %call = call fastcc i32 @coverage_checksum_string(i32 %3, i8* %4) #7, !dbg !2548
  call void @llvm.dbg.value(metadata i32 %call, metadata !2541, metadata !DIExpression()), !dbg !2544
  %5 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !2549
  %call1 = call %union.tree_node* @decl_assembler_name(%union.tree_node* %5) #6, !dbg !2549
  %id = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2549
  %str = bitcast i32* %id to i8**, !dbg !2549
  %6 = load i8*, i8** %str, align 8, !dbg !2549
  %call2 = call fastcc i32 @coverage_checksum_string(i32 %call, i8* %6) #7, !dbg !2550
  call void @llvm.dbg.value(metadata i32 %call2, metadata !2541, metadata !DIExpression()), !dbg !2544
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2551
  ret i32 %call2, !dbg !2552
}

declare dso_local void @error(i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @coverage_counter_alloc(i32 %counter, i32 %num) local_unnamed_addr #5 !dbg !2553 {
entry:
  %buf = alloca [20 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %counter, metadata !2557, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i32 %num, metadata !2558, metadata !DIExpression()), !dbg !2564
  %.b = load i1, i1* @no_coverage, align 4, !dbg !2565
  br i1 %.b, label %return, label %if.end, !dbg !2567

if.end:                                           ; preds = %entry
  %tobool1 = icmp eq i32 %num, 0, !dbg !2568
  br i1 %tobool1, label %return, label %if.end3, !dbg !2570

if.end3:                                          ; preds = %if.end
  %idxprom = zext i32 %counter to i64, !dbg !2571
  %arrayidx = getelementptr inbounds [8 x %union.tree_node*], [8 x %union.tree_node*]* @tree_ctr_tables, i64 0, i64 %idxprom, !dbg !2571
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2571
  %tobool4 = icmp eq %union.tree_node* %0, null, !dbg !2571
  br i1 %tobool4, label %if.then5, label %if.end24, !dbg !2572

if.then5:                                         ; preds = %if.end3
  %1 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i64 0, i64 0, !dbg !2573
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %1) #8, !dbg !2573
  call void @llvm.dbg.declare(metadata [20 x i8]* %buf, metadata !2559, metadata !DIExpression()), !dbg !2574
  %call = tail call %union.tree_node* @get_gcov_type() #7, !dbg !2575
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2562, metadata !DIExpression()), !dbg !2576
  %call6 = tail call %union.tree_node* @build_array_type(%union.tree_node* %call, %union.tree_node* null) #6, !dbg !2577
  call void @llvm.dbg.value(metadata %union.tree_node* %call6, metadata !2563, metadata !DIExpression()), !dbg !2576
  %call7 = tail call %union.tree_node* @build_decl_stat(i32 1, i32 32, %union.tree_node* null, %union.tree_node* %call6) #6, !dbg !2578
  store %union.tree_node* %call7, %union.tree_node** %arrayidx, align 8, !dbg !2579
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %call7, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2580
  %bf.load = load i64, i64* %2, align 8, !dbg !2581
  %bf.set = or i64 %bf.load, 67108864, !dbg !2581
  store i64 %bf.set, i64* %2, align 8, !dbg !2581
  %add = add i32 %counter, 1, !dbg !2582
  %call12 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 %add) #6, !dbg !2582
  %call14 = call %union.tree_node* @get_identifier(i8* nonnull %1) #6, !dbg !2584
  %3 = bitcast %union.tree_node** %arrayidx to %struct.tree_decl_minimal**, !dbg !2585
  %4 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %3, align 8, !dbg !2585
  %name = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %4, i64 0, i32 3, !dbg !2585
  store %union.tree_node* %call14, %union.tree_node** %name, align 8, !dbg !2586
  %5 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2587
  %6 = load i32, i32* %5, align 8, !dbg !2587
  %7 = bitcast %union.tree_node** %arrayidx to %struct.tree_decl_common**, !dbg !2588
  %8 = load %struct.tree_decl_common*, %struct.tree_decl_common** %7, align 8, !dbg !2588
  %align19 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %8, i64 0, i32 3, !dbg !2588
  store i32 %6, i32* %align19, align 8, !dbg !2589
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2590
  %tobool20 = icmp eq %struct._IO_FILE* %9, null, !dbg !2590
  br i1 %tobool20, label %if.end23, label %if.then21, !dbg !2592

if.then21:                                        ; preds = %if.then5
  %10 = load i8*, i8** @da_file_name, align 8, !dbg !2593
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i8* %10) #6, !dbg !2594
  br label %if.end23, !dbg !2594

if.end23:                                         ; preds = %if.then5, %if.then21
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %1) #8, !dbg !2595
  br label %if.end24, !dbg !2596

if.end24:                                         ; preds = %if.end3, %if.end23
  %arrayidx26 = getelementptr inbounds [8 x i32], [8 x i32]* @fn_n_ctrs, i64 0, i64 %idxprom, !dbg !2597
  %11 = load i32, i32* %arrayidx26, align 4, !dbg !2597
  %arrayidx28 = getelementptr inbounds [8 x i32], [8 x i32]* @fn_b_ctrs, i64 0, i64 %idxprom, !dbg !2598
  store i32 %11, i32* %arrayidx28, align 4, !dbg !2599
  %add31 = add i32 %11, %num, !dbg !2600
  store i32 %add31, i32* %arrayidx26, align 4, !dbg !2600
  %shl = shl i32 1, %counter, !dbg !2601
  %12 = load i32, i32* @fn_ctr_mask, align 4, !dbg !2602
  %or = or i32 %12, %shl, !dbg !2602
  store i32 %or, i32* @fn_ctr_mask, align 4, !dbg !2602
  br label %return, !dbg !2603

return:                                           ; preds = %entry, %if.end, %if.end24
  %retval.0 = phi i32 [ 1, %if.end24 ], [ 0, %entry ], [ 1, %if.end ], !dbg !2564
  ret i32 %retval.0, !dbg !2604
}

declare dso_local %union.tree_node* @build_array_type(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_decl_stat(i32, i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #2

declare dso_local %union.tree_node* @get_identifier(i8*) local_unnamed_addr #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @tree_coverage_counter_ref(i32 %counter, i32 %no) local_unnamed_addr #5 !dbg !2605 {
entry:
  call void @llvm.dbg.value(metadata i32 %counter, metadata !2609, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i32 %no, metadata !2610, metadata !DIExpression()), !dbg !2612
  %call = tail call %union.tree_node* @get_gcov_type() #7, !dbg !2613
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2611, metadata !DIExpression()), !dbg !2612
  %idxprom = zext i32 %counter to i64, !dbg !2614
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @fn_n_ctrs, i64 0, i64 %idxprom, !dbg !2614
  %0 = load i32, i32* %arrayidx, align 4, !dbg !2614
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* @fn_b_ctrs, i64 0, i64 %idxprom, !dbg !2614
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !2614
  %sub = sub i32 %0, %1, !dbg !2614
  %cmp = icmp ugt i32 %sub, %no, !dbg !2614
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2614

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i32 444, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2614
  %.pre = load i32, i32* %arrayidx2, align 4, !dbg !2615
  br label %cond.end, !dbg !2614

cond.end:                                         ; preds = %entry, %cond.true
  %2 = phi i32 [ %1, %entry ], [ %.pre, %cond.true ], !dbg !2615
  %arrayidx4 = getelementptr inbounds [8 x i32], [8 x i32]* @prg_n_ctrs, i64 0, i64 %idxprom, !dbg !2616
  %3 = load i32, i32* %arrayidx4, align 4, !dbg !2616
  %add = add i32 %3, %2, !dbg !2617
  %add7 = add i32 %add, %no, !dbg !2618
  call void @llvm.dbg.value(metadata i32 %add7, metadata !2610, metadata !DIExpression()), !dbg !2612
  %arrayidx9 = getelementptr inbounds [8 x %union.tree_node*], [8 x %union.tree_node*]* @tree_ctr_tables, i64 0, i64 %idxprom, !dbg !2619
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx9, align 8, !dbg !2619
  %conv = zext i32 %add7 to i64, !dbg !2619
  %call10 = tail call %union.tree_node* @build_int_cst(%union.tree_node* null, i64 %conv) #6, !dbg !2619
  %call11 = tail call %union.tree_node* @build4_stat(i32 45, %union.tree_node* %call, %union.tree_node* %4, %union.tree_node* %call10, %union.tree_node* null, %union.tree_node* null) #6, !dbg !2619
  ret %union.tree_node* %call11, !dbg !2620
}

declare dso_local %union.tree_node* @build4_stat(i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_int_cst(%union.tree_node*, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @tree_coverage_counter_addr(i32 %counter, i32 %no) local_unnamed_addr #5 !dbg !2621 {
entry:
  call void @llvm.dbg.value(metadata i32 %counter, metadata !2623, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i32 %no, metadata !2624, metadata !DIExpression()), !dbg !2626
  %call = tail call %union.tree_node* @get_gcov_type() #7, !dbg !2627
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2625, metadata !DIExpression()), !dbg !2626
  %idxprom = zext i32 %counter to i64, !dbg !2628
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @fn_n_ctrs, i64 0, i64 %idxprom, !dbg !2628
  %0 = load i32, i32* %arrayidx, align 4, !dbg !2628
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* @fn_b_ctrs, i64 0, i64 %idxprom, !dbg !2628
  %1 = load i32, i32* %arrayidx2, align 4, !dbg !2628
  %sub = sub i32 %0, %1, !dbg !2628
  %cmp = icmp ugt i32 %sub, %no, !dbg !2628
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2628

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i32 459, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2628
  %.pre = load i32, i32* %arrayidx2, align 4, !dbg !2629
  br label %cond.end, !dbg !2628

cond.end:                                         ; preds = %entry, %cond.true
  %2 = phi i32 [ %1, %entry ], [ %.pre, %cond.true ], !dbg !2629
  %arrayidx4 = getelementptr inbounds [8 x i32], [8 x i32]* @prg_n_ctrs, i64 0, i64 %idxprom, !dbg !2630
  %3 = load i32, i32* %arrayidx4, align 4, !dbg !2630
  %add = add i32 %3, %2, !dbg !2631
  %add7 = add i32 %add, %no, !dbg !2632
  call void @llvm.dbg.value(metadata i32 %add7, metadata !2624, metadata !DIExpression()), !dbg !2626
  %arrayidx9 = getelementptr inbounds [8 x %union.tree_node*], [8 x %union.tree_node*]* @tree_ctr_tables, i64 0, i64 %idxprom, !dbg !2633
  %4 = bitcast %union.tree_node** %arrayidx9 to i64**, !dbg !2633
  %5 = load i64*, i64** %4, align 8, !dbg !2633
  %bf.load = load i64, i64* %5, align 8, !dbg !2634
  %bf.set = or i64 %bf.load, 262144, !dbg !2634
  store i64 %bf.set, i64* %5, align 8, !dbg !2634
  %6 = load %union.tree_node*, %union.tree_node** %arrayidx9, align 8, !dbg !2635
  %conv = zext i32 %add7 to i64, !dbg !2635
  %call12 = tail call %union.tree_node* @build_int_cst(%union.tree_node* null, i64 %conv) #6, !dbg !2635
  %call13 = tail call %union.tree_node* @build4_stat(i32 45, %union.tree_node* %call, %union.tree_node* %6, %union.tree_node* %call12, %union.tree_node* null, %union.tree_node* null) #6, !dbg !2635
  %call14 = tail call %union.tree_node* @build_fold_addr_expr_loc(i32 0, %union.tree_node* %call13) #6, !dbg !2635
  ret %union.tree_node* %call14, !dbg !2636
}

declare dso_local %union.tree_node* @build_fold_addr_expr_loc(i32, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @coverage_begin_output() local_unnamed_addr #5 !dbg !2637 {
entry:
  %xloc = alloca %struct.expanded_location, align 8
  %.b = load i1, i1* @no_coverage, align 4, !dbg !2643
  %0 = zext i1 %.b to i32, !dbg !2643
  %1 = load i32, i32* @flag_test_coverage, align 4, !dbg !2645
  %tobool1 = icmp eq i32 %1, 0, !dbg !2645
  %2 = load i32, i32* @flag_compare_debug, align 4, !dbg !2646
  %3 = or i32 %2, %0, !dbg !2647
  %4 = icmp ne i32 %3, 0, !dbg !2647
  %5 = or i1 %4, %tobool1, !dbg !2647
  br i1 %5, label %return, label %if.end, !dbg !2647

if.end:                                           ; preds = %entry
  %.b2 = load i1, i1* @bbg_function_announced, align 4, !dbg !2648
  br i1 %.b2, label %if.end16, label %if.then5, !dbg !2649

if.then5:                                         ; preds = %if.end
  %6 = bitcast %struct.expanded_location* %xloc to i8*, !dbg !2650
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #8, !dbg !2650
  %7 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** bitcast (%union.tree_node** @current_function_decl to %struct.tree_decl_minimal**), align 8, !dbg !2651
  %locus = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %7, i64 0, i32 1, !dbg !2651
  %8 = load i32, i32* %locus, align 8, !dbg !2651
  call void @llvm.dbg.value(metadata %struct.expanded_location* %xloc, metadata !2639, metadata !DIExpression(DW_OP_deref)), !dbg !2652
  call void @expand_location(%struct.expanded_location* nonnull sret %xloc, i32 %8) #6, !dbg !2653
  %9 = load i32, i32* @bbg_file_opened, align 4, !dbg !2654
  %tobool6 = icmp eq i32 %9, 0, !dbg !2654
  br i1 %tobool6, label %if.then7, label %if.end11, !dbg !2656

if.then7:                                         ; preds = %if.then5
  %10 = load i8*, i8** @bbg_file_name, align 8, !dbg !2657
  %call = call i32 @gcov_open(i8* %10, i32 -1) #7, !dbg !2660
  %tobool8 = icmp eq i32 %call, 0, !dbg !2660
  br i1 %tobool8, label %if.then9, label %if.else, !dbg !2661

if.then9:                                         ; preds = %if.then7
  %11 = load i8*, i8** @bbg_file_name, align 8, !dbg !2662
  call void (i8*, ...) @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* %11) #6, !dbg !2663
  br label %if.end10, !dbg !2663

if.else:                                          ; preds = %if.then7
  call void @gcov_write_unsigned(i32 1734569583) #7, !dbg !2664
  call void @gcov_write_unsigned(i32 875574570) #7, !dbg !2666
  %12 = load i32, i32* @local_tick, align 4, !dbg !2667
  call void @gcov_write_unsigned(i32 %12) #7, !dbg !2668
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then9
  store i32 1, i32* @bbg_file_opened, align 4, !dbg !2669
  br label %if.end11, !dbg !2670

if.end11:                                         ; preds = %if.then5, %if.end10
  %call12 = call i32 @gcov_write_tag(i32 16777216) #7, !dbg !2671
  call void @llvm.dbg.value(metadata i32 %call12, metadata !2642, metadata !DIExpression()), !dbg !2652
  %13 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2672
  %funcdef_no = getelementptr inbounds %struct.function, %struct.function* %13, i64 0, i32 14, !dbg !2672
  %14 = load i32, i32* %funcdef_no, align 4, !dbg !2672
  %add = add nsw i32 %14, 1, !dbg !2673
  call void @gcov_write_unsigned(i32 %add) #7, !dbg !2674
  %call13 = call fastcc i32 @compute_checksum() #7, !dbg !2675
  call void @gcov_write_unsigned(i32 %call13) #7, !dbg !2676
  %15 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !2677
  %call14 = call %union.tree_node* @decl_assembler_name(%union.tree_node* %15) #6, !dbg !2677
  %id = getelementptr inbounds %union.tree_node, %union.tree_node* %call14, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2677
  %str = bitcast i32* %id to i8**, !dbg !2677
  %16 = load i8*, i8** %str, align 8, !dbg !2677
  call void @gcov_write_string(i8* %16) #7, !dbg !2678
  %file = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %xloc, i64 0, i32 0, !dbg !2679
  %17 = load i8*, i8** %file, align 8, !dbg !2679
  call void @gcov_write_string(i8* %17) #7, !dbg !2680
  %line = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %xloc, i64 0, i32 1, !dbg !2681
  %18 = load i32, i32* %line, align 8, !dbg !2681
  call void @gcov_write_unsigned(i32 %18) #7, !dbg !2682
  call void @gcov_write_length(i32 %call12) #7, !dbg !2683
  store i1 true, i1* @bbg_function_announced, align 4, !dbg !2684
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #8, !dbg !2685
  br label %if.end16, !dbg !2686

if.end16:                                         ; preds = %if.end, %if.end11
  %call17 = call fastcc i32 @gcov_is_error() #7, !dbg !2687
  %tobool18 = icmp eq i32 %call17, 0, !dbg !2688
  %lnot.ext = zext i1 %tobool18 to i32, !dbg !2688
  br label %return, !dbg !2689

return:                                           ; preds = %entry, %if.end16
  %retval.0 = phi i32 [ %lnot.ext, %if.end16 ], [ 0, %entry ], !dbg !2690
  ret i32 %retval.0, !dbg !2691
}

declare dso_local void @expand_location(%struct.expanded_location* sret, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gcov_is_error() unnamed_addr #0 !dbg !2692 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 0), align 8, !dbg !2693
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !2694
  %1 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 5), align 8, !dbg !2694
  %cond = select i1 %tobool, i32 1, i32 %1, !dbg !2694
  ret i32 %cond, !dbg !2695
}

; Function Attrs: nounwind uwtable
define dso_local void @coverage_end_function() local_unnamed_addr #5 !dbg !2696 {
entry:
  %0 = load i32, i32* @bbg_file_opened, align 4, !dbg !2704
  %cmp = icmp ugt i32 %0, 1, !dbg !2706
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2707

land.lhs.true:                                    ; preds = %entry
  %call = tail call fastcc i32 @gcov_is_error() #7, !dbg !2708
  %tobool = icmp eq i32 %call, 0, !dbg !2708
  br i1 %tobool, label %if.end, label %if.then, !dbg !2709

if.then:                                          ; preds = %land.lhs.true
  %1 = load i8*, i8** @bbg_file_name, align 8, !dbg !2710
  %call1 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i8* %1) #6, !dbg !2712
  store i32 -1, i32* @bbg_file_opened, align 4, !dbg !2713
  br label %if.end, !dbg !2714

if.end:                                           ; preds = %land.lhs.true, %if.then, %entry
  %2 = load i32, i32* @fn_ctr_mask, align 4, !dbg !2715
  %tobool2 = icmp eq i32 %2, 0, !dbg !2715
  br i1 %tobool2, label %if.end19, label %if.then3, !dbg !2716

if.then3:                                         ; preds = %if.end
  %call4 = tail call i8* @xmalloc(i64 48) #6, !dbg !2717
  call void @llvm.dbg.value(metadata i8* %call4, metadata !2701, metadata !DIExpression()), !dbg !2718
  %3 = load i8**, i8*** bitcast (%struct.function_list*** @functions_tail to i8***), align 8, !dbg !2719
  store i8* %call4, i8** %3, align 8, !dbg !2720
  store i8* %call4, i8** bitcast (%struct.function_list*** @functions_tail to i8**), align 8, !dbg !2721
  %next5 = bitcast i8* %call4 to %struct.function_list**, !dbg !2722
  store %struct.function_list* null, %struct.function_list** %next5, align 8, !dbg !2723
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2724
  %funcdef_no = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 14, !dbg !2724
  %5 = load i32, i32* %funcdef_no, align 4, !dbg !2724
  %add = add nsw i32 %5, 1, !dbg !2725
  %ident = getelementptr inbounds i8, i8* %call4, i64 8, !dbg !2726
  %6 = bitcast i8* %ident to i32*, !dbg !2726
  store i32 %add, i32* %6, align 8, !dbg !2727
  %call6 = tail call fastcc i32 @compute_checksum() #7, !dbg !2728
  %checksum = getelementptr inbounds i8, i8* %call4, i64 12, !dbg !2729
  %7 = bitcast i8* %checksum to i32*, !dbg !2729
  store i32 %call6, i32* %7, align 4, !dbg !2730
  call void @llvm.dbg.value(metadata i32 0, metadata !2700, metadata !DIExpression()), !dbg !2731
  %n_ctrs = getelementptr inbounds i8, i8* %call4, i64 16, !dbg !2732
  %8 = bitcast i8* %n_ctrs to [8 x i32]*, !dbg !2732
  br label %for.cond, !dbg !2736

for.cond:                                         ; preds = %for.body, %if.then3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then3 ], !dbg !2737
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2700, metadata !DIExpression()), !dbg !2731
  %cmp7 = icmp eq i64 %indvars.iv, 8, !dbg !2738
  br i1 %cmp7, label %for.end, label %for.body, !dbg !2739

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @fn_n_ctrs, i64 0, i64 %indvars.iv, !dbg !2740
  %9 = load i32, i32* %arrayidx, align 4, !dbg !2740
  %arrayidx9 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %indvars.iv, !dbg !2741
  store i32 %9, i32* %arrayidx9, align 4, !dbg !2742
  %10 = load i32, i32* %arrayidx, align 4, !dbg !2743
  %arrayidx13 = getelementptr inbounds [8 x i32], [8 x i32]* @prg_n_ctrs, i64 0, i64 %indvars.iv, !dbg !2744
  %11 = load i32, i32* %arrayidx13, align 4, !dbg !2745
  %add14 = add i32 %11, %10, !dbg !2745
  store i32 %add14, i32* %arrayidx13, align 4, !dbg !2745
  %arrayidx16 = getelementptr inbounds [8 x i32], [8 x i32]* @fn_b_ctrs, i64 0, i64 %indvars.iv, !dbg !2746
  store i32 0, i32* %arrayidx16, align 4, !dbg !2747
  store i32 0, i32* %arrayidx, align 4, !dbg !2748
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2749
  call void @llvm.dbg.value(metadata i32 undef, metadata !2700, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2731
  br label %for.cond, !dbg !2750, !llvm.loop !2751

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* @fn_ctr_mask, align 4, !dbg !2753
  %13 = load i32, i32* @prg_ctr_mask, align 4, !dbg !2754
  %or = or i32 %13, %12, !dbg !2754
  store i32 %or, i32* @prg_ctr_mask, align 4, !dbg !2754
  store i32 0, i32* @fn_ctr_mask, align 4, !dbg !2755
  br label %if.end19, !dbg !2756

if.end19:                                         ; preds = %if.end, %for.end
  store i1 false, i1* @bbg_function_announced, align 4, !dbg !2757
  ret void, !dbg !2758
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @coverage_init(i8* %filename) local_unnamed_addr #5 !dbg !2759 {
entry:
  call void @llvm.dbg.value(metadata i8* %filename, metadata !2761, metadata !DIExpression()), !dbg !2764
  %call = tail call i64 @strlen(i8* %filename) #6, !dbg !2765
  %0 = load i8*, i8** @profile_data_prefix, align 8, !dbg !2766
  %cmp = icmp eq i8* %0, null, !dbg !2768
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2769

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* %filename, align 1, !dbg !2770
  %cmp3 = icmp eq i8 %1, 47, !dbg !2771
  br i1 %cmp3, label %if.end, label %if.then, !dbg !2772

if.then:                                          ; preds = %land.lhs.true
  %call5 = tail call i8* @getpwd() #6, !dbg !2773
  store i8* %call5, i8** @profile_data_prefix, align 8, !dbg !2774
  br label %if.end, !dbg !2775

if.end:                                           ; preds = %land.lhs.true, %if.then, %entry
  %2 = phi i8* [ null, %land.lhs.true ], [ %call5, %if.then ], [ %0, %entry ], !dbg !2776
  %tobool = icmp eq i8* %2, null, !dbg !2777
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2777

cond.true:                                        ; preds = %if.end
  %call6 = tail call i64 @strlen(i8* nonnull %2) #6, !dbg !2778
  %3 = trunc i64 %call6 to i32, !dbg !2777
  %phitmp = add i32 %3, 1, !dbg !2777
  br label %cond.end, !dbg !2777

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi i32 [ %phitmp, %cond.true ], [ 0, %if.end ]
  call void @llvm.dbg.value(metadata i32 %cond, metadata !2763, metadata !DIExpression()), !dbg !2764
  %sext = shl i64 %call, 32, !dbg !2779
  %conv8 = ashr exact i64 %sext, 32, !dbg !2779
  %call9 = tail call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !2779
  %add10 = add i64 %conv8, %call9, !dbg !2779
  %conv11 = sext i32 %cond to i64, !dbg !2779
  %add12 = add i64 %add10, %conv11, !dbg !2779
  %add13 = add i64 %add12, 1, !dbg !2779
  %call14 = tail call i8* @xmalloc(i64 %add13) #6, !dbg !2779
  store i8* %call14, i8** @da_file_name, align 8, !dbg !2780
  %4 = load i8*, i8** @profile_data_prefix, align 8, !dbg !2781
  %tobool15 = icmp eq i8* %4, null, !dbg !2781
  br i1 %tobool15, label %if.else, label %if.then16, !dbg !2783

if.then16:                                        ; preds = %cond.end
  %call17 = tail call i8* @strcpy(i8* %call14, i8* nonnull %4) #6, !dbg !2784
  %5 = load i8*, i8** @da_file_name, align 8, !dbg !2786
  %sub = add nsw i32 %cond, -1, !dbg !2787
  %idxprom = sext i32 %sub to i64, !dbg !2786
  %arrayidx18 = getelementptr inbounds i8, i8* %5, i64 %idxprom, !dbg !2786
  store i8 47, i8* %arrayidx18, align 1, !dbg !2788
  %6 = load i8*, i8** @da_file_name, align 8, !dbg !2789
  %arrayidx20 = getelementptr inbounds i8, i8* %6, i64 %conv11, !dbg !2789
  store i8 0, i8* %arrayidx20, align 1, !dbg !2790
  br label %if.end22, !dbg !2791

if.else:                                          ; preds = %cond.end
  store i8 0, i8* %call14, align 1, !dbg !2792
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then16
  %7 = load i8*, i8** @da_file_name, align 8, !dbg !2793
  %call23 = tail call i8* @strcat(i8* %7, i8* %filename) #6, !dbg !2794
  %8 = load i8*, i8** @da_file_name, align 8, !dbg !2795
  %call24 = tail call i8* @strcat(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !2796
  %call26 = tail call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0)) #6, !dbg !2797
  %add27 = add i64 %conv8, %call26, !dbg !2797
  %add28 = add i64 %add27, 1, !dbg !2797
  %call30 = tail call i8* @xmalloc(i64 %add28) #6, !dbg !2797
  store i8* %call30, i8** @bbg_file_name, align 8, !dbg !2798
  %call31 = tail call i8* @strcpy(i8* %call30, i8* %filename) #6, !dbg !2799
  %9 = load i8*, i8** @bbg_file_name, align 8, !dbg !2800
  %call32 = tail call i8* @strcat(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0)) #6, !dbg !2801
  %10 = load i32, i32* @flag_profile_use, align 4, !dbg !2802
  %tobool33 = icmp eq i32 %10, 0, !dbg !2802
  br i1 %tobool33, label %if.end35, label %if.then34, !dbg !2804

if.then34:                                        ; preds = %if.end22
  tail call fastcc void @read_counts_file() #7, !dbg !2805
  br label %if.end35, !dbg !2805

if.end35:                                         ; preds = %if.end22, %if.then34
  ret void, !dbg !2806
}

declare dso_local i8* @getpwd() local_unnamed_addr #2

declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #2

declare dso_local i8* @strcat(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @read_counts_file() unnamed_addr #5 !dbg !2807 {
entry:
  %v = alloca [4 x i8], align 1
  %e = alloca [4 x i8], align 1
  %summary = alloca %struct.gcov_summary, align 8
  %elt = alloca %struct.counts_entry, align 8
  call void @llvm.dbg.value(metadata i32 0, metadata !2809, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i32 -1, metadata !2810, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata %struct.counts_entry* null, metadata !2811, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i32 0, metadata !2812, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i32 0, metadata !2814, metadata !DIExpression()), !dbg !2845
  %0 = load i8*, i8** @da_file_name, align 8, !dbg !2846
  %call = tail call i32 @gcov_open(i8* %0, i32 1) #7, !dbg !2848
  %tobool = icmp eq i32 %call, 0, !dbg !2848
  br i1 %tobool, label %cleanup.cont171, label %if.end, !dbg !2849

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @gcov_read_unsigned() #7, !dbg !2850
  %call2 = tail call i32 @gcov_magic(i32 %call1, i32 1734567009) #7, !dbg !2851
  %tobool3 = icmp eq i32 %call2, 0, !dbg !2851
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !2852

if.then4:                                         ; preds = %if.end
  %1 = load i8*, i8** @da_file_name, align 8, !dbg !2853
  %call5 = tail call zeroext i8 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.34, i64 0, i64 0), i8* %1) #6, !dbg !2855
  %call6 = tail call i32 @gcov_close() #7, !dbg !2856
  br label %cleanup.cont171, !dbg !2857

if.else:                                          ; preds = %if.end
  %call7 = tail call i32 @gcov_read_unsigned() #7, !dbg !2858
  call void @llvm.dbg.value(metadata i32 %call7, metadata !2813, metadata !DIExpression()), !dbg !2845
  %cmp = icmp eq i32 %call7, 875574570, !dbg !2859
  br i1 %cmp, label %if.end26, label %if.then8, !dbg !2860

if.then8:                                         ; preds = %if.else
  %2 = getelementptr inbounds [4 x i8], [4 x i8]* %v, i64 0, i64 0, !dbg !2861
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #8, !dbg !2861
  call void @llvm.dbg.declare(metadata [4 x i8]* %v, metadata !2815, metadata !DIExpression()), !dbg !2862
  %3 = getelementptr inbounds [4 x i8], [4 x i8]* %e, i64 0, i64 0, !dbg !2861
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #8, !dbg !2861
  call void @llvm.dbg.declare(metadata [4 x i8]* %e, metadata !2819, metadata !DIExpression()), !dbg !2863
  %shr = lshr i32 %call7, 24, !dbg !2864
  %conv = trunc i32 %shr to i8, !dbg !2864
  store i8 %conv, i8* %2, align 1, !dbg !2864
  %shr9 = lshr i32 %call7, 16, !dbg !2864
  %conv10 = trunc i32 %shr9 to i8, !dbg !2864
  %arrayidx11 = getelementptr inbounds [4 x i8], [4 x i8]* %v, i64 0, i64 1, !dbg !2864
  store i8 %conv10, i8* %arrayidx11, align 1, !dbg !2864
  %shr12 = lshr i32 %call7, 8, !dbg !2864
  %conv13 = trunc i32 %shr12 to i8, !dbg !2864
  %arrayidx14 = getelementptr inbounds [4 x i8], [4 x i8]* %v, i64 0, i64 2, !dbg !2864
  store i8 %conv13, i8* %arrayidx14, align 1, !dbg !2864
  %conv16 = trunc i32 %call7 to i8, !dbg !2864
  %arrayidx17 = getelementptr inbounds [4 x i8], [4 x i8]* %v, i64 0, i64 3, !dbg !2864
  store i8 %conv16, i8* %arrayidx17, align 1, !dbg !2864
  store i8 52, i8* %3, align 1, !dbg !2865
  %arrayidx19 = getelementptr inbounds [4 x i8], [4 x i8]* %e, i64 0, i64 1, !dbg !2865
  store i8 48, i8* %arrayidx19, align 1, !dbg !2865
  %arrayidx20 = getelementptr inbounds [4 x i8], [4 x i8]* %e, i64 0, i64 2, !dbg !2865
  store i8 53, i8* %arrayidx20, align 1, !dbg !2865
  %arrayidx21 = getelementptr inbounds [4 x i8], [4 x i8]* %e, i64 0, i64 3, !dbg !2865
  store i8 42, i8* %arrayidx21, align 1, !dbg !2865
  %4 = load i8*, i8** @da_file_name, align 8, !dbg !2866
  %call23 = call zeroext i8 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.35, i64 0, i64 0), i8* %4, i32 4, i8* nonnull %2, i32 4, i8* nonnull %3) #6, !dbg !2867
  %call24 = call i32 @gcov_close() #7, !dbg !2868
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #8, !dbg !2869
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #8, !dbg !2869
  br label %cleanup.cont171

if.end26:                                         ; preds = %if.else
  %call27 = tail call i32 @gcov_read_unsigned() #7, !dbg !2870
  %call28 = tail call %struct.htab* @htab_create(i64 10, i32 (i8*)* nonnull @htab_counts_entry_hash, i32 (i8*, i8*)* nonnull @htab_counts_entry_eq, void (i8*)* nonnull @htab_counts_entry_del) #6, !dbg !2871
  store %struct.htab* %call28, %struct.htab** @counts_hash, align 8, !dbg !2872
  %5 = bitcast %struct.gcov_summary* %summary to i8*, !dbg !2873
  %6 = bitcast %struct.counts_entry* %elt to i8*, !dbg !2874
  %ident = getelementptr inbounds %struct.counts_entry, %struct.counts_entry* %elt, i64 0, i32 0, !dbg !2874
  %ctr85 = getelementptr inbounds %struct.counts_entry, %struct.counts_entry* %elt, i64 0, i32 1, !dbg !2874
  br label %while.cond, !dbg !2875

while.cond:                                       ; preds = %cleanup159, %if.end26
  %seen_summary.0 = phi i32 [ 0, %if.end26 ], [ %seen_summary.4, %cleanup159 ], !dbg !2845
  %summaried.0 = phi %struct.counts_entry* [ null, %if.end26 ], [ %summaried.8, %cleanup159 ], !dbg !2845
  %checksum.0 = phi i32 [ -1, %if.end26 ], [ %checksum.2, %cleanup159 ], !dbg !2845
  %fn_ident.0 = phi i32 [ 0, %if.end26 ], [ %fn_ident.2, %cleanup159 ], !dbg !2845
  call void @llvm.dbg.value(metadata i32 %fn_ident.0, metadata !2809, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i32 %checksum.0, metadata !2810, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata %struct.counts_entry* %summaried.0, metadata !2811, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i32 %seen_summary.0, metadata !2812, metadata !DIExpression()), !dbg !2845
  %call29 = call i32 @gcov_read_unsigned() #7, !dbg !2876
  call void @llvm.dbg.value(metadata i32 %call29, metadata !2813, metadata !DIExpression()), !dbg !2845
  %tobool30 = icmp eq i32 %call29, 0, !dbg !2875
  br i1 %tobool30, label %while.end, label %while.body, !dbg !2875

while.body:                                       ; preds = %while.cond
  %call31 = call i32 @gcov_read_unsigned() #7, !dbg !2877
  call void @llvm.dbg.value(metadata i32 %call31, metadata !2820, metadata !DIExpression()), !dbg !2878
  %call32 = call fastcc i32 @gcov_position() #7, !dbg !2879
  call void @llvm.dbg.value(metadata i32 %call32, metadata !2822, metadata !DIExpression()), !dbg !2878
  switch i32 %call29, label %if.else74 [
    i32 16777216, label %if.then35
    i32 -1560281088, label %if.then48
  ], !dbg !2880

if.then35:                                        ; preds = %while.body
  %call36 = call i32 @gcov_read_unsigned() #7, !dbg !2881
  call void @llvm.dbg.value(metadata i32 %call36, metadata !2809, metadata !DIExpression()), !dbg !2845
  %call37 = call i32 @gcov_read_unsigned() #7, !dbg !2882
  call void @llvm.dbg.value(metadata i32 %call37, metadata !2810, metadata !DIExpression()), !dbg !2845
  %tobool38 = icmp eq i32 %seen_summary.0, 0, !dbg !2883
  br i1 %tobool38, label %if.end152, label %for.cond.preheader, !dbg !2884

for.cond.preheader:                               ; preds = %if.then35
  br label %for.cond, !dbg !2885

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %entry40.0 = phi %struct.counts_entry* [ %7, %for.body ], [ %summaried.0, %for.cond.preheader ], !dbg !2887
  call void @llvm.dbg.value(metadata %struct.counts_entry* %entry40.0, metadata !2823, metadata !DIExpression()), !dbg !2888
  %tobool41 = icmp eq %struct.counts_entry* %entry40.0, null, !dbg !2885
  br i1 %tobool41, label %if.end152.loopexit, label %for.body, !dbg !2885

for.body:                                         ; preds = %for.cond
  %chain42 = getelementptr inbounds %struct.counts_entry, %struct.counts_entry* %entry40.0, i64 0, i32 5, !dbg !2889
  %7 = load %struct.counts_entry*, %struct.counts_entry** %chain42, align 8, !dbg !2889
  call void @llvm.dbg.value(metadata %struct.counts_entry* %7, metadata !2828, metadata !DIExpression()), !dbg !2888
  store %struct.counts_entry* null, %struct.counts_entry** %chain42, align 8, !dbg !2892
  call void @llvm.dbg.value(metadata %struct.counts_entry* %7, metadata !2823, metadata !DIExpression()), !dbg !2888
  br label %for.cond, !dbg !2893, !llvm.loop !2894

if.then48:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #8, !dbg !2896
  call void @llvm.dbg.value(metadata %struct.gcov_summary* %summary, metadata !2832, metadata !DIExpression(DW_OP_deref)), !dbg !2873
  call void @gcov_read_summary(%struct.gcov_summary* nonnull %summary) #7, !dbg !2897
  call void @llvm.dbg.value(metadata i32 1, metadata !2812, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata %struct.counts_entry* %summaried.0, metadata !2829, metadata !DIExpression()), !dbg !2873
  br label %for.cond50, !dbg !2898

for.cond50:                                       ; preds = %if.end67, %if.then48
  %entry49.0 = phi %struct.counts_entry* [ %summaried.0, %if.then48 ], [ %17, %if.end67 ], !dbg !2899
  call void @llvm.dbg.value(metadata %struct.counts_entry* %entry49.0, metadata !2829, metadata !DIExpression()), !dbg !2873
  %tobool51 = icmp eq %struct.counts_entry* %entry49.0, null, !dbg !2900
  br i1 %tobool51, label %for.end73, label %for.body52, !dbg !2900

for.body52:                                       ; preds = %for.cond50
  %ctr = getelementptr inbounds %struct.counts_entry, %struct.counts_entry* %entry49.0, i64 0, i32 1, !dbg !2901
  %8 = load i32, i32* %ctr, align 4, !dbg !2901
  %idxprom = zext i32 %8 to i64, !dbg !2902
  call void @llvm.dbg.value(metadata %struct.gcov_ctr_summary* undef, metadata !2833, metadata !DIExpression()), !dbg !2903
  %runs = getelementptr inbounds %struct.gcov_summary, %struct.gcov_summary* %summary, i64 0, i32 1, i64 %idxprom, i32 1, !dbg !2904
  %9 = load i32, i32* %runs, align 4, !dbg !2904
  %runs55 = getelementptr inbounds %struct.counts_entry, %struct.counts_entry* %entry49.0, i64 0, i32 4, i32 1, !dbg !2905
  %10 = load i32, i32* %runs55, align 4, !dbg !2906
  %add = add i32 %10, %9, !dbg !2906
  store i32 %add, i32* %runs55, align 4, !dbg !2906
  %sum_all = getelementptr inbounds %struct.gcov_summary, %struct.gcov_summary* %summary, i64 0, i32 1, i64 %idxprom, i32 2, !dbg !2907
  %11 = load i64, i64* %sum_all, align 8, !dbg !2907
  %sum_all57 = getelementptr inbounds %struct.counts_entry, %struct.counts_entry* %entry49.0, i64 0, i32 4, i32 2, !dbg !2908
  %12 = load i64, i64* %sum_all57, align 8, !dbg !2909
  %add58 = add nsw i64 %12, %11, !dbg !2909
  store i64 %add58, i64* %sum_all57, align 8, !dbg !2909
  %run_max = getelementptr inbounds %struct.counts_entry, %struct.counts_entry* %entry49.0, i64 0, i32 4, i32 3, !dbg !2910
  %13 = load i64, i64* %run_max, align 8, !dbg !2910
  %run_max60 = getelementptr inbounds %struct.gcov_summary, %struct.gcov_summary* %summary, i64 0, i32 1, i64 %idxprom, i32 3, !dbg !2912
  %14 = load i64, i64* %run_max60, align 8, !dbg !2912
  %cmp61 = icmp slt i64 %13, %14, !dbg !2913
  br i1 %cmp61, label %if.then63, label %if.end67, !dbg !2914

if.then63:                                        ; preds = %for.body52
  store i64 %14, i64* %run_max, align 8, !dbg !2915
  br label %if.end67, !dbg !2916

if.end67:                                         ; preds = %if.then63, %for.body52
  %sum_max = getelementptr inbounds %struct.gcov_summary, %struct.gcov_summary* %summary, i64 0, i32 1, i64 %idxprom, i32 4, !dbg !2917
  %15 = load i64, i64* %sum_max, align 8, !dbg !2917
  %sum_max69 = getelementptr inbounds %struct.counts_entry, %struct.counts_entry* %entry49.0, i64 0, i32 4, i32 4, !dbg !2918
  %16 = load i64, i64* %sum_max69, align 8, !dbg !2919
  %add70 = add nsw i64 %16, %15, !dbg !2919
  store i64 %add70, i64* %sum_max69, align 8, !dbg !2919
  %chain72 = getelementptr inbounds %struct.counts_entry, %struct.counts_entry* %entry49.0, i64 0, i32 5, !dbg !2920
  %17 = load %struct.counts_entry*, %struct.counts_entry** %chain72, align 8, !dbg !2920
  call void @llvm.dbg.value(metadata %struct.counts_entry* %17, metadata !2829, metadata !DIExpression()), !dbg !2873
  br label %for.cond50, !dbg !2921, !llvm.loop !2922

for.end73:                                        ; preds = %for.cond50
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #8, !dbg !2924
  br label %if.end152, !dbg !2925

if.else74:                                        ; preds = %while.body
  %and = and i32 %call29, 65535, !dbg !2926
  %tobool75 = icmp eq i32 %and, 0, !dbg !2926
  br i1 %tobool75, label %land.lhs.true, label %if.end152, !dbg !2926

land.lhs.true:                                    ; preds = %if.else74
  %sub = add i32 %call29, -27328512, !dbg !2926
  %cmp77 = icmp ult i32 %sub, 1048576, !dbg !2926
  %tobool80 = icmp ne i32 %fn_ident.0, 0, !dbg !2927
  %or.cond = and i1 %cmp77, %tobool80, !dbg !2928
  br i1 %or.cond, label %if.then81, label %if.end152, !dbg !2928

if.then81:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %6) #8, !dbg !2929
  %div = lshr i32 %call31, 1, !dbg !2930
  call void @llvm.dbg.value(metadata i32 %div, metadata !2842, metadata !DIExpression()), !dbg !2874
  store i32 %fn_ident.0, i32* %ident, align 8, !dbg !2931
  %shr84 = lshr i32 %sub, 17, !dbg !2932
  store i32 %shr84, i32* %ctr85, align 4, !dbg !2933
  %18 = load %struct.htab*, %struct.htab** @counts_hash, align 8, !dbg !2934
  %call86 = call i8** @htab_find_slot(%struct.htab* %18, i8* nonnull %6, i32 1) #6, !dbg !2935
  %19 = bitcast i8** %call86 to %struct.counts_entry**, !dbg !2936
  call void @llvm.dbg.value(metadata %struct.counts_entry** %19, metadata !2837, metadata !DIExpression()), !dbg !2874
  %20 = load %struct.counts_entry*, %struct.counts_entry** %19, align 8, !dbg !2937
  call void @llvm.dbg.value(metadata %struct.counts_entry* %20, metadata !2840, metadata !DIExpression()), !dbg !2874
  %tobool87 = icmp eq %struct.counts_entry* %20, null, !dbg !2938
  br i1 %tobool87, label %if.then88, label %if.else98, !dbg !2940

if.then88:                                        ; preds = %if.then81
  %call89 = call i8* @xcalloc(i64 1, i64 64) #6, !dbg !2941
  %21 = bitcast i8* %call89 to %struct.counts_entry*, !dbg !2941
  call void @llvm.dbg.value(metadata %struct.counts_entry* %21, metadata !2840, metadata !DIExpression()), !dbg !2874
  store i8* %call89, i8** %call86, align 8, !dbg !2943
  %22 = load i32, i32* %ident, align 8, !dbg !2944
  %ident91 = bitcast i8* %call89 to i32*, !dbg !2945
  store i32 %22, i32* %ident91, align 8, !dbg !2946
  %23 = load i32, i32* %ctr85, align 4, !dbg !2947
  %ctr93 = getelementptr inbounds i8, i8* %call89, i64 4, !dbg !2948
  %24 = bitcast i8* %ctr93 to i32*, !dbg !2948
  store i32 %23, i32* %24, align 4, !dbg !2949
  %checksum94 = getelementptr inbounds i8, i8* %call89, i64 8, !dbg !2950
  %25 = bitcast i8* %checksum94 to i32*, !dbg !2950
  store i32 %checksum.0, i32* %25, align 8, !dbg !2951
  %summary95 = getelementptr inbounds i8, i8* %call89, i64 24, !dbg !2952
  %num = bitcast i8* %summary95 to i32*, !dbg !2953
  store i32 %div, i32* %num, align 8, !dbg !2954
  %conv96 = zext i32 %div to i64, !dbg !2955
  %call97 = call i8* @xcalloc(i64 %conv96, i64 8) #6, !dbg !2955
  %counts = getelementptr inbounds i8, i8* %call89, i64 16, !dbg !2956
  %26 = bitcast i8* %counts to i8**, !dbg !2957
  store i8* %call97, i8** %26, align 8, !dbg !2957
  %.pre = load i32, i32* %ctr85, align 4, !dbg !2958
  br label %if.end123, !dbg !2960

if.else98:                                        ; preds = %if.then81
  %checksum99 = getelementptr inbounds %struct.counts_entry, %struct.counts_entry* %20, i64 0, i32 2, !dbg !2961
  %27 = load i32, i32* %checksum99, align 8, !dbg !2961
  %cmp100 = icmp eq i32 %27, %checksum.0, !dbg !2963
  br i1 %cmp100, label %if.else104, label %if.then102, !dbg !2964

if.then102:                                       ; preds = %if.else98
  call void (i8*, ...) @error(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.36, i64 0, i64 0), i32 %fn_ident.0) #6, !dbg !2965
  %28 = load i32, i32* %checksum99, align 8, !dbg !2967
  call void (i8*, ...) @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %28, i32 %checksum.0) #6, !dbg !2968
  %29 = load %struct.htab*, %struct.htab** @counts_hash, align 8, !dbg !2969
  call void @htab_delete(%struct.htab* %29) #6, !dbg !2970
  br label %cleanup, !dbg !2971

if.else104:                                       ; preds = %if.else98
  %num106 = getelementptr inbounds %struct.counts_entry, %struct.counts_entry* %20, i64 0, i32 4, i32 0, !dbg !2972
  %30 = load i32, i32* %num106, align 8, !dbg !2972
  %cmp107 = icmp eq i32 %30, %div, !dbg !2974
  br i1 %cmp107, label %if.else112, label %if.then109, !dbg !2975

if.then109:                                       ; preds = %if.else104
  call void (i8*, ...) @error(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.36, i64 0, i64 0), i32 %fn_ident.0) #6, !dbg !2976
  %31 = load i32, i32* %num106, align 8, !dbg !2978
  call void (i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i32 %31, i32 %div) #6, !dbg !2979
  %32 = load %struct.htab*, %struct.htab** @counts_hash, align 8, !dbg !2980
  call void @htab_delete(%struct.htab* %32) #6, !dbg !2981
  br label %cleanup, !dbg !2982

if.else112:                                       ; preds = %if.else104
  %33 = load i32, i32* %ctr85, align 4, !dbg !2983
  %cmp114 = icmp eq i32 %33, 0, !dbg !2985
  br i1 %cmp114, label %if.end123, label %if.then116, !dbg !2986

if.then116:                                       ; preds = %if.else112
  %idxprom118 = zext i32 %33 to i64, !dbg !2987
  %arrayidx119 = getelementptr inbounds [8 x i8*], [8 x i8*]* @ctr_names, i64 0, i64 %idxprom118, !dbg !2987
  %34 = load i8*, i8** %arrayidx119, align 8, !dbg !2987
  call void (i8*, ...) @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.37, i64 0, i64 0), i8* %34, i32 %fn_ident.0) #6, !dbg !2989
  br label %cleanup, !dbg !2990

if.end123:                                        ; preds = %if.else112, %if.then88
  %35 = phi i32 [ %.pre, %if.then88 ], [ 0, %if.else112 ], !dbg !2958
  %entry82.0 = phi %struct.counts_entry* [ %21, %if.then88 ], [ %20, %if.else112 ], !dbg !2874
  call void @llvm.dbg.value(metadata %struct.counts_entry* %entry82.0, metadata !2840, metadata !DIExpression()), !dbg !2874
  %cmp125 = icmp eq i32 %35, 0, !dbg !2991
  br i1 %cmp125, label %land.lhs.true127, label %if.end134, !dbg !2992

land.lhs.true127:                                 ; preds = %if.end123
  %chain128 = getelementptr inbounds %struct.counts_entry, %struct.counts_entry* %entry82.0, i64 0, i32 5, !dbg !2993
  %36 = load %struct.counts_entry*, %struct.counts_entry** %chain128, align 8, !dbg !2993
  %tobool129 = icmp eq %struct.counts_entry* %36, null, !dbg !2994
  %cmp130 = icmp ne %struct.counts_entry* %summaried.0, %entry82.0, !dbg !2995
  %or.cond2 = or i1 %tobool129, %cmp130, !dbg !2996
  br i1 %or.cond2, label %if.then132, label %if.end134, !dbg !2996

if.then132:                                       ; preds = %land.lhs.true127
  store %struct.counts_entry* %summaried.0, %struct.counts_entry** %chain128, align 8, !dbg !2997
  call void @llvm.dbg.value(metadata %struct.counts_entry* %entry82.0, metadata !2811, metadata !DIExpression()), !dbg !2845
  br label %if.end134, !dbg !2999

if.end134:                                        ; preds = %land.lhs.true127, %if.then132, %if.end123
  %summaried.2 = phi %struct.counts_entry* [ %entry82.0, %if.then132 ], [ %summaried.0, %if.end123 ], [ %summaried.0, %land.lhs.true127 ], !dbg !2845
  call void @llvm.dbg.value(metadata %struct.counts_entry* %summaried.2, metadata !2811, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i32 0, metadata !2843, metadata !DIExpression()), !dbg !2874
  %counts140 = getelementptr inbounds %struct.counts_entry, %struct.counts_entry* %entry82.0, i64 0, i32 3, !dbg !3000
  %37 = zext i32 %div to i64, !dbg !3003
  br label %for.cond135, !dbg !3003

for.cond135:                                      ; preds = %for.body138, %if.end134
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body138 ], [ 0, %if.end134 ], !dbg !3004
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2843, metadata !DIExpression()), !dbg !2874
  %cmp136 = icmp eq i64 %indvars.iv, %37, !dbg !3005
  br i1 %cmp136, label %cleanup.loopexit, label %for.body138, !dbg !3006

for.body138:                                      ; preds = %for.cond135
  %call139 = call i64 @gcov_read_counter() #7, !dbg !3007
  %38 = load i64*, i64** %counts140, align 8, !dbg !3008
  %arrayidx142 = getelementptr inbounds i64, i64* %38, i64 %indvars.iv, !dbg !3009
  %39 = load i64, i64* %arrayidx142, align 8, !dbg !3010
  %add143 = add nsw i64 %39, %call139, !dbg !3010
  store i64 %add143, i64* %arrayidx142, align 8, !dbg !3010
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3011
  call void @llvm.dbg.value(metadata i32 undef, metadata !2843, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2874
  br label %for.cond135, !dbg !3012, !llvm.loop !3013

cleanup.loopexit:                                 ; preds = %for.cond135
  br label %cleanup, !dbg !3015

cleanup:                                          ; preds = %cleanup.loopexit, %if.then116, %if.then109, %if.then102
  %cleanup.dest.slot.0 = phi i32 [ 3, %if.then102 ], [ 3, %if.then109 ], [ 0, %if.then116 ], [ 0, %cleanup.loopexit ]
  %summaried.4 = phi %struct.counts_entry* [ %summaried.0, %if.then102 ], [ %summaried.0, %if.then109 ], [ %summaried.0, %if.then116 ], [ %summaried.2, %cleanup.loopexit ], !dbg !3016
  call void @llvm.dbg.value(metadata %struct.counts_entry* %summaried.4, metadata !2811, metadata !DIExpression()), !dbg !2845
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %6) #8, !dbg !3015
  %cond1 = icmp eq i32 %cleanup.dest.slot.0, 0
  br i1 %cond1, label %if.end152, label %cleanup159

if.end152.loopexit:                               ; preds = %for.cond
  br label %if.end152, !dbg !3017

if.end152:                                        ; preds = %if.end152.loopexit, %if.else74, %if.then35, %for.end73, %cleanup, %land.lhs.true
  %seen_summary.3 = phi i32 [ 0, %if.then35 ], [ 1, %for.end73 ], [ %seen_summary.0, %cleanup ], [ %seen_summary.0, %land.lhs.true ], [ %seen_summary.0, %if.else74 ], [ 0, %if.end152.loopexit ], !dbg !3018
  %summaried.7 = phi %struct.counts_entry* [ %summaried.0, %if.then35 ], [ %summaried.0, %for.end73 ], [ %summaried.4, %cleanup ], [ %summaried.0, %land.lhs.true ], [ %summaried.0, %if.else74 ], [ null, %if.end152.loopexit ], !dbg !2845
  %checksum.1 = phi i32 [ %call37, %if.then35 ], [ %checksum.0, %for.end73 ], [ %checksum.0, %cleanup ], [ %checksum.0, %land.lhs.true ], [ %checksum.0, %if.else74 ], [ %call37, %if.end152.loopexit ], !dbg !2845
  %fn_ident.1 = phi i32 [ %call36, %if.then35 ], [ %fn_ident.0, %for.end73 ], [ %fn_ident.0, %cleanup ], [ %fn_ident.0, %land.lhs.true ], [ %fn_ident.0, %if.else74 ], [ %call36, %if.end152.loopexit ], !dbg !2845
  call void @llvm.dbg.value(metadata i32 %fn_ident.1, metadata !2809, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i32 %checksum.1, metadata !2810, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata %struct.counts_entry* %summaried.7, metadata !2811, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i32 %seen_summary.3, metadata !2812, metadata !DIExpression()), !dbg !2845
  call void @gcov_sync(i32 %call32, i32 %call31) #7, !dbg !3017
  %call153 = call fastcc i32 @gcov_is_error() #7, !dbg !3019
  call void @llvm.dbg.value(metadata i32 %call153, metadata !2814, metadata !DIExpression()), !dbg !2845
  %tobool154 = icmp eq i32 %call153, 0, !dbg !3021
  br i1 %tobool154, label %cleanup159, label %if.then155, !dbg !3022

if.then155:                                       ; preds = %if.end152
  %cmp156 = icmp slt i32 %call153, 0, !dbg !3023
  %cond = select i1 %cmp156, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i64 0, i64 0), !dbg !3025
  %40 = load i8*, i8** @da_file_name, align 8, !dbg !3026
  call void (i8*, ...) @error(i8* %cond, i8* %40) #6, !dbg !3027
  %41 = load %struct.htab*, %struct.htab** @counts_hash, align 8, !dbg !3028
  call void @htab_delete(%struct.htab* %41) #6, !dbg !3029
  br label %cleanup159, !dbg !3030

cleanup159:                                       ; preds = %if.end152, %cleanup, %if.then155
  %cleanup.dest.slot.1 = phi i32 [ 3, %if.then155 ], [ %cleanup.dest.slot.0, %cleanup ], [ 0, %if.end152 ]
  %seen_summary.4 = phi i32 [ %seen_summary.3, %if.then155 ], [ %seen_summary.0, %cleanup ], [ %seen_summary.3, %if.end152 ], !dbg !2845
  %summaried.8 = phi %struct.counts_entry* [ %summaried.7, %if.then155 ], [ %summaried.4, %cleanup ], [ %summaried.7, %if.end152 ], !dbg !2845
  %checksum.2 = phi i32 [ %checksum.1, %if.then155 ], [ %checksum.0, %cleanup ], [ %checksum.1, %if.end152 ], !dbg !2845
  %fn_ident.2 = phi i32 [ %fn_ident.1, %if.then155 ], [ %fn_ident.0, %cleanup ], [ %fn_ident.1, %if.end152 ], !dbg !2845
  call void @llvm.dbg.value(metadata i32 %fn_ident.2, metadata !2809, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i32 %checksum.2, metadata !2810, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata %struct.counts_entry* %summaried.8, metadata !2811, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i32 %seen_summary.4, metadata !2812, metadata !DIExpression()), !dbg !2845
  %switch = icmp eq i32 %cleanup.dest.slot.1, 0
  br i1 %switch, label %while.cond, label %while.end, !llvm.loop !3031

while.end:                                        ; preds = %while.cond, %cleanup159
  %call163 = call i32 @gcov_close() #7, !dbg !3033
  br label %cleanup.cont171, !dbg !3034

cleanup.cont171:                                  ; preds = %entry, %if.then4, %if.then8, %while.end
  ret void, !dbg !3034
}

; Function Attrs: nounwind uwtable
define dso_local void @coverage_finish() local_unnamed_addr #5 !dbg !3035 {
entry:
  tail call fastcc void @create_coverage() #7, !dbg !3040
  %0 = load i32, i32* @bbg_file_opened, align 4, !dbg !3041
  %tobool = icmp eq i32 %0, 0, !dbg !3041
  br i1 %tobool, label %if.end8, label %if.then, !dbg !3042

if.then:                                          ; preds = %entry
  %call = tail call i32 @gcov_close() #7, !dbg !3043
  call void @llvm.dbg.value(metadata i32 %call, metadata !3037, metadata !DIExpression()), !dbg !3044
  %tobool1 = icmp eq i32 %call, 0, !dbg !3045
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !3047

if.then2:                                         ; preds = %if.then
  %1 = load i8*, i8** @bbg_file_name, align 8, !dbg !3048
  %call3 = tail call i32 @unlink(i8* %1) #6, !dbg !3049
  br label %if.end, !dbg !3049

if.end:                                           ; preds = %if.then, %if.then2
  %2 = load i32, i32* @local_tick, align 4, !dbg !3050
  %tobool4 = icmp eq i32 %2, 0, !dbg !3050
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !3052

if.then5:                                         ; preds = %if.end
  %3 = load i8*, i8** @da_file_name, align 8, !dbg !3053
  %call6 = tail call i32 @unlink(i8* %3) #6, !dbg !3054
  br label %if.end8, !dbg !3054

if.end8:                                          ; preds = %if.end, %entry, %if.then5
  ret void, !dbg !3055
}

; Function Attrs: nounwind uwtable
define internal fastcc void @create_coverage() unnamed_addr #5 !dbg !3056 {
entry:
  %body = alloca %union.tree_node*, align 8
  %name_buf = alloca [32 x i8], align 16
  %0 = bitcast %union.tree_node** %body to i8*, !dbg !3066
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3066
  %1 = getelementptr inbounds [32 x i8], [32 x i8]* %name_buf, i64 0, i64 0, !dbg !3067
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !3067
  call void @llvm.dbg.declare(metadata [32 x i8]* %name_buf, metadata !3062, metadata !DIExpression()), !dbg !3068
  store i1 true, i1* @no_coverage, align 4, !dbg !3069
  %2 = load i32, i32* @prg_ctr_mask, align 4, !dbg !3070
  %tobool = icmp eq i32 %2, 0, !dbg !3070
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3072

if.end:                                           ; preds = %entry
  %call = tail call fastcc %union.tree_node* @build_gcov_info() #7, !dbg !3073
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3061, metadata !DIExpression()), !dbg !3074
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3075
  %3 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !3075
  %call1 = tail call %union.tree_node* @build_decl_stat(i32 1, i32 32, %union.tree_node* null, %union.tree_node* %3) #6, !dbg !3075
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !3058, metadata !DIExpression()), !dbg !3074
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3076
  %bf.load = load i64, i64* %4, align 8, !dbg !3077
  %bf.set = or i64 %bf.load, 67108864, !dbg !3077
  store i64 %bf.set, i64* %4, align 8, !dbg !3077
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 0) #6, !dbg !3078
  %call4 = call %union.tree_node* @get_identifier(i8* nonnull %1) #6, !dbg !3080
  %name = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3081
  store %union.tree_node* %call4, %union.tree_node** %name, align 8, !dbg !3082
  %initial = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, !dbg !3083
  store %union.tree_node* %call, %union.tree_node** %initial, align 8, !dbg !3084
  call void @varpool_finalize_decl(%union.tree_node* %call1) #6, !dbg !3085
  %type6 = getelementptr inbounds %union.tree_node, %union.tree_node* %call1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3086
  %5 = load %union.tree_node*, %union.tree_node** %type6, align 8, !dbg !3086
  %call7 = call %union.tree_node* @build_pointer_type(%union.tree_node* %5) #6, !dbg !3087
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !3061, metadata !DIExpression()), !dbg !3074
  %6 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 38), align 16, !dbg !3088
  %call8 = call %union.tree_node* (%union.tree_node*, ...) @build_function_type_list(%union.tree_node* %6, %union.tree_node* %call7, i8* null) #6, !dbg !3089
  call void @llvm.dbg.value(metadata %union.tree_node* %call8, metadata !3061, metadata !DIExpression()), !dbg !3074
  %call9 = call %union.tree_node* @get_identifier(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0)) #6, !dbg !3090
  %call10 = call %union.tree_node* @build_decl_stat(i32 1, i32 29, %union.tree_node* %call9, %union.tree_node* %call8) #6, !dbg !3090
  call void @llvm.dbg.value(metadata %union.tree_node* %call10, metadata !3061, metadata !DIExpression()), !dbg !3074
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %call10, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3091
  %bf.load12 = load i64, i64* %7, align 8, !dbg !3092
  %bf.set14 = or i64 %bf.load12, 134217728, !dbg !3092
  store i64 %bf.set14, i64* %7, align 8, !dbg !3092
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call10, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3093
  %8 = bitcast i40* %decl_flag_1 to i64*, !dbg !3093
  %bf.load16 = load i64, i64* %8, align 8, !dbg !3094
  %bf.set18 = or i64 %bf.load16, 33554432, !dbg !3094
  store i64 %bf.set18, i64* %8, align 8, !dbg !3094
  %call19 = call %union.tree_node* @decl_assembler_name(%union.tree_node* %call10) #6, !dbg !3095
  call void @llvm.dbg.value(metadata %union.tree_node* %call10, metadata !3059, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3060, metadata !DIExpression()), !dbg !3074
  store %union.tree_node* null, %union.tree_node** %body, align 8, !dbg !3096
  %call20 = call %union.tree_node* @build_fold_addr_expr_loc(i32 0, %union.tree_node* %call1) #6, !dbg !3097
  call void @llvm.dbg.value(metadata %union.tree_node* %call20, metadata !3061, metadata !DIExpression()), !dbg !3074
  %call21 = call %union.tree_node* (i32, %union.tree_node*, i32, ...) @build_call_expr_loc(i32 0, %union.tree_node* %call10, i32 1, %union.tree_node* %call20) #6, !dbg !3098
  call void @llvm.dbg.value(metadata %union.tree_node* %call21, metadata !3061, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata %union.tree_node** %body, metadata !3060, metadata !DIExpression(DW_OP_deref)), !dbg !3074
  call void @append_to_statement_list(%union.tree_node* %call21, %union.tree_node** nonnull %body) #6, !dbg !3099
  %9 = load %union.tree_node*, %union.tree_node** %body, align 8, !dbg !3100
  call void @llvm.dbg.value(metadata %union.tree_node* %9, metadata !3060, metadata !DIExpression()), !dbg !3074
  call void @cgraph_build_static_cdtor(i8 signext 73, %union.tree_node* %9, i32 65535) #6, !dbg !3101
  br label %cleanup, !dbg !3102

cleanup:                                          ; preds = %entry, %if.end
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !3102
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3102
  ret void, !dbg !3102
}

declare dso_local i32 @unlink(i8*) local_unnamed_addr #2

declare dso_local void @gt_ggc_mx_rtx_def(i8*) #2

declare dso_local void @gt_pch_nx_rtx_def(i8*) #2

declare dso_local void @gt_ggc_mx_lang_tree_node(i8*) #2

declare dso_local void @gt_pch_nx_lang_tree_node(i8*) #2

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @gcov_allocate(i32 %length) unnamed_addr #5 !dbg !3103 {
entry:
  call void @llvm.dbg.value(metadata i32 %length, metadata !3105, metadata !DIExpression()), !dbg !3107
  %0 = load i64, i64* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 8), align 8, !dbg !3108
  call void @llvm.dbg.value(metadata i64 %0, metadata !3106, metadata !DIExpression()), !dbg !3107
  %tobool = icmp eq i64 %0, 0, !dbg !3109
  %spec.select = select i1 %tobool, i64 1024, i64 %0, !dbg !3111
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !3106, metadata !DIExpression()), !dbg !3107
  %conv = zext i32 %length to i64, !dbg !3112
  %add = add i64 %spec.select, %conv, !dbg !3113
  call void @llvm.dbg.value(metadata i64 %add, metadata !3106, metadata !DIExpression()), !dbg !3107
  %mul = shl i64 %add, 1, !dbg !3114
  call void @llvm.dbg.value(metadata i64 %mul, metadata !3106, metadata !DIExpression()), !dbg !3107
  store i64 %mul, i64* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 8), align 8, !dbg !3115
  %1 = load i8*, i8** bitcast (i32** getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 9) to i8**), align 8, !dbg !3116
  %shl = shl i64 %add, 3, !dbg !3116
  %call = tail call i8* @xrealloc(i8* %1, i64 %shl) #6, !dbg !3116
  store i8* %call, i8** bitcast (i32** getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 9) to i8**), align 8, !dbg !3117
  ret void, !dbg !3118
}

declare dso_local i8* @xrealloc(i8*, i64) local_unnamed_addr #2

declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #2

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @coverage_checksum_string(i32 %chksum, i8* %string) unnamed_addr #5 !dbg !3119 {
entry:
  call void @llvm.dbg.value(metadata i32 %chksum, metadata !3123, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i8* %string, metadata !3124, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i8* null, metadata !3126, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i32 0, metadata !3125, metadata !DIExpression()), !dbg !3138
  br label %for.cond, !dbg !3139

for.cond:                                         ; preds = %for.inc123, %entry
  %dup.0 = phi i8* [ null, %entry ], [ %dup.6, %for.inc123 ], !dbg !3140
  %i.0 = phi i32 [ 0, %entry ], [ %inc124, %for.inc123 ], !dbg !3141
  %string.addr.0 = phi i8* [ %string, %entry ], [ %string.addr.6, %for.inc123 ]
  call void @llvm.dbg.value(metadata i8* %string.addr.0, metadata !3124, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3125, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i8* %dup.0, metadata !3126, metadata !DIExpression()), !dbg !3138
  %idxprom = sext i32 %i.0 to i64, !dbg !3142
  %arrayidx = getelementptr inbounds i8, i8* %string.addr.0, i64 %idxprom, !dbg !3142
  %0 = load i8, i8* %arrayidx, align 1, !dbg !3142
  %tobool = icmp eq i8 %0, 0, !dbg !3143
  br i1 %tobool, label %for.end125, label %for.body, !dbg !3143

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i32 0, metadata !3127, metadata !DIExpression()), !dbg !3144
  %call = tail call i32 @strncmp(i8* %arrayidx, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i64 11) #6, !dbg !3145
  %tobool1 = icmp eq i32 %call, 0, !dbg !3145
  %spec.select = select i1 %tobool1, i32 11, i32 0, !dbg !3147
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3127, metadata !DIExpression()), !dbg !3144
  %call4 = tail call i32 @strncmp(i8* %arrayidx, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i64 9) #6, !dbg !3148
  %tobool5 = icmp eq i32 %call4, 0, !dbg !3148
  %offset.1 = select i1 %tobool5, i32 9, i32 %spec.select, !dbg !3150
  call void @llvm.dbg.value(metadata i32 %offset.1, metadata !3127, metadata !DIExpression()), !dbg !3144
  %tobool8 = icmp eq i32 %offset.1, 0, !dbg !3151
  br i1 %tobool8, label %cleanup120, label %if.then9, !dbg !3152

if.then9:                                         ; preds = %for.body
  %1 = add i32 %offset.1, %i.0, !dbg !3153
  %2 = sext i32 %1 to i64, !dbg !3153
  br label %for.cond10, !dbg !3153

for.cond10:                                       ; preds = %for.inc116, %if.then9
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %for.inc116 ], [ %2, %if.then9 ], !dbg !3140
  %dup.1 = phi i8* [ %dup.5, %for.inc116 ], [ %dup.0, %if.then9 ], !dbg !3140
  %string.addr.1 = phi i8* [ %string.addr.5, %for.inc116 ], [ %string.addr.0, %if.then9 ]
  call void @llvm.dbg.value(metadata i8* %string.addr.1, metadata !3124, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i64 %indvars.iv12, metadata !3125, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i8* %dup.1, metadata !3126, metadata !DIExpression()), !dbg !3138
  %arrayidx12 = getelementptr inbounds i8, i8* %string.addr.1, i64 %indvars.iv12, !dbg !3154
  %3 = load i8, i8* %arrayidx12, align 1, !dbg !3154
  %tobool13 = icmp eq i8 %3, 0, !dbg !3155
  br i1 %tobool13, label %cleanup120.loopexit, label %for.body14, !dbg !3155

for.body14:                                       ; preds = %for.cond10
  %cmp = icmp eq i8 %3, 95, !dbg !3156
  br i1 %cmp, label %for.cond19.preheader, label %for.inc116, !dbg !3157

for.cond19.preheader:                             ; preds = %for.body14
  br label %for.cond19, !dbg !3158

for.cond19:                                       ; preds = %for.cond19.preheader, %for.inc
  %indvars.iv = phi i64 [ 1, %for.cond19.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !3160
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3131, metadata !DIExpression()), !dbg !3161
  %4 = trunc i64 %indvars.iv to i32, !dbg !3158
  %exitcond = icmp eq i64 %indvars.iv, 9, !dbg !3162
  br i1 %exitcond, label %for.end, label %for.body22, !dbg !3158

for.body22:                                       ; preds = %for.cond19
  %5 = add nsw i64 %indvars.iv12, %indvars.iv, !dbg !3164
  %arrayidx25 = getelementptr inbounds i8, i8* %string.addr.1, i64 %5, !dbg !3166
  %6 = load i8, i8* %arrayidx25, align 1, !dbg !3166
  %cmp27 = icmp sgt i8 %6, 47, !dbg !3167
  br i1 %cmp27, label %land.lhs.true, label %land.lhs.true35, !dbg !3168

land.lhs.true:                                    ; preds = %for.body22
  %cmp33 = icmp slt i8 %6, 58, !dbg !3169
  br i1 %cmp33, label %for.inc, label %land.lhs.true35, !dbg !3170

land.lhs.true35:                                  ; preds = %land.lhs.true, %for.body22
  %.off15 = add i8 %6, -65, !dbg !3171
  %7 = icmp ult i8 %.off15, 6, !dbg !3171
  br i1 %7, label %for.inc, label %for.end, !dbg !3171

for.inc:                                          ; preds = %land.lhs.true35, %land.lhs.true
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3172
  call void @llvm.dbg.value(metadata i32 undef, metadata !3131, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3161
  br label %for.cond19, !dbg !3173, !llvm.loop !3174

for.end:                                          ; preds = %for.cond19, %land.lhs.true35
  %.lcssa = phi i32 [ %4, %for.cond19 ], [ %4, %land.lhs.true35 ], !dbg !3158
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !3131, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !3131, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !3131, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !3131, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !3131, metadata !DIExpression()), !dbg !3161
  %cmp51 = icmp eq i32 %.lcssa, 9, !dbg !3176
  br i1 %cmp51, label %lor.lhs.false, label %for.inc116, !dbg !3178

lor.lhs.false:                                    ; preds = %for.end
  %8 = add nsw i64 %indvars.iv12, 9, !dbg !3179
  %arrayidx55 = getelementptr inbounds i8, i8* %string.addr.1, i64 %8, !dbg !3180
  %9 = load i8, i8* %arrayidx55, align 1, !dbg !3180
  %cmp57 = icmp eq i8 %9, 95, !dbg !3181
  br i1 %cmp57, label %for.cond61.preheader, label %for.inc116, !dbg !3182

for.cond61.preheader:                             ; preds = %lor.lhs.false
  br label %for.cond61, !dbg !3183

for.cond61:                                       ; preds = %for.cond61.preheader, %for.inc94
  %indvars.iv4 = phi i64 [ 10, %for.cond61.preheader ], [ %indvars.iv.next5, %for.inc94 ], !dbg !3185
  call void @llvm.dbg.value(metadata i64 %indvars.iv4, metadata !3131, metadata !DIExpression()), !dbg !3161
  %10 = trunc i64 %indvars.iv4 to i32, !dbg !3183
  %exitcond7 = icmp eq i64 %indvars.iv4, 18, !dbg !3186
  br i1 %exitcond7, label %for.end96, label %for.body64, !dbg !3183

for.body64:                                       ; preds = %for.cond61
  %11 = add nsw i64 %indvars.iv12, %indvars.iv4, !dbg !3188
  %arrayidx67 = getelementptr inbounds i8, i8* %string.addr.1, i64 %11, !dbg !3190
  %12 = load i8, i8* %arrayidx67, align 1, !dbg !3190
  %cmp69 = icmp sgt i8 %12, 47, !dbg !3191
  br i1 %cmp69, label %land.lhs.true71, label %land.lhs.true78, !dbg !3192

land.lhs.true71:                                  ; preds = %for.body64
  %cmp76 = icmp slt i8 %12, 58, !dbg !3193
  br i1 %cmp76, label %for.inc94, label %land.lhs.true78, !dbg !3194

land.lhs.true78:                                  ; preds = %land.lhs.true71, %for.body64
  %.off = add i8 %12, -65, !dbg !3195
  %13 = icmp ult i8 %.off, 6, !dbg !3195
  br i1 %13, label %for.inc94, label %for.end96, !dbg !3195

for.inc94:                                        ; preds = %land.lhs.true78, %land.lhs.true71
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1, !dbg !3196
  call void @llvm.dbg.value(metadata i32 undef, metadata !3131, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3161
  br label %for.cond61, !dbg !3197, !llvm.loop !3198

for.end96:                                        ; preds = %for.cond61, %land.lhs.true78
  %.lcssa16 = phi i32 [ %10, %for.cond61 ], [ %10, %land.lhs.true78 ], !dbg !3183
  call void @llvm.dbg.value(metadata i32 %.lcssa16, metadata !3131, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i32 %.lcssa16, metadata !3131, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i32 %.lcssa16, metadata !3131, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i32 %.lcssa16, metadata !3131, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i32 %.lcssa16, metadata !3131, metadata !DIExpression()), !dbg !3161
  %cmp97 = icmp eq i32 %.lcssa16, 18, !dbg !3200
  br i1 %cmp97, label %if.end100, label %for.inc116, !dbg !3202

if.end100:                                        ; preds = %for.end96
  %tobool101 = icmp eq i8* %dup.1, null, !dbg !3203
  br i1 %tobool101, label %if.then102, label %if.end104, !dbg !3205

if.then102:                                       ; preds = %if.end100
  %call103 = tail call i8* @xstrdup(i8* %string.addr.1) #6, !dbg !3206
  call void @llvm.dbg.value(metadata i8* %call103, metadata !3126, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i8* %call103, metadata !3124, metadata !DIExpression()), !dbg !3138
  br label %if.end104, !dbg !3207

if.end104:                                        ; preds = %if.end100, %if.then102
  %dup.2 = phi i8* [ %dup.1, %if.end100 ], [ %call103, %if.then102 ], !dbg !3138
  %string.addr.2 = phi i8* [ %string.addr.1, %if.end100 ], [ %call103, %if.then102 ]
  call void @llvm.dbg.value(metadata i8* %string.addr.2, metadata !3124, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i8* %dup.2, metadata !3126, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i32 10, metadata !3131, metadata !DIExpression()), !dbg !3161
  br label %for.cond105, !dbg !3208

for.cond105:                                      ; preds = %for.body108, %if.end104
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for.body108 ], [ 10, %if.end104 ], !dbg !3210
  call void @llvm.dbg.value(metadata i64 %indvars.iv8, metadata !3131, metadata !DIExpression()), !dbg !3161
  %exitcond11 = icmp eq i64 %indvars.iv8, 18, !dbg !3211
  br i1 %exitcond11, label %for.inc116.loopexit, label %for.body108, !dbg !3213

for.body108:                                      ; preds = %for.cond105
  %14 = add nsw i64 %indvars.iv12, %indvars.iv8, !dbg !3214
  %arrayidx111 = getelementptr inbounds i8, i8* %dup.2, i64 %14, !dbg !3215
  store i8 48, i8* %arrayidx111, align 1, !dbg !3216
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1, !dbg !3217
  call void @llvm.dbg.value(metadata i32 undef, metadata !3131, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3161
  br label %for.cond105, !dbg !3218, !llvm.loop !3219

for.inc116.loopexit:                              ; preds = %for.cond105
  br label %for.inc116, !dbg !3221

for.inc116:                                       ; preds = %for.inc116.loopexit, %for.end96, %lor.lhs.false, %for.end, %for.body14
  %dup.5 = phi i8* [ %dup.1, %for.body14 ], [ %dup.1, %lor.lhs.false ], [ %dup.1, %for.end ], [ %dup.1, %for.end96 ], [ %dup.2, %for.inc116.loopexit ], !dbg !3140
  %string.addr.5 = phi i8* [ %string.addr.1, %for.body14 ], [ %string.addr.1, %lor.lhs.false ], [ %string.addr.1, %for.end ], [ %string.addr.1, %for.end96 ], [ %string.addr.2, %for.inc116.loopexit ]
  call void @llvm.dbg.value(metadata i8* %string.addr.5, metadata !3124, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i8* %dup.5, metadata !3126, metadata !DIExpression()), !dbg !3138
  %indvars.iv.next13 = add i64 %indvars.iv12, 1, !dbg !3221
  call void @llvm.dbg.value(metadata i32 undef, metadata !3125, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3138
  br label %for.cond10, !dbg !3222, !llvm.loop !3223

cleanup120.loopexit:                              ; preds = %for.cond10
  %indvars.iv12.lcssa = phi i64 [ %indvars.iv12, %for.cond10 ], !dbg !3140
  %dup.1.lcssa = phi i8* [ %dup.1, %for.cond10 ], !dbg !3140
  %string.addr.1.lcssa = phi i8* [ %string.addr.1, %for.cond10 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv12.lcssa, metadata !3125, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i8* %dup.1.lcssa, metadata !3126, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i8* %string.addr.1.lcssa, metadata !3124, metadata !DIExpression()), !dbg !3138
  %15 = trunc i64 %indvars.iv12.lcssa to i32, !dbg !3138
  call void @llvm.dbg.value(metadata i8* %dup.1.lcssa, metadata !3126, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i32 %15, metadata !3125, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i8* %string.addr.1.lcssa, metadata !3124, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i8* %dup.1.lcssa, metadata !3126, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i32 %15, metadata !3125, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i8* %string.addr.1.lcssa, metadata !3124, metadata !DIExpression()), !dbg !3138
  br label %cleanup120

cleanup120:                                       ; preds = %cleanup120.loopexit, %for.body
  %cleanup.dest.slot.1 = phi i1 [ true, %for.body ], [ false, %cleanup120.loopexit ]
  %dup.6 = phi i8* [ %dup.0, %for.body ], [ %dup.1.lcssa, %cleanup120.loopexit ], !dbg !3140
  %i.2 = phi i32 [ %i.0, %for.body ], [ %15, %cleanup120.loopexit ], !dbg !3141
  %string.addr.6 = phi i8* [ %string.addr.0, %for.body ], [ %string.addr.1.lcssa, %cleanup120.loopexit ]
  call void @llvm.dbg.value(metadata i8* %string.addr.6, metadata !3124, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !3125, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i8* %dup.6, metadata !3126, metadata !DIExpression()), !dbg !3138
  br i1 %cleanup.dest.slot.1, label %for.inc123, label %for.end125

for.inc123:                                       ; preds = %cleanup120
  %inc124 = add nsw i32 %i.2, 1, !dbg !3225
  call void @llvm.dbg.value(metadata i32 %inc124, metadata !3125, metadata !DIExpression()), !dbg !3138
  br label %for.cond, !dbg !3226, !llvm.loop !3227

for.end125:                                       ; preds = %for.cond, %cleanup120
  %dup.7 = phi i8* [ %dup.6, %cleanup120 ], [ %dup.0, %for.cond ], !dbg !3140
  %string.addr.7 = phi i8* [ %string.addr.6, %cleanup120 ], [ %string.addr.0, %for.cond ]
  call void @llvm.dbg.value(metadata i8* %string.addr.7, metadata !3124, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i8* %dup.7, metadata !3126, metadata !DIExpression()), !dbg !3138
  %call126 = tail call i32 @crc32_string(i32 %chksum, i8* %string.addr.7) #6, !dbg !3229
  call void @llvm.dbg.value(metadata i32 %call126, metadata !3123, metadata !DIExpression()), !dbg !3138
  %tobool127 = icmp eq i8* %dup.7, null, !dbg !3230
  br i1 %tobool127, label %if.end129, label %if.then128, !dbg !3232

if.then128:                                       ; preds = %for.end125
  tail call void @free(i8* nonnull %dup.7) #6, !dbg !3233
  br label %if.end129, !dbg !3233

if.end129:                                        ; preds = %for.end125, %if.then128
  ret i32 %call126, !dbg !3234
}

declare dso_local i32 @strncmp(i8*, i8*, i64) local_unnamed_addr #2

declare dso_local i8* @xstrdup(i8*) local_unnamed_addr #2

declare dso_local i32 @crc32_string(i32, i8*) local_unnamed_addr #2

declare dso_local %struct.htab* @htab_create(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @htab_counts_entry_hash(i8* %of) #5 !dbg !3235 {
entry:
  call void @llvm.dbg.value(metadata i8* %of, metadata !3237, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i8* %of, metadata !3238, metadata !DIExpression()), !dbg !3240
  %ident = bitcast i8* %of to i32*, !dbg !3241
  %0 = load i32, i32* %ident, align 8, !dbg !3241
  %mul = shl i32 %0, 3, !dbg !3242
  %ctr = getelementptr inbounds i8, i8* %of, i64 4, !dbg !3243
  %1 = bitcast i8* %ctr to i32*, !dbg !3243
  %2 = load i32, i32* %1, align 4, !dbg !3243
  %add = add i32 %mul, %2, !dbg !3244
  ret i32 %add, !dbg !3245
}

; Function Attrs: nounwind uwtable
define internal i32 @htab_counts_entry_eq(i8* %of1, i8* %of2) #5 !dbg !3246 {
entry:
  call void @llvm.dbg.value(metadata i8* %of1, metadata !3248, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i8* %of2, metadata !3249, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i8* %of1, metadata !3250, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i8* %of2, metadata !3251, metadata !DIExpression()), !dbg !3252
  %ident = bitcast i8* %of1 to i32*, !dbg !3253
  %0 = load i32, i32* %ident, align 8, !dbg !3253
  %ident1 = bitcast i8* %of2 to i32*, !dbg !3254
  %1 = load i32, i32* %ident1, align 8, !dbg !3254
  %cmp = icmp eq i32 %0, %1, !dbg !3255
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3256

land.rhs:                                         ; preds = %entry
  call void @llvm.dbg.value(metadata i8* %of2, metadata !3251, metadata !DIExpression()), !dbg !3252
  call void @llvm.dbg.value(metadata i8* %of1, metadata !3250, metadata !DIExpression()), !dbg !3252
  %ctr = getelementptr inbounds i8, i8* %of1, i64 4, !dbg !3257
  %2 = bitcast i8* %ctr to i32*, !dbg !3257
  %3 = load i32, i32* %2, align 4, !dbg !3257
  %ctr2 = getelementptr inbounds i8, i8* %of2, i64 4, !dbg !3258
  %4 = bitcast i8* %ctr2 to i32*, !dbg !3258
  %5 = load i32, i32* %4, align 4, !dbg !3258
  %cmp3 = icmp eq i32 %3, %5, !dbg !3259
  %phitmp = zext i1 %cmp3 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i32 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i32 %6, !dbg !3260
}

; Function Attrs: nounwind uwtable
define internal void @htab_counts_entry_del(i8* %of) #5 !dbg !3261 {
entry:
  call void @llvm.dbg.value(metadata i8* %of, metadata !3263, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i8* %of, metadata !3264, metadata !DIExpression()), !dbg !3266
  %counts = getelementptr inbounds i8, i8* %of, i64 16, !dbg !3267
  %0 = bitcast i8* %counts to i8**, !dbg !3267
  %1 = load i8*, i8** %0, align 8, !dbg !3267
  tail call void @free(i8* %1) #6, !dbg !3268
  tail call void @free(i8* %of) #6, !dbg !3269
  ret void, !dbg !3270
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gcov_position() unnamed_addr #0 !dbg !3271 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 6), align 4, !dbg !3274
  %cmp = icmp sgt i32 %0, 0, !dbg !3274
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3274

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0), i32 586, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3274
  br label %cond.end, !dbg !3274

cond.end:                                         ; preds = %entry, %cond.true
  %1 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 1), align 8, !dbg !3275
  %2 = load i32, i32* getelementptr inbounds (%struct.gcov_var, %struct.gcov_var* @gcov_var, i64 0, i32 2), align 4, !dbg !3276
  %add = add i32 %1, %2, !dbg !3277
  ret i32 %add, !dbg !3278
}

declare dso_local i8** @htab_find_slot(%struct.htab*, i8*, i32) local_unnamed_addr #2

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

declare dso_local void @htab_delete(%struct.htab*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @build_gcov_info() unnamed_addr #5 !dbg !3279 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3286, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3290, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3292, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3293, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 0, metadata !3281, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 0, metadata !3282, metadata !DIExpression()), !dbg !3304
  %0 = load i32, i32* @prg_ctr_mask, align 4, !dbg !3305
  br label %for.cond, !dbg !3309

for.cond:                                         ; preds = %for.body, %entry
  %ix.0 = phi i32 [ 0, %entry ], [ %inc1, %for.body ], !dbg !3310
  %n_ctr_types.0 = phi i32 [ 0, %entry ], [ %spec.select, %for.body ], !dbg !3310
  call void @llvm.dbg.value(metadata i32 %n_ctr_types.0, metadata !3281, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 %ix.0, metadata !3282, metadata !DIExpression()), !dbg !3304
  %cmp = icmp eq i32 %ix.0, 8, !dbg !3311
  br i1 %cmp, label %for.end, label %for.body, !dbg !3312

for.body:                                         ; preds = %for.cond
  %shl = shl i32 1, %ix.0, !dbg !3313
  %and = and i32 %0, %shl, !dbg !3314
  %tobool = icmp ne i32 %and, 0, !dbg !3314
  %inc = zext i1 %tobool to i32, !dbg !3315
  %spec.select = add i32 %n_ctr_types.0, %inc, !dbg !3315
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3281, metadata !DIExpression()), !dbg !3304
  %inc1 = add nuw nsw i32 %ix.0, 1, !dbg !3316
  call void @llvm.dbg.value(metadata i32 %inc1, metadata !3282, metadata !DIExpression()), !dbg !3304
  br label %for.cond, !dbg !3317, !llvm.loop !3318

for.end:                                          ; preds = %for.cond
  %n_ctr_types.0.lcssa = phi i32 [ %n_ctr_types.0, %for.cond ], !dbg !3310
  call void @llvm.dbg.value(metadata i32 %n_ctr_types.0.lcssa, metadata !3281, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 %n_ctr_types.0.lcssa, metadata !3281, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 %n_ctr_types.0.lcssa, metadata !3281, metadata !DIExpression()), !dbg !3304
  %1 = load %union.tree_node* (i32)*, %union.tree_node* (i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 34, i32 0), align 8, !dbg !3320
  %call = tail call %union.tree_node* %1(i32 16) #6, !dbg !3321
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3283, metadata !DIExpression()), !dbg !3304
  %call2 = tail call %union.tree_node* @build_qualified_type(%union.tree_node* %call, i32 1) #6, !dbg !3322
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !3284, metadata !DIExpression()), !dbg !3304
  %call3 = tail call fastcc %union.tree_node* @get_gcov_unsigned_t() #7, !dbg !3323
  %call4 = tail call %union.tree_node* @build_decl_stat(i32 1, i32 31, %union.tree_node* null, %union.tree_node* %call3) #6, !dbg !3323
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !3291, metadata !DIExpression()), !dbg !3304
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %call4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3324
  store %union.tree_node* null, %union.tree_node** %chain, align 8, !dbg !3325
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !3292, metadata !DIExpression()), !dbg !3304
  %type6 = getelementptr inbounds %union.tree_node, %union.tree_node* %call4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3326
  %2 = load %union.tree_node*, %union.tree_node** %type6, align 8, !dbg !3326
  %call7 = tail call %union.tree_node* @build_int_cstu(%union.tree_node* %2, i64 875574570) #6, !dbg !3326
  %call8 = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* %call4, %union.tree_node* %call7, %union.tree_node* null) #6, !dbg !3326
  call void @llvm.dbg.value(metadata %union.tree_node* %call8, metadata !3293, metadata !DIExpression()), !dbg !3304
  %call9 = tail call %union.tree_node* @build_pointer_type(%union.tree_node* %call2) #6, !dbg !3327
  %call10 = tail call %union.tree_node* @build_decl_stat(i32 1, i32 31, %union.tree_node* null, %union.tree_node* %call9) #6, !dbg !3327
  call void @llvm.dbg.value(metadata %union.tree_node* %call10, metadata !3291, metadata !DIExpression()), !dbg !3304
  %chain12 = getelementptr inbounds %union.tree_node, %union.tree_node* %call10, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3328
  store %union.tree_node* %call4, %union.tree_node** %chain12, align 8, !dbg !3329
  call void @llvm.dbg.value(metadata %union.tree_node* %call10, metadata !3292, metadata !DIExpression()), !dbg !3304
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 16), align 16, !dbg !3330
  %call13 = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* %call10, %union.tree_node* %3, %union.tree_node* %call8) #6, !dbg !3330
  call void @llvm.dbg.value(metadata %union.tree_node* %call13, metadata !3293, metadata !DIExpression()), !dbg !3304
  %call14 = tail call fastcc %union.tree_node* @get_gcov_unsigned_t() #7, !dbg !3331
  %call15 = tail call %union.tree_node* @build_decl_stat(i32 1, i32 31, %union.tree_node* null, %union.tree_node* %call14) #6, !dbg !3331
  call void @llvm.dbg.value(metadata %union.tree_node* %call15, metadata !3291, metadata !DIExpression()), !dbg !3304
  %chain17 = getelementptr inbounds %union.tree_node, %union.tree_node* %call15, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3332
  store %union.tree_node* %call10, %union.tree_node** %chain17, align 8, !dbg !3333
  call void @llvm.dbg.value(metadata %union.tree_node* %call15, metadata !3292, metadata !DIExpression()), !dbg !3304
  %type19 = getelementptr inbounds %union.tree_node, %union.tree_node* %call15, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3334
  %4 = load %union.tree_node*, %union.tree_node** %type19, align 8, !dbg !3334
  %5 = load i32, i32* @local_tick, align 4, !dbg !3334
  %conv = zext i32 %5 to i64, !dbg !3334
  %call20 = tail call %union.tree_node* @build_int_cstu(%union.tree_node* %4, i64 %conv) #6, !dbg !3334
  %call21 = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* %call15, %union.tree_node* %call20, %union.tree_node* %call13) #6, !dbg !3334
  call void @llvm.dbg.value(metadata %union.tree_node* %call21, metadata !3293, metadata !DIExpression()), !dbg !3304
  %6 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 0), align 16, !dbg !3335
  %call22 = tail call %union.tree_node* @build_qualified_type(%union.tree_node* %6, i32 1) #6, !dbg !3336
  %call23 = tail call %union.tree_node* @build_pointer_type(%union.tree_node* %call22) #6, !dbg !3337
  call void @llvm.dbg.value(metadata %union.tree_node* %call23, metadata !3300, metadata !DIExpression()), !dbg !3304
  %call24 = tail call %union.tree_node* @build_decl_stat(i32 1, i32 31, %union.tree_node* null, %union.tree_node* %call23) #6, !dbg !3338
  call void @llvm.dbg.value(metadata %union.tree_node* %call24, metadata !3291, metadata !DIExpression()), !dbg !3304
  %chain26 = getelementptr inbounds %union.tree_node, %union.tree_node* %call24, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3339
  store %union.tree_node* %call15, %union.tree_node** %chain26, align 8, !dbg !3340
  call void @llvm.dbg.value(metadata %union.tree_node* %call24, metadata !3292, metadata !DIExpression()), !dbg !3304
  %7 = load i8*, i8** @da_file_name, align 8, !dbg !3341
  %call27 = tail call i64 @strlen(i8* %7) #6, !dbg !3342
  %conv28 = trunc i64 %call27 to i32, !dbg !3342
  call void @llvm.dbg.value(metadata i32 %conv28, metadata !3295, metadata !DIExpression()), !dbg !3304
  %add = add nsw i32 %conv28, 1, !dbg !3343
  %8 = load i8*, i8** @da_file_name, align 8, !dbg !3344
  %call29 = tail call %union.tree_node* @build_string(i32 %add, i8* %8) #6, !dbg !3345
  call void @llvm.dbg.value(metadata %union.tree_node* %call29, metadata !3294, metadata !DIExpression()), !dbg !3304
  %9 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i64 0, i64 0), align 16, !dbg !3346
  %sext = shl i64 %call27, 32, !dbg !3347
  %conv30 = ashr exact i64 %sext, 32, !dbg !3347
  %call31 = tail call %union.tree_node* @build_int_cst(%union.tree_node* null, i64 %conv30) #6, !dbg !3348
  %call32 = tail call %union.tree_node* @build_index_type(%union.tree_node* %call31) #6, !dbg !3349
  %call33 = tail call %union.tree_node* @build_array_type(%union.tree_node* %9, %union.tree_node* %call32) #6, !dbg !3350
  %type35 = getelementptr inbounds %union.tree_node, %union.tree_node* %call29, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3351
  store %union.tree_node* %call33, %union.tree_node** %type35, align 8, !dbg !3352
  %call36 = tail call %union.tree_node* @build1_stat(i32 121, %union.tree_node* %call23, %union.tree_node* %call29) #6, !dbg !3353
  %call37 = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* %call24, %union.tree_node* %call36, %union.tree_node* %call21) #6, !dbg !3353
  call void @llvm.dbg.value(metadata %union.tree_node* %call37, metadata !3293, metadata !DIExpression()), !dbg !3304
  %call38 = tail call fastcc %union.tree_node* @build_fn_info_type(i32 %n_ctr_types.0.lcssa) #7, !dbg !3354
  call void @llvm.dbg.value(metadata %union.tree_node* %call38, metadata !3285, metadata !DIExpression()), !dbg !3304
  %call39 = tail call %union.tree_node* @build_qualified_type(%union.tree_node* %call38, i32 1) #6, !dbg !3355
  %call40 = tail call %union.tree_node* @build_pointer_type(%union.tree_node* %call39) #6, !dbg !3356
  call void @llvm.dbg.value(metadata %union.tree_node* %call40, metadata !3287, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 0, metadata !3296, metadata !DIExpression()), !dbg !3304
  br label %for.cond41, !dbg !3357

for.cond41:                                       ; preds = %for.body43, %for.end
  %fn_info_value.0 = phi %union.tree_node* [ null, %for.end ], [ %call45, %for.body43 ], !dbg !3304
  %n_fns.0 = phi i32 [ 0, %for.end ], [ %inc47, %for.body43 ], !dbg !3359
  %fn.0.in = phi %struct.function_list** [ @functions_head, %for.end ], [ %next, %for.body43 ]
  %fn.0 = load %struct.function_list*, %struct.function_list** %fn.0.in, align 8, !dbg !3359
  call void @llvm.dbg.value(metadata %struct.function_list* %fn.0, metadata !3297, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 %n_fns.0, metadata !3296, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata %union.tree_node* %fn_info_value.0, metadata !3286, metadata !DIExpression()), !dbg !3304
  %tobool42 = icmp eq %struct.function_list* %fn.0, null, !dbg !3360
  br i1 %tobool42, label %for.end48, label %for.body43, !dbg !3360

for.body43:                                       ; preds = %for.cond41
  %call44 = tail call fastcc %union.tree_node* @build_fn_info_value(%struct.function_list* nonnull %fn.0, %union.tree_node* %call38) #7, !dbg !3361
  %call45 = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* null, %union.tree_node* %call44, %union.tree_node* %fn_info_value.0) #6, !dbg !3361
  call void @llvm.dbg.value(metadata %union.tree_node* %call45, metadata !3286, metadata !DIExpression()), !dbg !3304
  %next = getelementptr inbounds %struct.function_list, %struct.function_list* %fn.0, i64 0, i32 0, !dbg !3363
  %inc47 = add i32 %n_fns.0, 1, !dbg !3364
  call void @llvm.dbg.value(metadata i32 %inc47, metadata !3296, metadata !DIExpression()), !dbg !3304
  br label %for.cond41, !dbg !3365, !llvm.loop !3366

for.end48:                                        ; preds = %for.cond41
  %fn_info_value.0.lcssa = phi %union.tree_node* [ %fn_info_value.0, %for.cond41 ], !dbg !3304
  %n_fns.0.lcssa = phi i32 [ %n_fns.0, %for.cond41 ], !dbg !3359
  call void @llvm.dbg.value(metadata %union.tree_node* %fn_info_value.0.lcssa, metadata !3286, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 %n_fns.0.lcssa, metadata !3296, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata %union.tree_node* %fn_info_value.0.lcssa, metadata !3286, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 %n_fns.0.lcssa, metadata !3296, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata %union.tree_node* %fn_info_value.0.lcssa, metadata !3286, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 %n_fns.0.lcssa, metadata !3296, metadata !DIExpression()), !dbg !3304
  %tobool49 = icmp eq i32 %n_fns.0.lcssa, 0, !dbg !3368
  br i1 %tobool49, label %if.else, label %if.then50, !dbg !3369

if.then50:                                        ; preds = %for.end48
  %sub = add i32 %n_fns.0.lcssa, -1, !dbg !3370
  %conv51 = zext i32 %sub to i64, !dbg !3371
  %call52 = tail call %union.tree_node* @build_int_cst(%union.tree_node* null, i64 %conv51) #6, !dbg !3372
  %call53 = tail call %union.tree_node* @build_index_type(%union.tree_node* %call52) #6, !dbg !3373
  call void @llvm.dbg.value(metadata %union.tree_node* %call53, metadata !3301, metadata !DIExpression()), !dbg !3374
  %call54 = tail call %union.tree_node* @build_array_type(%union.tree_node* %call38, %union.tree_node* %call53) #6, !dbg !3375
  call void @llvm.dbg.value(metadata %union.tree_node* %call54, metadata !3301, metadata !DIExpression()), !dbg !3374
  %call55 = tail call %union.tree_node* @nreverse(%union.tree_node* %fn_info_value.0.lcssa) #6, !dbg !3376
  %call56 = tail call %union.tree_node* @build_constructor_from_list(%union.tree_node* %call54, %union.tree_node* %call55) #6, !dbg !3377
  call void @llvm.dbg.value(metadata %union.tree_node* %call56, metadata !3286, metadata !DIExpression()), !dbg !3304
  %call57 = tail call %union.tree_node* @build1_stat(i32 121, %union.tree_node* %call40, %union.tree_node* %call56) #6, !dbg !3378
  call void @llvm.dbg.value(metadata %union.tree_node* %call57, metadata !3286, metadata !DIExpression()), !dbg !3304
  br label %if.end58, !dbg !3379

if.else:                                          ; preds = %for.end48
  %10 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 16), align 16, !dbg !3380
  call void @llvm.dbg.value(metadata %union.tree_node* %10, metadata !3286, metadata !DIExpression()), !dbg !3304
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then50
  %fn_info_value.1 = phi %union.tree_node* [ %call57, %if.then50 ], [ %10, %if.else ], !dbg !3381
  call void @llvm.dbg.value(metadata %union.tree_node* %fn_info_value.1, metadata !3286, metadata !DIExpression()), !dbg !3304
  %call59 = tail call fastcc %union.tree_node* @get_gcov_unsigned_t() #7, !dbg !3382
  %call60 = tail call %union.tree_node* @build_decl_stat(i32 1, i32 31, %union.tree_node* null, %union.tree_node* %call59) #6, !dbg !3382
  call void @llvm.dbg.value(metadata %union.tree_node* %call60, metadata !3291, metadata !DIExpression()), !dbg !3304
  %chain62 = getelementptr inbounds %union.tree_node, %union.tree_node* %call60, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3383
  store %union.tree_node* %call24, %union.tree_node** %chain62, align 8, !dbg !3384
  call void @llvm.dbg.value(metadata %union.tree_node* %call60, metadata !3292, metadata !DIExpression()), !dbg !3304
  %call63 = tail call fastcc %union.tree_node* @get_gcov_unsigned_t() #7, !dbg !3385
  %conv64 = zext i32 %n_fns.0.lcssa to i64, !dbg !3385
  %call65 = tail call %union.tree_node* @build_int_cstu(%union.tree_node* %call63, i64 %conv64) #6, !dbg !3385
  %call66 = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* %call60, %union.tree_node* %call65, %union.tree_node* %call37) #6, !dbg !3385
  call void @llvm.dbg.value(metadata %union.tree_node* %call66, metadata !3293, metadata !DIExpression()), !dbg !3304
  %call67 = tail call %union.tree_node* @build_decl_stat(i32 1, i32 31, %union.tree_node* null, %union.tree_node* %call40) #6, !dbg !3386
  call void @llvm.dbg.value(metadata %union.tree_node* %call67, metadata !3291, metadata !DIExpression()), !dbg !3304
  %chain69 = getelementptr inbounds %union.tree_node, %union.tree_node* %call67, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3387
  store %union.tree_node* %call60, %union.tree_node** %chain69, align 8, !dbg !3388
  call void @llvm.dbg.value(metadata %union.tree_node* %call67, metadata !3292, metadata !DIExpression()), !dbg !3304
  %call70 = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* %call67, %union.tree_node* %fn_info_value.1, %union.tree_node* %call66) #6, !dbg !3389
  call void @llvm.dbg.value(metadata %union.tree_node* %call70, metadata !3293, metadata !DIExpression()), !dbg !3304
  %call71 = tail call fastcc %union.tree_node* @get_gcov_unsigned_t() #7, !dbg !3390
  %call72 = tail call %union.tree_node* @build_decl_stat(i32 1, i32 31, %union.tree_node* null, %union.tree_node* %call71) #6, !dbg !3390
  call void @llvm.dbg.value(metadata %union.tree_node* %call72, metadata !3291, metadata !DIExpression()), !dbg !3304
  %chain74 = getelementptr inbounds %union.tree_node, %union.tree_node* %call72, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3391
  store %union.tree_node* %call67, %union.tree_node** %chain74, align 8, !dbg !3392
  call void @llvm.dbg.value(metadata %union.tree_node* %call72, metadata !3292, metadata !DIExpression()), !dbg !3304
  %call75 = tail call fastcc %union.tree_node* @get_gcov_unsigned_t() #7, !dbg !3393
  %11 = load i32, i32* @prg_ctr_mask, align 4, !dbg !3393
  %conv76 = zext i32 %11 to i64, !dbg !3393
  %call77 = tail call %union.tree_node* @build_int_cstu(%union.tree_node* %call75, i64 %conv76) #6, !dbg !3393
  %call78 = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* %call72, %union.tree_node* %call77, %union.tree_node* %call70) #6, !dbg !3393
  call void @llvm.dbg.value(metadata %union.tree_node* %call78, metadata !3293, metadata !DIExpression()), !dbg !3304
  %call79 = tail call fastcc %union.tree_node* @build_ctr_info_type() #7, !dbg !3394
  call void @llvm.dbg.value(metadata %union.tree_node* %call79, metadata !3288, metadata !DIExpression()), !dbg !3304
  %conv80 = zext i32 %n_ctr_types.0.lcssa to i64, !dbg !3395
  %call81 = tail call %union.tree_node* @build_int_cst(%union.tree_node* null, i64 %conv80) #6, !dbg !3396
  %call82 = tail call %union.tree_node* @build_index_type(%union.tree_node* %call81) #6, !dbg !3397
  call void @llvm.dbg.value(metadata %union.tree_node* %call82, metadata !3289, metadata !DIExpression()), !dbg !3304
  %call83 = tail call %union.tree_node* @build_array_type(%union.tree_node* %call79, %union.tree_node* %call82) #6, !dbg !3398
  call void @llvm.dbg.value(metadata %union.tree_node* %call83, metadata !3289, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i32 0, metadata !3282, metadata !DIExpression()), !dbg !3304
  br label %for.cond84, !dbg !3399

for.cond84:                                       ; preds = %for.inc95, %if.end58
  %ctr_info_value.0 = phi %union.tree_node* [ null, %if.end58 ], [ %ctr_info_value.1, %for.inc95 ], !dbg !3304
  %ix.1 = phi i32 [ 0, %if.end58 ], [ %inc96, %for.inc95 ], !dbg !3401
  call void @llvm.dbg.value(metadata i32 %ix.1, metadata !3282, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata %union.tree_node* %ctr_info_value.0, metadata !3290, metadata !DIExpression()), !dbg !3304
  %cmp85 = icmp eq i32 %ix.1, 8, !dbg !3402
  br i1 %cmp85, label %for.end97, label %for.body87, !dbg !3404

for.body87:                                       ; preds = %for.cond84
  %12 = load i32, i32* @prg_ctr_mask, align 4, !dbg !3405
  %shl88 = shl i32 1, %ix.1, !dbg !3407
  %and89 = and i32 %12, %shl88, !dbg !3408
  %tobool90 = icmp eq i32 %and89, 0, !dbg !3408
  br i1 %tobool90, label %for.inc95, label %if.then91, !dbg !3409

if.then91:                                        ; preds = %for.body87
  %call92 = tail call fastcc %union.tree_node* @build_ctr_info_value(i32 %ix.1, %union.tree_node* %call79) #7, !dbg !3410
  %call93 = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* null, %union.tree_node* %call92, %union.tree_node* %ctr_info_value.0) #6, !dbg !3410
  call void @llvm.dbg.value(metadata %union.tree_node* %call93, metadata !3290, metadata !DIExpression()), !dbg !3304
  br label %for.inc95, !dbg !3411

for.inc95:                                        ; preds = %for.body87, %if.then91
  %ctr_info_value.1 = phi %union.tree_node* [ %call93, %if.then91 ], [ %ctr_info_value.0, %for.body87 ], !dbg !3304
  call void @llvm.dbg.value(metadata %union.tree_node* %ctr_info_value.1, metadata !3290, metadata !DIExpression()), !dbg !3304
  %inc96 = add nuw nsw i32 %ix.1, 1, !dbg !3412
  call void @llvm.dbg.value(metadata i32 %inc96, metadata !3282, metadata !DIExpression()), !dbg !3304
  br label %for.cond84, !dbg !3413, !llvm.loop !3414

for.end97:                                        ; preds = %for.cond84
  %ctr_info_value.0.lcssa = phi %union.tree_node* [ %ctr_info_value.0, %for.cond84 ], !dbg !3304
  call void @llvm.dbg.value(metadata %union.tree_node* %ctr_info_value.0.lcssa, metadata !3290, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata %union.tree_node* %ctr_info_value.0.lcssa, metadata !3290, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata %union.tree_node* %ctr_info_value.0.lcssa, metadata !3290, metadata !DIExpression()), !dbg !3304
  %call98 = tail call %union.tree_node* @nreverse(%union.tree_node* %ctr_info_value.0.lcssa) #6, !dbg !3416
  %call99 = tail call %union.tree_node* @build_constructor_from_list(%union.tree_node* %call83, %union.tree_node* %call98) #6, !dbg !3417
  call void @llvm.dbg.value(metadata %union.tree_node* %call99, metadata !3290, metadata !DIExpression()), !dbg !3304
  %call100 = tail call %union.tree_node* @build_decl_stat(i32 1, i32 31, %union.tree_node* null, %union.tree_node* %call83) #6, !dbg !3418
  call void @llvm.dbg.value(metadata %union.tree_node* %call100, metadata !3291, metadata !DIExpression()), !dbg !3304
  %chain102 = getelementptr inbounds %union.tree_node, %union.tree_node* %call100, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3419
  store %union.tree_node* %call72, %union.tree_node** %chain102, align 8, !dbg !3420
  call void @llvm.dbg.value(metadata %union.tree_node* %call100, metadata !3292, metadata !DIExpression()), !dbg !3304
  %call103 = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* %call100, %union.tree_node* %call99, %union.tree_node* %call78) #6, !dbg !3421
  call void @llvm.dbg.value(metadata %union.tree_node* %call103, metadata !3293, metadata !DIExpression()), !dbg !3304
  tail call void @finish_builtin_struct(%union.tree_node* %call, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), %union.tree_node* %call100, %union.tree_node* null) #6, !dbg !3422
  %call104 = tail call %union.tree_node* @nreverse(%union.tree_node* %call103) #6, !dbg !3423
  %call105 = tail call %union.tree_node* @build_constructor_from_list(%union.tree_node* %call, %union.tree_node* %call104) #6, !dbg !3424
  call void @llvm.dbg.value(metadata %union.tree_node* %call105, metadata !3293, metadata !DIExpression()), !dbg !3304
  ret %union.tree_node* %call105, !dbg !3425
}

declare dso_local void @varpool_finalize_decl(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_pointer_type(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_function_type_list(%union.tree_node*, ...) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_call_expr_loc(i32, %union.tree_node*, i32, ...) local_unnamed_addr #2

declare dso_local void @append_to_statement_list(%union.tree_node*, %union.tree_node**) local_unnamed_addr #2

declare dso_local void @cgraph_build_static_cdtor(i8 signext, %union.tree_node*, i32) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_qualified_type(%union.tree_node*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @get_gcov_unsigned_t() unnamed_addr #5 !dbg !3426 {
entry:
  %0 = load %union.tree_node* (i32, i32)*, %union.tree_node* (i32, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 34, i32 3), align 8, !dbg !3427
  %call = tail call %union.tree_node* %0(i32 32, i32 1) #6, !dbg !3428
  ret %union.tree_node* %call, !dbg !3429
}

declare dso_local %union.tree_node* @tree_cons_stat(%union.tree_node*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_int_cstu(%union.tree_node*, i64) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_string(i32, i8*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build_index_type(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @build1_stat(i32, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @build_fn_info_type(i32 %counters) unnamed_addr #5 !dbg !3430 {
entry:
  call void @llvm.dbg.value(metadata i32 %counters, metadata !3434, metadata !DIExpression()), !dbg !3439
  %0 = load %union.tree_node* (i32)*, %union.tree_node* (i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 34, i32 0), align 8, !dbg !3440
  %call = tail call %union.tree_node* %0(i32 16) #6, !dbg !3441
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3435, metadata !DIExpression()), !dbg !3439
  %call1 = tail call fastcc %union.tree_node* @get_gcov_unsigned_t() #7, !dbg !3442
  %call2 = tail call %union.tree_node* @build_decl_stat(i32 1, i32 31, %union.tree_node* null, %union.tree_node* %call1) #6, !dbg !3442
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !3437, metadata !DIExpression()), !dbg !3439
  %call3 = tail call fastcc %union.tree_node* @get_gcov_unsigned_t() #7, !dbg !3443
  %call4 = tail call %union.tree_node* @build_decl_stat(i32 1, i32 31, %union.tree_node* null, %union.tree_node* %call3) #6, !dbg !3443
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !3436, metadata !DIExpression()), !dbg !3439
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %call4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3444
  store %union.tree_node* %call2, %union.tree_node** %chain, align 8, !dbg !3445
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !3437, metadata !DIExpression()), !dbg !3439
  %sub = add i32 %counters, -1, !dbg !3446
  %conv = zext i32 %sub to i64, !dbg !3447
  %call5 = tail call %union.tree_node* @build_int_cst(%union.tree_node* null, i64 %conv) #6, !dbg !3448
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !3438, metadata !DIExpression()), !dbg !3439
  %call6 = tail call %union.tree_node* @build_index_type(%union.tree_node* %call5) #6, !dbg !3449
  call void @llvm.dbg.value(metadata %union.tree_node* %call6, metadata !3438, metadata !DIExpression()), !dbg !3439
  %call7 = tail call fastcc %union.tree_node* @get_gcov_unsigned_t() #7, !dbg !3450
  %call8 = tail call %union.tree_node* @build_array_type(%union.tree_node* %call7, %union.tree_node* %call6) #6, !dbg !3451
  call void @llvm.dbg.value(metadata %union.tree_node* %call8, metadata !3438, metadata !DIExpression()), !dbg !3439
  %call9 = tail call %union.tree_node* @build_decl_stat(i32 1, i32 31, %union.tree_node* null, %union.tree_node* %call8) #6, !dbg !3452
  call void @llvm.dbg.value(metadata %union.tree_node* %call9, metadata !3436, metadata !DIExpression()), !dbg !3439
  %chain11 = getelementptr inbounds %union.tree_node, %union.tree_node* %call9, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3453
  store %union.tree_node* %call4, %union.tree_node** %chain11, align 8, !dbg !3454
  call void @llvm.dbg.value(metadata %union.tree_node* %call9, metadata !3437, metadata !DIExpression()), !dbg !3439
  tail call void @finish_builtin_struct(%union.tree_node* %call, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i64 0, i64 0), %union.tree_node* %call9, %union.tree_node* null) #6, !dbg !3455
  ret %union.tree_node* %call, !dbg !3456
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @build_fn_info_value(%struct.function_list* %function, %union.tree_node* %type) unnamed_addr #5 !dbg !3457 {
entry:
  call void @llvm.dbg.value(metadata %struct.function_list* %function, metadata !3461, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !3462, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3463, metadata !DIExpression()), !dbg !3472
  %values = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3473
  %0 = bitcast i32* %values to %union.tree_node**, !dbg !3473
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3473
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !3464, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3466, metadata !DIExpression()), !dbg !3472
  %call = tail call fastcc %union.tree_node* @get_gcov_unsigned_t() #7, !dbg !3474
  %ident = getelementptr inbounds %struct.function_list, %struct.function_list* %function, i64 0, i32 1, !dbg !3474
  %2 = load i32, i32* %ident, align 8, !dbg !3474
  %conv = zext i32 %2 to i64, !dbg !3474
  %call2 = tail call %union.tree_node* @build_int_cstu(%union.tree_node* %call, i64 %conv) #6, !dbg !3474
  %call3 = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* %1, %union.tree_node* %call2, %union.tree_node* null) #6, !dbg !3474
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !3463, metadata !DIExpression()), !dbg !3472
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3475
  %3 = load %union.tree_node*, %union.tree_node** %chain, align 8, !dbg !3475
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !3464, metadata !DIExpression()), !dbg !3472
  %call4 = tail call fastcc %union.tree_node* @get_gcov_unsigned_t() #7, !dbg !3476
  %checksum = getelementptr inbounds %struct.function_list, %struct.function_list* %function, i64 0, i32 2, !dbg !3476
  %4 = load i32, i32* %checksum, align 4, !dbg !3476
  %conv5 = zext i32 %4 to i64, !dbg !3476
  %call6 = tail call %union.tree_node* @build_int_cstu(%union.tree_node* %call4, i64 %conv5) #6, !dbg !3476
  %call7 = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* %3, %union.tree_node* %call6, %union.tree_node* %call3) #6, !dbg !3476
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !3463, metadata !DIExpression()), !dbg !3472
  %chain9 = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3477
  %5 = load %union.tree_node*, %union.tree_node** %chain9, align 8, !dbg !3477
  call void @llvm.dbg.value(metadata %union.tree_node* %5, metadata !3464, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i32 0, metadata !3465, metadata !DIExpression()), !dbg !3472
  br label %for.cond, !dbg !3478

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ], !dbg !3479
  %array_value.0 = phi %union.tree_node* [ %array_value.1, %for.inc ], [ null, %entry ], !dbg !3472
  call void @llvm.dbg.value(metadata %union.tree_node* %array_value.0, metadata !3466, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3465, metadata !DIExpression()), !dbg !3472
  %cmp = icmp eq i64 %indvars.iv, 8, !dbg !3480
  br i1 %cmp, label %for.end, label %for.body, !dbg !3481

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* @prg_ctr_mask, align 4, !dbg !3482
  %7 = trunc i64 %indvars.iv to i32, !dbg !3483
  %shl = shl i32 1, %7, !dbg !3483
  %and = and i32 %6, %shl, !dbg !3484
  %tobool = icmp eq i32 %and, 0, !dbg !3484
  br i1 %tobool, label %for.inc, label %if.then, !dbg !3485

if.then:                                          ; preds = %for.body
  %call11 = tail call fastcc %union.tree_node* @get_gcov_unsigned_t() #7, !dbg !3486
  %arrayidx = getelementptr inbounds %struct.function_list, %struct.function_list* %function, i64 0, i32 3, i64 %indvars.iv, !dbg !3487
  %8 = load i32, i32* %arrayidx, align 4, !dbg !3487
  %conv12 = zext i32 %8 to i64, !dbg !3487
  %call13 = tail call %union.tree_node* @build_int_cstu(%union.tree_node* %call11, i64 %conv12) #6, !dbg !3488
  call void @llvm.dbg.value(metadata %union.tree_node* %call13, metadata !3467, metadata !DIExpression()), !dbg !3489
  %call14 = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* null, %union.tree_node* %call13, %union.tree_node* %array_value.0) #6, !dbg !3490
  call void @llvm.dbg.value(metadata %union.tree_node* %call14, metadata !3466, metadata !DIExpression()), !dbg !3472
  br label %for.inc, !dbg !3491

for.inc:                                          ; preds = %for.body, %if.then
  %array_value.1 = phi %union.tree_node* [ %call14, %if.then ], [ %array_value.0, %for.body ], !dbg !3472
  call void @llvm.dbg.value(metadata %union.tree_node* %array_value.1, metadata !3466, metadata !DIExpression()), !dbg !3472
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3492
  call void @llvm.dbg.value(metadata i32 undef, metadata !3465, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3472
  br label %for.cond, !dbg !3493, !llvm.loop !3494

for.end:                                          ; preds = %for.cond
  %array_value.0.lcssa = phi %union.tree_node* [ %array_value.0, %for.cond ], !dbg !3472
  call void @llvm.dbg.value(metadata %union.tree_node* %array_value.0.lcssa, metadata !3466, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata %union.tree_node* %array_value.0.lcssa, metadata !3466, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata %union.tree_node* %array_value.0.lcssa, metadata !3466, metadata !DIExpression()), !dbg !3472
  %type16 = getelementptr inbounds %union.tree_node, %union.tree_node* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3496
  %9 = load %union.tree_node*, %union.tree_node** %type16, align 8, !dbg !3496
  %call17 = tail call %union.tree_node* @nreverse(%union.tree_node* %array_value.0.lcssa) #6, !dbg !3497
  %call18 = tail call %union.tree_node* @build_constructor_from_list(%union.tree_node* %9, %union.tree_node* %call17) #6, !dbg !3498
  call void @llvm.dbg.value(metadata %union.tree_node* %call18, metadata !3466, metadata !DIExpression()), !dbg !3472
  %call19 = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* %5, %union.tree_node* %call18, %union.tree_node* %call7) #6, !dbg !3499
  call void @llvm.dbg.value(metadata %union.tree_node* %call19, metadata !3463, metadata !DIExpression()), !dbg !3472
  %call20 = tail call %union.tree_node* @nreverse(%union.tree_node* %call19) #6, !dbg !3500
  %call21 = tail call %union.tree_node* @build_constructor_from_list(%union.tree_node* %type, %union.tree_node* %call20) #6, !dbg !3501
  call void @llvm.dbg.value(metadata %union.tree_node* %call21, metadata !3463, metadata !DIExpression()), !dbg !3472
  ret %union.tree_node* %call21, !dbg !3502
}

declare dso_local %union.tree_node* @build_constructor_from_list(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.tree_node* @nreverse(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @build_ctr_info_type() unnamed_addr #5 !dbg !3503 {
entry:
  %0 = load %union.tree_node* (i32)*, %union.tree_node* (i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 34, i32 0), align 8, !dbg !3510
  %call = tail call %union.tree_node* %0(i32 16) #6, !dbg !3511
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3505, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3507, metadata !DIExpression()), !dbg !3512
  %call1 = tail call %union.tree_node* @get_gcov_type() #7, !dbg !3513
  %call2 = tail call %union.tree_node* @build_pointer_type(%union.tree_node* %call1) #6, !dbg !3514
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !3508, metadata !DIExpression()), !dbg !3512
  %call3 = tail call fastcc %union.tree_node* @get_gcov_unsigned_t() #7, !dbg !3515
  %call4 = tail call %union.tree_node* @build_decl_stat(i32 1, i32 31, %union.tree_node* null, %union.tree_node* %call3) #6, !dbg !3515
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !3506, metadata !DIExpression()), !dbg !3512
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %call4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3516
  store %union.tree_node* null, %union.tree_node** %chain, align 8, !dbg !3517
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !3507, metadata !DIExpression()), !dbg !3512
  %call5 = tail call %union.tree_node* @build_decl_stat(i32 1, i32 31, %union.tree_node* null, %union.tree_node* %call2) #6, !dbg !3518
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !3506, metadata !DIExpression()), !dbg !3512
  %chain7 = getelementptr inbounds %union.tree_node, %union.tree_node* %call5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3519
  store %union.tree_node* %call4, %union.tree_node** %chain7, align 8, !dbg !3520
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !3507, metadata !DIExpression()), !dbg !3512
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 38), align 16, !dbg !3521
  %call8 = tail call fastcc %union.tree_node* @get_gcov_unsigned_t() #7, !dbg !3522
  %call9 = tail call %union.tree_node* (%union.tree_node*, ...) @build_function_type_list(%union.tree_node* %1, %union.tree_node* %call2, %union.tree_node* %call8, %union.tree_node* null) #6, !dbg !3523
  call void @llvm.dbg.value(metadata %union.tree_node* %call9, metadata !3509, metadata !DIExpression()), !dbg !3512
  %call10 = tail call %union.tree_node* @build_pointer_type(%union.tree_node* %call9) #6, !dbg !3524
  %call11 = tail call %union.tree_node* @build_decl_stat(i32 1, i32 31, %union.tree_node* null, %union.tree_node* %call10) #6, !dbg !3524
  call void @llvm.dbg.value(metadata %union.tree_node* %call11, metadata !3506, metadata !DIExpression()), !dbg !3512
  %chain13 = getelementptr inbounds %union.tree_node, %union.tree_node* %call11, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3525
  store %union.tree_node* %call5, %union.tree_node** %chain13, align 8, !dbg !3526
  call void @llvm.dbg.value(metadata %union.tree_node* %call11, metadata !3507, metadata !DIExpression()), !dbg !3512
  tail call void @finish_builtin_struct(%union.tree_node* %call, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0), %union.tree_node* %call11, %union.tree_node* null) #6, !dbg !3527
  ret %union.tree_node* %call, !dbg !3528
}

; Function Attrs: nounwind uwtable
define internal fastcc %union.tree_node* @build_ctr_info_value(i32 %counter, %union.tree_node* %type) unnamed_addr #5 !dbg !3529 {
entry:
  call void @llvm.dbg.value(metadata i32 %counter, metadata !3533, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !3534, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !3535, metadata !DIExpression()), !dbg !3541
  %values = getelementptr inbounds %union.tree_node, %union.tree_node* %type, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3542
  %0 = bitcast i32* %values to %union.tree_node**, !dbg !3542
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3542
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !3536, metadata !DIExpression()), !dbg !3541
  %call = tail call fastcc %union.tree_node* @get_gcov_unsigned_t() #7, !dbg !3543
  %idxprom = zext i32 %counter to i64, !dbg !3543
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* @prg_n_ctrs, i64 0, i64 %idxprom, !dbg !3543
  %2 = load i32, i32* %arrayidx, align 4, !dbg !3543
  %conv = zext i32 %2 to i64, !dbg !3543
  %call2 = tail call %union.tree_node* @build_int_cstu(%union.tree_node* %call, i64 %conv) #6, !dbg !3543
  %call3 = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* %1, %union.tree_node* %call2, %union.tree_node* null) #6, !dbg !3543
  call void @llvm.dbg.value(metadata %union.tree_node* %call3, metadata !3535, metadata !DIExpression()), !dbg !3541
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3544
  %3 = load %union.tree_node*, %union.tree_node** %chain, align 8, !dbg !3544
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !3536, metadata !DIExpression()), !dbg !3541
  %4 = load i32, i32* %arrayidx, align 4, !dbg !3545
  %tobool = icmp eq i32 %4, 0, !dbg !3545
  br i1 %tobool, label %if.else, label %if.then, !dbg !3546

if.then:                                          ; preds = %entry
  %call6 = tail call fastcc %union.tree_node* @get_gcov_unsigned_t() #7, !dbg !3547
  %5 = load i32, i32* %arrayidx, align 4, !dbg !3548
  %sub = add i32 %5, -1, !dbg !3549
  %conv9 = zext i32 %sub to i64, !dbg !3548
  %call10 = tail call %union.tree_node* @build_int_cstu(%union.tree_node* %call6, i64 %conv9) #6, !dbg !3550
  call void @llvm.dbg.value(metadata %union.tree_node* %call10, metadata !3538, metadata !DIExpression()), !dbg !3551
  %call11 = tail call %union.tree_node* @build_index_type(%union.tree_node* %call10) #6, !dbg !3552
  call void @llvm.dbg.value(metadata %union.tree_node* %call11, metadata !3538, metadata !DIExpression()), !dbg !3551
  %type13 = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3553
  %6 = bitcast %union.tree_node** %type13 to %struct.tree_common**, !dbg !3553
  %7 = load %struct.tree_common*, %struct.tree_common** %6, align 8, !dbg !3553
  %type15 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %7, i64 0, i32 2, !dbg !3553
  %8 = load %union.tree_node*, %union.tree_node** %type15, align 8, !dbg !3553
  %call16 = tail call %union.tree_node* @build_array_type(%union.tree_node* %8, %union.tree_node* %call11) #6, !dbg !3554
  call void @llvm.dbg.value(metadata %union.tree_node* %call16, metadata !3538, metadata !DIExpression()), !dbg !3551
  %arrayidx18 = getelementptr inbounds [8 x %union.tree_node*], [8 x %union.tree_node*]* @tree_ctr_tables, i64 0, i64 %idxprom, !dbg !3555
  %9 = bitcast %union.tree_node** %arrayidx18 to %struct.tree_common**, !dbg !3555
  %10 = load %struct.tree_common*, %struct.tree_common** %9, align 8, !dbg !3555
  %type20 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %10, i64 0, i32 2, !dbg !3555
  store %union.tree_node* %call16, %union.tree_node** %type20, align 8, !dbg !3556
  %11 = getelementptr inbounds %union.tree_node, %union.tree_node* %call16, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3557
  %12 = bitcast %union.tree_node** %11 to i64*, !dbg !3557
  %13 = load i64, i64* %12, align 8, !dbg !3557
  %14 = bitcast %union.tree_node** %arrayidx18 to %struct.tree_decl_common**, !dbg !3558
  %15 = load %struct.tree_decl_common*, %struct.tree_decl_common** %14, align 8, !dbg !3558
  %size24 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %15, i64 0, i32 1, !dbg !3558
  %16 = bitcast %union.tree_node** %size24 to i64*, !dbg !3559
  store i64 %13, i64* %16, align 8, !dbg !3559
  %17 = getelementptr inbounds %union.tree_node, %union.tree_node* %call16, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3560
  %18 = bitcast %union.tree_node** %17 to i64*, !dbg !3560
  %19 = load i64, i64* %18, align 8, !dbg !3560
  %20 = load %struct.tree_decl_common*, %struct.tree_decl_common** %14, align 8, !dbg !3561
  %size_unit29 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %20, i64 0, i32 4, !dbg !3561
  %21 = bitcast %union.tree_node** %size_unit29 to i64*, !dbg !3562
  store i64 %19, i64* %21, align 8, !dbg !3562
  %22 = load %union.tree_node*, %union.tree_node** %arrayidx18, align 8, !dbg !3563
  tail call void @varpool_finalize_decl(%union.tree_node* %22) #6, !dbg !3564
  %23 = load %union.tree_node*, %union.tree_node** %type13, align 8, !dbg !3565
  %24 = load %union.tree_node*, %union.tree_node** %arrayidx18, align 8, !dbg !3565
  %call36 = tail call %union.tree_node* @build1_stat(i32 121, %union.tree_node* %23, %union.tree_node* %24) #6, !dbg !3565
  %call37 = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* %3, %union.tree_node* %call36, %union.tree_node* %call3) #6, !dbg !3565
  call void @llvm.dbg.value(metadata %union.tree_node* %call37, metadata !3535, metadata !DIExpression()), !dbg !3541
  br label %if.end, !dbg !3566

if.else:                                          ; preds = %entry
  %25 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 16), align 16, !dbg !3567
  %call38 = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* %3, %union.tree_node* %25, %union.tree_node* %call3) #6, !dbg !3567
  call void @llvm.dbg.value(metadata %union.tree_node* %call38, metadata !3535, metadata !DIExpression()), !dbg !3541
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %value.0 = phi %union.tree_node* [ %call37, %if.then ], [ %call38, %if.else ], !dbg !3568
  call void @llvm.dbg.value(metadata %union.tree_node* %value.0, metadata !3535, metadata !DIExpression()), !dbg !3541
  %chain40 = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3569
  %26 = load %union.tree_node*, %union.tree_node** %chain40, align 8, !dbg !3569
  call void @llvm.dbg.value(metadata %union.tree_node* %26, metadata !3536, metadata !DIExpression()), !dbg !3541
  %arrayidx42 = getelementptr inbounds [8 x i8*], [8 x i8*]* @ctr_merge_functions, i64 0, i64 %idxprom, !dbg !3570
  %27 = load i8*, i8** %arrayidx42, align 8, !dbg !3570
  %call43 = tail call %union.tree_node* @get_identifier(i8* %27) #6, !dbg !3570
  %type45 = getelementptr inbounds %union.tree_node, %union.tree_node* %26, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3570
  %28 = bitcast %union.tree_node** %type45 to %struct.tree_common**, !dbg !3570
  %29 = load %struct.tree_common*, %struct.tree_common** %28, align 8, !dbg !3570
  %type47 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %29, i64 0, i32 2, !dbg !3570
  %30 = load %union.tree_node*, %union.tree_node** %type47, align 8, !dbg !3570
  %call48 = tail call %union.tree_node* @build_decl_stat(i32 1, i32 29, %union.tree_node* %call43, %union.tree_node* %30) #6, !dbg !3570
  call void @llvm.dbg.value(metadata %union.tree_node* %call48, metadata !3537, metadata !DIExpression()), !dbg !3541
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call48, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3571
  %31 = bitcast i40* %decl_flag_1 to i64*, !dbg !3571
  %bf.load = load i64, i64* %31, align 8, !dbg !3572
  %32 = getelementptr inbounds %union.tree_node, %union.tree_node* %call48, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3573
  %bf.load50 = load i64, i64* %32, align 8, !dbg !3574
  %bf.set56 = or i64 %bf.load, 33558528, !dbg !3575
  store i64 %bf.set56, i64* %31, align 8, !dbg !3575
  %bf.set60 = or i64 %bf.load50, 167772160, !dbg !3576
  store i64 %bf.set60, i64* %32, align 8, !dbg !3576
  %call61 = tail call %union.tree_node* @decl_assembler_name(%union.tree_node* %call48) #6, !dbg !3577
  %33 = load %union.tree_node*, %union.tree_node** %type45, align 8, !dbg !3578
  %call64 = tail call %union.tree_node* @build1_stat(i32 121, %union.tree_node* %33, %union.tree_node* %call48) #6, !dbg !3578
  %call65 = tail call %union.tree_node* @tree_cons_stat(%union.tree_node* %26, %union.tree_node* %call64, %union.tree_node* %value.0) #6, !dbg !3578
  call void @llvm.dbg.value(metadata %union.tree_node* %call65, metadata !3535, metadata !DIExpression()), !dbg !3541
  %call66 = tail call %union.tree_node* @nreverse(%union.tree_node* %call65) #6, !dbg !3579
  %call67 = tail call %union.tree_node* @build_constructor_from_list(%union.tree_node* %type, %union.tree_node* %call66) #6, !dbg !3580
  call void @llvm.dbg.value(metadata %union.tree_node* %call67, metadata !3535, metadata !DIExpression()), !dbg !3541
  ret %union.tree_node* %call67, !dbg !3581
}

declare dso_local void @finish_builtin_struct(%union.tree_node*, i8*, %union.tree_node*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable
declare i32 @llvm.bswap.i32(i32) #1

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
!llvm.module.flags = !{!1633, !1634, !1635}
!llvm.ident = !{!1636}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "gcov_var", scope: !2, file: !389, line: 520, type: !1567, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !377, globals: !1493, nameTableKind: None)
!3 = !DIFile(filename: "coverage.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !140, !145, !150, !169, !176, !183}
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
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !146, line: 474, baseType: !7, size: 32, elements: !147)
!146 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!147 = !{!148, !149}
!148 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!149 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !151, line: 280, baseType: !7, size: 32, elements: !152)
!151 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!152 = !{!153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168}
!153 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!154 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!155 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!156 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!157 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!158 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!159 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!160 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!161 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!162 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!163 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!164 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!165 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!166 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!167 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!168 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !151, line: 1817, baseType: !7, size: 32, elements: !170)
!170 = !{!171, !172, !173, !174, !175}
!171 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!172 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!173 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!174 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!175 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !151, line: 1805, baseType: !7, size: 32, elements: !177)
!177 = !{!178, !179, !180, !181, !182}
!178 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!179 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!180 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!181 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!182 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !151, line: 39, baseType: !7, size: 32, elements: !184)
!184 = !{!185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376}
!185 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!186 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!187 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!188 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!189 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!190 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!191 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!192 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!193 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!194 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!195 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!196 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!197 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!198 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!199 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!200 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!201 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!202 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!203 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!204 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!205 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!206 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!207 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!208 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!209 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!210 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!211 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!212 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!213 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!214 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!215 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!216 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!217 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!218 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!219 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!220 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!221 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!222 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!223 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!224 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!225 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!226 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!227 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!228 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!229 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!230 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!231 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!232 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!233 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!234 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!235 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!236 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!237 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!238 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!239 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!240 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!241 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!242 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!243 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!244 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!245 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!246 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!247 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!248 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!249 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!250 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!251 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!252 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!253 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!254 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!255 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!256 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!257 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!258 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!259 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!260 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!261 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!262 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!263 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!264 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!265 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!266 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!267 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!268 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!269 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!270 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!271 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!272 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!273 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!274 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!275 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!276 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!277 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!278 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!279 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!280 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!281 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!282 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!283 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!284 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!285 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!286 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!287 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!288 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!289 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!290 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!291 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!292 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!293 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!294 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!295 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!296 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!297 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!298 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!299 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!300 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!301 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!302 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!303 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!304 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!305 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!306 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!307 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!308 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!309 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!310 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!311 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!312 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!313 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!314 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!315 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!316 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!317 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!318 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!319 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!320 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!321 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!322 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!323 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!324 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!325 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!326 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!327 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!328 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!329 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!330 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!331 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!332 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!333 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!334 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!335 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!336 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!337 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!338 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!339 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!340 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!341 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!342 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!343 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!344 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!345 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!346 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!347 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!348 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!349 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!350 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!351 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!352 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!353 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!354 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!355 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!356 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!357 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!358 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!359 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!360 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!361 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!362 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!363 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!364 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!365 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!366 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!367 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!368 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!369 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!370 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!371 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!372 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!373 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!374 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!375 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!376 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!377 = !{!378, !379, !380, !381, !384, !385, !382, !387, !390, !392, !411, !537, !7, !388, !1480, !383, !1490, !400, !1491}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!380 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_unsigned_t", file: !389, line: 205, baseType: !7)
!389 = !DIFile(filename: "./gcov-io.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !135, line: 119, baseType: !391)
!391 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "counts_entry_t", file: !3, line: 75, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "counts_entry", file: !3, line: 61, size: 512, elements: !395)
!395 = !{!396, !397, !398, !399, !401, !409}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !394, file: !3, line: 64, baseType: !7, size: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "ctr", scope: !394, file: !3, line: 65, baseType: !7, size: 32, offset: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !394, file: !3, line: 68, baseType: !7, size: 32, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !394, file: !3, line: 69, baseType: !400, size: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "summary", scope: !394, file: !3, line: 70, baseType: !402, size: 256, offset: 192)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gcov_ctr_summary", file: !389, line: 391, size: 256, elements: !403)
!403 = !{!404, !405, !406, !407, !408}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !402, file: !389, line: 393, baseType: !388, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "runs", scope: !402, file: !389, line: 394, baseType: !388, size: 32, offset: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "sum_all", scope: !402, file: !389, line: 395, baseType: !390, size: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "run_max", scope: !402, file: !389, line: 396, baseType: !390, size: 64, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "sum_max", scope: !402, file: !389, line: 397, baseType: !390, size: 64, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !394, file: !3, line: 73, baseType: !410, size: 64, offset: 448)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !412, line: 56, baseType: !413)
!412 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !151, line: 3371, size: 1792, elements: !415)
!415 = !{!416, !449, !455, !467, !486, !497, !502, !511, !517, !530, !542, !580, !860, !888, !896, !897, !902, !911, !917, !922, !926, !930, !1106, !1153, !1159, !1166, !1173, !1199, !1224, !1241, !1253, !1275, !1290, !1462}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !414, file: !151, line: 3372, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !151, line: 360, size: 64, elements: !418)
!418 = !{!419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !417, file: !151, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !417, file: !151, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !417, file: !151, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !417, file: !151, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !417, file: !151, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !417, file: !151, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !417, file: !151, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !417, file: !151, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !417, file: !151, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !417, file: !151, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !417, file: !151, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !417, file: !151, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !417, file: !151, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !417, file: !151, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !417, file: !151, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !417, file: !151, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !417, file: !151, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !417, file: !151, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !417, file: !151, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !417, file: !151, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !417, file: !151, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !417, file: !151, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !417, file: !151, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !417, file: !151, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !417, file: !151, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !417, file: !151, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !417, file: !151, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !417, file: !151, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !417, file: !151, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !417, file: !151, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !414, file: !151, line: 3373, baseType: !450, size: 192)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !151, line: 402, size: 192, elements: !451)
!451 = !{!452, !453, !454}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !450, file: !151, line: 403, baseType: !417, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !450, file: !151, line: 404, baseType: !411, size: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !450, file: !151, line: 405, baseType: !411, size: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !414, file: !151, line: 3374, baseType: !456, size: 320)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !151, line: 1384, size: 320, elements: !457)
!457 = !{!458, !459}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !456, file: !151, line: 1385, baseType: !450, size: 192)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !456, file: !151, line: 1386, baseType: !460, size: 128, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !461, line: 58, baseType: !462)
!461 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !461, line: 54, size: 128, elements: !463)
!463 = !{!464, !466}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !462, file: !461, line: 56, baseType: !465, size: 64)
!465 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !462, file: !461, line: 57, baseType: !391, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !414, file: !151, line: 3375, baseType: !468, size: 256)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !151, line: 1397, size: 256, elements: !469)
!469 = !{!470, !471}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !468, file: !151, line: 1398, baseType: !450, size: 192)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !468, file: !151, line: 1399, baseType: !472, size: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !474, line: 52, size: 256, elements: !475)
!474 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!475 = !{!476, !477, !478, !479, !480, !481, !482}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !473, file: !474, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !473, file: !474, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !473, file: !474, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !473, file: !474, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !473, file: !474, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !473, file: !474, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !473, file: !474, line: 62, baseType: !483, size: 192, offset: 64)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 192, elements: !484)
!484 = !{!485}
!485 = !DISubrange(count: 3)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !414, file: !151, line: 3376, baseType: !487, size: 256)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !151, line: 1408, size: 256, elements: !488)
!488 = !{!489, !490}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !487, file: !151, line: 1409, baseType: !450, size: 192)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !487, file: !151, line: 1410, baseType: !491, size: 64, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !493, line: 27, size: 192, elements: !494)
!493 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!494 = !{!495, !496}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !492, file: !493, line: 29, baseType: !460, size: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !492, file: !493, line: 30, baseType: !5, size: 32, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !414, file: !151, line: 3377, baseType: !498, size: 256)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !151, line: 1437, size: 256, elements: !499)
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !498, file: !151, line: 1438, baseType: !450, size: 192)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !498, file: !151, line: 1439, baseType: !411, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !414, file: !151, line: 3378, baseType: !503, size: 256)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !151, line: 1418, size: 256, elements: !504)
!504 = !{!505, !506, !507}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !503, file: !151, line: 1419, baseType: !450, size: 192)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !503, file: !151, line: 1420, baseType: !380, size: 32, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !503, file: !151, line: 1421, baseType: !508, size: 8, offset: 224)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 8, elements: !509)
!509 = !{!510}
!510 = !DISubrange(count: 1)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !414, file: !151, line: 3379, baseType: !512, size: 320)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !151, line: 1428, size: 320, elements: !513)
!513 = !{!514, !515, !516}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !512, file: !151, line: 1429, baseType: !450, size: 192)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !512, file: !151, line: 1430, baseType: !411, size: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !512, file: !151, line: 1431, baseType: !411, size: 64, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !414, file: !151, line: 3380, baseType: !518, size: 320)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !151, line: 1460, size: 320, elements: !519)
!519 = !{!520, !521}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !518, file: !151, line: 1461, baseType: !450, size: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !518, file: !151, line: 1462, baseType: !522, size: 128, offset: 192)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !523, line: 31, size: 128, elements: !524)
!523 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!524 = !{!525, !528, !529}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !522, file: !523, line: 32, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !522, file: !523, line: 33, baseType: !7, size: 32, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !522, file: !523, line: 34, baseType: !7, size: 32, offset: 96)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !414, file: !151, line: 3381, baseType: !531, size: 384)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !151, line: 2507, size: 384, elements: !532)
!532 = !{!533, !534, !539, !540, !541}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !531, file: !151, line: 2508, baseType: !450, size: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !531, file: !151, line: 2509, baseType: !535, size: 32, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !536, line: 58, baseType: !537)
!536 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !538, line: 44, baseType: !7)
!538 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!539 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !531, file: !151, line: 2510, baseType: !7, size: 32, offset: 224)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !531, file: !151, line: 2511, baseType: !411, size: 64, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !531, file: !151, line: 2512, baseType: !411, size: 64, offset: 320)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !414, file: !151, line: 3382, baseType: !543, size: 896)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !151, line: 2652, size: 896, elements: !544)
!544 = !{!545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !543, file: !151, line: 2653, baseType: !531, size: 384)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !543, file: !151, line: 2654, baseType: !411, size: 64, offset: 384)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !543, file: !151, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !543, file: !151, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !543, file: !151, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !543, file: !151, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !543, file: !151, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !543, file: !151, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !543, file: !151, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !543, file: !151, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !543, file: !151, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !543, file: !151, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !543, file: !151, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !543, file: !151, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !543, file: !151, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !543, file: !151, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !543, file: !151, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !543, file: !151, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !543, file: !151, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !543, file: !151, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !543, file: !151, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !543, file: !151, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !543, file: !151, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !543, file: !151, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !543, file: !151, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !543, file: !151, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !543, file: !151, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !543, file: !151, line: 2703, baseType: !7, size: 32, offset: 512)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !543, file: !151, line: 2705, baseType: !411, size: 64, offset: 576)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !543, file: !151, line: 2706, baseType: !411, size: 64, offset: 640)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !543, file: !151, line: 2707, baseType: !411, size: 64, offset: 704)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !543, file: !151, line: 2708, baseType: !411, size: 64, offset: 768)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !543, file: !151, line: 2711, baseType: !578, size: 64, offset: 832)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !151, line: 2711, flags: DIFlagFwdDecl)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !414, file: !151, line: 3383, baseType: !581, size: 960)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !151, line: 2756, size: 960, elements: !582)
!582 = !{!583, !584}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !581, file: !151, line: 2757, baseType: !543, size: 896)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !581, file: !151, line: 2758, baseType: !585, size: 64, offset: 896)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !412, line: 50, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !588, line: 240, size: 384, elements: !589)
!588 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!589 = !{!590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !587, file: !588, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !587, file: !588, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !587, file: !588, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !587, file: !588, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !587, file: !588, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !587, file: !588, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !587, file: !588, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !587, file: !588, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !587, file: !588, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !587, file: !588, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !587, file: !588, line: 321, baseType: !601, size: 320, offset: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !588, line: 315, size: 320, elements: !602)
!602 = !{!603, !793, !795, !858, !859}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !601, file: !588, line: 316, baseType: !604, size: 64)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 64, elements: !509)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !588, line: 183, baseType: !606)
!606 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !588, line: 166, size: 64, elements: !607)
!607 = !{!608, !609, !610, !611, !612, !620, !621, !633, !636, !696, !697, !770, !783, !790}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !606, file: !588, line: 168, baseType: !380, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !606, file: !588, line: 169, baseType: !7, size: 32)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !606, file: !588, line: 170, baseType: !385, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !606, file: !588, line: 171, baseType: !585, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !606, file: !588, line: 172, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !412, line: 53, baseType: !614)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !588, line: 359, size: 128, elements: !616)
!616 = !{!617, !618}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !615, file: !588, line: 360, baseType: !380, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !615, file: !588, line: 361, baseType: !619, size: 64, offset: 64)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 64, elements: !509)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !606, file: !588, line: 173, baseType: !5, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !606, file: !588, line: 174, baseType: !622, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !588, line: 133, baseType: !623)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !588, line: 115, size: 32, elements: !624)
!624 = !{!625, !626, !627, !628, !629, !630, !631, !632}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !623, file: !588, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !623, file: !588, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !623, file: !588, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !623, file: !588, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !623, file: !588, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !623, file: !588, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !623, file: !588, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !623, file: !588, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !606, file: !588, line: 175, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !588, line: 175, flags: DIFlagFwdDecl)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !606, file: !588, line: 176, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !639, line: 75, size: 256, elements: !640)
!639 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!640 = !{!641, !655, !656, !657}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !638, file: !639, line: 76, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !639, line: 68, baseType: !644)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !639, line: 63, size: 320, elements: !645)
!645 = !{!646, !648, !649, !650}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !644, file: !639, line: 64, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !644, file: !639, line: 65, baseType: !647, size: 64, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !644, file: !639, line: 66, baseType: !7, size: 32, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !644, file: !639, line: 67, baseType: !651, size: 128, offset: 192)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !652, size: 128, elements: !653)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !639, line: 29, baseType: !465)
!653 = !{!654}
!654 = !DISubrange(count: 2)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !638, file: !639, line: 77, baseType: !642, size: 64, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !638, file: !639, line: 78, baseType: !7, size: 32, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !638, file: !639, line: 79, baseType: !658, size: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !639, line: 49, baseType: !660)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !639, line: 45, size: 832, elements: !661)
!661 = !{!662, !663, !664}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !660, file: !639, line: 46, baseType: !647, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !660, file: !639, line: 47, baseType: !637, size: 64, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !660, file: !639, line: 48, baseType: !665, size: 704, offset: 128)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !666, line: 164, size: 704, elements: !667)
!666 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!667 = !{!668, !669, !679, !680, !681, !682, !683, !684, !688, !692, !693, !694, !695}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !665, file: !666, line: 166, baseType: !391, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !665, file: !666, line: 167, baseType: !670, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !666, line: 157, size: 192, elements: !672)
!672 = !{!673, !674, !675}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !671, file: !666, line: 159, baseType: !382, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !671, file: !666, line: 160, baseType: !670, size: 64, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !671, file: !666, line: 161, baseType: !676, size: 32, offset: 128)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 32, elements: !677)
!677 = !{!678}
!678 = !DISubrange(count: 4)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !665, file: !666, line: 168, baseType: !382, size: 64, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !665, file: !666, line: 169, baseType: !382, size: 64, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !665, file: !666, line: 170, baseType: !382, size: 64, offset: 256)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !665, file: !666, line: 171, baseType: !391, size: 64, offset: 320)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !665, file: !666, line: 172, baseType: !380, size: 32, offset: 384)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !665, file: !666, line: 176, baseType: !685, size: 64, offset: 448)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!670, !384, !391}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !665, file: !666, line: 177, baseType: !689, size: 64, offset: 512)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !384, !670}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !665, file: !666, line: 178, baseType: !384, size: 64, offset: 576)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !665, file: !666, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !665, file: !666, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !665, file: !666, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !606, file: !588, line: 177, baseType: !411, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !606, file: !588, line: 178, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !135, line: 217, size: 832, elements: !700)
!700 = !{!701, !735, !736, !737, !740, !744, !745, !746, !764, !765, !766, !767, !768, !769}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !699, file: !135, line: 219, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !135, line: 151, baseType: !704)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !135, line: 151, size: 128, elements: !705)
!705 = !{!706}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !704, file: !135, line: 151, baseType: !707, size: 128)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !135, line: 150, baseType: !708)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !135, line: 150, size: 128, elements: !709)
!709 = !{!710, !711, !712}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !708, file: !135, line: 150, baseType: !7, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !708, file: !135, line: 150, baseType: !7, size: 32, offset: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !708, file: !135, line: 150, baseType: !713, size: 64, offset: 64)
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !714, size: 64, elements: !509)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !412, line: 108, baseType: !715)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !135, line: 122, size: 512, elements: !717)
!717 = !{!718, !719, !720, !728, !729, !730, !731, !732, !733, !734}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !716, file: !135, line: 124, baseType: !698, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !716, file: !135, line: 125, baseType: !698, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !716, file: !135, line: 131, baseType: !721, size: 64, offset: 128)
!721 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !135, line: 128, size: 64, elements: !722)
!722 = !{!723, !727}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !721, file: !135, line: 129, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !412, line: 66, baseType: !725)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !412, line: 65, flags: DIFlagFwdDecl)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !721, file: !135, line: 130, baseType: !585, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !716, file: !135, line: 134, baseType: !384, size: 64, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !716, file: !135, line: 137, baseType: !411, size: 64, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !716, file: !135, line: 138, baseType: !535, size: 32, offset: 320)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !716, file: !135, line: 142, baseType: !7, size: 32, offset: 352)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !716, file: !135, line: 144, baseType: !380, size: 32, offset: 384)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !716, file: !135, line: 145, baseType: !380, size: 32, offset: 416)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !716, file: !135, line: 146, baseType: !390, size: 64, offset: 448)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !699, file: !135, line: 220, baseType: !702, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !699, file: !135, line: 223, baseType: !384, size: 64, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !699, file: !135, line: 226, baseType: !738, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !135, line: 185, flags: DIFlagFwdDecl)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !699, file: !135, line: 229, baseType: !741, size: 128, offset: 256)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !742, size: 128, elements: !653)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !135, line: 229, flags: DIFlagFwdDecl)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !699, file: !135, line: 232, baseType: !698, size: 64, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !699, file: !135, line: 233, baseType: !698, size: 64, offset: 448)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !699, file: !135, line: 238, baseType: !747, size: 64, offset: 512)
!747 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !135, line: 235, size: 64, elements: !748)
!748 = !{!749, !755}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !747, file: !135, line: 236, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !135, line: 273, size: 128, elements: !752)
!752 = !{!753, !754}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !751, file: !135, line: 275, baseType: !724, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !751, file: !135, line: 278, baseType: !724, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !747, file: !135, line: 237, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !135, line: 259, size: 320, elements: !758)
!758 = !{!759, !760, !761, !762, !763}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !757, file: !135, line: 261, baseType: !585, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !757, file: !135, line: 262, baseType: !585, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !757, file: !135, line: 266, baseType: !585, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !757, file: !135, line: 267, baseType: !585, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !757, file: !135, line: 270, baseType: !380, size: 32, offset: 256)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !699, file: !135, line: 241, baseType: !390, size: 64, offset: 576)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !699, file: !135, line: 244, baseType: !380, size: 32, offset: 640)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !699, file: !135, line: 247, baseType: !380, size: 32, offset: 672)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !699, file: !135, line: 250, baseType: !380, size: 32, offset: 704)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !699, file: !135, line: 253, baseType: !380, size: 32, offset: 736)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !699, file: !135, line: 256, baseType: !380, size: 32, offset: 768)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !606, file: !588, line: 179, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !588, line: 150, baseType: !773)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !588, line: 142, size: 320, elements: !774)
!774 = !{!775, !776, !777, !778, !781, !782}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !773, file: !588, line: 144, baseType: !411, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !773, file: !588, line: 145, baseType: !585, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !773, file: !588, line: 146, baseType: !585, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !773, file: !588, line: 147, baseType: !779, size: 32, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !780, line: 31, baseType: !380)
!780 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!781 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !773, file: !588, line: 148, baseType: !7, size: 32, offset: 224)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !773, file: !588, line: 149, baseType: !379, size: 8, offset: 256)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !606, file: !588, line: 180, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !588, line: 162, baseType: !786)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !588, line: 159, size: 128, elements: !787)
!787 = !{!788, !789}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !786, file: !588, line: 160, baseType: !411, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !786, file: !588, line: 161, baseType: !391, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !606, file: !588, line: 181, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !588, line: 181, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !601, file: !588, line: 317, baseType: !794, size: 64)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 64, elements: !509)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !601, file: !588, line: 318, baseType: !796, size: 320)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !588, line: 188, size: 320, elements: !797)
!797 = !{!798, !800, !857}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !796, file: !588, line: 190, baseType: !799, size: 192)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 192, elements: !484)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !796, file: !588, line: 193, baseType: !801, size: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !588, line: 206, size: 320, elements: !803)
!803 = !{!804, !842, !843, !844, !856}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !802, file: !588, line: 208, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !412, line: 62, baseType: !807)
!807 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !808, line: 538, size: 256, elements: !809)
!808 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!809 = !{!810, !814, !820, !833}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !807, file: !808, line: 539, baseType: !811, size: 32)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !808, line: 482, size: 32, elements: !812)
!812 = !{!813}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !811, file: !808, line: 484, baseType: !7, size: 32)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !807, file: !808, line: 540, baseType: !815, size: 192)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !808, line: 488, size: 192, elements: !816)
!816 = !{!817, !818, !819}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !815, file: !808, line: 489, baseType: !811, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !815, file: !808, line: 492, baseType: !385, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !815, file: !808, line: 496, baseType: !411, size: 64, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !807, file: !808, line: 541, baseType: !821, size: 256)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !808, line: 504, size: 256, elements: !822)
!822 = !{!823, !824, !831, !832}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !821, file: !808, line: 505, baseType: !811, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !821, file: !808, line: 509, baseType: !825, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !808, line: 501, baseType: !826)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{null, !829}
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !821, file: !808, line: 510, baseType: !829, size: 64, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !821, file: !808, line: 513, baseType: !805, size: 64, offset: 192)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !807, file: !808, line: 542, baseType: !834, size: 128)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !808, line: 530, size: 128, elements: !835)
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !834, file: !808, line: 531, baseType: !811, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !834, file: !808, line: 534, baseType: !838, size: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !808, line: 525, baseType: !839)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!379, !411, !385, !465, !465}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !802, file: !588, line: 211, baseType: !7, size: 32, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !802, file: !588, line: 214, baseType: !391, size: 64, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !802, file: !588, line: 224, baseType: !845, size: 64, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !588, line: 202, baseType: !847)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !588, line: 202, size: 128, elements: !848)
!848 = !{!849}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !847, file: !588, line: 202, baseType: !850, size: 128)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !588, line: 200, baseType: !851)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !588, line: 200, size: 128, elements: !852)
!852 = !{!853, !854, !855}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !851, file: !588, line: 200, baseType: !7, size: 32)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !851, file: !588, line: 200, baseType: !7, size: 32, offset: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !851, file: !588, line: 200, baseType: !619, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !802, file: !588, line: 234, baseType: !845, size: 64, offset: 256)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !796, file: !588, line: 197, baseType: !391, size: 64, offset: 256)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !601, file: !588, line: 319, baseType: !473, size: 256)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !601, file: !588, line: 320, baseType: !492, size: 192)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !414, file: !151, line: 3384, baseType: !861, size: 1472)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !151, line: 3114, size: 1472, elements: !862)
!862 = !{!863, !884, !885, !886, !887}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !861, file: !151, line: 3115, baseType: !864, size: 1216)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !151, line: 2984, size: 1216, elements: !865)
!865 = !{!866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !864, file: !151, line: 2985, baseType: !581, size: 960)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !864, file: !151, line: 2986, baseType: !411, size: 64, offset: 960)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !864, file: !151, line: 2987, baseType: !411, size: 64, offset: 1024)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !864, file: !151, line: 2988, baseType: !411, size: 64, offset: 1088)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !864, file: !151, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !864, file: !151, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !864, file: !151, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !864, file: !151, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !864, file: !151, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !864, file: !151, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !864, file: !151, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !864, file: !151, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !864, file: !151, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !864, file: !151, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !864, file: !151, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !864, file: !151, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !864, file: !151, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !864, file: !151, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !861, file: !151, line: 3117, baseType: !411, size: 64, offset: 1216)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !861, file: !151, line: 3119, baseType: !411, size: 64, offset: 1280)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !861, file: !151, line: 3121, baseType: !411, size: 64, offset: 1344)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !861, file: !151, line: 3123, baseType: !411, size: 64, offset: 1408)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !414, file: !151, line: 3385, baseType: !889, size: 1088)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !151, line: 2874, size: 1088, elements: !890)
!890 = !{!891, !892, !893}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !889, file: !151, line: 2875, baseType: !581, size: 960)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !889, file: !151, line: 2876, baseType: !585, size: 64, offset: 960)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !889, file: !151, line: 2877, baseType: !894, size: 64, offset: 1024)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !151, line: 2856, flags: DIFlagFwdDecl)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !414, file: !151, line: 3386, baseType: !864, size: 1216)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !414, file: !151, line: 3387, baseType: !898, size: 1280)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !151, line: 3093, size: 1280, elements: !899)
!899 = !{!900, !901}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !898, file: !151, line: 3094, baseType: !864, size: 1216)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !898, file: !151, line: 3095, baseType: !894, size: 64, offset: 1216)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !414, file: !151, line: 3388, baseType: !903, size: 1216)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !151, line: 2824, size: 1216, elements: !904)
!904 = !{!905, !906, !907, !908, !909, !910}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !903, file: !151, line: 2825, baseType: !543, size: 896)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !903, file: !151, line: 2827, baseType: !411, size: 64, offset: 896)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !903, file: !151, line: 2828, baseType: !411, size: 64, offset: 960)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !903, file: !151, line: 2829, baseType: !411, size: 64, offset: 1024)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !903, file: !151, line: 2830, baseType: !411, size: 64, offset: 1088)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !903, file: !151, line: 2831, baseType: !411, size: 64, offset: 1152)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !414, file: !151, line: 3389, baseType: !912, size: 1024)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !151, line: 2850, size: 1024, elements: !913)
!913 = !{!914, !915, !916}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !912, file: !151, line: 2851, baseType: !581, size: 960)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !912, file: !151, line: 2852, baseType: !380, size: 32, offset: 960)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !912, file: !151, line: 2853, baseType: !380, size: 32, offset: 992)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !414, file: !151, line: 3390, baseType: !918, size: 1024)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !151, line: 2857, size: 1024, elements: !919)
!919 = !{!920, !921}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !918, file: !151, line: 2858, baseType: !581, size: 960)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !918, file: !151, line: 2859, baseType: !894, size: 64, offset: 960)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !414, file: !151, line: 3391, baseType: !923, size: 960)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !151, line: 2862, size: 960, elements: !924)
!924 = !{!925}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !923, file: !151, line: 2863, baseType: !581, size: 960)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !414, file: !151, line: 3392, baseType: !927, size: 1472)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !151, line: 3304, size: 1472, elements: !928)
!928 = !{!929}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !927, file: !151, line: 3305, baseType: !861, size: 1472)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !414, file: !151, line: 3393, baseType: !931, size: 1792)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !151, line: 3248, size: 1792, elements: !932)
!932 = !{!933, !934, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !931, file: !151, line: 3249, baseType: !861, size: 1472)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !931, file: !151, line: 3251, baseType: !935, size: 64, offset: 1472)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !937, line: 463, size: 1152, elements: !938)
!937 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!938 = !{!939, !942, !973, !974, !977, !980, !1030, !1031, !1032, !1033, !1034, !1058, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !936, file: !937, line: 464, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !937, line: 464, flags: DIFlagFwdDecl)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !936, file: !937, line: 467, baseType: !943, size: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !135, line: 374, size: 640, elements: !945)
!945 = !{!946, !948, !949, !962, !963, !964, !965, !966, !967, !969, !971, !972}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !944, file: !135, line: 377, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !412, line: 111, baseType: !698)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !944, file: !135, line: 378, baseType: !947, size: 64, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !944, file: !135, line: 381, baseType: !950, size: 64, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !135, line: 282, baseType: !952)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !135, line: 282, size: 128, elements: !953)
!953 = !{!954}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !952, file: !135, line: 282, baseType: !955, size: 128)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !135, line: 281, baseType: !956)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !135, line: 281, size: 128, elements: !957)
!957 = !{!958, !959, !960}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !956, file: !135, line: 281, baseType: !7, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !956, file: !135, line: 281, baseType: !7, size: 32, offset: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !956, file: !135, line: 281, baseType: !961, size: 64, offset: 64)
!961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !947, size: 64, elements: !509)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !944, file: !135, line: 384, baseType: !380, size: 32, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !944, file: !135, line: 387, baseType: !380, size: 32, offset: 224)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !944, file: !135, line: 390, baseType: !380, size: 32, offset: 256)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !944, file: !135, line: 394, baseType: !950, size: 64, offset: 320)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !944, file: !135, line: 396, baseType: !134, size: 32, offset: 384)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !944, file: !135, line: 399, baseType: !968, size: 64, offset: 416)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 64, elements: !653)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !944, file: !135, line: 402, baseType: !970, size: 64, offset: 480)
!970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !653)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !944, file: !135, line: 406, baseType: !380, size: 32, offset: 544)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !944, file: !135, line: 409, baseType: !380, size: 32, offset: 576)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !936, file: !937, line: 470, baseType: !725, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !936, file: !937, line: 473, baseType: !975, size: 64, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !937, line: 166, flags: DIFlagFwdDecl)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !936, file: !937, line: 476, baseType: !978, size: 64, offset: 256)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !937, line: 476, flags: DIFlagFwdDecl)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !936, file: !937, line: 479, baseType: !981, size: 64, offset: 320)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !982, line: 144, baseType: !983)
!982 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !982, line: 100, size: 896, elements: !985)
!985 = !{!986, !992, !997, !1002, !1004, !1007, !1008, !1009, !1010, !1011, !1016, !1018, !1019, !1024, !1029}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !984, file: !982, line: 102, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !982, line: 52, baseType: !988)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{!991, !829}
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !982, line: 47, baseType: !7)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !984, file: !982, line: 105, baseType: !993, size: 64, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !982, line: 59, baseType: !994)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DISubroutineType(types: !996)
!996 = !{!380, !829, !829}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !984, file: !982, line: 108, baseType: !998, size: 64, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !982, line: 63, baseType: !999)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{null, !384}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !984, file: !982, line: 111, baseType: !1003, size: 64, offset: 192)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !984, file: !982, line: 114, baseType: !1005, size: 64, offset: 256)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1006, line: 46, baseType: !465)
!1006 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !984, file: !982, line: 117, baseType: !1005, size: 64, offset: 320)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !984, file: !982, line: 120, baseType: !1005, size: 64, offset: 384)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !984, file: !982, line: 124, baseType: !7, size: 32, offset: 448)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !984, file: !982, line: 128, baseType: !7, size: 32, offset: 480)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !984, file: !982, line: 131, baseType: !1012, size: 64, offset: 512)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !982, line: 75, baseType: !1013)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!384, !1005, !1005}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !984, file: !982, line: 132, baseType: !1017, size: 64, offset: 576)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !982, line: 78, baseType: !999)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !984, file: !982, line: 135, baseType: !384, size: 64, offset: 640)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !984, file: !982, line: 136, baseType: !1020, size: 64, offset: 704)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !982, line: 82, baseType: !1021)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!384, !384, !1005, !1005}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !984, file: !982, line: 137, baseType: !1025, size: 64, offset: 768)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !982, line: 83, baseType: !1026)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{null, !384, !384}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !984, file: !982, line: 141, baseType: !7, size: 32, offset: 832)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !936, file: !937, line: 484, baseType: !411, size: 64, offset: 384)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !936, file: !937, line: 488, baseType: !411, size: 64, offset: 448)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !936, file: !937, line: 493, baseType: !411, size: 64, offset: 512)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !936, file: !937, line: 496, baseType: !411, size: 64, offset: 576)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !936, file: !937, line: 501, baseType: !1035, size: 64, offset: 640)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !146, line: 2355, size: 576, elements: !1037)
!1037 = !{!1038, !1041, !1042, !1043, !1044, !1046, !1047, !1052, !1053, !1054, !1055, !1056, !1057}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1036, file: !146, line: 2356, baseType: !1039, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !146, line: 2356, flags: DIFlagFwdDecl)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1036, file: !146, line: 2357, baseType: !385, size: 64, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1036, file: !146, line: 2358, baseType: !380, size: 32, offset: 128)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1036, file: !146, line: 2359, baseType: !380, size: 32, offset: 160)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1036, file: !146, line: 2360, baseType: !1045, size: 128, offset: 192)
!1045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 128, elements: !677)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1036, file: !146, line: 2364, baseType: !380, size: 32, offset: 320)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1036, file: !146, line: 2367, baseType: !1048, size: 128, offset: 384)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !146, line: 2349, size: 128, elements: !1049)
!1049 = !{!1050, !1051}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1048, file: !146, line: 2351, baseType: !585, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1048, file: !146, line: 2352, baseType: !391, size: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1036, file: !146, line: 2371, baseType: !145, size: 32, offset: 512)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1036, file: !146, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1036, file: !146, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1036, file: !146, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1036, file: !146, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1036, file: !146, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !936, file: !937, line: 504, baseType: !1059, size: 64, offset: 704)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !937, line: 504, flags: DIFlagFwdDecl)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !936, file: !937, line: 507, baseType: !981, size: 64, offset: 768)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !936, file: !937, line: 510, baseType: !380, size: 32, offset: 832)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !936, file: !937, line: 513, baseType: !380, size: 32, offset: 864)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !936, file: !937, line: 516, baseType: !535, size: 32, offset: 896)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !936, file: !937, line: 519, baseType: !535, size: 32, offset: 928)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !936, file: !937, line: 522, baseType: !7, size: 32, offset: 960)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !936, file: !937, line: 523, baseType: !7, size: 32, offset: 992)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !936, file: !937, line: 528, baseType: !385, size: 64, offset: 1024)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !936, file: !937, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !936, file: !937, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !936, file: !937, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !936, file: !937, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !936, file: !937, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !936, file: !937, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !936, file: !937, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !936, file: !937, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !936, file: !937, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !936, file: !937, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !936, file: !937, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !936, file: !937, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !936, file: !937, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !936, file: !937, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !936, file: !937, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !936, file: !937, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !931, file: !151, line: 3254, baseType: !411, size: 64, offset: 1536)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !931, file: !151, line: 3257, baseType: !411, size: 64, offset: 1600)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !931, file: !151, line: 3258, baseType: !411, size: 64, offset: 1664)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !931, file: !151, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !931, file: !151, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !931, file: !151, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !931, file: !151, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !931, file: !151, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !931, file: !151, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !931, file: !151, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !931, file: !151, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !931, file: !151, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !931, file: !151, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !931, file: !151, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !931, file: !151, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !931, file: !151, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !931, file: !151, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !931, file: !151, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !931, file: !151, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !931, file: !151, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !931, file: !151, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !414, file: !151, line: 3394, baseType: !1107, size: 1344)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !151, line: 2279, size: 1344, elements: !1108)
!1108 = !{!1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1107, file: !151, line: 2280, baseType: !450, size: 192)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1107, file: !151, line: 2281, baseType: !411, size: 64, offset: 192)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1107, file: !151, line: 2282, baseType: !411, size: 64, offset: 256)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1107, file: !151, line: 2283, baseType: !411, size: 64, offset: 320)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1107, file: !151, line: 2284, baseType: !411, size: 64, offset: 384)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1107, file: !151, line: 2285, baseType: !7, size: 32, offset: 448)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1107, file: !151, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1107, file: !151, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1107, file: !151, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1107, file: !151, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1107, file: !151, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1107, file: !151, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1107, file: !151, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1107, file: !151, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1107, file: !151, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1107, file: !151, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1107, file: !151, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1107, file: !151, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1107, file: !151, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1107, file: !151, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1107, file: !151, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1107, file: !151, line: 2305, baseType: !7, size: 32, offset: 512)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1107, file: !151, line: 2306, baseType: !779, size: 32, offset: 544)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1107, file: !151, line: 2307, baseType: !411, size: 64, offset: 576)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1107, file: !151, line: 2308, baseType: !411, size: 64, offset: 640)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1107, file: !151, line: 2314, baseType: !1135, size: 64, offset: 704)
!1135 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !151, line: 2309, size: 64, elements: !1136)
!1136 = !{!1137, !1138, !1139}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1135, file: !151, line: 2310, baseType: !380, size: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1135, file: !151, line: 2311, baseType: !385, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1135, file: !151, line: 2312, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !151, line: 2277, flags: DIFlagFwdDecl)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1107, file: !151, line: 2315, baseType: !411, size: 64, offset: 768)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1107, file: !151, line: 2316, baseType: !411, size: 64, offset: 832)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1107, file: !151, line: 2317, baseType: !411, size: 64, offset: 896)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1107, file: !151, line: 2318, baseType: !411, size: 64, offset: 960)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1107, file: !151, line: 2319, baseType: !411, size: 64, offset: 1024)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1107, file: !151, line: 2320, baseType: !411, size: 64, offset: 1088)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1107, file: !151, line: 2321, baseType: !411, size: 64, offset: 1152)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1107, file: !151, line: 2322, baseType: !411, size: 64, offset: 1216)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1107, file: !151, line: 2324, baseType: !1151, size: 64, offset: 1280)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !151, line: 2324, flags: DIFlagFwdDecl)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !414, file: !151, line: 3395, baseType: !1154, size: 320)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !151, line: 1469, size: 320, elements: !1155)
!1155 = !{!1156, !1157, !1158}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1154, file: !151, line: 1470, baseType: !450, size: 192)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1154, file: !151, line: 1471, baseType: !411, size: 64, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1154, file: !151, line: 1472, baseType: !411, size: 64, offset: 256)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !414, file: !151, line: 3396, baseType: !1160, size: 320)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !151, line: 1482, size: 320, elements: !1161)
!1161 = !{!1162, !1163, !1164}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1160, file: !151, line: 1483, baseType: !450, size: 192)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1160, file: !151, line: 1484, baseType: !380, size: 32, offset: 192)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1160, file: !151, line: 1485, baseType: !1165, size: 64, offset: 256)
!1165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 64, elements: !509)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !414, file: !151, line: 3397, baseType: !1167, size: 384)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !151, line: 1829, size: 384, elements: !1168)
!1168 = !{!1169, !1170, !1171, !1172}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1167, file: !151, line: 1830, baseType: !450, size: 192)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1167, file: !151, line: 1831, baseType: !535, size: 32, offset: 192)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1167, file: !151, line: 1832, baseType: !411, size: 64, offset: 256)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1167, file: !151, line: 1835, baseType: !1165, size: 64, offset: 320)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !414, file: !151, line: 3398, baseType: !1174, size: 704)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !151, line: 1898, size: 704, elements: !1175)
!1175 = !{!1176, !1177, !1178, !1182, !1183, !1186}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1174, file: !151, line: 1899, baseType: !450, size: 192)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1174, file: !151, line: 1902, baseType: !411, size: 64, offset: 192)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1174, file: !151, line: 1905, baseType: !1179, size: 64, offset: 256)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !412, line: 58, baseType: !1180)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !412, line: 57, flags: DIFlagFwdDecl)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1174, file: !151, line: 1908, baseType: !7, size: 32, offset: 320)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1174, file: !151, line: 1911, baseType: !1184, size: 64, offset: 384)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !151, line: 1876, flags: DIFlagFwdDecl)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1174, file: !151, line: 1914, baseType: !1187, size: 256, offset: 448)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !151, line: 1883, size: 256, elements: !1188)
!1188 = !{!1189, !1191, !1192, !1197}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1187, file: !151, line: 1884, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1187, file: !151, line: 1885, baseType: !1190, size: 64, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1187, file: !151, line: 1891, baseType: !1193, size: 64, offset: 128)
!1193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1187, file: !151, line: 1891, size: 64, elements: !1194)
!1194 = !{!1195, !1196}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1193, file: !151, line: 1891, baseType: !1179, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1193, file: !151, line: 1891, baseType: !411, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1187, file: !151, line: 1892, baseType: !1198, size: 64, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !414, file: !151, line: 3399, baseType: !1200, size: 704)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !151, line: 2008, size: 704, elements: !1201)
!1201 = !{!1202, !1203, !1204, !1205, !1206, !1207, !1219, !1220, !1221, !1222, !1223}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1200, file: !151, line: 2009, baseType: !450, size: 192)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1200, file: !151, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1200, file: !151, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1200, file: !151, line: 2014, baseType: !535, size: 32, offset: 224)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1200, file: !151, line: 2016, baseType: !411, size: 64, offset: 256)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1200, file: !151, line: 2017, baseType: !1208, size: 64, offset: 320)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !151, line: 183, baseType: !1210)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !151, line: 183, size: 128, elements: !1211)
!1211 = !{!1212}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1210, file: !151, line: 183, baseType: !1213, size: 128)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !151, line: 182, baseType: !1214)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !151, line: 182, size: 128, elements: !1215)
!1215 = !{!1216, !1217, !1218}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1214, file: !151, line: 182, baseType: !7, size: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1214, file: !151, line: 182, baseType: !7, size: 32, offset: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1214, file: !151, line: 182, baseType: !1165, size: 64, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1200, file: !151, line: 2019, baseType: !411, size: 64, offset: 384)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1200, file: !151, line: 2020, baseType: !411, size: 64, offset: 448)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1200, file: !151, line: 2021, baseType: !411, size: 64, offset: 512)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1200, file: !151, line: 2022, baseType: !411, size: 64, offset: 576)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1200, file: !151, line: 2023, baseType: !411, size: 64, offset: 640)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !414, file: !151, line: 3400, baseType: !1225, size: 832)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !151, line: 2430, size: 832, elements: !1226)
!1226 = !{!1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1225, file: !151, line: 2431, baseType: !450, size: 192)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1225, file: !151, line: 2433, baseType: !411, size: 64, offset: 192)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1225, file: !151, line: 2434, baseType: !411, size: 64, offset: 256)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1225, file: !151, line: 2435, baseType: !411, size: 64, offset: 320)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1225, file: !151, line: 2436, baseType: !411, size: 64, offset: 384)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1225, file: !151, line: 2437, baseType: !1208, size: 64, offset: 448)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1225, file: !151, line: 2438, baseType: !411, size: 64, offset: 512)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1225, file: !151, line: 2440, baseType: !411, size: 64, offset: 576)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1225, file: !151, line: 2441, baseType: !411, size: 64, offset: 640)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1225, file: !151, line: 2443, baseType: !1237, size: 128, offset: 704)
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !151, line: 182, baseType: !1238)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !151, line: 182, size: 128, elements: !1239)
!1239 = !{!1240}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1238, file: !151, line: 182, baseType: !1213, size: 128)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !414, file: !151, line: 3401, baseType: !1242, size: 320)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !151, line: 3327, size: 320, elements: !1243)
!1243 = !{!1244, !1245, !1252}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1242, file: !151, line: 3329, baseType: !450, size: 192)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1242, file: !151, line: 3330, baseType: !1246, size: 64, offset: 192)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !151, line: 3320, size: 192, elements: !1248)
!1248 = !{!1249, !1250, !1251}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1247, file: !151, line: 3322, baseType: !1246, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1247, file: !151, line: 3323, baseType: !1246, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1247, file: !151, line: 3324, baseType: !411, size: 64, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1242, file: !151, line: 3331, baseType: !1246, size: 64, offset: 256)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !414, file: !151, line: 3402, baseType: !1254, size: 256)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !151, line: 1540, size: 256, elements: !1255)
!1255 = !{!1256, !1257}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1254, file: !151, line: 1541, baseType: !450, size: 192)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1254, file: !151, line: 1542, baseType: !1258, size: 64, offset: 192)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !151, line: 1538, baseType: !1260)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !151, line: 1538, size: 192, elements: !1261)
!1261 = !{!1262}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1260, file: !151, line: 1538, baseType: !1263, size: 192)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !151, line: 1537, baseType: !1264)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !151, line: 1537, size: 192, elements: !1265)
!1265 = !{!1266, !1267, !1268}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1264, file: !151, line: 1537, baseType: !7, size: 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1264, file: !151, line: 1537, baseType: !7, size: 32, offset: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1264, file: !151, line: 1537, baseType: !1269, size: 128, offset: 64)
!1269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1270, size: 128, elements: !509)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !151, line: 1535, baseType: !1271)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !151, line: 1532, size: 128, elements: !1272)
!1272 = !{!1273, !1274}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1271, file: !151, line: 1533, baseType: !411, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1271, file: !151, line: 1534, baseType: !411, size: 64, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !414, file: !151, line: 3403, baseType: !1276, size: 512)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !151, line: 1938, size: 512, elements: !1277)
!1277 = !{!1278, !1279, !1280, !1281, !1287, !1288, !1289}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1276, file: !151, line: 1939, baseType: !450, size: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1276, file: !151, line: 1940, baseType: !535, size: 32, offset: 192)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1276, file: !151, line: 1941, baseType: !150, size: 32, offset: 224)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1276, file: !151, line: 1946, baseType: !1282, size: 32, offset: 256)
!1282 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !151, line: 1942, size: 32, elements: !1283)
!1283 = !{!1284, !1285, !1286}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1282, file: !151, line: 1943, baseType: !169, size: 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1282, file: !151, line: 1944, baseType: !176, size: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1282, file: !151, line: 1945, baseType: !183, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1276, file: !151, line: 1950, baseType: !724, size: 64, offset: 320)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1276, file: !151, line: 1951, baseType: !724, size: 64, offset: 384)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1276, file: !151, line: 1953, baseType: !1165, size: 64, offset: 448)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !414, file: !151, line: 3404, baseType: !1291, size: 1664)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !151, line: 3337, size: 1664, elements: !1292)
!1292 = !{!1293, !1294}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1291, file: !151, line: 3338, baseType: !450, size: 192)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1291, file: !151, line: 3341, baseType: !1295, size: 1472, offset: 192)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1296, line: 410, size: 1472, elements: !1297)
!1296 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1297 = !{!1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1295, file: !1296, line: 412, baseType: !380, size: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1295, file: !1296, line: 413, baseType: !380, size: 32, offset: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1295, file: !1296, line: 414, baseType: !380, size: 32, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1295, file: !1296, line: 415, baseType: !380, size: 32, offset: 96)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1295, file: !1296, line: 416, baseType: !380, size: 32, offset: 128)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1295, file: !1296, line: 417, baseType: !380, size: 32, offset: 160)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1295, file: !1296, line: 418, baseType: !379, size: 8, offset: 192)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1295, file: !1296, line: 419, baseType: !379, size: 8, offset: 200)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1295, file: !1296, line: 420, baseType: !1307, size: 8, offset: 208)
!1307 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1295, file: !1296, line: 421, baseType: !1307, size: 8, offset: 216)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1295, file: !1296, line: 422, baseType: !1307, size: 8, offset: 224)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1295, file: !1296, line: 423, baseType: !1307, size: 8, offset: 232)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1295, file: !1296, line: 424, baseType: !1307, size: 8, offset: 240)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1295, file: !1296, line: 425, baseType: !1307, size: 8, offset: 248)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1295, file: !1296, line: 426, baseType: !1307, size: 8, offset: 256)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1295, file: !1296, line: 427, baseType: !1307, size: 8, offset: 264)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1295, file: !1296, line: 428, baseType: !1307, size: 8, offset: 272)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1295, file: !1296, line: 429, baseType: !1307, size: 8, offset: 280)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1295, file: !1296, line: 430, baseType: !1307, size: 8, offset: 288)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1295, file: !1296, line: 431, baseType: !1307, size: 8, offset: 296)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1295, file: !1296, line: 432, baseType: !1307, size: 8, offset: 304)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1295, file: !1296, line: 433, baseType: !1307, size: 8, offset: 312)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1295, file: !1296, line: 434, baseType: !1307, size: 8, offset: 320)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1295, file: !1296, line: 435, baseType: !1307, size: 8, offset: 328)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1295, file: !1296, line: 436, baseType: !1307, size: 8, offset: 336)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1295, file: !1296, line: 437, baseType: !1307, size: 8, offset: 344)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1295, file: !1296, line: 438, baseType: !1307, size: 8, offset: 352)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1295, file: !1296, line: 439, baseType: !1307, size: 8, offset: 360)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1295, file: !1296, line: 440, baseType: !1307, size: 8, offset: 368)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1295, file: !1296, line: 441, baseType: !1307, size: 8, offset: 376)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1295, file: !1296, line: 442, baseType: !1307, size: 8, offset: 384)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1295, file: !1296, line: 443, baseType: !1307, size: 8, offset: 392)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1295, file: !1296, line: 444, baseType: !1307, size: 8, offset: 400)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1295, file: !1296, line: 445, baseType: !1307, size: 8, offset: 408)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1295, file: !1296, line: 446, baseType: !1307, size: 8, offset: 416)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1295, file: !1296, line: 447, baseType: !1307, size: 8, offset: 424)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1295, file: !1296, line: 448, baseType: !1307, size: 8, offset: 432)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1295, file: !1296, line: 449, baseType: !1307, size: 8, offset: 440)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1295, file: !1296, line: 450, baseType: !1307, size: 8, offset: 448)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1295, file: !1296, line: 451, baseType: !1307, size: 8, offset: 456)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1295, file: !1296, line: 452, baseType: !1307, size: 8, offset: 464)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1295, file: !1296, line: 453, baseType: !1307, size: 8, offset: 472)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1295, file: !1296, line: 454, baseType: !1307, size: 8, offset: 480)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1295, file: !1296, line: 455, baseType: !1307, size: 8, offset: 488)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1295, file: !1296, line: 456, baseType: !1307, size: 8, offset: 496)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1295, file: !1296, line: 457, baseType: !1307, size: 8, offset: 504)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1295, file: !1296, line: 458, baseType: !1307, size: 8, offset: 512)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1295, file: !1296, line: 459, baseType: !1307, size: 8, offset: 520)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1295, file: !1296, line: 460, baseType: !1307, size: 8, offset: 528)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1295, file: !1296, line: 461, baseType: !1307, size: 8, offset: 536)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1295, file: !1296, line: 462, baseType: !1307, size: 8, offset: 544)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1295, file: !1296, line: 463, baseType: !1307, size: 8, offset: 552)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1295, file: !1296, line: 464, baseType: !1307, size: 8, offset: 560)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1295, file: !1296, line: 465, baseType: !1307, size: 8, offset: 568)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1295, file: !1296, line: 466, baseType: !1307, size: 8, offset: 576)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1295, file: !1296, line: 467, baseType: !1307, size: 8, offset: 584)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1295, file: !1296, line: 468, baseType: !1307, size: 8, offset: 592)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1295, file: !1296, line: 469, baseType: !1307, size: 8, offset: 600)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1295, file: !1296, line: 470, baseType: !1307, size: 8, offset: 608)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1295, file: !1296, line: 471, baseType: !1307, size: 8, offset: 616)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1295, file: !1296, line: 472, baseType: !1307, size: 8, offset: 624)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1295, file: !1296, line: 473, baseType: !1307, size: 8, offset: 632)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1295, file: !1296, line: 474, baseType: !1307, size: 8, offset: 640)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1295, file: !1296, line: 475, baseType: !1307, size: 8, offset: 648)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1295, file: !1296, line: 476, baseType: !1307, size: 8, offset: 656)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1295, file: !1296, line: 477, baseType: !1307, size: 8, offset: 664)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1295, file: !1296, line: 478, baseType: !1307, size: 8, offset: 672)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1295, file: !1296, line: 479, baseType: !1307, size: 8, offset: 680)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1295, file: !1296, line: 480, baseType: !1307, size: 8, offset: 688)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1295, file: !1296, line: 481, baseType: !1307, size: 8, offset: 696)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1295, file: !1296, line: 482, baseType: !1307, size: 8, offset: 704)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1295, file: !1296, line: 483, baseType: !1307, size: 8, offset: 712)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1295, file: !1296, line: 484, baseType: !1307, size: 8, offset: 720)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1295, file: !1296, line: 485, baseType: !1307, size: 8, offset: 728)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1295, file: !1296, line: 486, baseType: !1307, size: 8, offset: 736)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1295, file: !1296, line: 487, baseType: !1307, size: 8, offset: 744)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1295, file: !1296, line: 488, baseType: !1307, size: 8, offset: 752)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1295, file: !1296, line: 489, baseType: !1307, size: 8, offset: 760)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1295, file: !1296, line: 490, baseType: !1307, size: 8, offset: 768)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1295, file: !1296, line: 491, baseType: !1307, size: 8, offset: 776)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1295, file: !1296, line: 492, baseType: !1307, size: 8, offset: 784)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1295, file: !1296, line: 493, baseType: !1307, size: 8, offset: 792)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1295, file: !1296, line: 494, baseType: !1307, size: 8, offset: 800)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1295, file: !1296, line: 495, baseType: !1307, size: 8, offset: 808)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1295, file: !1296, line: 496, baseType: !1307, size: 8, offset: 816)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1295, file: !1296, line: 497, baseType: !1307, size: 8, offset: 824)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1295, file: !1296, line: 498, baseType: !1307, size: 8, offset: 832)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1295, file: !1296, line: 499, baseType: !1307, size: 8, offset: 840)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1295, file: !1296, line: 500, baseType: !1307, size: 8, offset: 848)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1295, file: !1296, line: 501, baseType: !1307, size: 8, offset: 856)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1295, file: !1296, line: 502, baseType: !1307, size: 8, offset: 864)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1295, file: !1296, line: 503, baseType: !1307, size: 8, offset: 872)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1295, file: !1296, line: 504, baseType: !1307, size: 8, offset: 880)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1295, file: !1296, line: 505, baseType: !1307, size: 8, offset: 888)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1295, file: !1296, line: 506, baseType: !1307, size: 8, offset: 896)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1295, file: !1296, line: 507, baseType: !1307, size: 8, offset: 904)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1295, file: !1296, line: 508, baseType: !1307, size: 8, offset: 912)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1295, file: !1296, line: 509, baseType: !1307, size: 8, offset: 920)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1295, file: !1296, line: 510, baseType: !1307, size: 8, offset: 928)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1295, file: !1296, line: 511, baseType: !1307, size: 8, offset: 936)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1295, file: !1296, line: 512, baseType: !1307, size: 8, offset: 944)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1295, file: !1296, line: 513, baseType: !1307, size: 8, offset: 952)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1295, file: !1296, line: 514, baseType: !1307, size: 8, offset: 960)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1295, file: !1296, line: 515, baseType: !1307, size: 8, offset: 968)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1295, file: !1296, line: 516, baseType: !1307, size: 8, offset: 976)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1295, file: !1296, line: 517, baseType: !1307, size: 8, offset: 984)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1295, file: !1296, line: 518, baseType: !1307, size: 8, offset: 992)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1295, file: !1296, line: 519, baseType: !1307, size: 8, offset: 1000)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1295, file: !1296, line: 520, baseType: !1307, size: 8, offset: 1008)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1295, file: !1296, line: 521, baseType: !1307, size: 8, offset: 1016)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1295, file: !1296, line: 522, baseType: !1307, size: 8, offset: 1024)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1295, file: !1296, line: 523, baseType: !1307, size: 8, offset: 1032)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1295, file: !1296, line: 524, baseType: !1307, size: 8, offset: 1040)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1295, file: !1296, line: 525, baseType: !1307, size: 8, offset: 1048)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1295, file: !1296, line: 526, baseType: !1307, size: 8, offset: 1056)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1295, file: !1296, line: 527, baseType: !1307, size: 8, offset: 1064)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1295, file: !1296, line: 528, baseType: !1307, size: 8, offset: 1072)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1295, file: !1296, line: 529, baseType: !1307, size: 8, offset: 1080)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1295, file: !1296, line: 530, baseType: !1307, size: 8, offset: 1088)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1295, file: !1296, line: 531, baseType: !1307, size: 8, offset: 1096)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1295, file: !1296, line: 532, baseType: !1307, size: 8, offset: 1104)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1295, file: !1296, line: 533, baseType: !1307, size: 8, offset: 1112)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1295, file: !1296, line: 534, baseType: !1307, size: 8, offset: 1120)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1295, file: !1296, line: 535, baseType: !1307, size: 8, offset: 1128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1295, file: !1296, line: 536, baseType: !1307, size: 8, offset: 1136)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1295, file: !1296, line: 537, baseType: !1307, size: 8, offset: 1144)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1295, file: !1296, line: 538, baseType: !1307, size: 8, offset: 1152)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1295, file: !1296, line: 539, baseType: !1307, size: 8, offset: 1160)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1295, file: !1296, line: 540, baseType: !1307, size: 8, offset: 1168)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1295, file: !1296, line: 541, baseType: !1307, size: 8, offset: 1176)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1295, file: !1296, line: 542, baseType: !1307, size: 8, offset: 1184)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1295, file: !1296, line: 543, baseType: !1307, size: 8, offset: 1192)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1295, file: !1296, line: 544, baseType: !1307, size: 8, offset: 1200)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1295, file: !1296, line: 545, baseType: !1307, size: 8, offset: 1208)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1295, file: !1296, line: 546, baseType: !1307, size: 8, offset: 1216)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1295, file: !1296, line: 547, baseType: !1307, size: 8, offset: 1224)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1295, file: !1296, line: 548, baseType: !1307, size: 8, offset: 1232)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1295, file: !1296, line: 549, baseType: !1307, size: 8, offset: 1240)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1295, file: !1296, line: 550, baseType: !1307, size: 8, offset: 1248)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1295, file: !1296, line: 551, baseType: !1307, size: 8, offset: 1256)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1295, file: !1296, line: 552, baseType: !1307, size: 8, offset: 1264)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1295, file: !1296, line: 553, baseType: !1307, size: 8, offset: 1272)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1295, file: !1296, line: 554, baseType: !1307, size: 8, offset: 1280)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1295, file: !1296, line: 555, baseType: !1307, size: 8, offset: 1288)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1295, file: !1296, line: 556, baseType: !1307, size: 8, offset: 1296)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1295, file: !1296, line: 557, baseType: !1307, size: 8, offset: 1304)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1295, file: !1296, line: 558, baseType: !1307, size: 8, offset: 1312)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1295, file: !1296, line: 559, baseType: !1307, size: 8, offset: 1320)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1295, file: !1296, line: 560, baseType: !1307, size: 8, offset: 1328)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1295, file: !1296, line: 561, baseType: !1307, size: 8, offset: 1336)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1295, file: !1296, line: 562, baseType: !1307, size: 8, offset: 1344)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1295, file: !1296, line: 563, baseType: !1307, size: 8, offset: 1352)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1295, file: !1296, line: 564, baseType: !1307, size: 8, offset: 1360)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1295, file: !1296, line: 565, baseType: !1307, size: 8, offset: 1368)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1295, file: !1296, line: 566, baseType: !1307, size: 8, offset: 1376)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1295, file: !1296, line: 567, baseType: !1307, size: 8, offset: 1384)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1295, file: !1296, line: 568, baseType: !1307, size: 8, offset: 1392)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1295, file: !1296, line: 569, baseType: !1307, size: 8, offset: 1400)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1295, file: !1296, line: 570, baseType: !1307, size: 8, offset: 1408)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1295, file: !1296, line: 571, baseType: !1307, size: 8, offset: 1416)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1295, file: !1296, line: 572, baseType: !1307, size: 8, offset: 1424)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1295, file: !1296, line: 573, baseType: !1307, size: 8, offset: 1432)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1295, file: !1296, line: 574, baseType: !1307, size: 8, offset: 1440)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !414, file: !151, line: 3405, baseType: !1463, size: 384)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !151, line: 3352, size: 384, elements: !1464)
!1464 = !{!1465, !1466}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1463, file: !151, line: 3353, baseType: !450, size: 192)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1463, file: !151, line: 3356, baseType: !1467, size: 192, offset: 192)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1296, line: 578, size: 192, elements: !1468)
!1468 = !{!1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1467, file: !1296, line: 580, baseType: !380, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1467, file: !1296, line: 581, baseType: !380, size: 32, offset: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1467, file: !1296, line: 582, baseType: !380, size: 32, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1467, file: !1296, line: 583, baseType: !380, size: 32, offset: 96)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1467, file: !1296, line: 584, baseType: !379, size: 8, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1467, file: !1296, line: 585, baseType: !379, size: 8, offset: 136)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1467, file: !1296, line: 586, baseType: !379, size: 8, offset: 144)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1467, file: !1296, line: 587, baseType: !379, size: 8, offset: 152)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1467, file: !1296, line: 588, baseType: !379, size: 8, offset: 160)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1467, file: !1296, line: 589, baseType: !379, size: 8, offset: 168)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1467, file: !1296, line: 590, baseType: !379, size: 8, offset: 176)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function_list", file: !3, line: 52, size: 384, elements: !1482)
!1482 = !{!1483, !1484, !1485, !1486}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1481, file: !3, line: 54, baseType: !1480, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !1481, file: !3, line: 55, baseType: !7, size: 32, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !1481, file: !3, line: 56, baseType: !7, size: 32, offset: 96)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "n_ctrs", scope: !1481, file: !3, line: 57, baseType: !1487, size: 256, offset: 128)
!1487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !1488)
!1488 = !{!1489}
!1489 = !DISubrange(count: 8)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!1493 = !{!1494, !1512, !1514, !0, !1528, !1530, !1532, !1534, !1536, !1538, !1540, !1542, !1544, !1546, !1549, !1552, !1554, !1558, !1560, !1563, !1565}
!1494 = !DIGlobalVariableExpression(var: !1495, expr: !DIExpression())
!1495 = distinct !DIGlobalVariable(name: "warned", scope: !1496, file: !3, line: 335, type: !380, isLocal: true, isDefinition: true)
!1496 = distinct !DISubprogram(name: "get_coverage_counts", scope: !3, file: !3, line: 326, type: !1497, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1502)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!400, !7, !7, !1499}
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !402)
!1502 = !{!1503, !1504, !1505, !1506, !1507, !1508, !1509}
!1503 = !DILocalVariable(name: "counter", arg: 1, scope: !1496, file: !3, line: 326, type: !7)
!1504 = !DILocalVariable(name: "expected", arg: 2, scope: !1496, file: !3, line: 326, type: !7)
!1505 = !DILocalVariable(name: "summary", arg: 3, scope: !1496, file: !3, line: 327, type: !1499)
!1506 = !DILocalVariable(name: "entry", scope: !1496, file: !3, line: 329, type: !392)
!1507 = !DILocalVariable(name: "elt", scope: !1496, file: !3, line: 329, type: !393)
!1508 = !DILocalVariable(name: "checksum", scope: !1496, file: !3, line: 330, type: !388)
!1509 = !DILocalVariable(name: "id", scope: !1510, file: !3, line: 360, type: !411)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 358, column: 5)
!1511 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 356, column: 7)
!1512 = !DIGlobalVariableExpression(var: !1513, expr: !DIExpression())
!1513 = distinct !DIGlobalVariable(name: "warned", scope: !1496, file: !3, line: 359, type: !380, isLocal: true, isDefinition: true)
!1514 = !DIGlobalVariableExpression(var: !1515, expr: !DIExpression())
!1515 = distinct !DIGlobalVariable(name: "gt_ggc_r_gt_coverage_h", scope: !2, file: !1516, line: 24, type: !1517, isLocal: false, isDefinition: true)
!1516 = !DIFile(filename: "./gt-coverage.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1518, size: 960, elements: !484)
!1518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1519)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_root_tab", file: !1520, line: 69, size: 320, elements: !1521)
!1520 = !DIFile(filename: "./ggc.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1521 = !{!1522, !1523, !1524, !1525, !1527}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1519, file: !1520, line: 70, baseType: !384, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "nelt", scope: !1519, file: !1520, line: 71, baseType: !1005, size: 64, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !1519, file: !1520, line: 72, baseType: !1005, size: 64, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !1519, file: !1520, line: 73, baseType: !1526, size: 64, offset: 192)
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_walker", file: !1520, line: 65, baseType: !999)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "pchw", scope: !1519, file: !1520, line: 74, baseType: !1526, size: 64, offset: 256)
!1528 = !DIGlobalVariableExpression(var: !1529, expr: !DIExpression())
!1529 = distinct !DIGlobalVariable(name: "prg_ctr_mask", scope: !2, file: !3, line: 82, type: !7, isLocal: true, isDefinition: true)
!1530 = !DIGlobalVariableExpression(var: !1531, expr: !DIExpression())
!1531 = distinct !DIGlobalVariable(name: "prg_n_ctrs", scope: !2, file: !3, line: 83, type: !1487, isLocal: true, isDefinition: true)
!1532 = !DIGlobalVariableExpression(var: !1533, expr: !DIExpression())
!1533 = distinct !DIGlobalVariable(name: "fn_ctr_mask", scope: !2, file: !3, line: 86, type: !7, isLocal: true, isDefinition: true)
!1534 = !DIGlobalVariableExpression(var: !1535, expr: !DIExpression())
!1535 = distinct !DIGlobalVariable(name: "fn_n_ctrs", scope: !2, file: !3, line: 87, type: !1487, isLocal: true, isDefinition: true)
!1536 = !DIGlobalVariableExpression(var: !1537, expr: !DIExpression())
!1537 = distinct !DIGlobalVariable(name: "fn_b_ctrs", scope: !2, file: !3, line: 88, type: !1487, isLocal: true, isDefinition: true)
!1538 = !DIGlobalVariableExpression(var: !1539, expr: !DIExpression())
!1539 = distinct !DIGlobalVariable(name: "bbg_file_name", scope: !2, file: !3, line: 91, type: !382, isLocal: true, isDefinition: true)
!1540 = !DIGlobalVariableExpression(var: !1541, expr: !DIExpression())
!1541 = distinct !DIGlobalVariable(name: "bbg_file_opened", scope: !2, file: !3, line: 92, type: !7, isLocal: true, isDefinition: true)
!1542 = !DIGlobalVariableExpression(var: !1543, expr: !DIExpression())
!1543 = distinct !DIGlobalVariable(name: "bbg_function_announced", scope: !2, file: !3, line: 93, type: !380, isLocal: true, isDefinition: true)
!1544 = !DIGlobalVariableExpression(var: !1545, expr: !DIExpression())
!1545 = distinct !DIGlobalVariable(name: "da_file_name", scope: !2, file: !3, line: 96, type: !382, isLocal: true, isDefinition: true)
!1546 = !DIGlobalVariableExpression(var: !1547, expr: !DIExpression())
!1547 = distinct !DIGlobalVariable(name: "tree_ctr_tables", scope: !2, file: !3, line: 102, type: !1548, isLocal: true, isDefinition: true)
!1548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 512, elements: !1488)
!1549 = !DIGlobalVariableExpression(var: !1550, expr: !DIExpression())
!1550 = distinct !DIGlobalVariable(name: "ctr_labels", scope: !2, file: !3, line: 106, type: !1551, isLocal: true, isDefinition: true)
!1551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 512, elements: !1488)
!1552 = !DIGlobalVariableExpression(var: !1553, expr: !DIExpression())
!1553 = distinct !DIGlobalVariable(name: "counts_hash", scope: !2, file: !3, line: 99, type: !981, isLocal: true, isDefinition: true)
!1554 = !DIGlobalVariableExpression(var: !1555, expr: !DIExpression())
!1555 = distinct !DIGlobalVariable(name: "ctr_names", scope: !2, file: !3, line: 110, type: !1556, isLocal: true, isDefinition: true)
!1556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1557, size: 512, elements: !1488)
!1557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!1558 = !DIGlobalVariableExpression(var: !1559, expr: !DIExpression())
!1559 = distinct !DIGlobalVariable(name: "no_coverage", scope: !2, file: !3, line: 79, type: !7, isLocal: true, isDefinition: true)
!1560 = !DIGlobalVariableExpression(var: !1561, expr: !DIExpression())
!1561 = distinct !DIGlobalVariable(name: "functions_tail", scope: !2, file: !3, line: 78, type: !1562, isLocal: true, isDefinition: true)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1563 = !DIGlobalVariableExpression(var: !1564, expr: !DIExpression())
!1564 = distinct !DIGlobalVariable(name: "functions_head", scope: !2, file: !3, line: 77, type: !1480, isLocal: true, isDefinition: true)
!1565 = !DIGlobalVariableExpression(var: !1566, expr: !DIExpression())
!1566 = distinct !DIGlobalVariable(name: "ctr_merge_functions", scope: !2, file: !3, line: 109, type: !1556, isLocal: true, isDefinition: true)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gcov_var", file: !389, line: 498, size: 448, elements: !1568)
!1568 = !{!1569, !1621, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1567, file: !389, line: 500, baseType: !1570, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1572, line: 7, baseType: !1573)
!1572 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1574, line: 49, size: 1728, elements: !1575)
!1574 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1575 = !{!1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1591, !1593, !1594, !1595, !1598, !1600, !1601, !1602, !1605, !1607, !1610, !1613, !1614, !1615, !1616, !1617}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1573, file: !1574, line: 51, baseType: !380, size: 32)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1573, file: !1574, line: 54, baseType: !382, size: 64, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1573, file: !1574, line: 55, baseType: !382, size: 64, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1573, file: !1574, line: 56, baseType: !382, size: 64, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1573, file: !1574, line: 57, baseType: !382, size: 64, offset: 256)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1573, file: !1574, line: 58, baseType: !382, size: 64, offset: 320)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1573, file: !1574, line: 59, baseType: !382, size: 64, offset: 384)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1573, file: !1574, line: 60, baseType: !382, size: 64, offset: 448)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1573, file: !1574, line: 61, baseType: !382, size: 64, offset: 512)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1573, file: !1574, line: 64, baseType: !382, size: 64, offset: 576)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1573, file: !1574, line: 65, baseType: !382, size: 64, offset: 640)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1573, file: !1574, line: 66, baseType: !382, size: 64, offset: 704)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1573, file: !1574, line: 68, baseType: !1589, size: 64, offset: 768)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1574, line: 36, flags: DIFlagFwdDecl)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1573, file: !1574, line: 70, baseType: !1592, size: 64, offset: 832)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1573, file: !1574, line: 72, baseType: !380, size: 32, offset: 896)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1573, file: !1574, line: 73, baseType: !380, size: 32, offset: 928)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1573, file: !1574, line: 74, baseType: !1596, size: 64, offset: 960)
!1596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1597, line: 152, baseType: !391)
!1597 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1573, file: !1574, line: 77, baseType: !1599, size: 16, offset: 1024)
!1599 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1573, file: !1574, line: 78, baseType: !1307, size: 8, offset: 1040)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1573, file: !1574, line: 79, baseType: !508, size: 8, offset: 1048)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1573, file: !1574, line: 81, baseType: !1603, size: 64, offset: 1088)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1574, line: 43, baseType: null)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1573, file: !1574, line: 89, baseType: !1606, size: 64, offset: 1152)
!1606 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1597, line: 153, baseType: !391)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1573, file: !1574, line: 91, baseType: !1608, size: 64, offset: 1216)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1574, line: 37, flags: DIFlagFwdDecl)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1573, file: !1574, line: 92, baseType: !1611, size: 64, offset: 1280)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1574, line: 38, flags: DIFlagFwdDecl)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1573, file: !1574, line: 93, baseType: !1592, size: 64, offset: 1344)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1573, file: !1574, line: 94, baseType: !384, size: 64, offset: 1408)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1573, file: !1574, line: 95, baseType: !1005, size: 64, offset: 1472)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1573, file: !1574, line: 96, baseType: !380, size: 32, offset: 1536)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1573, file: !1574, line: 98, baseType: !1618, size: 160, offset: 1568)
!1618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 160, elements: !1619)
!1619 = !{!1620}
!1620 = !DISubrange(count: 20)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1567, file: !389, line: 501, baseType: !1622, size: 32, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_position_t", file: !389, line: 206, baseType: !7)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1567, file: !389, line: 502, baseType: !7, size: 32, offset: 96)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1567, file: !389, line: 503, baseType: !7, size: 32, offset: 128)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "overread", scope: !1567, file: !389, line: 504, baseType: !7, size: 32, offset: 160)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !1567, file: !389, line: 505, baseType: !380, size: 32, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1567, file: !389, line: 506, baseType: !380, size: 32, offset: 224)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !1567, file: !389, line: 514, baseType: !380, size: 32, offset: 256)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1567, file: !389, line: 517, baseType: !1005, size: 64, offset: 320)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1567, file: !389, line: 518, baseType: !387, size: 64, offset: 384)
!1631 = !DIGlobalVariableExpression(var: !1559, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1632 = !DIGlobalVariableExpression(var: !1543, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1633 = !{i32 2, !"Dwarf Version", i32 4}
!1634 = !{i32 2, !"Debug Info Version", i32 3}
!1635 = !{i32 1, !"wchar_size", i32 4}
!1636 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1637 = distinct !DISubprogram(name: "vprintf", scope: !1638, file: !1638, line: 39, type: !1639, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1649)
!1638 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!380, !1641, !1642}
!1641 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !385)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1644)
!1644 = !{!1645, !1646, !1647, !1648}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1643, file: !3, baseType: !7, size: 32)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1643, file: !3, baseType: !7, size: 32, offset: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1643, file: !3, baseType: !384, size: 64, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1643, file: !3, baseType: !384, size: 64, offset: 128)
!1649 = !{!1650, !1651}
!1650 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1637, file: !1638, line: 39, type: !1641)
!1651 = !DILocalVariable(name: "__arg", arg: 2, scope: !1637, file: !1638, line: 39, type: !1642)
!1652 = !DILocation(line: 0, scope: !1637)
!1653 = !DILocation(line: 41, column: 20, scope: !1637)
!1654 = !DILocation(line: 41, column: 10, scope: !1637)
!1655 = !DILocation(line: 41, column: 3, scope: !1637)
!1656 = distinct !DISubprogram(name: "getchar", scope: !1638, file: !1638, line: 47, type: !1657, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1659)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!380}
!1659 = !{}
!1660 = !DILocation(line: 49, column: 16, scope: !1656)
!1661 = !DILocation(line: 49, column: 10, scope: !1656)
!1662 = !DILocation(line: 49, column: 3, scope: !1656)
!1663 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1638, file: !1638, line: 56, type: !1664, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1666)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!380, !1570}
!1666 = !{!1667}
!1667 = !DILocalVariable(name: "__fp", arg: 1, scope: !1663, file: !1638, line: 56, type: !1570)
!1668 = !DILocation(line: 0, scope: !1663)
!1669 = !DILocation(line: 58, column: 10, scope: !1663)
!1670 = !DILocation(line: 58, column: 3, scope: !1663)
!1671 = distinct !DISubprogram(name: "getc_unlocked", scope: !1638, file: !1638, line: 66, type: !1664, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1672)
!1672 = !{!1673}
!1673 = !DILocalVariable(name: "__fp", arg: 1, scope: !1671, file: !1638, line: 66, type: !1570)
!1674 = !DILocation(line: 0, scope: !1671)
!1675 = !DILocation(line: 68, column: 10, scope: !1671)
!1676 = !DILocation(line: 68, column: 3, scope: !1671)
!1677 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1638, file: !1638, line: 73, type: !1657, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1659)
!1678 = !DILocation(line: 75, column: 10, scope: !1677)
!1679 = !DILocation(line: 75, column: 3, scope: !1677)
!1680 = distinct !DISubprogram(name: "putchar", scope: !1638, file: !1638, line: 82, type: !1681, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1683)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!380, !380}
!1683 = !{!1684}
!1684 = !DILocalVariable(name: "__c", arg: 1, scope: !1680, file: !1638, line: 82, type: !380)
!1685 = !DILocation(line: 0, scope: !1680)
!1686 = !DILocation(line: 84, column: 21, scope: !1680)
!1687 = !DILocation(line: 84, column: 10, scope: !1680)
!1688 = !DILocation(line: 84, column: 3, scope: !1680)
!1689 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1638, file: !1638, line: 91, type: !1690, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1692)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!380, !380, !1570}
!1692 = !{!1693, !1694}
!1693 = !DILocalVariable(name: "__c", arg: 1, scope: !1689, file: !1638, line: 91, type: !380)
!1694 = !DILocalVariable(name: "__stream", arg: 2, scope: !1689, file: !1638, line: 91, type: !1570)
!1695 = !DILocation(line: 0, scope: !1689)
!1696 = !DILocation(line: 93, column: 10, scope: !1689)
!1697 = !DILocation(line: 93, column: 3, scope: !1689)
!1698 = distinct !DISubprogram(name: "putc_unlocked", scope: !1638, file: !1638, line: 101, type: !1690, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1699)
!1699 = !{!1700, !1701}
!1700 = !DILocalVariable(name: "__c", arg: 1, scope: !1698, file: !1638, line: 101, type: !380)
!1701 = !DILocalVariable(name: "__stream", arg: 2, scope: !1698, file: !1638, line: 101, type: !1570)
!1702 = !DILocation(line: 0, scope: !1698)
!1703 = !DILocation(line: 103, column: 10, scope: !1698)
!1704 = !DILocation(line: 103, column: 3, scope: !1698)
!1705 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1638, file: !1638, line: 108, type: !1681, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1706)
!1706 = !{!1707}
!1707 = !DILocalVariable(name: "__c", arg: 1, scope: !1705, file: !1638, line: 108, type: !380)
!1708 = !DILocation(line: 0, scope: !1705)
!1709 = !DILocation(line: 110, column: 10, scope: !1705)
!1710 = !DILocation(line: 110, column: 3, scope: !1705)
!1711 = distinct !DISubprogram(name: "getline", scope: !1638, file: !1638, line: 118, type: !1712, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1716)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!1714, !381, !1715, !1570}
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1597, line: 193, baseType: !391)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1716 = !{!1717, !1718, !1719}
!1717 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1711, file: !1638, line: 118, type: !381)
!1718 = !DILocalVariable(name: "__n", arg: 2, scope: !1711, file: !1638, line: 118, type: !1715)
!1719 = !DILocalVariable(name: "__stream", arg: 3, scope: !1711, file: !1638, line: 118, type: !1570)
!1720 = !DILocation(line: 0, scope: !1711)
!1721 = !DILocation(line: 120, column: 10, scope: !1711)
!1722 = !DILocation(line: 120, column: 3, scope: !1711)
!1723 = distinct !DISubprogram(name: "feof_unlocked", scope: !1638, file: !1638, line: 128, type: !1664, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1724)
!1724 = !{!1725}
!1725 = !DILocalVariable(name: "__stream", arg: 1, scope: !1723, file: !1638, line: 128, type: !1570)
!1726 = !DILocation(line: 0, scope: !1723)
!1727 = !DILocation(line: 130, column: 10, scope: !1723)
!1728 = !DILocation(line: 130, column: 3, scope: !1723)
!1729 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1638, file: !1638, line: 135, type: !1664, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1730)
!1730 = !{!1731}
!1731 = !DILocalVariable(name: "__stream", arg: 1, scope: !1729, file: !1638, line: 135, type: !1570)
!1732 = !DILocation(line: 0, scope: !1729)
!1733 = !DILocation(line: 137, column: 10, scope: !1729)
!1734 = !DILocation(line: 137, column: 3, scope: !1729)
!1735 = distinct !DISubprogram(name: "tolower", scope: !1736, file: !1736, line: 207, type: !1681, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1737)
!1736 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1737 = !{!1738}
!1738 = !DILocalVariable(name: "__c", arg: 1, scope: !1735, file: !1736, line: 207, type: !380)
!1739 = !DILocation(line: 0, scope: !1735)
!1740 = !DILocation(line: 209, column: 22, scope: !1735)
!1741 = !DILocation(line: 209, column: 39, scope: !1735)
!1742 = !DILocation(line: 209, column: 38, scope: !1735)
!1743 = !DILocation(line: 209, column: 37, scope: !1735)
!1744 = !DILocation(line: 209, column: 10, scope: !1735)
!1745 = !DILocation(line: 209, column: 3, scope: !1735)
!1746 = distinct !DISubprogram(name: "toupper", scope: !1736, file: !1736, line: 213, type: !1681, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1747)
!1747 = !{!1748}
!1748 = !DILocalVariable(name: "__c", arg: 1, scope: !1746, file: !1736, line: 213, type: !380)
!1749 = !DILocation(line: 0, scope: !1746)
!1750 = !DILocation(line: 215, column: 22, scope: !1746)
!1751 = !DILocation(line: 215, column: 39, scope: !1746)
!1752 = !DILocation(line: 215, column: 38, scope: !1746)
!1753 = !DILocation(line: 215, column: 37, scope: !1746)
!1754 = !DILocation(line: 215, column: 10, scope: !1746)
!1755 = !DILocation(line: 215, column: 3, scope: !1746)
!1756 = distinct !DISubprogram(name: "atoi", scope: !1757, file: !1757, line: 361, type: !1758, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1760)
!1757 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!380, !385}
!1760 = !{!1761}
!1761 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1756, file: !1757, line: 361, type: !385)
!1762 = !DILocation(line: 0, scope: !1756)
!1763 = !DILocation(line: 363, column: 16, scope: !1756)
!1764 = !DILocation(line: 363, column: 10, scope: !1756)
!1765 = !DILocation(line: 363, column: 3, scope: !1756)
!1766 = distinct !DISubprogram(name: "atol", scope: !1757, file: !1757, line: 366, type: !1767, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1769)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!391, !385}
!1769 = !{!1770}
!1770 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1766, file: !1757, line: 366, type: !385)
!1771 = !DILocation(line: 0, scope: !1766)
!1772 = !DILocation(line: 368, column: 10, scope: !1766)
!1773 = !DILocation(line: 368, column: 3, scope: !1766)
!1774 = distinct !DISubprogram(name: "atoll", scope: !1757, file: !1757, line: 373, type: !1775, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1778)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!1777, !385}
!1777 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1778 = !{!1779}
!1779 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1774, file: !1757, line: 373, type: !385)
!1780 = !DILocation(line: 0, scope: !1774)
!1781 = !DILocation(line: 375, column: 10, scope: !1774)
!1782 = !DILocation(line: 375, column: 3, scope: !1774)
!1783 = distinct !DISubprogram(name: "bsearch", scope: !1784, file: !1784, line: 20, type: !1785, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1788)
!1784 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!384, !829, !829, !1005, !1005, !1787}
!1787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1757, line: 808, baseType: !994)
!1788 = !{!1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798}
!1789 = !DILocalVariable(name: "__key", arg: 1, scope: !1783, file: !1784, line: 20, type: !829)
!1790 = !DILocalVariable(name: "__base", arg: 2, scope: !1783, file: !1784, line: 20, type: !829)
!1791 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1783, file: !1784, line: 20, type: !1005)
!1792 = !DILocalVariable(name: "__size", arg: 4, scope: !1783, file: !1784, line: 20, type: !1005)
!1793 = !DILocalVariable(name: "__compar", arg: 5, scope: !1783, file: !1784, line: 21, type: !1787)
!1794 = !DILocalVariable(name: "__l", scope: !1783, file: !1784, line: 23, type: !1005)
!1795 = !DILocalVariable(name: "__u", scope: !1783, file: !1784, line: 23, type: !1005)
!1796 = !DILocalVariable(name: "__idx", scope: !1783, file: !1784, line: 23, type: !1005)
!1797 = !DILocalVariable(name: "__p", scope: !1783, file: !1784, line: 24, type: !829)
!1798 = !DILocalVariable(name: "__comparison", scope: !1783, file: !1784, line: 25, type: !380)
!1799 = !DILocation(line: 0, scope: !1783)
!1800 = !DILocation(line: 29, column: 3, scope: !1783)
!1801 = !DILocation(line: 27, column: 7, scope: !1783)
!1802 = !DILocation(line: 29, column: 14, scope: !1783)
!1803 = !DILocation(line: 31, column: 20, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1783, file: !1784, line: 30, column: 5)
!1805 = !DILocation(line: 31, column: 27, scope: !1804)
!1806 = !DILocation(line: 32, column: 56, scope: !1804)
!1807 = !DILocation(line: 32, column: 47, scope: !1804)
!1808 = !DILocation(line: 33, column: 22, scope: !1804)
!1809 = !DILocation(line: 34, column: 24, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1804, file: !1784, line: 34, column: 11)
!1811 = !DILocation(line: 34, column: 11, scope: !1804)
!1812 = !DILocation(line: 36, column: 29, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1810, file: !1784, line: 36, column: 16)
!1814 = !DILocation(line: 36, column: 16, scope: !1810)
!1815 = !DILocation(line: 37, column: 14, scope: !1813)
!1816 = distinct !{!1816, !1800, !1817}
!1817 = !DILocation(line: 40, column: 5, scope: !1783)
!1818 = !DILocation(line: 43, column: 1, scope: !1783)
!1819 = distinct !DISubprogram(name: "atof", scope: !1820, file: !1820, line: 25, type: !1821, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1824)
!1820 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!1823, !385}
!1823 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1824 = !{!1825}
!1825 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1819, file: !1820, line: 25, type: !385)
!1826 = !DILocation(line: 0, scope: !1819)
!1827 = !DILocation(line: 27, column: 10, scope: !1819)
!1828 = !DILocation(line: 27, column: 3, scope: !1819)
!1829 = distinct !DISubprogram(name: "strtoimax", scope: !1830, file: !1830, line: 324, type: !1831, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1837)
!1830 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!1833, !1641, !1836, !380}
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1834, line: 101, baseType: !1835)
!1834 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1597, line: 72, baseType: !391)
!1836 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !381)
!1837 = !{!1838, !1839, !1840}
!1838 = !DILocalVariable(name: "nptr", arg: 1, scope: !1829, file: !1830, line: 324, type: !1641)
!1839 = !DILocalVariable(name: "endptr", arg: 2, scope: !1829, file: !1830, line: 324, type: !1836)
!1840 = !DILocalVariable(name: "base", arg: 3, scope: !1829, file: !1830, line: 324, type: !380)
!1841 = !DILocation(line: 0, scope: !1829)
!1842 = !DILocation(line: 327, column: 10, scope: !1829)
!1843 = !DILocation(line: 327, column: 3, scope: !1829)
!1844 = distinct !DISubprogram(name: "strtoumax", scope: !1830, file: !1830, line: 336, type: !1845, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1849)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!1847, !1641, !1836, !380}
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1834, line: 102, baseType: !1848)
!1848 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1597, line: 73, baseType: !465)
!1849 = !{!1850, !1851, !1852}
!1850 = !DILocalVariable(name: "nptr", arg: 1, scope: !1844, file: !1830, line: 336, type: !1641)
!1851 = !DILocalVariable(name: "endptr", arg: 2, scope: !1844, file: !1830, line: 336, type: !1836)
!1852 = !DILocalVariable(name: "base", arg: 3, scope: !1844, file: !1830, line: 336, type: !380)
!1853 = !DILocation(line: 0, scope: !1844)
!1854 = !DILocation(line: 339, column: 10, scope: !1844)
!1855 = !DILocation(line: 339, column: 3, scope: !1844)
!1856 = distinct !DISubprogram(name: "wcstoimax", scope: !1830, file: !1830, line: 348, type: !1857, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1866)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!1833, !1859, !1863, !380}
!1859 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1860)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1862)
!1862 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1830, line: 34, baseType: !380)
!1863 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1864)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1866 = !{!1867, !1868, !1869}
!1867 = !DILocalVariable(name: "nptr", arg: 1, scope: !1856, file: !1830, line: 348, type: !1859)
!1868 = !DILocalVariable(name: "endptr", arg: 2, scope: !1856, file: !1830, line: 348, type: !1863)
!1869 = !DILocalVariable(name: "base", arg: 3, scope: !1856, file: !1830, line: 348, type: !380)
!1870 = !DILocation(line: 0, scope: !1856)
!1871 = !DILocation(line: 351, column: 10, scope: !1856)
!1872 = !DILocation(line: 351, column: 3, scope: !1856)
!1873 = distinct !DISubprogram(name: "wcstoumax", scope: !1830, file: !1830, line: 362, type: !1874, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1876)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!1847, !1859, !1863, !380}
!1876 = !{!1877, !1878, !1879}
!1877 = !DILocalVariable(name: "nptr", arg: 1, scope: !1873, file: !1830, line: 362, type: !1859)
!1878 = !DILocalVariable(name: "endptr", arg: 2, scope: !1873, file: !1830, line: 362, type: !1863)
!1879 = !DILocalVariable(name: "base", arg: 3, scope: !1873, file: !1830, line: 362, type: !380)
!1880 = !DILocation(line: 0, scope: !1873)
!1881 = !DILocation(line: 365, column: 10, scope: !1873)
!1882 = !DILocation(line: 365, column: 3, scope: !1873)
!1883 = distinct !DISubprogram(name: "stat", scope: !1884, file: !1884, line: 453, type: !1885, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1922)
!1884 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!380, !385, !1887}
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1889, line: 46, size: 1152, elements: !1890)
!1889 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1890 = !{!1891, !1893, !1895, !1897, !1899, !1901, !1903, !1904, !1905, !1906, !1908, !1910, !1918, !1919, !1920}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1888, file: !1889, line: 48, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1597, line: 145, baseType: !465)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1888, file: !1889, line: 53, baseType: !1894, size: 64, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1597, line: 148, baseType: !465)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1888, file: !1889, line: 61, baseType: !1896, size: 64, offset: 128)
!1896 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1597, line: 151, baseType: !465)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1888, file: !1889, line: 62, baseType: !1898, size: 32, offset: 192)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1597, line: 150, baseType: !7)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1888, file: !1889, line: 64, baseType: !1900, size: 32, offset: 224)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1597, line: 146, baseType: !7)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1888, file: !1889, line: 65, baseType: !1902, size: 32, offset: 256)
!1902 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1597, line: 147, baseType: !7)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1888, file: !1889, line: 67, baseType: !380, size: 32, offset: 288)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1888, file: !1889, line: 69, baseType: !1892, size: 64, offset: 320)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1888, file: !1889, line: 74, baseType: !1596, size: 64, offset: 384)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1888, file: !1889, line: 78, baseType: !1907, size: 64, offset: 448)
!1907 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1597, line: 174, baseType: !391)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1888, file: !1889, line: 80, baseType: !1909, size: 64, offset: 512)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1597, line: 179, baseType: !391)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1888, file: !1889, line: 91, baseType: !1911, size: 128, offset: 576)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1912, line: 10, size: 128, elements: !1913)
!1912 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1913 = !{!1914, !1916}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1911, file: !1912, line: 12, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1597, line: 160, baseType: !391)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1911, file: !1912, line: 16, baseType: !1917, size: 64, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1597, line: 196, baseType: !391)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1888, file: !1889, line: 92, baseType: !1911, size: 128, offset: 704)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1888, file: !1889, line: 93, baseType: !1911, size: 128, offset: 832)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1888, file: !1889, line: 106, baseType: !1921, size: 192, offset: 960)
!1921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1917, size: 192, elements: !484)
!1922 = !{!1923, !1924}
!1923 = !DILocalVariable(name: "__path", arg: 1, scope: !1883, file: !1884, line: 453, type: !385)
!1924 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1883, file: !1884, line: 453, type: !1887)
!1925 = !DILocation(line: 0, scope: !1883)
!1926 = !DILocation(line: 455, column: 10, scope: !1883)
!1927 = !DILocation(line: 455, column: 3, scope: !1883)
!1928 = distinct !DISubprogram(name: "lstat", scope: !1884, file: !1884, line: 460, type: !1885, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1929)
!1929 = !{!1930, !1931}
!1930 = !DILocalVariable(name: "__path", arg: 1, scope: !1928, file: !1884, line: 460, type: !385)
!1931 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1928, file: !1884, line: 460, type: !1887)
!1932 = !DILocation(line: 0, scope: !1928)
!1933 = !DILocation(line: 462, column: 10, scope: !1928)
!1934 = !DILocation(line: 462, column: 3, scope: !1928)
!1935 = distinct !DISubprogram(name: "fstat", scope: !1884, file: !1884, line: 467, type: !1936, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1938)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!380, !380, !1887}
!1938 = !{!1939, !1940}
!1939 = !DILocalVariable(name: "__fd", arg: 1, scope: !1935, file: !1884, line: 467, type: !380)
!1940 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1935, file: !1884, line: 467, type: !1887)
!1941 = !DILocation(line: 0, scope: !1935)
!1942 = !DILocation(line: 469, column: 10, scope: !1935)
!1943 = !DILocation(line: 469, column: 3, scope: !1935)
!1944 = distinct !DISubprogram(name: "fstatat", scope: !1884, file: !1884, line: 474, type: !1945, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1947)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!380, !380, !385, !1887, !380}
!1947 = !{!1948, !1949, !1950, !1951}
!1948 = !DILocalVariable(name: "__fd", arg: 1, scope: !1944, file: !1884, line: 474, type: !380)
!1949 = !DILocalVariable(name: "__filename", arg: 2, scope: !1944, file: !1884, line: 474, type: !385)
!1950 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1944, file: !1884, line: 474, type: !1887)
!1951 = !DILocalVariable(name: "__flag", arg: 4, scope: !1944, file: !1884, line: 474, type: !380)
!1952 = !DILocation(line: 0, scope: !1944)
!1953 = !DILocation(line: 477, column: 10, scope: !1944)
!1954 = !DILocation(line: 477, column: 3, scope: !1944)
!1955 = distinct !DISubprogram(name: "mknod", scope: !1884, file: !1884, line: 483, type: !1956, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1958)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!380, !385, !1898, !1892}
!1958 = !{!1959, !1960, !1961}
!1959 = !DILocalVariable(name: "__path", arg: 1, scope: !1955, file: !1884, line: 483, type: !385)
!1960 = !DILocalVariable(name: "__mode", arg: 2, scope: !1955, file: !1884, line: 483, type: !1898)
!1961 = !DILocalVariable(name: "__dev", arg: 3, scope: !1955, file: !1884, line: 483, type: !1892)
!1962 = !DILocation(line: 0, scope: !1955)
!1963 = !DILocation(line: 485, column: 10, scope: !1955)
!1964 = !DILocation(line: 485, column: 3, scope: !1955)
!1965 = distinct !DISubprogram(name: "mknodat", scope: !1884, file: !1884, line: 491, type: !1966, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1968)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!380, !380, !385, !1898, !1892}
!1968 = !{!1969, !1970, !1971, !1972}
!1969 = !DILocalVariable(name: "__fd", arg: 1, scope: !1965, file: !1884, line: 491, type: !380)
!1970 = !DILocalVariable(name: "__path", arg: 2, scope: !1965, file: !1884, line: 491, type: !385)
!1971 = !DILocalVariable(name: "__mode", arg: 3, scope: !1965, file: !1884, line: 491, type: !1898)
!1972 = !DILocalVariable(name: "__dev", arg: 4, scope: !1965, file: !1884, line: 491, type: !1892)
!1973 = !DILocation(line: 0, scope: !1965)
!1974 = !DILocation(line: 494, column: 10, scope: !1965)
!1975 = !DILocation(line: 494, column: 3, scope: !1965)
!1976 = distinct !DISubprogram(name: "stat64", scope: !1884, file: !1884, line: 502, type: !1977, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1999)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!380, !385, !1979}
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !1889, line: 119, size: 1152, elements: !1981)
!1981 = !{!1982, !1983, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1995, !1996, !1997, !1998}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1980, file: !1889, line: 121, baseType: !1892, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1980, file: !1889, line: 123, baseType: !1984, size: 64, offset: 64)
!1984 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1597, line: 149, baseType: !465)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1980, file: !1889, line: 124, baseType: !1896, size: 64, offset: 128)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1980, file: !1889, line: 125, baseType: !1898, size: 32, offset: 192)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1980, file: !1889, line: 132, baseType: !1900, size: 32, offset: 224)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1980, file: !1889, line: 133, baseType: !1902, size: 32, offset: 256)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1980, file: !1889, line: 135, baseType: !380, size: 32, offset: 288)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1980, file: !1889, line: 136, baseType: !1892, size: 64, offset: 320)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1980, file: !1889, line: 137, baseType: !1596, size: 64, offset: 384)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1980, file: !1889, line: 143, baseType: !1907, size: 64, offset: 448)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1980, file: !1889, line: 144, baseType: !1994, size: 64, offset: 512)
!1994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1597, line: 180, baseType: !391)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1980, file: !1889, line: 152, baseType: !1911, size: 128, offset: 576)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1980, file: !1889, line: 153, baseType: !1911, size: 128, offset: 704)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1980, file: !1889, line: 154, baseType: !1911, size: 128, offset: 832)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1980, file: !1889, line: 164, baseType: !1921, size: 192, offset: 960)
!1999 = !{!2000, !2001}
!2000 = !DILocalVariable(name: "__path", arg: 1, scope: !1976, file: !1884, line: 502, type: !385)
!2001 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1976, file: !1884, line: 502, type: !1979)
!2002 = !DILocation(line: 0, scope: !1976)
!2003 = !DILocation(line: 504, column: 10, scope: !1976)
!2004 = !DILocation(line: 504, column: 3, scope: !1976)
!2005 = distinct !DISubprogram(name: "lstat64", scope: !1884, file: !1884, line: 509, type: !1977, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2006)
!2006 = !{!2007, !2008}
!2007 = !DILocalVariable(name: "__path", arg: 1, scope: !2005, file: !1884, line: 509, type: !385)
!2008 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2005, file: !1884, line: 509, type: !1979)
!2009 = !DILocation(line: 0, scope: !2005)
!2010 = !DILocation(line: 511, column: 10, scope: !2005)
!2011 = !DILocation(line: 511, column: 3, scope: !2005)
!2012 = distinct !DISubprogram(name: "fstat64", scope: !1884, file: !1884, line: 516, type: !2013, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2015)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!380, !380, !1979}
!2015 = !{!2016, !2017}
!2016 = !DILocalVariable(name: "__fd", arg: 1, scope: !2012, file: !1884, line: 516, type: !380)
!2017 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2012, file: !1884, line: 516, type: !1979)
!2018 = !DILocation(line: 0, scope: !2012)
!2019 = !DILocation(line: 518, column: 10, scope: !2012)
!2020 = !DILocation(line: 518, column: 3, scope: !2012)
!2021 = distinct !DISubprogram(name: "fstatat64", scope: !1884, file: !1884, line: 523, type: !2022, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2024)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!380, !380, !385, !1979, !380}
!2024 = !{!2025, !2026, !2027, !2028}
!2025 = !DILocalVariable(name: "__fd", arg: 1, scope: !2021, file: !1884, line: 523, type: !380)
!2026 = !DILocalVariable(name: "__filename", arg: 2, scope: !2021, file: !1884, line: 523, type: !385)
!2027 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2021, file: !1884, line: 523, type: !1979)
!2028 = !DILocalVariable(name: "__flag", arg: 4, scope: !2021, file: !1884, line: 523, type: !380)
!2029 = !DILocation(line: 0, scope: !2021)
!2030 = !DILocation(line: 526, column: 10, scope: !2021)
!2031 = !DILocation(line: 526, column: 3, scope: !2021)
!2032 = distinct !DISubprogram(name: "gcov_open", scope: !2033, file: !2033, line: 62, type: !2034, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2036)
!2033 = !DIFile(filename: "./gcov-io.ccc", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!380, !385, !380}
!2036 = !{!2037, !2038}
!2037 = !DILocalVariable(name: "name", arg: 1, scope: !2032, file: !2033, line: 62, type: !385)
!2038 = !DILocalVariable(name: "mode", arg: 2, scope: !2032, file: !2033, line: 62, type: !380)
!2039 = !DILocation(line: 0, scope: !2032)
!2040 = !DILocation(line: 78, column: 3, scope: !2032)
!2041 = !DILocation(line: 79, column: 18, scope: !2032)
!2042 = !DILocation(line: 80, column: 37, scope: !2032)
!2043 = !DILocation(line: 80, column: 19, scope: !2032)
!2044 = !DILocation(line: 81, column: 21, scope: !2032)
!2045 = !DILocation(line: 82, column: 18, scope: !2032)
!2046 = !DILocation(line: 84, column: 19, scope: !2032)
!2047 = !DILocation(line: 133, column: 12, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2032, file: !2033, line: 133, column: 7)
!2049 = !DILocation(line: 133, column: 7, scope: !2032)
!2050 = !DILocation(line: 136, column: 16, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2032, file: !2033, line: 136, column: 7)
!2052 = !DILocation(line: 134, column: 21, scope: !2048)
!2053 = !DILocation(line: 134, column: 19, scope: !2048)
!2054 = !DILocation(line: 134, column: 5, scope: !2048)
!2055 = !DILocation(line: 136, column: 7, scope: !2051)
!2056 = !DILocation(line: 136, column: 7, scope: !2032)
!2057 = !DILocation(line: 137, column: 19, scope: !2051)
!2058 = !DILocation(line: 137, column: 5, scope: !2051)
!2059 = !DILocation(line: 138, column: 17, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2051, file: !2033, line: 138, column: 12)
!2061 = !DILocation(line: 138, column: 12, scope: !2051)
!2062 = !DILocation(line: 140, column: 23, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2060, file: !2033, line: 139, column: 5)
!2064 = !DILocation(line: 140, column: 21, scope: !2063)
!2065 = !DILocation(line: 141, column: 11, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2063, file: !2033, line: 141, column: 11)
!2067 = !DILocation(line: 141, column: 11, scope: !2063)
!2068 = !DILocation(line: 142, column: 23, scope: !2066)
!2069 = !DILocation(line: 142, column: 27, scope: !2066)
!2070 = !DILocation(line: 142, column: 16, scope: !2066)
!2071 = !DILocation(line: 142, column: 2, scope: !2066)
!2072 = !DILocation(line: 144, column: 17, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2032, file: !2033, line: 144, column: 7)
!2074 = !DILocation(line: 144, column: 8, scope: !2073)
!2075 = !DILocation(line: 144, column: 7, scope: !2032)
!2076 = !DILocation(line: 148, column: 3, scope: !2032)
!2077 = !DILocation(line: 150, column: 3, scope: !2032)
!2078 = !DILocation(line: 151, column: 1, scope: !2032)
!2079 = distinct !DISubprogram(name: "gcov_close", scope: !2033, file: !2033, line: 157, type: !1657, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1659)
!2080 = !DILocation(line: 159, column: 16, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2079, file: !2033, line: 159, column: 7)
!2082 = !DILocation(line: 159, column: 7, scope: !2081)
!2083 = !DILocation(line: 159, column: 7, scope: !2079)
!2084 = !DILocation(line: 162, column: 20, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !2033, line: 162, column: 11)
!2086 = distinct !DILexicalBlock(scope: !2081, file: !2033, line: 160, column: 5)
!2087 = !DILocation(line: 162, column: 11, scope: !2085)
!2088 = !DILocation(line: 162, column: 39, scope: !2085)
!2089 = !DILocation(line: 162, column: 44, scope: !2085)
!2090 = !DILocation(line: 162, column: 27, scope: !2085)
!2091 = !DILocation(line: 163, column: 2, scope: !2085)
!2092 = !DILocation(line: 165, column: 24, scope: !2086)
!2093 = !DILocation(line: 165, column: 7, scope: !2086)
!2094 = !DILocation(line: 166, column: 21, scope: !2086)
!2095 = !DILocation(line: 167, column: 23, scope: !2086)
!2096 = !DILocation(line: 168, column: 5, scope: !2086)
!2097 = !DILocation(line: 170, column: 18, scope: !2079)
!2098 = !DILocation(line: 170, column: 3, scope: !2079)
!2099 = !DILocation(line: 171, column: 18, scope: !2079)
!2100 = !DILocation(line: 172, column: 19, scope: !2079)
!2101 = !DILocation(line: 174, column: 17, scope: !2079)
!2102 = !DILocation(line: 175, column: 19, scope: !2079)
!2103 = !DILocation(line: 175, column: 3, scope: !2079)
!2104 = distinct !DISubprogram(name: "gcov_write_block", scope: !2033, file: !2033, line: 219, type: !2105, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2107)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{null, !7}
!2107 = !{!2108}
!2108 = !DILocalVariable(name: "size", arg: 1, scope: !2104, file: !2033, line: 219, type: !7)
!2109 = !DILocation(line: 0, scope: !2104)
!2110 = !DILocation(line: 221, column: 24, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2104, file: !2033, line: 221, column: 7)
!2112 = !DILocation(line: 221, column: 37, scope: !2111)
!2113 = !DILocation(line: 221, column: 32, scope: !2111)
!2114 = !DILocation(line: 221, column: 55, scope: !2111)
!2115 = !DILocation(line: 221, column: 7, scope: !2111)
!2116 = !DILocation(line: 221, column: 61, scope: !2111)
!2117 = !DILocation(line: 221, column: 7, scope: !2104)
!2118 = !DILocation(line: 222, column: 20, scope: !2111)
!2119 = !DILocation(line: 222, column: 5, scope: !2111)
!2120 = !DILocation(line: 223, column: 18, scope: !2104)
!2121 = !DILocation(line: 224, column: 19, scope: !2104)
!2122 = !DILocation(line: 225, column: 1, scope: !2104)
!2123 = distinct !DISubprogram(name: "gcov_magic", scope: !2033, file: !2033, line: 184, type: !2124, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2126)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!380, !388, !388}
!2126 = !{!2127, !2128}
!2127 = !DILocalVariable(name: "magic", arg: 1, scope: !2123, file: !2033, line: 184, type: !388)
!2128 = !DILocalVariable(name: "expected", arg: 2, scope: !2123, file: !2033, line: 184, type: !388)
!2129 = !DILocation(line: 0, scope: !2123)
!2130 = !DILocation(line: 186, column: 13, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2123, file: !2033, line: 186, column: 7)
!2132 = !DILocation(line: 186, column: 7, scope: !2123)
!2133 = !DILocation(line: 189, column: 37, scope: !2123)
!2134 = !DILocation(line: 190, column: 13, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2123, file: !2033, line: 190, column: 7)
!2136 = !DILocation(line: 190, column: 7, scope: !2123)
!2137 = !DILocation(line: 192, column: 23, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2135, file: !2033, line: 191, column: 5)
!2139 = !DILocation(line: 193, column: 7, scope: !2138)
!2140 = !DILocation(line: 196, column: 1, scope: !2123)
!2141 = distinct !DISubprogram(name: "gcov_write_unsigned", scope: !2033, file: !2033, line: 260, type: !2142, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2144)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{null, !388}
!2144 = !{!2145, !2146}
!2145 = !DILocalVariable(name: "value", arg: 1, scope: !2141, file: !2033, line: 260, type: !388)
!2146 = !DILocalVariable(name: "buffer", scope: !2141, file: !2033, line: 262, type: !387)
!2147 = !DILocation(line: 0, scope: !2141)
!2148 = !DILocation(line: 262, column: 29, scope: !2141)
!2149 = !DILocation(line: 264, column: 13, scope: !2141)
!2150 = !DILocation(line: 265, column: 1, scope: !2141)
!2151 = distinct !DISubprogram(name: "gcov_write_words", scope: !2033, file: !2033, line: 231, type: !2152, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2154)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!387, !7}
!2154 = !{!2155, !2156}
!2155 = !DILocalVariable(name: "words", arg: 1, scope: !2151, file: !2033, line: 231, type: !7)
!2156 = !DILocalVariable(name: "result", scope: !2151, file: !2033, line: 233, type: !387)
!2157 = !DILocation(line: 0, scope: !2151)
!2158 = !DILocation(line: 235, column: 3, scope: !2151)
!2159 = !DILocation(line: 247, column: 16, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2151, file: !2033, line: 247, column: 7)
!2161 = !DILocation(line: 247, column: 23, scope: !2160)
!2162 = !DILocation(line: 247, column: 7, scope: !2160)
!2163 = !DILocation(line: 247, column: 42, scope: !2160)
!2164 = !DILocation(line: 247, column: 31, scope: !2160)
!2165 = !DILocation(line: 247, column: 7, scope: !2151)
!2166 = !DILocation(line: 248, column: 5, scope: !2160)
!2167 = !DILocation(line: 250, column: 38, scope: !2151)
!2168 = !DILocation(line: 251, column: 19, scope: !2151)
!2169 = !DILocation(line: 250, column: 22, scope: !2151)
!2170 = !DILocation(line: 250, column: 13, scope: !2151)
!2171 = !DILocation(line: 253, column: 3, scope: !2151)
!2172 = distinct !DISubprogram(name: "gcov_write_string", scope: !2033, file: !2033, line: 289, type: !2173, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2175)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{null, !385}
!2175 = !{!2176, !2177, !2178, !2179}
!2176 = !DILocalVariable(name: "string", arg: 1, scope: !2172, file: !2033, line: 289, type: !385)
!2177 = !DILocalVariable(name: "length", scope: !2172, file: !2033, line: 291, type: !7)
!2178 = !DILocalVariable(name: "alloc", scope: !2172, file: !2033, line: 292, type: !7)
!2179 = !DILocalVariable(name: "buffer", scope: !2172, file: !2033, line: 293, type: !387)
!2180 = !DILocation(line: 0, scope: !2172)
!2181 = !DILocation(line: 295, column: 7, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2172, file: !2033, line: 295, column: 7)
!2183 = !DILocation(line: 295, column: 7, scope: !2172)
!2184 = !DILocation(line: 297, column: 16, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2182, file: !2033, line: 296, column: 5)
!2186 = !DILocation(line: 298, column: 23, scope: !2185)
!2187 = !DILocation(line: 298, column: 28, scope: !2185)
!2188 = !DILocation(line: 299, column: 5, scope: !2185)
!2189 = !DILocation(line: 301, column: 32, scope: !2172)
!2190 = !DILocation(line: 301, column: 12, scope: !2172)
!2191 = !DILocation(line: 303, column: 13, scope: !2172)
!2192 = !DILocation(line: 304, column: 3, scope: !2172)
!2193 = !DILocation(line: 304, column: 17, scope: !2172)
!2194 = !DILocation(line: 305, column: 12, scope: !2172)
!2195 = !DILocation(line: 305, column: 11, scope: !2172)
!2196 = !DILocation(line: 305, column: 3, scope: !2172)
!2197 = !DILocation(line: 306, column: 1, scope: !2172)
!2198 = distinct !DISubprogram(name: "gcov_write_tag", scope: !2033, file: !2033, line: 314, type: !2199, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2201)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!1622, !388}
!2201 = !{!2202, !2203, !2204}
!2202 = !DILocalVariable(name: "tag", arg: 1, scope: !2198, file: !2033, line: 314, type: !388)
!2203 = !DILocalVariable(name: "result", scope: !2198, file: !2033, line: 316, type: !1622)
!2204 = !DILocalVariable(name: "buffer", scope: !2198, file: !2033, line: 317, type: !387)
!2205 = !DILocation(line: 0, scope: !2198)
!2206 = !DILocation(line: 316, column: 37, scope: !2198)
!2207 = !DILocation(line: 316, column: 54, scope: !2198)
!2208 = !DILocation(line: 316, column: 43, scope: !2198)
!2209 = !DILocation(line: 317, column: 29, scope: !2198)
!2210 = !DILocation(line: 319, column: 13, scope: !2198)
!2211 = !DILocation(line: 320, column: 3, scope: !2198)
!2212 = !DILocation(line: 320, column: 13, scope: !2198)
!2213 = !DILocation(line: 322, column: 3, scope: !2198)
!2214 = distinct !DISubprogram(name: "gcov_write_length", scope: !2033, file: !2033, line: 331, type: !2215, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2217)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{null, !1622}
!2217 = !{!2218, !2219, !2220, !2221}
!2218 = !DILocalVariable(name: "position", arg: 1, scope: !2214, file: !2033, line: 331, type: !1622)
!2219 = !DILocalVariable(name: "offset", scope: !2214, file: !2033, line: 333, type: !7)
!2220 = !DILocalVariable(name: "length", scope: !2214, file: !2033, line: 334, type: !388)
!2221 = !DILocalVariable(name: "buffer", scope: !2214, file: !2033, line: 335, type: !387)
!2222 = !DILocation(line: 0, scope: !2214)
!2223 = !DILocation(line: 337, column: 3, scope: !2214)
!2224 = !DILocation(line: 338, column: 3, scope: !2214)
!2225 = !DILocation(line: 339, column: 3, scope: !2214)
!2226 = !DILocation(line: 340, column: 32, scope: !2214)
!2227 = !DILocation(line: 340, column: 21, scope: !2214)
!2228 = !DILocation(line: 341, column: 21, scope: !2214)
!2229 = !DILocation(line: 341, column: 28, scope: !2214)
!2230 = !DILocation(line: 341, column: 37, scope: !2214)
!2231 = !DILocation(line: 342, column: 42, scope: !2214)
!2232 = !DILocation(line: 342, column: 33, scope: !2214)
!2233 = !DILocation(line: 343, column: 3, scope: !2214)
!2234 = !DILocation(line: 343, column: 13, scope: !2214)
!2235 = !DILocation(line: 344, column: 16, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2214, file: !2033, line: 344, column: 7)
!2237 = !DILocation(line: 344, column: 23, scope: !2236)
!2238 = !DILocation(line: 344, column: 7, scope: !2214)
!2239 = !DILocation(line: 345, column: 5, scope: !2236)
!2240 = !DILocation(line: 346, column: 1, scope: !2214)
!2241 = distinct !DISubprogram(name: "gcov_read_unsigned", scope: !2033, file: !2033, line: 436, type: !2242, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2244)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!388}
!2244 = !{!2245, !2246}
!2245 = !DILocalVariable(name: "value", scope: !2241, file: !2033, line: 438, type: !388)
!2246 = !DILocalVariable(name: "buffer", scope: !2241, file: !2033, line: 439, type: !2247)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!2249 = !DILocation(line: 439, column: 35, scope: !2241)
!2250 = !DILocation(line: 0, scope: !2241)
!2251 = !DILocation(line: 441, column: 8, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2241, file: !2033, line: 441, column: 7)
!2253 = !DILocation(line: 441, column: 7, scope: !2241)
!2254 = !DILocation(line: 443, column: 22, scope: !2241)
!2255 = !DILocation(line: 443, column: 11, scope: !2241)
!2256 = !DILocation(line: 444, column: 3, scope: !2241)
!2257 = !DILocation(line: 445, column: 1, scope: !2241)
!2258 = distinct !DISubprogram(name: "gcov_read_words", scope: !2033, file: !2033, line: 389, type: !2259, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2261)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!2247, !7}
!2261 = !{!2262, !2263, !2264}
!2262 = !DILocalVariable(name: "words", arg: 1, scope: !2258, file: !2033, line: 389, type: !7)
!2263 = !DILocalVariable(name: "result", scope: !2258, file: !2033, line: 391, type: !2247)
!2264 = !DILocalVariable(name: "excess", scope: !2258, file: !2033, line: 392, type: !7)
!2265 = !DILocation(line: 0, scope: !2258)
!2266 = !DILocation(line: 392, column: 30, scope: !2258)
!2267 = !DILocation(line: 392, column: 48, scope: !2258)
!2268 = !DILocation(line: 392, column: 37, scope: !2258)
!2269 = !DILocation(line: 394, column: 3, scope: !2258)
!2270 = !DILocation(line: 395, column: 14, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2258, file: !2033, line: 395, column: 7)
!2272 = !DILocation(line: 395, column: 7, scope: !2258)
!2273 = !DILocation(line: 397, column: 34, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2271, file: !2033, line: 396, column: 5)
!2275 = !DILocation(line: 397, column: 22, scope: !2274)
!2276 = !DILocation(line: 405, column: 25, scope: !2274)
!2277 = !DILocation(line: 405, column: 42, scope: !2274)
!2278 = !DILocation(line: 405, column: 49, scope: !2274)
!2279 = !DILocation(line: 405, column: 33, scope: !2274)
!2280 = !DILocation(line: 405, column: 75, scope: !2274)
!2281 = !DILocation(line: 405, column: 68, scope: !2274)
!2282 = !DILocation(line: 405, column: 7, scope: !2274)
!2283 = !DILocation(line: 407, column: 23, scope: !2274)
!2284 = !DILocation(line: 408, column: 23, scope: !2274)
!2285 = !DILocation(line: 413, column: 27, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2274, file: !2033, line: 413, column: 11)
!2287 = !DILocation(line: 413, column: 11, scope: !2286)
!2288 = !DILocation(line: 413, column: 46, scope: !2286)
!2289 = !DILocation(line: 413, column: 35, scope: !2286)
!2290 = !DILocation(line: 413, column: 11, scope: !2274)
!2291 = !DILocation(line: 414, column: 2, scope: !2286)
!2292 = !DILocation(line: 415, column: 25, scope: !2274)
!2293 = !DILocation(line: 415, column: 42, scope: !2274)
!2294 = !DILocation(line: 415, column: 16, scope: !2274)
!2295 = !DILocation(line: 417, column: 32, scope: !2274)
!2296 = !DILocation(line: 417, column: 39, scope: !2274)
!2297 = !DILocation(line: 417, column: 23, scope: !2274)
!2298 = !DILocation(line: 418, column: 19, scope: !2274)
!2299 = !DILocation(line: 418, column: 12, scope: !2274)
!2300 = !DILocation(line: 418, column: 34, scope: !2274)
!2301 = !DILocation(line: 417, column: 16, scope: !2274)
!2302 = !DILocation(line: 418, column: 40, scope: !2274)
!2303 = !DILocation(line: 419, column: 23, scope: !2274)
!2304 = !DILocation(line: 420, column: 27, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2274, file: !2033, line: 420, column: 11)
!2306 = !DILocation(line: 420, column: 11, scope: !2274)
!2307 = !DILocation(line: 422, column: 31, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2305, file: !2033, line: 421, column: 2)
!2309 = !DILocation(line: 422, column: 22, scope: !2308)
!2310 = !DILocation(line: 423, column: 20, scope: !2308)
!2311 = !DILocation(line: 424, column: 4, scope: !2308)
!2312 = !DILocation(line: 427, column: 22, scope: !2258)
!2313 = !DILocation(line: 427, column: 38, scope: !2258)
!2314 = !DILocation(line: 427, column: 13, scope: !2258)
!2315 = !DILocation(line: 428, column: 19, scope: !2258)
!2316 = !DILocation(line: 429, column: 3, scope: !2258)
!2317 = !DILocation(line: 430, column: 1, scope: !2258)
!2318 = distinct !DISubprogram(name: "from_file", scope: !2033, file: !2033, line: 36, type: !2319, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2321)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!388, !388}
!2321 = !{!2322}
!2322 = !DILocalVariable(name: "value", arg: 1, scope: !2318, file: !2033, line: 36, type: !388)
!2323 = !DILocation(line: 0, scope: !2318)
!2324 = !DILocation(line: 39, column: 16, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2318, file: !2033, line: 39, column: 7)
!2326 = !DILocation(line: 39, column: 7, scope: !2325)
!2327 = !DILocation(line: 39, column: 7, scope: !2318)
!2328 = !DILocation(line: 42, column: 41, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2325, file: !2033, line: 40, column: 5)
!2330 = !DILocation(line: 43, column: 5, scope: !2329)
!2331 = !DILocation(line: 45, column: 3, scope: !2318)
!2332 = distinct !DISubprogram(name: "gcov_read_counter", scope: !2033, file: !2033, line: 451, type: !2333, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2335)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!390}
!2335 = !{!2336, !2337}
!2336 = !DILocalVariable(name: "value", scope: !2332, file: !2033, line: 453, type: !390)
!2337 = !DILocalVariable(name: "buffer", scope: !2332, file: !2033, line: 454, type: !2247)
!2338 = !DILocation(line: 454, column: 35, scope: !2332)
!2339 = !DILocation(line: 0, scope: !2332)
!2340 = !DILocation(line: 456, column: 8, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2332, file: !2033, line: 456, column: 7)
!2342 = !DILocation(line: 456, column: 7, scope: !2332)
!2343 = !DILocation(line: 458, column: 22, scope: !2332)
!2344 = !DILocation(line: 458, column: 11, scope: !2332)
!2345 = !DILocation(line: 460, column: 38, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2332, file: !2033, line: 459, column: 7)
!2347 = !DILocation(line: 460, column: 27, scope: !2346)
!2348 = !DILocation(line: 460, column: 15, scope: !2346)
!2349 = !DILocation(line: 460, column: 50, scope: !2346)
!2350 = !DILocation(line: 460, column: 11, scope: !2346)
!2351 = !DILocation(line: 464, column: 3, scope: !2332)
!2352 = !DILocation(line: 465, column: 1, scope: !2332)
!2353 = distinct !DISubprogram(name: "gcov_read_string", scope: !2033, file: !2033, line: 473, type: !2354, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2356)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!385}
!2356 = !{!2357}
!2357 = !DILocalVariable(name: "length", scope: !2353, file: !2033, line: 475, type: !7)
!2358 = !DILocation(line: 475, column: 21, scope: !2353)
!2359 = !DILocation(line: 0, scope: !2353)
!2360 = !DILocation(line: 477, column: 8, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2353, file: !2033, line: 477, column: 7)
!2362 = !DILocation(line: 477, column: 7, scope: !2353)
!2363 = !DILocation(line: 480, column: 25, scope: !2353)
!2364 = !DILocation(line: 480, column: 10, scope: !2353)
!2365 = !DILocation(line: 480, column: 3, scope: !2353)
!2366 = !DILocation(line: 481, column: 1, scope: !2353)
!2367 = distinct !DISubprogram(name: "gcov_read_summary", scope: !2033, file: !2033, line: 485, type: !2368, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2376)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{null, !2370}
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gcov_summary", file: !389, line: 401, size: 320, elements: !2372)
!2372 = !{!2373, !2374}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !2371, file: !389, line: 403, baseType: !388, size: 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "ctrs", scope: !2371, file: !389, line: 404, baseType: !2375, size: 256, offset: 64)
!2375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 256, elements: !509)
!2376 = !{!2377, !2378, !2379}
!2377 = !DILocalVariable(name: "summary", arg: 1, scope: !2367, file: !2033, line: 485, type: !2370)
!2378 = !DILocalVariable(name: "ix", scope: !2367, file: !2033, line: 487, type: !7)
!2379 = !DILocalVariable(name: "csum", scope: !2367, file: !2033, line: 488, type: !2380)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!2381 = !DILocation(line: 0, scope: !2367)
!2382 = !DILocation(line: 490, column: 23, scope: !2367)
!2383 = !DILocation(line: 490, column: 12, scope: !2367)
!2384 = !DILocation(line: 490, column: 21, scope: !2367)
!2385 = !DILocation(line: 491, column: 15, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2367, file: !2033, line: 491, column: 3)
!2387 = !DILocation(line: 491, column: 8, scope: !2386)
!2388 = !DILocation(line: 0, scope: !2386)
!2389 = !DILocation(line: 491, column: 3, scope: !2386)
!2390 = !DILocation(line: 491, column: 61, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2386, file: !2033, line: 491, column: 3)
!2392 = !DILocation(line: 493, column: 19, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2391, file: !2033, line: 492, column: 5)
!2394 = !DILocation(line: 493, column: 13, scope: !2393)
!2395 = !DILocation(line: 493, column: 17, scope: !2393)
!2396 = !DILocation(line: 494, column: 20, scope: !2393)
!2397 = !DILocation(line: 494, column: 13, scope: !2393)
!2398 = !DILocation(line: 494, column: 18, scope: !2393)
!2399 = !DILocation(line: 495, column: 23, scope: !2393)
!2400 = !DILocation(line: 495, column: 13, scope: !2393)
!2401 = !DILocation(line: 495, column: 21, scope: !2393)
!2402 = !DILocation(line: 496, column: 23, scope: !2393)
!2403 = !DILocation(line: 496, column: 13, scope: !2393)
!2404 = !DILocation(line: 496, column: 21, scope: !2393)
!2405 = !DILocation(line: 497, column: 23, scope: !2393)
!2406 = !DILocation(line: 497, column: 13, scope: !2393)
!2407 = !DILocation(line: 497, column: 21, scope: !2393)
!2408 = !DILocation(line: 491, column: 69, scope: !2391)
!2409 = !DILocation(line: 491, column: 3, scope: !2391)
!2410 = distinct !{!2410, !2389, !2411}
!2411 = !DILocation(line: 498, column: 5, scope: !2386)
!2412 = !DILocation(line: 499, column: 1, scope: !2367)
!2413 = distinct !DISubprogram(name: "gcov_sync", scope: !2033, file: !2033, line: 506, type: !2414, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2416)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{null, !1622, !388}
!2416 = !{!2417, !2418}
!2417 = !DILocalVariable(name: "base", arg: 1, scope: !2413, file: !2033, line: 506, type: !1622)
!2418 = !DILocalVariable(name: "length", arg: 2, scope: !2413, file: !2033, line: 506, type: !388)
!2419 = !DILocation(line: 0, scope: !2413)
!2420 = !DILocation(line: 508, column: 3, scope: !2413)
!2421 = !DILocation(line: 509, column: 8, scope: !2413)
!2422 = !DILocation(line: 510, column: 23, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2413, file: !2033, line: 510, column: 7)
!2424 = !DILocation(line: 510, column: 12, scope: !2423)
!2425 = !DILocation(line: 510, column: 41, scope: !2423)
!2426 = !DILocation(line: 510, column: 29, scope: !2423)
!2427 = !DILocation(line: 510, column: 7, scope: !2413)
!2428 = !DILocation(line: 511, column: 21, scope: !2423)
!2429 = !DILocation(line: 511, column: 5, scope: !2423)
!2430 = !DILocation(line: 514, column: 41, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2423, file: !2033, line: 513, column: 5)
!2432 = !DILocation(line: 514, column: 23, scope: !2431)
!2433 = !DILocation(line: 515, column: 23, scope: !2431)
!2434 = !DILocation(line: 515, column: 34, scope: !2431)
!2435 = !DILocation(line: 515, column: 29, scope: !2431)
!2436 = !DILocation(line: 515, column: 7, scope: !2431)
!2437 = !DILocation(line: 516, column: 40, scope: !2431)
!2438 = !DILocation(line: 516, column: 24, scope: !2431)
!2439 = !DILocation(line: 516, column: 46, scope: !2431)
!2440 = !DILocation(line: 516, column: 22, scope: !2431)
!2441 = !DILocation(line: 518, column: 1, scope: !2413)
!2442 = distinct !DISubprogram(name: "get_gcov_type", scope: !3, file: !3, line: 129, type: !2443, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1659)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!411}
!2445 = !DILocation(line: 131, column: 27, scope: !2442)
!2446 = !DILocation(line: 131, column: 10, scope: !2442)
!2447 = !DILocation(line: 131, column: 3, scope: !2442)
!2448 = !DILocation(line: 0, scope: !1496)
!2449 = !DILocation(line: 329, column: 3, scope: !1496)
!2450 = !DILocation(line: 333, column: 8, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 333, column: 7)
!2452 = !DILocation(line: 333, column: 7, scope: !1496)
!2453 = !DILocation(line: 337, column: 18, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !3, line: 337, column: 11)
!2455 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 334, column: 5)
!2456 = !DILocation(line: 337, column: 11, scope: !2455)
!2457 = !DILocation(line: 338, column: 10, scope: !2454)
!2458 = !DILocation(line: 338, column: 27, scope: !2454)
!2459 = !DILocation(line: 341, column: 3, scope: !2454)
!2460 = !DILocation(line: 338, column: 2, scope: !2454)
!2461 = !DILocation(line: 345, column: 15, scope: !1496)
!2462 = !DILocation(line: 345, column: 43, scope: !1496)
!2463 = !DILocation(line: 345, column: 7, scope: !1496)
!2464 = !DILocation(line: 345, column: 13, scope: !1496)
!2465 = !DILocation(line: 346, column: 7, scope: !1496)
!2466 = !DILocation(line: 346, column: 11, scope: !1496)
!2467 = !DILocation(line: 347, column: 30, scope: !1496)
!2468 = !DILocation(line: 348, column: 8, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 348, column: 7)
!2470 = !DILocation(line: 348, column: 7, scope: !1496)
!2471 = !DILocation(line: 351, column: 9, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 349, column: 5)
!2473 = !DILocation(line: 350, column: 7, scope: !2472)
!2474 = !DILocation(line: 352, column: 7, scope: !2472)
!2475 = !DILocation(line: 355, column: 14, scope: !1496)
!2476 = !DILocation(line: 356, column: 14, scope: !1511)
!2477 = !DILocation(line: 356, column: 23, scope: !1511)
!2478 = !DILocation(line: 357, column: 7, scope: !1511)
!2479 = !DILocation(line: 357, column: 17, scope: !1511)
!2480 = !DILocation(line: 357, column: 25, scope: !1511)
!2481 = !DILocation(line: 357, column: 29, scope: !1511)
!2482 = !DILocation(line: 356, column: 7, scope: !1496)
!2483 = !DILocation(line: 360, column: 17, scope: !1510)
!2484 = !DILocation(line: 0, scope: !1510)
!2485 = !DILocation(line: 362, column: 11, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 362, column: 11)
!2487 = !DILocation(line: 0, scope: !2486)
!2488 = !DILocation(line: 362, column: 11, scope: !1510)
!2489 = !DILocation(line: 363, column: 2, scope: !2486)
!2490 = !DILocation(line: 366, column: 2, scope: !2486)
!2491 = !DILocation(line: 369, column: 12, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 369, column: 11)
!2493 = !DILocation(line: 369, column: 11, scope: !1510)
!2494 = !DILocation(line: 371, column: 15, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2496, file: !3, line: 371, column: 8)
!2496 = distinct !DILexicalBlock(scope: !2492, file: !3, line: 370, column: 2)
!2497 = !DILocation(line: 371, column: 24, scope: !2495)
!2498 = !DILocation(line: 0, scope: !2495)
!2499 = !DILocation(line: 371, column: 8, scope: !2496)
!2500 = !DILocation(line: 372, column: 6, scope: !2495)
!2501 = !DILocation(line: 375, column: 14, scope: !2495)
!2502 = !DILocation(line: 375, column: 22, scope: !2495)
!2503 = !DILocation(line: 374, column: 6, scope: !2495)
!2504 = !DILocation(line: 378, column: 11, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 378, column: 11)
!2506 = !DILocation(line: 379, column: 8, scope: !2505)
!2507 = !DILocation(line: 379, column: 4, scope: !2505)
!2508 = !DILocation(line: 380, column: 14, scope: !2505)
!2509 = !DILocation(line: 378, column: 11, scope: !1510)
!2510 = !DILocation(line: 382, column: 12, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 381, column: 2)
!2512 = !DILocation(line: 382, column: 4, scope: !2511)
!2513 = !DILocation(line: 383, column: 12, scope: !2511)
!2514 = !DILocation(line: 383, column: 28, scope: !2511)
!2515 = !DILocation(line: 383, column: 4, scope: !2511)
!2516 = !DILocation(line: 386, column: 9, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2511, file: !3, line: 386, column: 8)
!2518 = !DILocation(line: 386, column: 8, scope: !2511)
!2519 = !DILocation(line: 387, column: 14, scope: !2517)
!2520 = !DILocation(line: 387, column: 6, scope: !2517)
!2521 = !DILocation(line: 393, column: 7, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 393, column: 7)
!2523 = !DILocation(line: 393, column: 7, scope: !1496)
!2524 = !DILocation(line: 394, column: 14, scope: !2522)
!2525 = !DILocation(line: 394, column: 5, scope: !2522)
!2526 = !DILocation(line: 396, column: 17, scope: !1496)
!2527 = !DILocation(line: 396, column: 3, scope: !1496)
!2528 = !DILocation(line: 397, column: 1, scope: !1496)
!2529 = distinct !DISubprogram(name: "compute_checksum", scope: !3, file: !3, line: 535, type: !2530, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2532)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!7}
!2532 = !{!2533, !2541}
!2533 = !DILocalVariable(name: "xloc", scope: !2529, file: !3, line: 537, type: !2534)
!2534 = !DIDerivedType(tag: DW_TAG_typedef, name: "expanded_location", file: !536, line: 52, baseType: !2535)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !536, line: 40, size: 192, elements: !2536)
!2536 = !{!2537, !2538, !2539, !2540}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2535, file: !536, line: 43, baseType: !385, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2535, file: !536, line: 46, baseType: !380, size: 32, offset: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !2535, file: !536, line: 48, baseType: !380, size: 32, offset: 96)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !2535, file: !536, line: 51, baseType: !379, size: 8, offset: 128)
!2541 = !DILocalVariable(name: "chksum", scope: !2529, file: !3, line: 539, type: !7)
!2542 = !DILocation(line: 537, column: 3, scope: !2529)
!2543 = !DILocation(line: 538, column: 24, scope: !2529)
!2544 = !DILocation(line: 0, scope: !2529)
!2545 = !DILocation(line: 538, column: 7, scope: !2529)
!2546 = !DILocation(line: 539, column: 26, scope: !2529)
!2547 = !DILocation(line: 541, column: 51, scope: !2529)
!2548 = !DILocation(line: 541, column: 12, scope: !2529)
!2549 = !DILocation(line: 543, column: 14, scope: !2529)
!2550 = !DILocation(line: 542, column: 12, scope: !2529)
!2551 = !DILocation(line: 546, column: 1, scope: !2529)
!2552 = !DILocation(line: 545, column: 3, scope: !2529)
!2553 = distinct !DISubprogram(name: "coverage_counter_alloc", scope: !3, file: !3, line: 403, type: !2554, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2556)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!380, !7, !7}
!2556 = !{!2557, !2558, !2559, !2562, !2563}
!2557 = !DILocalVariable(name: "counter", arg: 1, scope: !2553, file: !3, line: 403, type: !7)
!2558 = !DILocalVariable(name: "num", arg: 2, scope: !2553, file: !3, line: 403, type: !7)
!2559 = !DILocalVariable(name: "buf", scope: !2560, file: !3, line: 416, type: !1618)
!2560 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 412, column: 5)
!2561 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 411, column: 7)
!2562 = !DILocalVariable(name: "gcov_type_node", scope: !2560, file: !3, line: 417, type: !411)
!2563 = !DILocalVariable(name: "gcov_type_array_type", scope: !2560, file: !3, line: 418, type: !411)
!2564 = !DILocation(line: 0, scope: !2553)
!2565 = !DILocation(line: 405, column: 7, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 405, column: 7)
!2567 = !DILocation(line: 405, column: 7, scope: !2553)
!2568 = !DILocation(line: 408, column: 8, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 408, column: 7)
!2570 = !DILocation(line: 408, column: 7, scope: !2553)
!2571 = !DILocation(line: 411, column: 8, scope: !2561)
!2572 = !DILocation(line: 411, column: 7, scope: !2553)
!2573 = !DILocation(line: 416, column: 7, scope: !2560)
!2574 = !DILocation(line: 416, column: 12, scope: !2560)
!2575 = !DILocation(line: 417, column: 29, scope: !2560)
!2576 = !DILocation(line: 0, scope: !2560)
!2577 = !DILocation(line: 419, column: 11, scope: !2560)
!2578 = !DILocation(line: 421, column: 11, scope: !2560)
!2579 = !DILocation(line: 421, column: 9, scope: !2560)
!2580 = !DILocation(line: 423, column: 7, scope: !2560)
!2581 = !DILocation(line: 423, column: 46, scope: !2560)
!2582 = !DILocation(line: 424, column: 7, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2560, file: !3, line: 424, column: 7)
!2584 = !DILocation(line: 425, column: 46, scope: !2560)
!2585 = !DILocation(line: 425, column: 7, scope: !2560)
!2586 = !DILocation(line: 425, column: 44, scope: !2560)
!2587 = !DILocation(line: 426, column: 47, scope: !2560)
!2588 = !DILocation(line: 426, column: 7, scope: !2560)
!2589 = !DILocation(line: 426, column: 45, scope: !2560)
!2590 = !DILocation(line: 428, column: 11, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2560, file: !3, line: 428, column: 11)
!2592 = !DILocation(line: 428, column: 11, scope: !2560)
!2593 = !DILocation(line: 429, column: 46, scope: !2591)
!2594 = !DILocation(line: 429, column: 2, scope: !2591)
!2595 = !DILocation(line: 430, column: 5, scope: !2561)
!2596 = !DILocation(line: 430, column: 5, scope: !2560)
!2597 = !DILocation(line: 431, column: 24, scope: !2553)
!2598 = !DILocation(line: 431, column: 3, scope: !2553)
!2599 = !DILocation(line: 431, column: 22, scope: !2553)
!2600 = !DILocation(line: 432, column: 22, scope: !2553)
!2601 = !DILocation(line: 433, column: 20, scope: !2553)
!2602 = !DILocation(line: 433, column: 15, scope: !2553)
!2603 = !DILocation(line: 434, column: 3, scope: !2553)
!2604 = !DILocation(line: 435, column: 1, scope: !2553)
!2605 = distinct !DISubprogram(name: "tree_coverage_counter_ref", scope: !3, file: !3, line: 440, type: !2606, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2608)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!411, !7, !7}
!2608 = !{!2609, !2610, !2611}
!2609 = !DILocalVariable(name: "counter", arg: 1, scope: !2605, file: !3, line: 440, type: !7)
!2610 = !DILocalVariable(name: "no", arg: 2, scope: !2605, file: !3, line: 440, type: !7)
!2611 = !DILocalVariable(name: "gcov_type_node", scope: !2605, file: !3, line: 442, type: !411)
!2612 = !DILocation(line: 0, scope: !2605)
!2613 = !DILocation(line: 442, column: 25, scope: !2605)
!2614 = !DILocation(line: 444, column: 3, scope: !2605)
!2615 = !DILocation(line: 445, column: 31, scope: !2605)
!2616 = !DILocation(line: 445, column: 9, scope: !2605)
!2617 = !DILocation(line: 445, column: 29, scope: !2605)
!2618 = !DILocation(line: 445, column: 6, scope: !2605)
!2619 = !DILocation(line: 448, column: 10, scope: !2605)
!2620 = !DILocation(line: 448, column: 3, scope: !2605)
!2621 = distinct !DISubprogram(name: "tree_coverage_counter_addr", scope: !3, file: !3, line: 455, type: !2606, scopeLine: 456, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2622)
!2622 = !{!2623, !2624, !2625}
!2623 = !DILocalVariable(name: "counter", arg: 1, scope: !2621, file: !3, line: 455, type: !7)
!2624 = !DILocalVariable(name: "no", arg: 2, scope: !2621, file: !3, line: 455, type: !7)
!2625 = !DILocalVariable(name: "gcov_type_node", scope: !2621, file: !3, line: 457, type: !411)
!2626 = !DILocation(line: 0, scope: !2621)
!2627 = !DILocation(line: 457, column: 25, scope: !2621)
!2628 = !DILocation(line: 459, column: 3, scope: !2621)
!2629 = !DILocation(line: 460, column: 31, scope: !2621)
!2630 = !DILocation(line: 460, column: 9, scope: !2621)
!2631 = !DILocation(line: 460, column: 29, scope: !2621)
!2632 = !DILocation(line: 460, column: 6, scope: !2621)
!2633 = !DILocation(line: 462, column: 3, scope: !2621)
!2634 = !DILocation(line: 462, column: 47, scope: !2621)
!2635 = !DILocation(line: 465, column: 10, scope: !2621)
!2636 = !DILocation(line: 465, column: 3, scope: !2621)
!2637 = distinct !DISubprogram(name: "coverage_begin_output", scope: !3, file: !3, line: 554, type: !1657, scopeLine: 555, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2638)
!2638 = !{!2639, !2642}
!2639 = !DILocalVariable(name: "xloc", scope: !2640, file: !3, line: 563, type: !2534)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 562, column: 5)
!2641 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 561, column: 7)
!2642 = !DILocalVariable(name: "offset", scope: !2640, file: !3, line: 565, type: !465)
!2643 = !DILocation(line: 558, column: 7, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2637, file: !3, line: 558, column: 7)
!2645 = !DILocation(line: 558, column: 23, scope: !2644)
!2646 = !DILocation(line: 558, column: 45, scope: !2644)
!2647 = !DILocation(line: 558, column: 19, scope: !2644)
!2648 = !DILocation(line: 561, column: 8, scope: !2641)
!2649 = !DILocation(line: 561, column: 7, scope: !2637)
!2650 = !DILocation(line: 563, column: 7, scope: !2640)
!2651 = !DILocation(line: 564, column: 21, scope: !2640)
!2652 = !DILocation(line: 0, scope: !2640)
!2653 = !DILocation(line: 564, column: 4, scope: !2640)
!2654 = !DILocation(line: 567, column: 12, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2640, file: !3, line: 567, column: 11)
!2656 = !DILocation(line: 567, column: 11, scope: !2640)
!2657 = !DILocation(line: 569, column: 20, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 569, column: 8)
!2659 = distinct !DILexicalBlock(scope: !2655, file: !3, line: 568, column: 2)
!2660 = !DILocation(line: 569, column: 9, scope: !2658)
!2661 = !DILocation(line: 569, column: 8, scope: !2659)
!2662 = !DILocation(line: 570, column: 31, scope: !2658)
!2663 = !DILocation(line: 570, column: 6, scope: !2658)
!2664 = !DILocation(line: 573, column: 8, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2658, file: !3, line: 572, column: 6)
!2666 = !DILocation(line: 574, column: 8, scope: !2665)
!2667 = !DILocation(line: 575, column: 29, scope: !2665)
!2668 = !DILocation(line: 575, column: 8, scope: !2665)
!2669 = !DILocation(line: 577, column: 20, scope: !2659)
!2670 = !DILocation(line: 578, column: 2, scope: !2659)
!2671 = !DILocation(line: 581, column: 16, scope: !2640)
!2672 = !DILocation(line: 582, column: 28, scope: !2640)
!2673 = !DILocation(line: 582, column: 56, scope: !2640)
!2674 = !DILocation(line: 582, column: 7, scope: !2640)
!2675 = !DILocation(line: 583, column: 28, scope: !2640)
!2676 = !DILocation(line: 583, column: 7, scope: !2640)
!2677 = !DILocation(line: 584, column: 26, scope: !2640)
!2678 = !DILocation(line: 584, column: 7, scope: !2640)
!2679 = !DILocation(line: 586, column: 31, scope: !2640)
!2680 = !DILocation(line: 586, column: 7, scope: !2640)
!2681 = !DILocation(line: 587, column: 33, scope: !2640)
!2682 = !DILocation(line: 587, column: 7, scope: !2640)
!2683 = !DILocation(line: 588, column: 7, scope: !2640)
!2684 = !DILocation(line: 590, column: 30, scope: !2640)
!2685 = !DILocation(line: 591, column: 5, scope: !2641)
!2686 = !DILocation(line: 591, column: 5, scope: !2640)
!2687 = !DILocation(line: 592, column: 11, scope: !2637)
!2688 = !DILocation(line: 592, column: 10, scope: !2637)
!2689 = !DILocation(line: 592, column: 3, scope: !2637)
!2690 = !DILocation(line: 0, scope: !2637)
!2691 = !DILocation(line: 593, column: 1, scope: !2637)
!2692 = distinct !DISubprogram(name: "gcov_is_error", scope: !389, file: !389, line: 593, type: !1657, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1659)
!2693 = !DILocation(line: 595, column: 19, scope: !2692)
!2694 = !DILocation(line: 595, column: 10, scope: !2692)
!2695 = !DILocation(line: 595, column: 3, scope: !2692)
!2696 = distinct !DISubprogram(name: "coverage_end_function", scope: !3, file: !3, line: 599, type: !2697, scopeLine: 600, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2699)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{null}
!2699 = !{!2700, !2701}
!2700 = !DILocalVariable(name: "i", scope: !2696, file: !3, line: 601, type: !7)
!2701 = !DILocalVariable(name: "item", scope: !2702, file: !3, line: 611, type: !1480)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 610, column: 5)
!2703 = distinct !DILexicalBlock(scope: !2696, file: !3, line: 609, column: 7)
!2704 = !DILocation(line: 603, column: 7, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2696, file: !3, line: 603, column: 7)
!2706 = !DILocation(line: 603, column: 23, scope: !2705)
!2707 = !DILocation(line: 603, column: 27, scope: !2705)
!2708 = !DILocation(line: 603, column: 30, scope: !2705)
!2709 = !DILocation(line: 603, column: 7, scope: !2696)
!2710 = !DILocation(line: 605, column: 40, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2705, file: !3, line: 604, column: 5)
!2712 = !DILocation(line: 605, column: 7, scope: !2711)
!2713 = !DILocation(line: 606, column: 23, scope: !2711)
!2714 = !DILocation(line: 607, column: 5, scope: !2711)
!2715 = !DILocation(line: 609, column: 7, scope: !2703)
!2716 = !DILocation(line: 609, column: 7, scope: !2696)
!2717 = !DILocation(line: 613, column: 14, scope: !2702)
!2718 = !DILocation(line: 0, scope: !2702)
!2719 = !DILocation(line: 615, column: 8, scope: !2702)
!2720 = !DILocation(line: 615, column: 23, scope: !2702)
!2721 = !DILocation(line: 616, column: 22, scope: !2702)
!2722 = !DILocation(line: 618, column: 13, scope: !2702)
!2723 = !DILocation(line: 618, column: 18, scope: !2702)
!2724 = !DILocation(line: 619, column: 21, scope: !2702)
!2725 = !DILocation(line: 619, column: 49, scope: !2702)
!2726 = !DILocation(line: 619, column: 13, scope: !2702)
!2727 = !DILocation(line: 619, column: 19, scope: !2702)
!2728 = !DILocation(line: 620, column: 24, scope: !2702)
!2729 = !DILocation(line: 620, column: 13, scope: !2702)
!2730 = !DILocation(line: 620, column: 22, scope: !2702)
!2731 = !DILocation(line: 0, scope: !2696)
!2732 = !DILocation(line: 0, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !3, line: 622, column: 2)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 621, column: 7)
!2735 = distinct !DILexicalBlock(scope: !2702, file: !3, line: 621, column: 7)
!2736 = !DILocation(line: 621, column: 12, scope: !2735)
!2737 = !DILocation(line: 0, scope: !2735)
!2738 = !DILocation(line: 621, column: 21, scope: !2734)
!2739 = !DILocation(line: 621, column: 7, scope: !2735)
!2740 = !DILocation(line: 623, column: 22, scope: !2733)
!2741 = !DILocation(line: 623, column: 4, scope: !2733)
!2742 = !DILocation(line: 623, column: 20, scope: !2733)
!2743 = !DILocation(line: 624, column: 21, scope: !2733)
!2744 = !DILocation(line: 624, column: 4, scope: !2733)
!2745 = !DILocation(line: 624, column: 18, scope: !2733)
!2746 = !DILocation(line: 625, column: 19, scope: !2733)
!2747 = !DILocation(line: 625, column: 32, scope: !2733)
!2748 = !DILocation(line: 625, column: 17, scope: !2733)
!2749 = !DILocation(line: 621, column: 40, scope: !2734)
!2750 = !DILocation(line: 621, column: 7, scope: !2734)
!2751 = distinct !{!2751, !2739, !2752}
!2752 = !DILocation(line: 626, column: 2, scope: !2735)
!2753 = !DILocation(line: 627, column: 23, scope: !2702)
!2754 = !DILocation(line: 627, column: 20, scope: !2702)
!2755 = !DILocation(line: 628, column: 19, scope: !2702)
!2756 = !DILocation(line: 629, column: 5, scope: !2702)
!2757 = !DILocation(line: 630, column: 26, scope: !2696)
!2758 = !DILocation(line: 631, column: 1, scope: !2696)
!2759 = distinct !DISubprogram(name: "coverage_init", scope: !3, file: !3, line: 1001, type: !2173, scopeLine: 1002, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2760)
!2760 = !{!2761, !2762, !2763}
!2761 = !DILocalVariable(name: "filename", arg: 1, scope: !2759, file: !3, line: 1001, type: !385)
!2762 = !DILocalVariable(name: "len", scope: !2759, file: !3, line: 1003, type: !380)
!2763 = !DILocalVariable(name: "prefix_len", scope: !2759, file: !3, line: 1005, type: !380)
!2764 = !DILocation(line: 0, scope: !2759)
!2765 = !DILocation(line: 1003, column: 13, scope: !2759)
!2766 = !DILocation(line: 1007, column: 7, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2759, file: !3, line: 1007, column: 7)
!2768 = !DILocation(line: 1007, column: 27, scope: !2767)
!2769 = !DILocation(line: 1007, column: 32, scope: !2767)
!2770 = !DILocation(line: 1007, column: 35, scope: !2767)
!2771 = !DILocation(line: 1007, column: 47, scope: !2767)
!2772 = !DILocation(line: 1007, column: 7, scope: !2759)
!2773 = !DILocation(line: 1008, column: 27, scope: !2767)
!2774 = !DILocation(line: 1008, column: 25, scope: !2767)
!2775 = !DILocation(line: 1008, column: 5, scope: !2767)
!2776 = !DILocation(line: 1010, column: 17, scope: !2759)
!2777 = !DILocation(line: 1010, column: 16, scope: !2759)
!2778 = !DILocation(line: 1010, column: 40, scope: !2759)
!2779 = !DILocation(line: 1013, column: 18, scope: !2759)
!2780 = !DILocation(line: 1013, column: 16, scope: !2759)
!2781 = !DILocation(line: 1016, column: 7, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2759, file: !3, line: 1016, column: 7)
!2783 = !DILocation(line: 1016, column: 7, scope: !2759)
!2784 = !DILocation(line: 1018, column: 7, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 1017, column: 5)
!2786 = !DILocation(line: 1019, column: 7, scope: !2785)
!2787 = !DILocation(line: 1019, column: 31, scope: !2785)
!2788 = !DILocation(line: 1019, column: 36, scope: !2785)
!2789 = !DILocation(line: 1020, column: 7, scope: !2785)
!2790 = !DILocation(line: 1020, column: 32, scope: !2785)
!2791 = !DILocation(line: 1021, column: 5, scope: !2785)
!2792 = !DILocation(line: 1023, column: 21, scope: !2782)
!2793 = !DILocation(line: 1024, column: 11, scope: !2759)
!2794 = !DILocation(line: 1024, column: 3, scope: !2759)
!2795 = !DILocation(line: 1025, column: 11, scope: !2759)
!2796 = !DILocation(line: 1025, column: 3, scope: !2759)
!2797 = !DILocation(line: 1028, column: 19, scope: !2759)
!2798 = !DILocation(line: 1028, column: 17, scope: !2759)
!2799 = !DILocation(line: 1029, column: 3, scope: !2759)
!2800 = !DILocation(line: 1030, column: 11, scope: !2759)
!2801 = !DILocation(line: 1030, column: 3, scope: !2759)
!2802 = !DILocation(line: 1032, column: 7, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2759, file: !3, line: 1032, column: 7)
!2804 = !DILocation(line: 1032, column: 7, scope: !2759)
!2805 = !DILocation(line: 1033, column: 5, scope: !2803)
!2806 = !DILocation(line: 1034, column: 1, scope: !2759)
!2807 = distinct !DISubprogram(name: "read_counts_file", scope: !3, file: !3, line: 171, type: !2697, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2808)
!2808 = !{!2809, !2810, !2811, !2812, !2813, !2814, !2815, !2819, !2820, !2822, !2823, !2828, !2829, !2832, !2833, !2837, !2840, !2841, !2842, !2843, !2844}
!2809 = !DILocalVariable(name: "fn_ident", scope: !2807, file: !3, line: 173, type: !388)
!2810 = !DILocalVariable(name: "checksum", scope: !2807, file: !3, line: 174, type: !388)
!2811 = !DILocalVariable(name: "summaried", scope: !2807, file: !3, line: 175, type: !392)
!2812 = !DILocalVariable(name: "seen_summary", scope: !2807, file: !3, line: 176, type: !7)
!2813 = !DILocalVariable(name: "tag", scope: !2807, file: !3, line: 177, type: !388)
!2814 = !DILocalVariable(name: "is_error", scope: !2807, file: !3, line: 178, type: !380)
!2815 = !DILocalVariable(name: "v", scope: !2816, file: !3, line: 191, type: !676)
!2816 = distinct !DILexicalBlock(scope: !2817, file: !3, line: 190, column: 5)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 189, column: 12)
!2818 = distinct !DILexicalBlock(scope: !2807, file: !3, line: 183, column: 7)
!2819 = !DILocalVariable(name: "e", scope: !2816, file: !3, line: 191, type: !676)
!2820 = !DILocalVariable(name: "length", scope: !2821, file: !3, line: 210, type: !388)
!2821 = distinct !DILexicalBlock(scope: !2807, file: !3, line: 209, column: 5)
!2822 = !DILocalVariable(name: "offset", scope: !2821, file: !3, line: 211, type: !1622)
!2823 = !DILocalVariable(name: "entry", scope: !2824, file: !3, line: 224, type: !392)
!2824 = distinct !DILexicalBlock(scope: !2825, file: !3, line: 220, column: 6)
!2825 = distinct !DILexicalBlock(scope: !2826, file: !3, line: 219, column: 8)
!2826 = distinct !DILexicalBlock(scope: !2827, file: !3, line: 216, column: 2)
!2827 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 215, column: 11)
!2828 = !DILocalVariable(name: "chain", scope: !2824, file: !3, line: 224, type: !392)
!2829 = !DILocalVariable(name: "entry", scope: !2830, file: !3, line: 237, type: !392)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !3, line: 236, column: 2)
!2831 = distinct !DILexicalBlock(scope: !2827, file: !3, line: 235, column: 16)
!2832 = !DILocalVariable(name: "summary", scope: !2830, file: !3, line: 238, type: !2371)
!2833 = !DILocalVariable(name: "csum", scope: !2834, file: !3, line: 244, type: !2380)
!2834 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 243, column: 6)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !3, line: 242, column: 4)
!2836 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 242, column: 4)
!2837 = !DILocalVariable(name: "slot", scope: !2838, file: !3, line: 255, type: !1490)
!2838 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 254, column: 2)
!2839 = distinct !DILexicalBlock(scope: !2831, file: !3, line: 253, column: 16)
!2840 = !DILocalVariable(name: "entry", scope: !2838, file: !3, line: 255, type: !392)
!2841 = !DILocalVariable(name: "elt", scope: !2838, file: !3, line: 255, type: !393)
!2842 = !DILocalVariable(name: "n_counts", scope: !2838, file: !3, line: 256, type: !7)
!2843 = !DILocalVariable(name: "ix", scope: !2838, file: !3, line: 257, type: !7)
!2844 = !DILabel(scope: !2838, name: "skip_merge", file: !3, line: 308)
!2845 = !DILocation(line: 0, scope: !2807)
!2846 = !DILocation(line: 180, column: 19, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2807, file: !3, line: 180, column: 7)
!2848 = !DILocation(line: 180, column: 8, scope: !2847)
!2849 = !DILocation(line: 180, column: 7, scope: !2807)
!2850 = !DILocation(line: 183, column: 20, scope: !2818)
!2851 = !DILocation(line: 183, column: 8, scope: !2818)
!2852 = !DILocation(line: 183, column: 7, scope: !2807)
!2853 = !DILocation(line: 185, column: 50, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 184, column: 5)
!2855 = !DILocation(line: 185, column: 7, scope: !2854)
!2856 = !DILocation(line: 186, column: 7, scope: !2854)
!2857 = !DILocation(line: 187, column: 7, scope: !2854)
!2858 = !DILocation(line: 189, column: 19, scope: !2817)
!2859 = !DILocation(line: 189, column: 42, scope: !2817)
!2860 = !DILocation(line: 189, column: 12, scope: !2818)
!2861 = !DILocation(line: 191, column: 7, scope: !2816)
!2862 = !DILocation(line: 191, column: 12, scope: !2816)
!2863 = !DILocation(line: 191, column: 18, scope: !2816)
!2864 = !DILocation(line: 193, column: 7, scope: !2816)
!2865 = !DILocation(line: 194, column: 7, scope: !2816)
!2866 = !DILocation(line: 197, column: 10, scope: !2816)
!2867 = !DILocation(line: 196, column: 7, scope: !2816)
!2868 = !DILocation(line: 198, column: 7, scope: !2816)
!2869 = !DILocation(line: 200, column: 5, scope: !2817)
!2870 = !DILocation(line: 203, column: 3, scope: !2807)
!2871 = !DILocation(line: 205, column: 17, scope: !2807)
!2872 = !DILocation(line: 205, column: 15, scope: !2807)
!2873 = !DILocation(line: 0, scope: !2830)
!2874 = !DILocation(line: 0, scope: !2838)
!2875 = !DILocation(line: 208, column: 3, scope: !2807)
!2876 = !DILocation(line: 208, column: 17, scope: !2807)
!2877 = !DILocation(line: 213, column: 16, scope: !2821)
!2878 = !DILocation(line: 0, scope: !2821)
!2879 = !DILocation(line: 214, column: 16, scope: !2821)
!2880 = !DILocation(line: 215, column: 11, scope: !2821)
!2881 = !DILocation(line: 217, column: 15, scope: !2826)
!2882 = !DILocation(line: 218, column: 15, scope: !2826)
!2883 = !DILocation(line: 219, column: 8, scope: !2825)
!2884 = !DILocation(line: 219, column: 8, scope: !2826)
!2885 = !DILocation(line: 226, column: 8, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2824, file: !3, line: 226, column: 8)
!2887 = !DILocation(line: 0, scope: !2886)
!2888 = !DILocation(line: 0, scope: !2824)
!2889 = !DILocation(line: 228, column: 20, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !3, line: 227, column: 3)
!2891 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 226, column: 8)
!2892 = !DILocation(line: 229, column: 18, scope: !2890)
!2893 = !DILocation(line: 226, column: 8, scope: !2891)
!2894 = distinct !{!2894, !2885, !2895}
!2895 = !DILocation(line: 230, column: 3, scope: !2886)
!2896 = !DILocation(line: 238, column: 4, scope: !2830)
!2897 = !DILocation(line: 240, column: 4, scope: !2830)
!2898 = !DILocation(line: 242, column: 9, scope: !2836)
!2899 = !DILocation(line: 0, scope: !2836)
!2900 = !DILocation(line: 242, column: 4, scope: !2836)
!2901 = !DILocation(line: 244, column: 61, scope: !2834)
!2902 = !DILocation(line: 244, column: 41, scope: !2834)
!2903 = !DILocation(line: 0, scope: !2834)
!2904 = !DILocation(line: 246, column: 37, scope: !2834)
!2905 = !DILocation(line: 246, column: 23, scope: !2834)
!2906 = !DILocation(line: 246, column: 28, scope: !2834)
!2907 = !DILocation(line: 247, column: 40, scope: !2834)
!2908 = !DILocation(line: 247, column: 23, scope: !2834)
!2909 = !DILocation(line: 247, column: 31, scope: !2834)
!2910 = !DILocation(line: 248, column: 27, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2834, file: !3, line: 248, column: 12)
!2912 = !DILocation(line: 248, column: 43, scope: !2911)
!2913 = !DILocation(line: 248, column: 35, scope: !2911)
!2914 = !DILocation(line: 248, column: 12, scope: !2834)
!2915 = !DILocation(line: 249, column: 26, scope: !2911)
!2916 = !DILocation(line: 249, column: 3, scope: !2911)
!2917 = !DILocation(line: 250, column: 40, scope: !2834)
!2918 = !DILocation(line: 250, column: 23, scope: !2834)
!2919 = !DILocation(line: 250, column: 31, scope: !2834)
!2920 = !DILocation(line: 242, column: 50, scope: !2835)
!2921 = !DILocation(line: 242, column: 4, scope: !2835)
!2922 = distinct !{!2922, !2900, !2923}
!2923 = !DILocation(line: 251, column: 6, scope: !2836)
!2924 = !DILocation(line: 252, column: 2, scope: !2831)
!2925 = !DILocation(line: 252, column: 2, scope: !2830)
!2926 = !DILocation(line: 253, column: 16, scope: !2839)
!2927 = !DILocation(line: 253, column: 45, scope: !2839)
!2928 = !DILocation(line: 253, column: 42, scope: !2839)
!2929 = !DILocation(line: 255, column: 4, scope: !2838)
!2930 = !DILocation(line: 256, column: 24, scope: !2838)
!2931 = !DILocation(line: 259, column: 14, scope: !2838)
!2932 = !DILocation(line: 260, column: 14, scope: !2838)
!2933 = !DILocation(line: 260, column: 12, scope: !2838)
!2934 = !DILocation(line: 263, column: 7, scope: !2838)
!2935 = !DILocation(line: 262, column: 31, scope: !2838)
!2936 = !DILocation(line: 262, column: 11, scope: !2838)
!2937 = !DILocation(line: 264, column: 12, scope: !2838)
!2938 = !DILocation(line: 265, column: 9, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2838, file: !3, line: 265, column: 8)
!2940 = !DILocation(line: 265, column: 8, scope: !2838)
!2941 = !DILocation(line: 267, column: 24, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 266, column: 6)
!2943 = !DILocation(line: 267, column: 14, scope: !2942)
!2944 = !DILocation(line: 268, column: 27, scope: !2942)
!2945 = !DILocation(line: 268, column: 15, scope: !2942)
!2946 = !DILocation(line: 268, column: 21, scope: !2942)
!2947 = !DILocation(line: 269, column: 25, scope: !2942)
!2948 = !DILocation(line: 269, column: 15, scope: !2942)
!2949 = !DILocation(line: 269, column: 19, scope: !2942)
!2950 = !DILocation(line: 270, column: 15, scope: !2942)
!2951 = !DILocation(line: 270, column: 24, scope: !2942)
!2952 = !DILocation(line: 271, column: 15, scope: !2942)
!2953 = !DILocation(line: 271, column: 23, scope: !2942)
!2954 = !DILocation(line: 271, column: 27, scope: !2942)
!2955 = !DILocation(line: 272, column: 24, scope: !2942)
!2956 = !DILocation(line: 272, column: 15, scope: !2942)
!2957 = !DILocation(line: 272, column: 22, scope: !2942)
!2958 = !DILocation(line: 297, column: 12, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2838, file: !3, line: 297, column: 8)
!2960 = !DILocation(line: 273, column: 6, scope: !2942)
!2961 = !DILocation(line: 274, column: 20, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 274, column: 13)
!2963 = !DILocation(line: 274, column: 29, scope: !2962)
!2964 = !DILocation(line: 274, column: 13, scope: !2939)
!2965 = !DILocation(line: 276, column: 8, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 275, column: 6)
!2967 = !DILocation(line: 278, column: 54, scope: !2966)
!2968 = !DILocation(line: 278, column: 8, scope: !2966)
!2969 = !DILocation(line: 279, column: 21, scope: !2966)
!2970 = !DILocation(line: 279, column: 8, scope: !2966)
!2971 = !DILocation(line: 280, column: 8, scope: !2966)
!2972 = !DILocation(line: 282, column: 28, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 282, column: 13)
!2974 = !DILocation(line: 282, column: 32, scope: !2973)
!2975 = !DILocation(line: 282, column: 13, scope: !2962)
!2976 = !DILocation(line: 284, column: 8, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2973, file: !3, line: 283, column: 6)
!2978 = !DILocation(line: 286, column: 72, scope: !2977)
!2979 = !DILocation(line: 286, column: 8, scope: !2977)
!2980 = !DILocation(line: 287, column: 21, scope: !2977)
!2981 = !DILocation(line: 287, column: 8, scope: !2977)
!2982 = !DILocation(line: 288, column: 8, scope: !2977)
!2983 = !DILocation(line: 290, column: 17, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2973, file: !3, line: 290, column: 13)
!2985 = !DILocation(line: 290, column: 21, scope: !2984)
!2986 = !DILocation(line: 290, column: 13, scope: !2973)
!2987 = !DILocation(line: 293, column: 8, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2984, file: !3, line: 291, column: 6)
!2989 = !DILocation(line: 292, column: 8, scope: !2988)
!2990 = !DILocation(line: 294, column: 8, scope: !2988)
!2991 = !DILocation(line: 297, column: 16, scope: !2959)
!2992 = !DILocation(line: 301, column: 8, scope: !2959)
!2993 = !DILocation(line: 301, column: 20, scope: !2959)
!2994 = !DILocation(line: 301, column: 13, scope: !2959)
!2995 = !DILocation(line: 301, column: 39, scope: !2959)
!2996 = !DILocation(line: 301, column: 26, scope: !2959)
!2997 = !DILocation(line: 303, column: 21, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 302, column: 6)
!2999 = !DILocation(line: 305, column: 6, scope: !2998)
!3000 = !DILocation(line: 0, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 306, column: 4)
!3002 = distinct !DILexicalBlock(scope: !2838, file: !3, line: 306, column: 4)
!3003 = !DILocation(line: 306, column: 9, scope: !3002)
!3004 = !DILocation(line: 0, scope: !3002)
!3005 = !DILocation(line: 306, column: 20, scope: !3001)
!3006 = !DILocation(line: 306, column: 4, scope: !3002)
!3007 = !DILocation(line: 307, column: 27, scope: !3001)
!3008 = !DILocation(line: 307, column: 13, scope: !3001)
!3009 = !DILocation(line: 307, column: 6, scope: !3001)
!3010 = !DILocation(line: 307, column: 24, scope: !3001)
!3011 = !DILocation(line: 306, column: 35, scope: !3001)
!3012 = !DILocation(line: 306, column: 4, scope: !3001)
!3013 = distinct !{!3013, !3006, !3014}
!3014 = !DILocation(line: 307, column: 46, scope: !3002)
!3015 = !DILocation(line: 309, column: 2, scope: !2839)
!3016 = !DILocation(line: 175, column: 19, scope: !2807)
!3017 = !DILocation(line: 310, column: 7, scope: !2821)
!3018 = !DILocation(line: 0, scope: !2827)
!3019 = !DILocation(line: 311, column: 23, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 311, column: 11)
!3021 = !DILocation(line: 311, column: 21, scope: !3020)
!3022 = !DILocation(line: 311, column: 11, scope: !2821)
!3023 = !DILocation(line: 313, column: 20, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3020, file: !3, line: 312, column: 2)
!3025 = !DILocation(line: 313, column: 11, scope: !3024)
!3026 = !DILocation(line: 314, column: 4, scope: !3024)
!3027 = !DILocation(line: 313, column: 4, scope: !3024)
!3028 = !DILocation(line: 315, column: 17, scope: !3024)
!3029 = !DILocation(line: 315, column: 4, scope: !3024)
!3030 = !DILocation(line: 316, column: 4, scope: !3024)
!3031 = distinct !{!3031, !2875, !3032}
!3032 = !DILocation(line: 318, column: 5, scope: !2807)
!3033 = !DILocation(line: 320, column: 3, scope: !2807)
!3034 = !DILocation(line: 321, column: 1, scope: !2807)
!3035 = distinct !DISubprogram(name: "coverage_finish", scope: !3, file: !3, line: 1040, type: !2697, scopeLine: 1041, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3036)
!3036 = !{!3037}
!3037 = !DILocalVariable(name: "error", scope: !3038, file: !3, line: 1045, type: !380)
!3038 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 1044, column: 5)
!3039 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 1043, column: 7)
!3040 = !DILocation(line: 1042, column: 3, scope: !3035)
!3041 = !DILocation(line: 1043, column: 7, scope: !3039)
!3042 = !DILocation(line: 1043, column: 7, scope: !3035)
!3043 = !DILocation(line: 1045, column: 19, scope: !3038)
!3044 = !DILocation(line: 0, scope: !3038)
!3045 = !DILocation(line: 1047, column: 11, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 1047, column: 11)
!3047 = !DILocation(line: 1047, column: 11, scope: !3038)
!3048 = !DILocation(line: 1048, column: 10, scope: !3046)
!3049 = !DILocation(line: 1048, column: 2, scope: !3046)
!3050 = !DILocation(line: 1049, column: 12, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3038, file: !3, line: 1049, column: 11)
!3052 = !DILocation(line: 1049, column: 11, scope: !3038)
!3053 = !DILocation(line: 1052, column: 10, scope: !3051)
!3054 = !DILocation(line: 1052, column: 2, scope: !3051)
!3055 = !DILocation(line: 1054, column: 1, scope: !3035)
!3056 = distinct !DISubprogram(name: "create_coverage", scope: !3, file: !3, line: 955, type: !2697, scopeLine: 956, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3057)
!3057 = !{!3058, !3059, !3060, !3061, !3062}
!3058 = !DILocalVariable(name: "gcov_info", scope: !3056, file: !3, line: 957, type: !411)
!3059 = !DILocalVariable(name: "gcov_init", scope: !3056, file: !3, line: 957, type: !411)
!3060 = !DILocalVariable(name: "body", scope: !3056, file: !3, line: 957, type: !411)
!3061 = !DILocalVariable(name: "t", scope: !3056, file: !3, line: 957, type: !411)
!3062 = !DILocalVariable(name: "name_buf", scope: !3056, file: !3, line: 958, type: !3063)
!3063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 256, elements: !3064)
!3064 = !{!3065}
!3065 = !DISubrange(count: 32)
!3066 = !DILocation(line: 957, column: 3, scope: !3056)
!3067 = !DILocation(line: 958, column: 3, scope: !3056)
!3068 = !DILocation(line: 958, column: 8, scope: !3056)
!3069 = !DILocation(line: 960, column: 15, scope: !3056)
!3070 = !DILocation(line: 962, column: 8, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3056, file: !3, line: 962, column: 7)
!3072 = !DILocation(line: 962, column: 7, scope: !3056)
!3073 = !DILocation(line: 965, column: 7, scope: !3056)
!3074 = !DILocation(line: 0, scope: !3056)
!3075 = !DILocation(line: 967, column: 15, scope: !3056)
!3076 = !DILocation(line: 969, column: 3, scope: !3056)
!3077 = !DILocation(line: 969, column: 27, scope: !3056)
!3078 = !DILocation(line: 970, column: 3, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3056, file: !3, line: 970, column: 3)
!3080 = !DILocation(line: 971, column: 27, scope: !3056)
!3081 = !DILocation(line: 971, column: 3, scope: !3056)
!3082 = !DILocation(line: 971, column: 25, scope: !3056)
!3083 = !DILocation(line: 972, column: 3, scope: !3056)
!3084 = !DILocation(line: 972, column: 28, scope: !3056)
!3085 = !DILocation(line: 975, column: 3, scope: !3056)
!3086 = !DILocation(line: 978, column: 27, scope: !3056)
!3087 = !DILocation(line: 978, column: 7, scope: !3056)
!3088 = !DILocation(line: 979, column: 33, scope: !3056)
!3089 = !DILocation(line: 979, column: 7, scope: !3056)
!3090 = !DILocation(line: 980, column: 7, scope: !3056)
!3091 = !DILocation(line: 982, column: 3, scope: !3056)
!3092 = !DILocation(line: 982, column: 19, scope: !3056)
!3093 = !DILocation(line: 983, column: 3, scope: !3056)
!3094 = !DILocation(line: 983, column: 21, scope: !3056)
!3095 = !DILocation(line: 984, column: 3, scope: !3056)
!3096 = !DILocation(line: 988, column: 8, scope: !3056)
!3097 = !DILocation(line: 989, column: 7, scope: !3056)
!3098 = !DILocation(line: 990, column: 7, scope: !3056)
!3099 = !DILocation(line: 991, column: 3, scope: !3056)
!3100 = !DILocation(line: 994, column: 35, scope: !3056)
!3101 = !DILocation(line: 994, column: 3, scope: !3056)
!3102 = !DILocation(line: 995, column: 1, scope: !3056)
!3103 = distinct !DISubprogram(name: "gcov_allocate", scope: !2033, file: !2033, line: 201, type: !2105, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3104)
!3104 = !{!3105, !3106}
!3105 = !DILocalVariable(name: "length", arg: 1, scope: !3103, file: !2033, line: 201, type: !7)
!3106 = !DILocalVariable(name: "new_size", scope: !3103, file: !2033, line: 203, type: !1005)
!3107 = !DILocation(line: 0, scope: !3103)
!3108 = !DILocation(line: 203, column: 30, scope: !3103)
!3109 = !DILocation(line: 205, column: 8, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3103, file: !2033, line: 205, column: 7)
!3111 = !DILocation(line: 205, column: 7, scope: !3103)
!3112 = !DILocation(line: 207, column: 15, scope: !3103)
!3113 = !DILocation(line: 207, column: 12, scope: !3103)
!3114 = !DILocation(line: 208, column: 12, scope: !3103)
!3115 = !DILocation(line: 210, column: 18, scope: !3103)
!3116 = !DILocation(line: 211, column: 21, scope: !3103)
!3117 = !DILocation(line: 211, column: 19, scope: !3103)
!3118 = !DILocation(line: 212, column: 1, scope: !3103)
!3119 = distinct !DISubprogram(name: "coverage_checksum_string", scope: !3, file: !3, line: 475, type: !3120, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3122)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!7, !7, !385}
!3122 = !{!3123, !3124, !3125, !3126, !3127, !3131}
!3123 = !DILocalVariable(name: "chksum", arg: 1, scope: !3119, file: !3, line: 475, type: !7)
!3124 = !DILocalVariable(name: "string", arg: 2, scope: !3119, file: !3, line: 475, type: !385)
!3125 = !DILocalVariable(name: "i", scope: !3119, file: !3, line: 477, type: !380)
!3126 = !DILocalVariable(name: "dup", scope: !3119, file: !3, line: 478, type: !382)
!3127 = !DILocalVariable(name: "offset", scope: !3128, file: !3, line: 486, type: !380)
!3128 = distinct !DILexicalBlock(scope: !3129, file: !3, line: 485, column: 5)
!3129 = distinct !DILexicalBlock(scope: !3130, file: !3, line: 484, column: 3)
!3130 = distinct !DILexicalBlock(scope: !3119, file: !3, line: 484, column: 3)
!3131 = !DILocalVariable(name: "y", scope: !3132, file: !3, line: 502, type: !380)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !3, line: 501, column: 8)
!3133 = distinct !DILexicalBlock(scope: !3134, file: !3, line: 500, column: 10)
!3134 = distinct !DILexicalBlock(scope: !3135, file: !3, line: 499, column: 4)
!3135 = distinct !DILexicalBlock(scope: !3136, file: !3, line: 499, column: 4)
!3136 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 498, column: 2)
!3137 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 497, column: 11)
!3138 = !DILocation(line: 0, scope: !3119)
!3139 = !DILocation(line: 484, column: 8, scope: !3130)
!3140 = !DILocation(line: 478, column: 9, scope: !3119)
!3141 = !DILocation(line: 0, scope: !3130)
!3142 = !DILocation(line: 484, column: 15, scope: !3129)
!3143 = !DILocation(line: 484, column: 3, scope: !3130)
!3144 = !DILocation(line: 0, scope: !3128)
!3145 = !DILocation(line: 487, column: 12, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 487, column: 11)
!3147 = !DILocation(line: 487, column: 11, scope: !3128)
!3148 = !DILocation(line: 489, column: 12, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 489, column: 11)
!3150 = !DILocation(line: 489, column: 11, scope: !3128)
!3151 = !DILocation(line: 497, column: 11, scope: !3137)
!3152 = !DILocation(line: 497, column: 11, scope: !3128)
!3153 = !DILocation(line: 499, column: 9, scope: !3135)
!3154 = !DILocation(line: 499, column: 25, scope: !3134)
!3155 = !DILocation(line: 499, column: 4, scope: !3135)
!3156 = !DILocation(line: 500, column: 19, scope: !3133)
!3157 = !DILocation(line: 500, column: 10, scope: !3134)
!3158 = !DILocation(line: 504, column: 3, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3132, file: !3, line: 504, column: 3)
!3160 = !DILocation(line: 0, scope: !3159)
!3161 = !DILocation(line: 0, scope: !3132)
!3162 = !DILocation(line: 504, column: 17, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3159, file: !3, line: 504, column: 3)
!3164 = !DILocation(line: 505, column: 20, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3163, file: !3, line: 505, column: 9)
!3166 = !DILocation(line: 505, column: 11, scope: !3165)
!3167 = !DILocation(line: 505, column: 25, scope: !3165)
!3168 = !DILocation(line: 505, column: 32, scope: !3165)
!3169 = !DILocation(line: 505, column: 49, scope: !3165)
!3170 = !DILocation(line: 506, column: 9, scope: !3165)
!3171 = !DILocation(line: 506, column: 35, scope: !3165)
!3172 = !DILocation(line: 504, column: 23, scope: !3163)
!3173 = !DILocation(line: 504, column: 3, scope: !3163)
!3174 = distinct !{!3174, !3158, !3175}
!3175 = !DILocation(line: 507, column: 7, scope: !3159)
!3176 = !DILocation(line: 508, column: 9, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3132, file: !3, line: 508, column: 7)
!3178 = !DILocation(line: 508, column: 14, scope: !3177)
!3179 = !DILocation(line: 508, column: 26, scope: !3177)
!3180 = !DILocation(line: 508, column: 17, scope: !3177)
!3181 = !DILocation(line: 508, column: 31, scope: !3177)
!3182 = !DILocation(line: 508, column: 7, scope: !3132)
!3183 = !DILocation(line: 510, column: 3, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3132, file: !3, line: 510, column: 3)
!3185 = !DILocation(line: 0, scope: !3184)
!3186 = !DILocation(line: 510, column: 18, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 510, column: 3)
!3188 = !DILocation(line: 511, column: 20, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3187, file: !3, line: 511, column: 9)
!3190 = !DILocation(line: 511, column: 11, scope: !3189)
!3191 = !DILocation(line: 511, column: 25, scope: !3189)
!3192 = !DILocation(line: 511, column: 32, scope: !3189)
!3193 = !DILocation(line: 511, column: 49, scope: !3189)
!3194 = !DILocation(line: 512, column: 9, scope: !3189)
!3195 = !DILocation(line: 512, column: 35, scope: !3189)
!3196 = !DILocation(line: 510, column: 25, scope: !3187)
!3197 = !DILocation(line: 510, column: 3, scope: !3187)
!3198 = distinct !{!3198, !3183, !3199}
!3199 = !DILocation(line: 513, column: 7, scope: !3184)
!3200 = !DILocation(line: 514, column: 9, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3132, file: !3, line: 514, column: 7)
!3202 = !DILocation(line: 514, column: 7, scope: !3132)
!3203 = !DILocation(line: 516, column: 8, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3132, file: !3, line: 516, column: 7)
!3205 = !DILocation(line: 516, column: 7, scope: !3132)
!3206 = !DILocation(line: 517, column: 20, scope: !3204)
!3207 = !DILocation(line: 517, column: 5, scope: !3204)
!3208 = !DILocation(line: 518, column: 8, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3132, file: !3, line: 518, column: 3)
!3210 = !DILocation(line: 0, scope: !3209)
!3211 = !DILocation(line: 518, column: 18, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3209, file: !3, line: 518, column: 3)
!3213 = !DILocation(line: 518, column: 3, scope: !3209)
!3214 = !DILocation(line: 519, column: 11, scope: !3212)
!3215 = !DILocation(line: 519, column: 5, scope: !3212)
!3216 = !DILocation(line: 519, column: 16, scope: !3212)
!3217 = !DILocation(line: 518, column: 25, scope: !3212)
!3218 = !DILocation(line: 518, column: 3, scope: !3212)
!3219 = distinct !{!3219, !3213, !3220}
!3220 = !DILocation(line: 519, column: 18, scope: !3209)
!3221 = !DILocation(line: 499, column: 37, scope: !3134)
!3222 = !DILocation(line: 499, column: 4, scope: !3134)
!3223 = distinct !{!3223, !3155, !3224}
!3224 = !DILocation(line: 520, column: 8, scope: !3135)
!3225 = !DILocation(line: 484, column: 27, scope: !3129)
!3226 = !DILocation(line: 484, column: 3, scope: !3129)
!3227 = distinct !{!3227, !3143, !3228}
!3228 = !DILocation(line: 523, column: 5, scope: !3130)
!3229 = !DILocation(line: 525, column: 12, scope: !3119)
!3230 = !DILocation(line: 526, column: 7, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3119, file: !3, line: 526, column: 7)
!3232 = !DILocation(line: 526, column: 7, scope: !3119)
!3233 = !DILocation(line: 527, column: 5, scope: !3231)
!3234 = !DILocation(line: 529, column: 3, scope: !3119)
!3235 = distinct !DISubprogram(name: "htab_counts_entry_hash", scope: !3, file: !3, line: 143, type: !989, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3236)
!3236 = !{!3237, !3238}
!3237 = !DILocalVariable(name: "of", arg: 1, scope: !3235, file: !3, line: 143, type: !829)
!3238 = !DILocalVariable(name: "entry", scope: !3235, file: !3, line: 145, type: !3239)
!3239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1491)
!3240 = !DILocation(line: 0, scope: !3235)
!3241 = !DILocation(line: 147, column: 17, scope: !3235)
!3242 = !DILocation(line: 147, column: 23, scope: !3235)
!3243 = !DILocation(line: 147, column: 48, scope: !3235)
!3244 = !DILocation(line: 147, column: 39, scope: !3235)
!3245 = !DILocation(line: 147, column: 3, scope: !3235)
!3246 = distinct !DISubprogram(name: "htab_counts_entry_eq", scope: !3, file: !3, line: 151, type: !995, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3247)
!3247 = !{!3248, !3249, !3250, !3251}
!3248 = !DILocalVariable(name: "of1", arg: 1, scope: !3246, file: !3, line: 151, type: !829)
!3249 = !DILocalVariable(name: "of2", arg: 2, scope: !3246, file: !3, line: 151, type: !829)
!3250 = !DILocalVariable(name: "entry1", scope: !3246, file: !3, line: 153, type: !3239)
!3251 = !DILocalVariable(name: "entry2", scope: !3246, file: !3, line: 154, type: !3239)
!3252 = !DILocation(line: 0, scope: !3246)
!3253 = !DILocation(line: 156, column: 18, scope: !3246)
!3254 = !DILocation(line: 156, column: 35, scope: !3246)
!3255 = !DILocation(line: 156, column: 24, scope: !3246)
!3256 = !DILocation(line: 156, column: 41, scope: !3246)
!3257 = !DILocation(line: 156, column: 52, scope: !3246)
!3258 = !DILocation(line: 156, column: 67, scope: !3246)
!3259 = !DILocation(line: 156, column: 56, scope: !3246)
!3260 = !DILocation(line: 156, column: 3, scope: !3246)
!3261 = distinct !DISubprogram(name: "htab_counts_entry_del", scope: !3, file: !3, line: 160, type: !1000, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3262)
!3262 = !{!3263, !3264}
!3263 = !DILocalVariable(name: "of", arg: 1, scope: !3261, file: !3, line: 160, type: !384)
!3264 = !DILocalVariable(name: "entry", scope: !3261, file: !3, line: 162, type: !3265)
!3265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!3266 = !DILocation(line: 0, scope: !3261)
!3267 = !DILocation(line: 164, column: 16, scope: !3261)
!3268 = !DILocation(line: 164, column: 3, scope: !3261)
!3269 = !DILocation(line: 165, column: 3, scope: !3261)
!3270 = !DILocation(line: 166, column: 1, scope: !3261)
!3271 = distinct !DISubprogram(name: "gcov_position", scope: !389, file: !389, line: 584, type: !3272, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1659)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!1622}
!3274 = !DILocation(line: 586, column: 3, scope: !3271)
!3275 = !DILocation(line: 587, column: 19, scope: !3271)
!3276 = !DILocation(line: 587, column: 36, scope: !3271)
!3277 = !DILocation(line: 587, column: 25, scope: !3271)
!3278 = !DILocation(line: 587, column: 3, scope: !3271)
!3279 = distinct !DISubprogram(name: "build_gcov_info", scope: !3, file: !3, line: 813, type: !2443, scopeLine: 814, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3280)
!3280 = !{!3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3300, !3301}
!3281 = !DILocalVariable(name: "n_ctr_types", scope: !3279, file: !3, line: 815, type: !7)
!3282 = !DILocalVariable(name: "ix", scope: !3279, file: !3, line: 815, type: !7)
!3283 = !DILocalVariable(name: "type", scope: !3279, file: !3, line: 816, type: !411)
!3284 = !DILocalVariable(name: "const_type", scope: !3279, file: !3, line: 816, type: !411)
!3285 = !DILocalVariable(name: "fn_info_type", scope: !3279, file: !3, line: 817, type: !411)
!3286 = !DILocalVariable(name: "fn_info_value", scope: !3279, file: !3, line: 817, type: !411)
!3287 = !DILocalVariable(name: "fn_info_ptr_type", scope: !3279, file: !3, line: 818, type: !411)
!3288 = !DILocalVariable(name: "ctr_info_type", scope: !3279, file: !3, line: 819, type: !411)
!3289 = !DILocalVariable(name: "ctr_info_ary_type", scope: !3279, file: !3, line: 819, type: !411)
!3290 = !DILocalVariable(name: "ctr_info_value", scope: !3279, file: !3, line: 819, type: !411)
!3291 = !DILocalVariable(name: "field", scope: !3279, file: !3, line: 820, type: !411)
!3292 = !DILocalVariable(name: "fields", scope: !3279, file: !3, line: 820, type: !411)
!3293 = !DILocalVariable(name: "value", scope: !3279, file: !3, line: 821, type: !411)
!3294 = !DILocalVariable(name: "filename_string", scope: !3279, file: !3, line: 822, type: !411)
!3295 = !DILocalVariable(name: "da_file_name_len", scope: !3279, file: !3, line: 823, type: !380)
!3296 = !DILocalVariable(name: "n_fns", scope: !3279, file: !3, line: 824, type: !7)
!3297 = !DILocalVariable(name: "fn", scope: !3279, file: !3, line: 825, type: !3298)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1481)
!3300 = !DILocalVariable(name: "string_type", scope: !3279, file: !3, line: 826, type: !411)
!3301 = !DILocalVariable(name: "array_type", scope: !3302, file: !3, line: 884, type: !411)
!3302 = distinct !DILexicalBlock(scope: !3303, file: !3, line: 883, column: 5)
!3303 = distinct !DILexicalBlock(scope: !3279, file: !3, line: 882, column: 7)
!3304 = !DILocation(line: 0, scope: !3279)
!3305 = !DILocation(line: 0, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3307, file: !3, line: 830, column: 9)
!3307 = distinct !DILexicalBlock(scope: !3308, file: !3, line: 829, column: 3)
!3308 = distinct !DILexicalBlock(scope: !3279, file: !3, line: 829, column: 3)
!3309 = !DILocation(line: 829, column: 8, scope: !3308)
!3310 = !DILocation(line: 0, scope: !3308)
!3311 = !DILocation(line: 829, column: 36, scope: !3307)
!3312 = !DILocation(line: 829, column: 3, scope: !3308)
!3313 = !DILocation(line: 830, column: 27, scope: !3306)
!3314 = !DILocation(line: 830, column: 22, scope: !3306)
!3315 = !DILocation(line: 830, column: 9, scope: !3307)
!3316 = !DILocation(line: 829, column: 56, scope: !3307)
!3317 = !DILocation(line: 829, column: 3, scope: !3307)
!3318 = distinct !{!3318, !3312, !3319}
!3319 = !DILocation(line: 831, column: 18, scope: !3308)
!3320 = !DILocation(line: 833, column: 27, scope: !3279)
!3321 = !DILocation(line: 833, column: 10, scope: !3279)
!3322 = !DILocation(line: 834, column: 16, scope: !3279)
!3323 = !DILocation(line: 837, column: 11, scope: !3279)
!3324 = !DILocation(line: 839, column: 3, scope: !3279)
!3325 = !DILocation(line: 839, column: 22, scope: !3279)
!3326 = !DILocation(line: 841, column: 11, scope: !3279)
!3327 = !DILocation(line: 845, column: 11, scope: !3279)
!3328 = !DILocation(line: 847, column: 3, scope: !3279)
!3329 = !DILocation(line: 847, column: 22, scope: !3279)
!3330 = !DILocation(line: 849, column: 11, scope: !3279)
!3331 = !DILocation(line: 852, column: 11, scope: !3279)
!3332 = !DILocation(line: 854, column: 3, scope: !3279)
!3333 = !DILocation(line: 854, column: 22, scope: !3279)
!3334 = !DILocation(line: 856, column: 11, scope: !3279)
!3335 = !DILocation(line: 860, column: 59, scope: !3279)
!3336 = !DILocation(line: 860, column: 37, scope: !3279)
!3337 = !DILocation(line: 860, column: 17, scope: !3279)
!3338 = !DILocation(line: 862, column: 11, scope: !3279)
!3339 = !DILocation(line: 864, column: 3, scope: !3279)
!3340 = !DILocation(line: 864, column: 22, scope: !3279)
!3341 = !DILocation(line: 866, column: 30, scope: !3279)
!3342 = !DILocation(line: 866, column: 22, scope: !3279)
!3343 = !DILocation(line: 867, column: 52, scope: !3279)
!3344 = !DILocation(line: 867, column: 57, scope: !3279)
!3345 = !DILocation(line: 867, column: 21, scope: !3279)
!3346 = !DILocation(line: 869, column: 6, scope: !3279)
!3347 = !DILocation(line: 870, column: 33, scope: !3279)
!3348 = !DILocation(line: 870, column: 7, scope: !3279)
!3349 = !DILocation(line: 869, column: 22, scope: !3279)
!3350 = !DILocation(line: 868, column: 33, scope: !3279)
!3351 = !DILocation(line: 868, column: 3, scope: !3279)
!3352 = !DILocation(line: 868, column: 31, scope: !3279)
!3353 = !DILocation(line: 871, column: 11, scope: !3279)
!3354 = !DILocation(line: 875, column: 18, scope: !3279)
!3355 = !DILocation(line: 876, column: 42, scope: !3279)
!3356 = !DILocation(line: 876, column: 22, scope: !3279)
!3357 = !DILocation(line: 878, column: 8, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3279, file: !3, line: 878, column: 3)
!3359 = !DILocation(line: 0, scope: !3358)
!3360 = !DILocation(line: 878, column: 3, scope: !3358)
!3361 = !DILocation(line: 879, column: 21, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3358, file: !3, line: 878, column: 3)
!3363 = !DILocation(line: 878, column: 53, scope: !3362)
!3364 = !DILocation(line: 878, column: 64, scope: !3362)
!3365 = !DILocation(line: 878, column: 3, scope: !3362)
!3366 = distinct !{!3366, !3360, !3367}
!3367 = !DILocation(line: 879, column: 21, scope: !3358)
!3368 = !DILocation(line: 882, column: 7, scope: !3303)
!3369 = !DILocation(line: 882, column: 7, scope: !3279)
!3370 = !DILocation(line: 886, column: 70, scope: !3302)
!3371 = !DILocation(line: 886, column: 64, scope: !3302)
!3372 = !DILocation(line: 886, column: 38, scope: !3302)
!3373 = !DILocation(line: 886, column: 20, scope: !3302)
!3374 = !DILocation(line: 0, scope: !3302)
!3375 = !DILocation(line: 887, column: 20, scope: !3302)
!3376 = !DILocation(line: 891, column: 10, scope: !3302)
!3377 = !DILocation(line: 890, column: 23, scope: !3302)
!3378 = !DILocation(line: 892, column: 23, scope: !3302)
!3379 = !DILocation(line: 893, column: 5, scope: !3302)
!3380 = !DILocation(line: 895, column: 21, scope: !3303)
!3381 = !DILocation(line: 0, scope: !3303)
!3382 = !DILocation(line: 898, column: 11, scope: !3279)
!3383 = !DILocation(line: 900, column: 3, scope: !3279)
!3384 = !DILocation(line: 900, column: 22, scope: !3279)
!3385 = !DILocation(line: 902, column: 11, scope: !3279)
!3386 = !DILocation(line: 907, column: 11, scope: !3279)
!3387 = !DILocation(line: 909, column: 3, scope: !3279)
!3388 = !DILocation(line: 909, column: 22, scope: !3279)
!3389 = !DILocation(line: 911, column: 11, scope: !3279)
!3390 = !DILocation(line: 914, column: 11, scope: !3279)
!3391 = !DILocation(line: 916, column: 3, scope: !3279)
!3392 = !DILocation(line: 916, column: 22, scope: !3279)
!3393 = !DILocation(line: 918, column: 11, scope: !3279)
!3394 = !DILocation(line: 923, column: 19, scope: !3279)
!3395 = !DILocation(line: 925, column: 14, scope: !3279)
!3396 = !DILocation(line: 924, column: 41, scope: !3279)
!3397 = !DILocation(line: 924, column: 23, scope: !3279)
!3398 = !DILocation(line: 926, column: 23, scope: !3279)
!3399 = !DILocation(line: 927, column: 8, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3279, file: !3, line: 927, column: 3)
!3401 = !DILocation(line: 0, scope: !3400)
!3402 = !DILocation(line: 927, column: 19, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 927, column: 3)
!3404 = !DILocation(line: 927, column: 3, scope: !3400)
!3405 = !DILocation(line: 928, column: 9, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3403, file: !3, line: 928, column: 9)
!3407 = !DILocation(line: 928, column: 27, scope: !3406)
!3408 = !DILocation(line: 928, column: 22, scope: !3406)
!3409 = !DILocation(line: 928, column: 9, scope: !3403)
!3410 = !DILocation(line: 929, column: 24, scope: !3406)
!3411 = !DILocation(line: 929, column: 7, scope: !3406)
!3412 = !DILocation(line: 927, column: 39, scope: !3403)
!3413 = !DILocation(line: 927, column: 3, scope: !3403)
!3414 = distinct !{!3414, !3404, !3415}
!3415 = !DILocation(line: 929, column: 24, scope: !3400)
!3416 = !DILocation(line: 934, column: 21, scope: !3279)
!3417 = !DILocation(line: 933, column: 20, scope: !3279)
!3418 = !DILocation(line: 936, column: 11, scope: !3279)
!3419 = !DILocation(line: 938, column: 3, scope: !3279)
!3420 = !DILocation(line: 938, column: 22, scope: !3279)
!3421 = !DILocation(line: 940, column: 11, scope: !3279)
!3422 = !DILocation(line: 942, column: 3, scope: !3279)
!3423 = !DILocation(line: 945, column: 46, scope: !3279)
!3424 = !DILocation(line: 945, column: 11, scope: !3279)
!3425 = !DILocation(line: 947, column: 3, scope: !3279)
!3426 = distinct !DISubprogram(name: "get_gcov_unsigned_t", scope: !3, file: !3, line: 137, type: !2443, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1659)
!3427 = !DILocation(line: 139, column: 27, scope: !3426)
!3428 = !DILocation(line: 139, column: 10, scope: !3426)
!3429 = !DILocation(line: 139, column: 3, scope: !3426)
!3430 = distinct !DISubprogram(name: "build_fn_info_type", scope: !3, file: !3, line: 636, type: !3431, scopeLine: 637, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3433)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!411, !7}
!3433 = !{!3434, !3435, !3436, !3437, !3438}
!3434 = !DILocalVariable(name: "counters", arg: 1, scope: !3430, file: !3, line: 636, type: !7)
!3435 = !DILocalVariable(name: "type", scope: !3430, file: !3, line: 638, type: !411)
!3436 = !DILocalVariable(name: "field", scope: !3430, file: !3, line: 639, type: !411)
!3437 = !DILocalVariable(name: "fields", scope: !3430, file: !3, line: 639, type: !411)
!3438 = !DILocalVariable(name: "array_type", scope: !3430, file: !3, line: 640, type: !411)
!3439 = !DILocation(line: 0, scope: !3430)
!3440 = !DILocation(line: 638, column: 32, scope: !3430)
!3441 = !DILocation(line: 638, column: 15, scope: !3430)
!3442 = !DILocation(line: 643, column: 12, scope: !3430)
!3443 = !DILocation(line: 647, column: 11, scope: !3430)
!3444 = !DILocation(line: 649, column: 3, scope: !3430)
!3445 = !DILocation(line: 649, column: 22, scope: !3430)
!3446 = !DILocation(line: 652, column: 51, scope: !3430)
!3447 = !DILocation(line: 652, column: 42, scope: !3430)
!3448 = !DILocation(line: 652, column: 16, scope: !3430)
!3449 = !DILocation(line: 653, column: 16, scope: !3430)
!3450 = !DILocation(line: 654, column: 34, scope: !3430)
!3451 = !DILocation(line: 654, column: 16, scope: !3430)
!3452 = !DILocation(line: 657, column: 11, scope: !3430)
!3453 = !DILocation(line: 659, column: 3, scope: !3430)
!3454 = !DILocation(line: 659, column: 22, scope: !3430)
!3455 = !DILocation(line: 662, column: 3, scope: !3430)
!3456 = !DILocation(line: 664, column: 3, scope: !3430)
!3457 = distinct !DISubprogram(name: "build_fn_info_value", scope: !3, file: !3, line: 672, type: !3458, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3460)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!411, !3298, !411}
!3460 = !{!3461, !3462, !3463, !3464, !3465, !3466, !3467}
!3461 = !DILocalVariable(name: "function", arg: 1, scope: !3457, file: !3, line: 672, type: !3298)
!3462 = !DILocalVariable(name: "type", arg: 2, scope: !3457, file: !3, line: 672, type: !411)
!3463 = !DILocalVariable(name: "value", scope: !3457, file: !3, line: 674, type: !411)
!3464 = !DILocalVariable(name: "fields", scope: !3457, file: !3, line: 675, type: !411)
!3465 = !DILocalVariable(name: "ix", scope: !3457, file: !3, line: 676, type: !7)
!3466 = !DILocalVariable(name: "array_value", scope: !3457, file: !3, line: 677, type: !411)
!3467 = !DILocalVariable(name: "counters", scope: !3468, file: !3, line: 693, type: !411)
!3468 = distinct !DILexicalBlock(scope: !3469, file: !3, line: 692, column: 7)
!3469 = distinct !DILexicalBlock(scope: !3470, file: !3, line: 691, column: 9)
!3470 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 690, column: 3)
!3471 = distinct !DILexicalBlock(scope: !3457, file: !3, line: 690, column: 3)
!3472 = !DILocation(line: 0, scope: !3457)
!3473 = !DILocation(line: 675, column: 17, scope: !3457)
!3474 = !DILocation(line: 680, column: 11, scope: !3457)
!3475 = !DILocation(line: 682, column: 12, scope: !3457)
!3476 = !DILocation(line: 685, column: 11, scope: !3457)
!3477 = !DILocation(line: 687, column: 12, scope: !3457)
!3478 = !DILocation(line: 690, column: 8, scope: !3471)
!3479 = !DILocation(line: 0, scope: !3471)
!3480 = !DILocation(line: 690, column: 19, scope: !3470)
!3481 = !DILocation(line: 690, column: 3, scope: !3471)
!3482 = !DILocation(line: 691, column: 9, scope: !3469)
!3483 = !DILocation(line: 691, column: 27, scope: !3469)
!3484 = !DILocation(line: 691, column: 22, scope: !3469)
!3485 = !DILocation(line: 691, column: 9, scope: !3470)
!3486 = !DILocation(line: 693, column: 34, scope: !3468)
!3487 = !DILocation(line: 694, column: 6, scope: !3468)
!3488 = !DILocation(line: 693, column: 18, scope: !3468)
!3489 = !DILocation(line: 0, scope: !3468)
!3490 = !DILocation(line: 696, column: 16, scope: !3468)
!3491 = !DILocation(line: 697, column: 7, scope: !3468)
!3492 = !DILocation(line: 690, column: 39, scope: !3470)
!3493 = !DILocation(line: 690, column: 3, scope: !3470)
!3494 = distinct !{!3494, !3481, !3495}
!3495 = !DILocation(line: 697, column: 7, scope: !3471)
!3496 = !DILocation(line: 700, column: 46, scope: !3457)
!3497 = !DILocation(line: 701, column: 11, scope: !3457)
!3498 = !DILocation(line: 700, column: 17, scope: !3457)
!3499 = !DILocation(line: 702, column: 11, scope: !3457)
!3500 = !DILocation(line: 705, column: 46, scope: !3457)
!3501 = !DILocation(line: 705, column: 11, scope: !3457)
!3502 = !DILocation(line: 707, column: 3, scope: !3457)
!3503 = distinct !DISubprogram(name: "build_ctr_info_type", scope: !3, file: !3, line: 713, type: !2443, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3504)
!3504 = !{!3505, !3506, !3507, !3508, !3509}
!3505 = !DILocalVariable(name: "type", scope: !3503, file: !3, line: 715, type: !411)
!3506 = !DILocalVariable(name: "field", scope: !3503, file: !3, line: 716, type: !411)
!3507 = !DILocalVariable(name: "fields", scope: !3503, file: !3, line: 716, type: !411)
!3508 = !DILocalVariable(name: "gcov_ptr_type", scope: !3503, file: !3, line: 717, type: !411)
!3509 = !DILocalVariable(name: "gcov_merge_fn_type", scope: !3503, file: !3, line: 718, type: !411)
!3510 = !DILocation(line: 715, column: 32, scope: !3503)
!3511 = !DILocation(line: 715, column: 15, scope: !3503)
!3512 = !DILocation(line: 0, scope: !3503)
!3513 = !DILocation(line: 717, column: 44, scope: !3503)
!3514 = !DILocation(line: 717, column: 24, scope: !3503)
!3515 = !DILocation(line: 721, column: 11, scope: !3503)
!3516 = !DILocation(line: 723, column: 3, scope: !3503)
!3517 = !DILocation(line: 723, column: 22, scope: !3503)
!3518 = !DILocation(line: 727, column: 11, scope: !3503)
!3519 = !DILocation(line: 729, column: 3, scope: !3503)
!3520 = !DILocation(line: 729, column: 22, scope: !3503)
!3521 = !DILocation(line: 734, column: 31, scope: !3503)
!3522 = !DILocation(line: 735, column: 25, scope: !3503)
!3523 = !DILocation(line: 734, column: 5, scope: !3503)
!3524 = !DILocation(line: 737, column: 11, scope: !3503)
!3525 = !DILocation(line: 740, column: 3, scope: !3503)
!3526 = !DILocation(line: 740, column: 22, scope: !3503)
!3527 = !DILocation(line: 743, column: 3, scope: !3503)
!3528 = !DILocation(line: 745, column: 3, scope: !3503)
!3529 = distinct !DISubprogram(name: "build_ctr_info_value", scope: !3, file: !3, line: 753, type: !3530, scopeLine: 754, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3532)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!411, !7, !411}
!3532 = !{!3533, !3534, !3535, !3536, !3537, !3538}
!3533 = !DILocalVariable(name: "counter", arg: 1, scope: !3529, file: !3, line: 753, type: !7)
!3534 = !DILocalVariable(name: "type", arg: 2, scope: !3529, file: !3, line: 753, type: !411)
!3535 = !DILocalVariable(name: "value", scope: !3529, file: !3, line: 755, type: !411)
!3536 = !DILocalVariable(name: "fields", scope: !3529, file: !3, line: 756, type: !411)
!3537 = !DILocalVariable(name: "fn", scope: !3529, file: !3, line: 757, type: !411)
!3538 = !DILocalVariable(name: "array_type", scope: !3539, file: !3, line: 768, type: !411)
!3539 = distinct !DILexicalBlock(scope: !3540, file: !3, line: 767, column: 5)
!3540 = distinct !DILexicalBlock(scope: !3529, file: !3, line: 766, column: 7)
!3541 = !DILocation(line: 0, scope: !3529)
!3542 = !DILocation(line: 756, column: 17, scope: !3529)
!3543 = !DILocation(line: 760, column: 11, scope: !3529)
!3544 = !DILocation(line: 764, column: 12, scope: !3529)
!3545 = !DILocation(line: 766, column: 7, scope: !3540)
!3546 = !DILocation(line: 766, column: 7, scope: !3529)
!3547 = !DILocation(line: 770, column: 36, scope: !3539)
!3548 = !DILocation(line: 771, column: 8, scope: !3539)
!3549 = !DILocation(line: 771, column: 28, scope: !3539)
!3550 = !DILocation(line: 770, column: 20, scope: !3539)
!3551 = !DILocation(line: 0, scope: !3539)
!3552 = !DILocation(line: 772, column: 20, scope: !3539)
!3553 = !DILocation(line: 773, column: 38, scope: !3539)
!3554 = !DILocation(line: 773, column: 20, scope: !3539)
!3555 = !DILocation(line: 776, column: 7, scope: !3539)
!3556 = !DILocation(line: 776, column: 44, scope: !3539)
!3557 = !DILocation(line: 777, column: 46, scope: !3539)
!3558 = !DILocation(line: 777, column: 7, scope: !3539)
!3559 = !DILocation(line: 777, column: 44, scope: !3539)
!3560 = !DILocation(line: 778, column: 51, scope: !3539)
!3561 = !DILocation(line: 778, column: 7, scope: !3539)
!3562 = !DILocation(line: 778, column: 49, scope: !3539)
!3563 = !DILocation(line: 779, column: 30, scope: !3539)
!3564 = !DILocation(line: 779, column: 7, scope: !3539)
!3565 = !DILocation(line: 781, column: 15, scope: !3539)
!3566 = !DILocation(line: 785, column: 5, scope: !3539)
!3567 = !DILocation(line: 787, column: 13, scope: !3540)
!3568 = !DILocation(line: 0, scope: !3540)
!3569 = !DILocation(line: 788, column: 12, scope: !3529)
!3570 = !DILocation(line: 790, column: 8, scope: !3529)
!3571 = !DILocation(line: 794, column: 3, scope: !3529)
!3572 = !DILocation(line: 794, column: 22, scope: !3529)
!3573 = !DILocation(line: 795, column: 3, scope: !3529)
!3574 = !DILocation(line: 795, column: 20, scope: !3529)
!3575 = !DILocation(line: 796, column: 24, scope: !3529)
!3576 = !DILocation(line: 797, column: 21, scope: !3529)
!3577 = !DILocation(line: 798, column: 3, scope: !3529)
!3578 = !DILocation(line: 799, column: 11, scope: !3529)
!3579 = !DILocation(line: 804, column: 46, scope: !3529)
!3580 = !DILocation(line: 804, column: 11, scope: !3529)
!3581 = !DILocation(line: 806, column: 3, scope: !3529)
