; ModuleID = 'mcf.bc'
source_filename = "mcf.c"
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
%struct.loop = type opaque
%struct.et_node = type opaque
%union.basic_block_il_dependent = type { %struct.gimple_bb_info* }
%struct.gimple_bb_info = type { %struct.gimple_seq_d*, %struct.gimple_seq_d* }
%struct.VEC_basic_block_gc = type { %struct.VEC_basic_block_base }
%struct.VEC_basic_block_base = type { i32, i32, [1 x %struct.basic_block_def*] }
%struct.gimple_seq_d = type opaque
%struct.gimple_df = type opaque
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
%struct.rtx_def = type opaque
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.lang_hooks = type { i8*, i64, void (%union.tree_node*)*, i64 (i32)*, i32 (i32, i8**)*, void (%struct.diagnostic_context*)*, i32 (i64, i8*, i32)*, i8 (i8*, i64)*, i8 (i8**)*, i8 ()*, void ()*, void (i32)*, i8 (%union.tree_node*)*, i32 (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void ()*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)*, i32 (%union.tree_node*, %union.tree_node*)*, void (%struct.diagnostic_context*, i8*, %struct.diagnostic_info*)*, i64 (i64)*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.attribute_spec*, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i8 (%union.tree_node*)*, i32 (%union.tree_node**, %struct.gimple_seq_d**, %struct.gimple_seq_d**)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, void ()*, %union.tree_node* (%union.tree_node*, i8*, i8*)*, %union.tree_node* ()*, %union.tree_node* (%union.tree_node*)*, i8 }
%struct.diagnostic_context = type opaque
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.edge_info = type { i8, [3 x i8] }
%struct.fixup_graph_d = type { i32, i32, i32, i32, %struct.fixup_vertex_d*, %struct.fixup_edge_d* }
%struct.fixup_vertex_d = type { %struct.VEC_fixup_edge_p_heap* }
%struct.VEC_fixup_edge_p_heap = type { %struct.VEC_fixup_edge_p_base }
%struct.VEC_fixup_edge_p_base = type { i32, i32, [1 x %struct.fixup_edge_d*] }
%struct.fixup_edge_d = type { i32, i32, i32, i8, i32, i64, i64, i64, i64, i64 }
%struct.augmenting_path_d = type { %struct.queue_d, i32*, i32* }
%struct.queue_d = type { i32*, i32, i32, i32 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"\0AVertex transformation:\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"mcf.c\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"\0AReverse edges:\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"\0As'->S, T->t':\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"\0AD(v) balance:\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"\0AAdjust supply and demand:\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"supply_value=%ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"demand_value=%ld\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"\0ANormalize edges:\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"\0AAnti-parallel edge:\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"New vertex is %d.\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"------------------\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"After normalization:\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"After create_fixup_graph()\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"NULL fixup graph edge.\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"flow/capacity=%ld/\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"+oo,\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"%ld,\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c" rflow=+oo.\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c" rflow=%ld,\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c" cost=%ld.\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"\09(%d->%d)\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c" @VERTEX_SPLIT_EDGE\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c" @REDIRECT_EDGE\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c" @SOURCE_CONNECT_EDGE\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c" @SINK_CONNECT_EDGE\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c" @REVERSE_EDGE\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c" @BALANCE_EDGE\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"  @NORMALIZED_EDGE\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c" @INVALID_EDGE\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"ENTRY\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"ENTRY''\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"EXIT''\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"NEW_EXIT\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"NEW_ENTRY\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"''\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"\0ADump fixup graph for %s(): %s.\0A\00", align 1
@lang_hooks = external dso_local local_unnamed_addr global %struct.lang_hooks, align 8
@current_function_decl = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@.str.45 = private unnamed_addr constant [60 x i8] c"There are %d vertices and %d edges. new_exit_index is %d.\0A\0A\00", align 1
@.str.46 = private unnamed_addr constant [39 x i8] c"vertex_list[%d]: %d succ fixup edges.\0A\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"(f) \00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"(b) \00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"After find_minimum_cost_flow()\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"\0ADump augmenting path:\0A\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"<-\00", align 1
@.str.52 = private unnamed_addr constant [28 x i8] c"ENTRY  (path_capacity=%ld)\0A\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"Network flow is %ld.\0A\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"After find_max_flow()\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"\0Acompute_residual_flow():\0A\00", align 1
@.str.56 = private unnamed_addr constant [31 x i8] c"\0ANegative cycle length is %d:\0A\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c": (%ld, %ld)\0A\00", align 1
@.str.59 = private unnamed_addr constant [24 x i8] c"Augment cycle with %ld\0A\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"\0Aadjust_cfg_counts():\0A\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"BB%d: %ld\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c" + %ld(\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c" - %ld(\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c" = %ld\0A\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"%d->%d: %ld\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"(self edge)\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c" = %ld\09(%.1f%%)\0A\00", align 1
@.str.69 = private unnamed_addr constant [36 x i8] c"\0ACheck %s() CFG flow conservation:\0A\00", align 1
@.str.70 = private unnamed_addr constant [25 x i8] c"BB%d(%ld)  **INVALID**: \00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.71 = private unnamed_addr constant [35 x i8] c"******** BB%d(%ld)  **INVALID**: \0A\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"in_edges=%ld \00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"out_edges=%ld\0A\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !319 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !332, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !333, metadata !DIExpression()), !dbg !334
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !335
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !336
  ret i32 %call, !dbg !337
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !338 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !342
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !343
  ret i32 %call, !dbg !344
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !345 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !405, metadata !DIExpression()), !dbg !406
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !407
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !407
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !407
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !407
  %cmp = icmp uge i8* %0, %1, !dbg !407
  %conv1 = zext i1 %cmp to i64, !dbg !407
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !407
  %tobool = icmp eq i64 %expval, 0, !dbg !407
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !407

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !407
  br label %cond.end, !dbg !407

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !407
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !407
  %2 = load i8, i8* %0, align 1, !dbg !407
  %conv3 = zext i8 %2 to i32, !dbg !407
  br label %cond.end, !dbg !407

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !407
  ret i32 %cond, !dbg !408
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !409 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !411, metadata !DIExpression()), !dbg !412
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !413
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !413
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !413
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !413
  %cmp = icmp uge i8* %0, %1, !dbg !413
  %conv1 = zext i1 %cmp to i64, !dbg !413
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !413
  %tobool = icmp eq i64 %expval, 0, !dbg !413
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !413

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !413
  br label %cond.end, !dbg !413

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !413
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !413
  %2 = load i8, i8* %0, align 1, !dbg !413
  %conv3 = zext i8 %2 to i32, !dbg !413
  br label %cond.end, !dbg !413

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !413
  ret i32 %cond, !dbg !414
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !415 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !416
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !416
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !416
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !416
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !416
  %cmp = icmp uge i8* %1, %2, !dbg !416
  %conv1 = zext i1 %cmp to i64, !dbg !416
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !416
  %tobool = icmp eq i64 %expval, 0, !dbg !416
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !416

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !416
  br label %cond.end, !dbg !416

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !416
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !416
  %3 = load i8, i8* %1, align 1, !dbg !416
  %conv3 = zext i8 %3 to i32, !dbg !416
  br label %cond.end, !dbg !416

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !416
  ret i32 %cond, !dbg !417
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !418 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !422, metadata !DIExpression()), !dbg !423
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !424
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !425
  ret i32 %call, !dbg !426
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !427 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !431, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !432, metadata !DIExpression()), !dbg !433
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !434
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !434
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !434
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !434
  %cmp = icmp uge i8* %0, %1, !dbg !434
  %conv1 = zext i1 %cmp to i64, !dbg !434
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !434
  %tobool = icmp eq i64 %expval, 0, !dbg !434
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !434

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !434
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !434
  br label %cond.end, !dbg !434

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !434
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !434
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !434
  store i8 %conv2, i8* %0, align 1, !dbg !434
  %conv6 = and i32 %__c, 255, !dbg !434
  br label %cond.end, !dbg !434

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !434
  ret i32 %cond, !dbg !435
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !436 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !438, metadata !DIExpression()), !dbg !440
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !439, metadata !DIExpression()), !dbg !440
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !441
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !441
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !441
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !441
  %cmp = icmp uge i8* %0, %1, !dbg !441
  %conv1 = zext i1 %cmp to i64, !dbg !441
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !441
  %tobool = icmp eq i64 %expval, 0, !dbg !441
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !441

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !441
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !441
  br label %cond.end, !dbg !441

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !441
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !441
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !441
  store i8 %conv2, i8* %0, align 1, !dbg !441
  %conv6 = and i32 %__c, 255, !dbg !441
  br label %cond.end, !dbg !441

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !441
  ret i32 %cond, !dbg !442
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !443 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !445, metadata !DIExpression()), !dbg !446
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !447
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !447
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !447
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !447
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !447
  %cmp = icmp uge i8* %1, %2, !dbg !447
  %conv1 = zext i1 %cmp to i64, !dbg !447
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !447
  %tobool = icmp eq i64 %expval, 0, !dbg !447
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !447

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !447
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !447
  br label %cond.end, !dbg !447

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !447
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !447
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !447
  store i8 %conv4, i8* %1, align 1, !dbg !447
  %conv6 = and i32 %__c, 255, !dbg !447
  br label %cond.end, !dbg !447

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !447
  ret i32 %cond, !dbg !448
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !449 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !455, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata i64* %__n, metadata !456, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !457, metadata !DIExpression()), !dbg !458
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !459
  ret i64 %call, !dbg !460
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !461 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !463, metadata !DIExpression()), !dbg !464
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !465
  %0 = load i32, i32* %_flags, align 8, !dbg !465
  %and = lshr i32 %0, 4, !dbg !465
  %and.lobit = and i32 %and, 1, !dbg !465
  ret i32 %and.lobit, !dbg !466
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !467 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !469, metadata !DIExpression()), !dbg !470
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !471
  %0 = load i32, i32* %_flags, align 8, !dbg !471
  %and = lshr i32 %0, 5, !dbg !471
  %and.lobit = and i32 %and, 1, !dbg !471
  ret i32 %and.lobit, !dbg !472
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !473 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !476, metadata !DIExpression()), !dbg !477
  %__c.off = add i32 %__c, 128, !dbg !478
  %0 = icmp ult i32 %__c.off, 384, !dbg !478
  br i1 %0, label %cond.true, label %cond.end, !dbg !478

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !479
  %1 = load i32*, i32** %call, align 8, !dbg !480
  %idxprom = sext i32 %__c to i64, !dbg !481
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !481
  %2 = load i32, i32* %arrayidx, align 4, !dbg !481
  br label %cond.end, !dbg !482

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !482
  ret i32 %cond, !dbg !483
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !484 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !486, metadata !DIExpression()), !dbg !487
  %__c.off = add i32 %__c, 128, !dbg !488
  %0 = icmp ult i32 %__c.off, 384, !dbg !488
  br i1 %0, label %cond.true, label %cond.end, !dbg !488

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !489
  %1 = load i32*, i32** %call, align 8, !dbg !490
  %idxprom = sext i32 %__c to i64, !dbg !491
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !491
  %2 = load i32, i32* %arrayidx, align 4, !dbg !491
  br label %cond.end, !dbg !492

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !492
  ret i32 %cond, !dbg !493
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !494 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !499, metadata !DIExpression()), !dbg !500
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !501
  %conv = trunc i64 %call to i32, !dbg !502
  ret i32 %conv, !dbg !503
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !504 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !508, metadata !DIExpression()), !dbg !509
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !510
  ret i64 %call, !dbg !511
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !512 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !517, metadata !DIExpression()), !dbg !518
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !519
  ret i64 %call, !dbg !520
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !521 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !532, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.value(metadata i8* %__base, metadata !533, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !534, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.value(metadata i64 %__size, metadata !535, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !536, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.value(metadata i64 0, metadata !537, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !538, metadata !DIExpression()), !dbg !542
  br label %while.cond, !dbg !543

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !544
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !542
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !538, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !537, metadata !DIExpression()), !dbg !542
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !545
  br i1 %cmp, label %while.body, label %cleanup, !dbg !543

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !546
  %div = lshr i64 %add, 1, !dbg !548
  call void @llvm.dbg.value(metadata i64 %div, metadata !539, metadata !DIExpression()), !dbg !542
  %mul = mul i64 %div, %__size, !dbg !549
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !550
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !540, metadata !DIExpression()), !dbg !542
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !551
  call void @llvm.dbg.value(metadata i32 %call, metadata !541, metadata !DIExpression()), !dbg !542
  %cmp1 = icmp slt i32 %call, 0, !dbg !552
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !554

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !555
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !557

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !558
  call void @llvm.dbg.value(metadata i64 %add4, metadata !537, metadata !DIExpression()), !dbg !542
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !542
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !542
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !538, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !537, metadata !DIExpression()), !dbg !542
  br label %while.cond, !dbg !543, !llvm.loop !559

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !542
  ret i8* %retval.0, !dbg !561
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !562 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !568, metadata !DIExpression()), !dbg !569
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !570
  ret double %call, !dbg !571
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !572 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !581, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !582, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.value(metadata i32 %base, metadata !583, metadata !DIExpression()), !dbg !584
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !585
  ret i64 %call, !dbg !586
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !587 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !593, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !594, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i32 %base, metadata !595, metadata !DIExpression()), !dbg !596
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !597
  ret i64 %call, !dbg !598
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !599 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !610, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !611, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.value(metadata i32 %base, metadata !612, metadata !DIExpression()), !dbg !613
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !614
  ret i64 %call, !dbg !615
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !616 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !620, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !621, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata i32 %base, metadata !622, metadata !DIExpression()), !dbg !623
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !624
  ret i64 %call, !dbg !625
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !626 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !668, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !669, metadata !DIExpression()), !dbg !670
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !671
  ret i32 %call, !dbg !672
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !673 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !675, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !676, metadata !DIExpression()), !dbg !677
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !678
  ret i32 %call, !dbg !679
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !680 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !684, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !685, metadata !DIExpression()), !dbg !686
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !687
  ret i32 %call, !dbg !688
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !689 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !693, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !694, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !695, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !696, metadata !DIExpression()), !dbg !697
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !698
  ret i32 %call, !dbg !699
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !700 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !704, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !705, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !706, metadata !DIExpression()), !dbg !707
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !706, metadata !DIExpression(DW_OP_deref)), !dbg !707
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !708
  ret i32 %call, !dbg !709
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !710 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !714, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i8* %__path, metadata !715, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !716, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !717, metadata !DIExpression()), !dbg !718
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !717, metadata !DIExpression(DW_OP_deref)), !dbg !718
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !719
  ret i32 %call, !dbg !720
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !721 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !745, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !746, metadata !DIExpression()), !dbg !747
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !748
  ret i32 %call, !dbg !749
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !750 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !752, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !753, metadata !DIExpression()), !dbg !754
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !755
  ret i32 %call, !dbg !756
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !757 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !761, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !762, metadata !DIExpression()), !dbg !763
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !764
  ret i32 %call, !dbg !765
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !766 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !770, metadata !DIExpression()), !dbg !774
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !771, metadata !DIExpression()), !dbg !774
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !772, metadata !DIExpression()), !dbg !774
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !773, metadata !DIExpression()), !dbg !774
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !775
  ret i32 %call, !dbg !776
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @sum_edge_counts(%struct.VEC_edge_gc* %to_edges) local_unnamed_addr #4 !dbg !777 {
entry:
  %to_edges.addr = alloca %struct.VEC_edge_gc*, align 8
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc* %to_edges, metadata !1630, metadata !DIExpression()), !dbg !1640
  store %struct.VEC_edge_gc* %to_edges, %struct.VEC_edge_gc** %to_edges.addr, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !1631, metadata !DIExpression()), !dbg !1640
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !1641
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !1641
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !1642
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !1642
  %2 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !1643
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !1643
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %to_edges.addr, metadata !1630, metadata !DIExpression(DW_OP_deref)), !dbg !1640
  %call = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %to_edges.addr) #8, !dbg !1643
  %3 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !1643
  %4 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 0, !dbg !1643
  store i32 %4, i32* %3, align 8, !dbg !1643
  %5 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !1643
  %6 = extractvalue { i32, %struct.VEC_edge_gc** } %call, 1, !dbg !1643
  store %struct.VEC_edge_gc** %6, %struct.VEC_edge_gc*** %5, align 8, !dbg !1643
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %2, i64 16, i1 false), !dbg !1643
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !1643
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !1645
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !1645
  br label %for.cond, !dbg !1643

for.cond:                                         ; preds = %for.inc, %entry
  %sum.0 = phi i64 [ 0, %entry ], [ %sum.1, %for.inc ], !dbg !1647
  call void @llvm.dbg.value(metadata i64 %sum.0, metadata !1631, metadata !DIExpression()), !dbg !1640
  %9 = load i32, i32* %7, align 8, !dbg !1648
  %10 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %8, align 8, !dbg !1648
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !1632, metadata !DIExpression(DW_OP_deref)), !dbg !1640
  %call1 = call fastcc zeroext i8 @ei_cond(i32 %9, %struct.VEC_edge_gc** %10, %struct.edge_def** nonnull %e) #8, !dbg !1648
  %tobool = icmp eq i8 %call1, 0, !dbg !1643
  br i1 %tobool, label %for.end, label %for.body, !dbg !1643

for.body:                                         ; preds = %for.cond
  %11 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !1649
  call void @llvm.dbg.value(metadata %struct.edge_def* %11, metadata !1632, metadata !DIExpression()), !dbg !1640
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i64 0, i32 3, !dbg !1649
  %12 = bitcast i8** %aux to %struct.edge_info**, !dbg !1649
  %13 = load %struct.edge_info*, %struct.edge_info** %12, align 8, !dbg !1649
  %tobool2 = icmp eq %struct.edge_info* %13, null, !dbg !1649
  br i1 %tobool2, label %if.end, label %land.lhs.true, !dbg !1652

land.lhs.true:                                    ; preds = %for.body
  %14 = getelementptr inbounds %struct.edge_info, %struct.edge_info* %13, i64 0, i32 0, !dbg !1652
  call void @llvm.dbg.value(metadata %struct.edge_def* %11, metadata !1632, metadata !DIExpression()), !dbg !1640
  %bf.load = load i8, i8* %14, align 4, !dbg !1653
  %bf.clear = and i8 %bf.load, 4, !dbg !1653
  %tobool4 = icmp eq i8 %bf.clear, 0, !dbg !1654
  br i1 %tobool4, label %if.end, label %for.inc, !dbg !1655

if.end:                                           ; preds = %land.lhs.true, %for.body
  call void @llvm.dbg.value(metadata %struct.edge_def* %11, metadata !1632, metadata !DIExpression()), !dbg !1640
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i64 0, i32 9, !dbg !1656
  %15 = load i64, i64* %count, align 8, !dbg !1656
  %add = add nsw i64 %sum.0, %15, !dbg !1657
  call void @llvm.dbg.value(metadata i64 %add, metadata !1631, metadata !DIExpression()), !dbg !1640
  br label %for.inc, !dbg !1658

for.inc:                                          ; preds = %land.lhs.true, %if.end
  %sum.1 = phi i64 [ %add, %if.end ], [ %sum.0, %land.lhs.true ], !dbg !1640
  call void @llvm.dbg.value(metadata i64 %sum.1, metadata !1631, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !1633, metadata !DIExpression(DW_OP_deref)), !dbg !1640
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !1648
  br label %for.cond, !dbg !1648, !llvm.loop !1659

for.end:                                          ; preds = %for.cond
  %sum.0.lcssa = phi i64 [ %sum.0, %for.cond ], !dbg !1647
  call void @llvm.dbg.value(metadata i64 %sum.0.lcssa, metadata !1631, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %sum.0.lcssa, metadata !1631, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i64 %sum.0.lcssa, metadata !1631, metadata !DIExpression()), !dbg !1640
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !1661
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !1661
  ret i64 %sum.0.lcssa, !dbg !1662
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !1663 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !1667, metadata !DIExpression()), !dbg !1669
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !1670
  store i32 0, i32* %index, align 8, !dbg !1671
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !1672
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !1673
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !1674
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !1674
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !1674
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !1675 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !1681, metadata !DIExpression()), !dbg !1682
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !1683
  %tobool = icmp eq i8 %call, 0, !dbg !1683
  br i1 %tobool, label %if.then, label %if.else, !dbg !1685

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #8, !dbg !1686
  br label %return, !dbg !1688

if.else:                                          ; preds = %entry
  br label %return, !dbg !1689

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !1691
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !1691
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !1691
  ret i8 %retval.0, !dbg !1692
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !1693 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !1698, metadata !DIExpression()), !dbg !1699
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !1700
  %0 = load i32, i32* %index, align 8, !dbg !1700
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !1700
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !1700
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #8, !dbg !1700
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !1700
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !1700

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !1700
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !1700
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #8, !dbg !1700
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !1700
  br label %cond.end, !dbg !1700

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !1700
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !1700
  %cmp = icmp ult i32 %0, %call2, !dbg !1700
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !1700

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1700
  br label %cond.end5, !dbg !1700

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !1701
  %inc = add i32 %5, 1, !dbg !1701
  store i32 %inc, i32* %index, align 8, !dbg !1701
  ret void, !dbg !1702
}

; Function Attrs: nounwind uwtable
define dso_local void @mcf_smooth_cfg() local_unnamed_addr #4 !dbg !1703 {
entry:
  %fixup_graph = alloca %struct.fixup_graph_d, align 8
  %0 = bitcast %struct.fixup_graph_d* %fixup_graph to i8*, !dbg !1717
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #7, !dbg !1717
  %call = call i8* @memset(i8* nonnull %0, i32 0, i64 32) #6, !dbg !1718
  call void @llvm.dbg.value(metadata %struct.fixup_graph_d* %fixup_graph, metadata !1707, metadata !DIExpression(DW_OP_deref)), !dbg !1719
  call fastcc void @create_fixup_graph(%struct.fixup_graph_d* nonnull %fixup_graph) #8, !dbg !1720
  call void @llvm.dbg.value(metadata %struct.fixup_graph_d* %fixup_graph, metadata !1707, metadata !DIExpression(DW_OP_deref)), !dbg !1719
  call fastcc void @find_minimum_cost_flow(%struct.fixup_graph_d* nonnull %fixup_graph) #8, !dbg !1721
  call void @llvm.dbg.value(metadata %struct.fixup_graph_d* %fixup_graph, metadata !1707, metadata !DIExpression(DW_OP_deref)), !dbg !1719
  call fastcc void @adjust_cfg_counts(%struct.fixup_graph_d* nonnull %fixup_graph) #8, !dbg !1722
  call void @llvm.dbg.value(metadata %struct.fixup_graph_d* %fixup_graph, metadata !1707, metadata !DIExpression(DW_OP_deref)), !dbg !1719
  call fastcc void @delete_fixup_graph(%struct.fixup_graph_d* nonnull %fixup_graph) #8, !dbg !1723
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #7, !dbg !1724
  ret void, !dbg !1724
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @create_fixup_graph(%struct.fixup_graph_d* %fixup_graph) unnamed_addr #4 !dbg !1725 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.fixup_graph_d* %fixup_graph, metadata !1730, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1731, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1732, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1733, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1734, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i64* null, metadata !1735, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i64 1, metadata !1736, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i64 0, metadata !1737, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i64 0, metadata !1738, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i32 0, metadata !1739, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i32 0, metadata !1740, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i32 0, metadata !1741, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i32 0, metadata !1742, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i32 0, metadata !1743, metadata !DIExpression()), !dbg !1755
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !1756
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !1756
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !1757
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !1757
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !1758
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !1758
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !1758
  %x_n_basic_blocks = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 3, !dbg !1758
  %4 = load i32, i32* %x_n_basic_blocks, align 8, !dbg !1758
  %mul = shl nsw i32 %4, 1, !dbg !1759
  call void @llvm.dbg.value(metadata i32 %mul, metadata !1751, metadata !DIExpression()), !dbg !1755
  %x_n_edges = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 4, !dbg !1760
  %5 = load i32, i32* %x_n_edges, align 4, !dbg !1760
  %add = add nsw i32 %5, %4, !dbg !1761
  call void @llvm.dbg.value(metadata i32 %add, metadata !1752, metadata !DIExpression()), !dbg !1755
  %add9 = add nsw i32 %mul, %5, !dbg !1762
  %add13 = add nsw i32 %add9, %4, !dbg !1763
  %add14 = add nsw i32 %add13, 2, !dbg !1764
  call void @llvm.dbg.value(metadata i32 %add14, metadata !1753, metadata !DIExpression()), !dbg !1755
  %mul22 = shl nsw i32 %add, 3, !dbg !1765
  call void @llvm.dbg.value(metadata i32 %mul22, metadata !1754, metadata !DIExpression()), !dbg !1755
  %num_vertices = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 0, !dbg !1766
  store i32 %4, i32* %num_vertices, align 8, !dbg !1767
  %conv = sext i32 %add14 to i64, !dbg !1768
  %call = tail call i8* @xcalloc(i64 %conv, i64 8) #6, !dbg !1769
  %vertex_list = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 4, !dbg !1770
  %6 = bitcast %struct.fixup_vertex_d** %vertex_list to i8**, !dbg !1771
  store i8* %call, i8** %6, align 8, !dbg !1771
  %conv26 = sext i32 %mul22 to i64, !dbg !1772
  %call27 = tail call i8* @xcalloc(i64 %conv26, i64 64) #6, !dbg !1773
  %edge_list = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 5, !dbg !1774
  %7 = bitcast %struct.fixup_edge_d** %edge_list to i8**, !dbg !1775
  store i8* %call27, i8** %7, align 8, !dbg !1775
  %add28 = or i32 %mul, 1, !dbg !1776
  %conv29 = sext i32 %add28 to i64, !dbg !1777
  %call30 = tail call i8* @xcalloc(i64 %conv29, i64 8) #6, !dbg !1778
  call void @llvm.dbg.value(metadata i64* %11, metadata !1735, metadata !DIExpression()), !dbg !1755
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !1779
  %cfg32 = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 1, !dbg !1779
  %9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg32, align 8, !dbg !1779
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 0, !dbg !1779
  br label %for.cond, !dbg !1779

for.cond:                                         ; preds = %for.body, %entry
  %bb.0.in = phi %struct.basic_block_def** [ %x_entry_block_ptr, %entry ], [ %next_bb, %for.body ]
  %total_vertex_weight.0 = phi double [ 0.000000e+00, %entry ], [ %add35, %for.body ], !dbg !1755
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !1781
  call void @llvm.dbg.value(metadata double %total_vertex_weight.0, metadata !1732, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !1744, metadata !DIExpression()), !dbg !1755
  %cmp = icmp eq %struct.basic_block_def* %bb.0, null, !dbg !1782
  br i1 %cmp, label %for.end, label %for.body, !dbg !1779

for.body:                                         ; preds = %for.cond
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 8, !dbg !1784
  %10 = load i64, i64* %count, align 8, !dbg !1784
  %conv34 = sitofp i64 %10 to double, !dbg !1785
  %add35 = fadd double %total_vertex_weight.0, %conv34, !dbg !1786
  call void @llvm.dbg.value(metadata double %add35, metadata !1732, metadata !DIExpression()), !dbg !1755
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 6, !dbg !1782
  br label %for.cond, !dbg !1782, !llvm.loop !1787

for.end:                                          ; preds = %for.cond
  %total_vertex_weight.0.lcssa = phi double [ %total_vertex_weight.0, %for.cond ], !dbg !1755
  call void @llvm.dbg.value(metadata double %total_vertex_weight.0.lcssa, metadata !1732, metadata !DIExpression()), !dbg !1755
  %11 = bitcast i8* %call30 to i64*, !dbg !1789
  call void @llvm.dbg.value(metadata double %total_vertex_weight.0.lcssa, metadata !1732, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata double %total_vertex_weight.0.lcssa, metadata !1732, metadata !DIExpression()), !dbg !1755
  %x_n_basic_blocks38 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 3, !dbg !1790
  %12 = load i32, i32* %x_n_basic_blocks38, align 8, !dbg !1790
  %conv39 = sitofp i32 %12 to double, !dbg !1790
  %div = fdiv double %total_vertex_weight.0.lcssa, %conv39, !dbg !1791
  %call40 = tail call fastcc double @mcf_sqrt(double %div) #8, !dbg !1792
  call void @llvm.dbg.value(metadata double %call40, metadata !1731, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata double %call40, metadata !1733, metadata !DIExpression()), !dbg !1755
  %mul41 = fmul double %call40, 5.000000e+01, !dbg !1793
  call void @llvm.dbg.value(metadata double %mul41, metadata !1734, metadata !DIExpression()), !dbg !1755
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !1794
  %tobool = icmp eq %struct._IO_FILE* %13, null, !dbg !1794
  br i1 %tobool, label %if.end, label %if.then, !dbg !1796

if.then:                                          ; preds = %for.end
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !1797
  br label %if.end, !dbg !1797

if.end:                                           ; preds = %for.end, %if.then
  %14 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !1798
  %cfg44 = getelementptr inbounds %struct.function, %struct.function* %14, i64 0, i32 1, !dbg !1798
  %15 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg44, align 8, !dbg !1798
  %x_entry_block_ptr45 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %15, i64 0, i32 0, !dbg !1798
  %16 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !1800
  %17 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !1800
  %18 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !1800
  %19 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !1804
  %20 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !1804
  br label %for.cond46, !dbg !1798

for.cond46:                                       ; preds = %for.inc82, %if.end
  %bb.1.in = phi %struct.basic_block_def** [ %x_entry_block_ptr45, %if.end ], [ %next_bb83, %for.inc82 ]
  %bb.1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.1.in, align 8, !dbg !1806
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1, metadata !1744, metadata !DIExpression()), !dbg !1755
  %cmp47 = icmp eq %struct.basic_block_def* %bb.1, null, !dbg !1807
  br i1 %cmp47, label %for.end84, label %for.body49, !dbg !1798

for.body49:                                       ; preds = %for.cond46
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 9, !dbg !1808
  %21 = load i32, i32* %index, align 8, !dbg !1808
  %mul50 = shl nsw i32 %21, 1, !dbg !1809
  call void @llvm.dbg.value(metadata i32 %mul50, metadata !1741, metadata !DIExpression()), !dbg !1755
  %count51 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 8, !dbg !1810
  %22 = load i64, i64* %count51, align 8, !dbg !1810
  %add52 = add nsw i64 %22, 2, !dbg !1810
  %conv53 = sitofp i64 %add52 to double, !dbg !1810
  %call54 = call fastcc double @mcf_ln(double %conv53) #8, !dbg !1810
  %div55 = fdiv double %call40, %call54, !dbg !1810
  %conv56 = fptosi double %div55 to i64, !dbg !1811
  call void @llvm.dbg.value(metadata i64 %conv56, metadata !1738, metadata !DIExpression()), !dbg !1755
  %add57 = or i32 %mul50, 1, !dbg !1812
  %23 = load i64, i64* %count51, align 8, !dbg !1813
  call fastcc void @add_fixup_edge(%struct.fixup_graph_d* %fixup_graph, i32 %mul50, i32 %add57, i32 1, i64 %23, i64 %conv56, i64 9223372036854775807) #8, !dbg !1814
  %24 = load i32, i32* %num_vertices, align 8, !dbg !1815
  %inc = add nsw i32 %24, 1, !dbg !1815
  store i32 %inc, i32* %num_vertices, align 8, !dbg !1815
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #7, !dbg !1816
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 1, !dbg !1816
  %call60 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !1816
  %25 = extractvalue { i32, %struct.VEC_edge_gc** } %call60, 0, !dbg !1816
  store i32 %25, i32* %17, align 8, !dbg !1816
  %26 = extractvalue { i32, %struct.VEC_edge_gc** } %call60, 1, !dbg !1816
  store %struct.VEC_edge_gc** %26, %struct.VEC_edge_gc*** %18, align 8, !dbg !1816
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %16, i64 16, i1 false), !dbg !1816
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #7, !dbg !1816
  br label %for.cond61, !dbg !1816

for.cond61:                                       ; preds = %for.inc80, %for.body49
  %27 = load i32, i32* %19, align 8, !dbg !1817
  %28 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %20, align 8, !dbg !1817
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !1745, metadata !DIExpression(DW_OP_deref)), !dbg !1755
  %call62 = call fastcc zeroext i8 @ei_cond(i32 %27, %struct.VEC_edge_gc** %28, %struct.edge_def** nonnull %e) #8, !dbg !1817
  %tobool63 = icmp eq i8 %call62, 0, !dbg !1816
  br i1 %tobool63, label %for.inc82, label %for.body64, !dbg !1816

for.body64:                                       ; preds = %for.cond61
  %29 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !1818
  call void @llvm.dbg.value(metadata %struct.edge_def* %29, metadata !1745, metadata !DIExpression()), !dbg !1755
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %29, i64 0, i32 3, !dbg !1818
  %30 = bitcast i8** %aux to %struct.edge_info**, !dbg !1818
  %31 = load %struct.edge_info*, %struct.edge_info** %30, align 8, !dbg !1818
  %tobool65 = icmp eq %struct.edge_info* %31, null, !dbg !1818
  br i1 %tobool65, label %if.end69, label %land.lhs.true, !dbg !1821

land.lhs.true:                                    ; preds = %for.body64
  %32 = getelementptr inbounds %struct.edge_info, %struct.edge_info* %31, i64 0, i32 0, !dbg !1821
  call void @llvm.dbg.value(metadata %struct.edge_def* %29, metadata !1745, metadata !DIExpression()), !dbg !1755
  %bf.load = load i8, i8* %32, align 4, !dbg !1822
  %bf.clear = and i8 %bf.load, 4, !dbg !1822
  %tobool67 = icmp eq i8 %bf.clear, 0, !dbg !1823
  br i1 %tobool67, label %if.end69, label %for.inc80, !dbg !1824

if.end69:                                         ; preds = %land.lhs.true, %for.body64
  call void @llvm.dbg.value(metadata %struct.edge_def* %29, metadata !1745, metadata !DIExpression()), !dbg !1755
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %29, i64 0, i32 1, !dbg !1825
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !1825
  %index70 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %33, i64 0, i32 9, !dbg !1826
  %34 = load i32, i32* %index70, align 8, !dbg !1826
  %mul71 = shl nsw i32 %34, 1, !dbg !1827
  call void @llvm.dbg.value(metadata i32 %mul71, metadata !1742, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata %struct.edge_def* %29, metadata !1745, metadata !DIExpression()), !dbg !1755
  %count72 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %29, i64 0, i32 9, !dbg !1828
  %35 = load i64, i64* %count72, align 8, !dbg !1828
  %add73 = add nsw i64 %35, 2, !dbg !1828
  %conv74 = sitofp i64 %add73 to double, !dbg !1828
  %call75 = call fastcc double @mcf_ln(double %conv74) #8, !dbg !1828
  %div76 = fdiv double %call40, %call75, !dbg !1828
  %conv77 = fptosi double %div76 to i64, !dbg !1829
  call void @llvm.dbg.value(metadata i64 %conv77, metadata !1738, metadata !DIExpression()), !dbg !1755
  %36 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !1830
  call void @llvm.dbg.value(metadata %struct.edge_def* %36, metadata !1745, metadata !DIExpression()), !dbg !1755
  %count79 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %36, i64 0, i32 9, !dbg !1831
  %37 = load i64, i64* %count79, align 8, !dbg !1831
  call fastcc void @add_fixup_edge(%struct.fixup_graph_d* %fixup_graph, i32 %add57, i32 %mul71, i32 2, i64 %37, i64 %conv77, i64 9223372036854775807) #8, !dbg !1832
  br label %for.inc80, !dbg !1833

for.inc80:                                        ; preds = %land.lhs.true, %if.end69
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !1746, metadata !DIExpression(DW_OP_deref)), !dbg !1755
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !1817
  br label %for.cond61, !dbg !1817, !llvm.loop !1834

for.inc82:                                        ; preds = %for.cond61
  %next_bb83 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 6, !dbg !1807
  br label %for.cond46, !dbg !1807, !llvm.loop !1836

for.end84:                                        ; preds = %for.cond46
  %38 = load i32, i32* %num_vertices, align 8, !dbg !1838
  %cmp86 = icmp eq i32 %38, %mul, !dbg !1838
  br i1 %cmp86, label %cond.end, label %cond.true, !dbg !1838

cond.true:                                        ; preds = %for.end84
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 552, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1838
  br label %cond.end, !dbg !1838

cond.end:                                         ; preds = %for.end84, %cond.true
  %num_edges = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 1, !dbg !1839
  %39 = load i32, i32* %num_edges, align 4, !dbg !1839
  %cmp88 = icmp sgt i32 %39, %add, !dbg !1839
  br i1 %cmp88, label %cond.true90, label %cond.end92, !dbg !1839

cond.true90:                                      ; preds = %cond.end
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 554, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1839
  %.pre = load i32, i32* %num_edges, align 4, !dbg !1840
  br label %cond.end92, !dbg !1839

cond.end92:                                       ; preds = %cond.end, %cond.true90
  %40 = phi i32 [ %39, %cond.end ], [ %.pre, %cond.true90 ], !dbg !1840
  call void @llvm.dbg.value(metadata i32 %40, metadata !1752, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i32 0, metadata !1741, metadata !DIExpression()), !dbg !1755
  %41 = sext i32 %40 to i64, !dbg !1841
  br label %for.cond95, !dbg !1841

for.cond95:                                       ; preds = %for.body98, %cond.end92
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for.body98 ], [ 0, %cond.end92 ], !dbg !1843
  call void @llvm.dbg.value(metadata i64 %indvars.iv8, metadata !1741, metadata !DIExpression()), !dbg !1755
  %cmp96 = icmp slt i64 %indvars.iv8, %41, !dbg !1844
  br i1 %cmp96, label %for.body98, label %for.cond109.preheader, !dbg !1846

for.cond109.preheader:                            ; preds = %for.cond95
  br label %for.cond109, !dbg !1847

for.body98:                                       ; preds = %for.cond95
  %42 = load %struct.fixup_edge_d*, %struct.fixup_edge_d** %edge_list, align 8, !dbg !1849
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* undef, metadata !1747, metadata !DIExpression()), !dbg !1755
  %weight = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %42, i64 %indvars.iv8, i32 7, !dbg !1851
  %43 = load i64, i64* %weight, align 8, !dbg !1851
  %src = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %42, i64 %indvars.iv8, i32 0, !dbg !1852
  %44 = load i32, i32* %src, align 8, !dbg !1852
  %idxprom = sext i32 %44 to i64, !dbg !1853
  %arrayidx = getelementptr inbounds i64, i64* %11, i64 %idxprom, !dbg !1853
  %45 = load i64, i64* %arrayidx, align 8, !dbg !1854
  %add101 = add nsw i64 %45, %43, !dbg !1854
  store i64 %add101, i64* %arrayidx, align 8, !dbg !1854
  %46 = load i64, i64* %weight, align 8, !dbg !1855
  %dest103 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %42, i64 %indvars.iv8, i32 1, !dbg !1856
  %47 = load i32, i32* %dest103, align 4, !dbg !1856
  %idxprom104 = sext i32 %47 to i64, !dbg !1857
  %arrayidx105 = getelementptr inbounds i64, i64* %11, i64 %idxprom104, !dbg !1857
  %48 = load i64, i64* %arrayidx105, align 8, !dbg !1858
  %sub = sub nsw i64 %48, %46, !dbg !1858
  store i64 %sub, i64* %arrayidx105, align 8, !dbg !1858
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1, !dbg !1859
  call void @llvm.dbg.value(metadata i32 undef, metadata !1741, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1755
  br label %for.cond95, !dbg !1860, !llvm.loop !1861

for.cond109:                                      ; preds = %for.cond109.preheader, %for.body112
  %indvars.iv6 = phi i64 [ 0, %for.cond109.preheader ], [ %indvars.iv.next7, %for.body112 ], !dbg !1863
  call void @llvm.dbg.value(metadata i64 %indvars.iv6, metadata !1741, metadata !DIExpression()), !dbg !1755
  %exitcond = icmp eq i64 %indvars.iv6, 4, !dbg !1864
  br i1 %exitcond, label %for.end117, label %for.body112, !dbg !1847

for.body112:                                      ; preds = %for.cond109
  %arrayidx114 = getelementptr inbounds i64, i64* %11, i64 %indvars.iv6, !dbg !1866
  store i64 0, i64* %arrayidx114, align 8, !dbg !1867
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !dbg !1868
  call void @llvm.dbg.value(metadata i32 undef, metadata !1741, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1755
  br label %for.cond109, !dbg !1869, !llvm.loop !1870

for.end117:                                       ; preds = %for.cond109
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !1872
  %tobool118 = icmp eq %struct._IO_FILE* %49, null, !dbg !1872
  br i1 %tobool118, label %if.end121, label %if.then119, !dbg !1874

if.then119:                                       ; preds = %for.end117
  %call120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !1875
  br label %if.end121, !dbg !1875

if.end121:                                        ; preds = %for.end117, %if.then119
  call void @llvm.dbg.value(metadata i32 0, metadata !1741, metadata !DIExpression()), !dbg !1755
  %50 = sext i32 %40 to i64, !dbg !1876
  br label %for.cond122, !dbg !1876

for.cond122:                                      ; preds = %for.inc155, %if.end121
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %for.inc155 ], [ 0, %if.end121 ], !dbg !1878
  call void @llvm.dbg.value(metadata i64 %indvars.iv4, metadata !1741, metadata !DIExpression()), !dbg !1755
  %cmp123 = icmp slt i64 %indvars.iv4, %50, !dbg !1879
  br i1 %cmp123, label %for.body125, label %for.end157, !dbg !1881

for.body125:                                      ; preds = %for.cond122
  %51 = load %struct.fixup_edge_d*, %struct.fixup_edge_d** %edge_list, align 8, !dbg !1882
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* undef, metadata !1747, metadata !DIExpression()), !dbg !1755
  %src129 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %51, i64 %indvars.iv4, i32 0, !dbg !1884
  %52 = load i32, i32* %src129, align 8, !dbg !1884
  %cmp130 = icmp eq i32 %52, 0, !dbg !1886
  br i1 %cmp130, label %for.inc155, label %lor.lhs.false, !dbg !1887

lor.lhs.false:                                    ; preds = %for.body125
  %cmp133 = icmp eq i32 %52, 2, !dbg !1888
  br i1 %cmp133, label %for.inc155, label %if.end136, !dbg !1889

if.end136:                                        ; preds = %lor.lhs.false
  %dest137 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %51, i64 %indvars.iv4, i32 1, !dbg !1890
  %53 = load i32, i32* %dest137, align 4, !dbg !1890
  %call139 = call fastcc %struct.fixup_edge_d* @find_fixup_edge(%struct.fixup_graph_d* %fixup_graph, i32 %53, i32 %52) #8, !dbg !1891
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %call139, metadata !1748, metadata !DIExpression()), !dbg !1755
  %tobool140 = icmp eq %struct.fixup_edge_d* %call139, null, !dbg !1892
  br i1 %tobool140, label %land.lhs.true141, label %for.inc155, !dbg !1894

land.lhs.true141:                                 ; preds = %if.end136
  %weight142 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %51, i64 %indvars.iv4, i32 7, !dbg !1895
  %54 = load i64, i64* %weight142, align 8, !dbg !1895
  %tobool143 = icmp eq i64 %54, 0, !dbg !1896
  br i1 %tobool143, label %for.inc155, label %if.then144, !dbg !1897

if.then144:                                       ; preds = %land.lhs.true141
  %add146 = add nsw i64 %54, 2, !dbg !1898
  %conv147 = sitofp i64 %add146 to double, !dbg !1898
  %call148 = call fastcc double @mcf_ln(double %conv147) #8, !dbg !1898
  %div149 = fdiv double %mul41, %call148, !dbg !1898
  %conv150 = fptosi double %div149 to i64, !dbg !1900
  call void @llvm.dbg.value(metadata i64 %conv150, metadata !1738, metadata !DIExpression()), !dbg !1755
  %55 = load i32, i32* %dest137, align 4, !dbg !1901
  %56 = load i32, i32* %src129, align 8, !dbg !1902
  %57 = load i64, i64* %weight142, align 8, !dbg !1903
  call fastcc void @add_fixup_edge(%struct.fixup_graph_d* %fixup_graph, i32 %55, i32 %56, i32 3, i64 0, i64 %conv150, i64 %57) #8, !dbg !1904
  br label %for.inc155, !dbg !1905

for.inc155:                                       ; preds = %land.lhs.true141, %if.end136, %if.then144, %for.body125, %lor.lhs.false
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1, !dbg !1906
  call void @llvm.dbg.value(metadata i32 undef, metadata !1741, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1755
  br label %for.cond122, !dbg !1907, !llvm.loop !1908

for.end157:                                       ; preds = %for.cond122
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !1910
  %tobool158 = icmp eq %struct._IO_FILE* %58, null, !dbg !1910
  br i1 %tobool158, label %if.end161, label %if.then159, !dbg !1912

if.then159:                                       ; preds = %for.end157
  %call160 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !1913
  br label %if.end161, !dbg !1913

if.end161:                                        ; preds = %for.end157, %if.then159
  %59 = load i32, i32* %num_vertices, align 8, !dbg !1914
  %new_entry_index163 = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 2, !dbg !1915
  store i32 %59, i32* %new_entry_index163, align 8, !dbg !1916
  call void @llvm.dbg.value(metadata i32 %59, metadata !1739, metadata !DIExpression()), !dbg !1755
  %inc165 = add nsw i32 %59, 1, !dbg !1917
  store i32 %inc165, i32* %num_vertices, align 8, !dbg !1917
  call fastcc void @add_fixup_edge(%struct.fixup_graph_d* %fixup_graph, i32 %59, i32 0, i32 4, i64 1, i64 0, i64 1) #8, !dbg !1918
  %60 = load i32, i32* %num_vertices, align 8, !dbg !1919
  %new_exit_index167 = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 3, !dbg !1920
  store i32 %60, i32* %new_exit_index167, align 4, !dbg !1921
  call void @llvm.dbg.value(metadata i32 %60, metadata !1740, metadata !DIExpression()), !dbg !1755
  %inc169 = add nsw i32 %60, 1, !dbg !1922
  store i32 %inc169, i32* %num_vertices, align 8, !dbg !1922
  call fastcc void @add_fixup_edge(%struct.fixup_graph_d* %fixup_graph, i32 3, i32 %60, i32 5, i64 0, i64 0, i64 0) #8, !dbg !1923
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !1924
  %tobool170 = icmp eq %struct._IO_FILE* %61, null, !dbg !1924
  br i1 %tobool170, label %if.end173, label %if.then171, !dbg !1926

if.then171:                                       ; preds = %if.end161
  %call172 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !1927
  br label %if.end173, !dbg !1927

if.end173:                                        ; preds = %if.end161, %if.then171
  call void @llvm.dbg.value(metadata i32 4, metadata !1741, metadata !DIExpression()), !dbg !1755
  %62 = sext i32 %59 to i64, !dbg !1928
  br label %for.cond174, !dbg !1928

for.cond174:                                      ; preds = %for.inc201, %if.end173
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.inc201 ], [ 4, %if.end173 ], !dbg !1930
  %demand_value.0 = phi i64 [ %demand_value.1, %for.inc201 ], [ 0, %if.end173 ], !dbg !1755
  %supply_value.0 = phi i64 [ %supply_value.2, %for.inc201 ], [ 1, %if.end173 ], !dbg !1931
  call void @llvm.dbg.value(metadata i64 %supply_value.0, metadata !1736, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i64 %demand_value.0, metadata !1737, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !1741, metadata !DIExpression()), !dbg !1755
  %cmp175 = icmp slt i64 %indvars.iv2, %62, !dbg !1932
  br i1 %cmp175, label %for.body177, label %for.end203, !dbg !1934

for.body177:                                      ; preds = %for.cond174
  %arrayidx179 = getelementptr inbounds i64, i64* %11, i64 %indvars.iv2, !dbg !1935
  %63 = load i64, i64* %arrayidx179, align 8, !dbg !1935
  %cmp180 = icmp sgt i64 %63, 0, !dbg !1938
  br i1 %cmp180, label %if.then182, label %if.else, !dbg !1939

if.then182:                                       ; preds = %for.body177
  %64 = trunc i64 %indvars.iv2 to i32, !dbg !1940
  call fastcc void @add_fixup_edge(%struct.fixup_graph_d* %fixup_graph, i32 %64, i32 %60, i32 6, i64 0, i64 0, i64 %63) #8, !dbg !1940
  %65 = load i64, i64* %arrayidx179, align 8, !dbg !1942
  %add187 = add nsw i64 %demand_value.0, %65, !dbg !1943
  call void @llvm.dbg.value(metadata i64 %add187, metadata !1737, metadata !DIExpression()), !dbg !1755
  br label %for.inc201, !dbg !1944

if.else:                                          ; preds = %for.body177
  %cmp190 = icmp slt i64 %63, 0, !dbg !1945
  br i1 %cmp190, label %if.then192, label %for.inc201, !dbg !1947

if.then192:                                       ; preds = %if.else
  %sub195 = sub nsw i64 0, %63, !dbg !1948
  %66 = trunc i64 %indvars.iv2 to i32, !dbg !1950
  call fastcc void @add_fixup_edge(%struct.fixup_graph_d* %fixup_graph, i32 %59, i32 %66, i32 6, i64 0, i64 0, i64 %sub195) #8, !dbg !1950
  %67 = load i64, i64* %arrayidx179, align 8, !dbg !1951
  %sub198 = sub nsw i64 %supply_value.0, %67, !dbg !1952
  call void @llvm.dbg.value(metadata i64 %sub198, metadata !1736, metadata !DIExpression()), !dbg !1755
  br label %for.inc201, !dbg !1953

for.inc201:                                       ; preds = %if.then182, %if.then192, %if.else
  %demand_value.1 = phi i64 [ %add187, %if.then182 ], [ %demand_value.0, %if.then192 ], [ %demand_value.0, %if.else ], !dbg !1755
  %supply_value.2 = phi i64 [ %supply_value.0, %if.then182 ], [ %sub198, %if.then192 ], [ %supply_value.0, %if.else ], !dbg !1755
  call void @llvm.dbg.value(metadata i64 %supply_value.2, metadata !1736, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i64 %demand_value.1, metadata !1737, metadata !DIExpression()), !dbg !1755
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 2, !dbg !1954
  call void @llvm.dbg.value(metadata i32 undef, metadata !1741, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1755
  br label %for.cond174, !dbg !1955, !llvm.loop !1956

for.end203:                                       ; preds = %for.cond174
  %demand_value.0.lcssa = phi i64 [ %demand_value.0, %for.cond174 ], !dbg !1755
  %supply_value.0.lcssa = phi i64 [ %supply_value.0, %for.cond174 ], !dbg !1931
  call void @llvm.dbg.value(metadata i64 %demand_value.0.lcssa, metadata !1737, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i64 %supply_value.0.lcssa, metadata !1736, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i64 %demand_value.0.lcssa, metadata !1737, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i64 %supply_value.0.lcssa, metadata !1736, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i64 %demand_value.0.lcssa, metadata !1737, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i64 %supply_value.0.lcssa, metadata !1736, metadata !DIExpression()), !dbg !1755
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !1958
  %tobool204 = icmp eq %struct._IO_FILE* %68, null, !dbg !1958
  br i1 %tobool204, label %if.end209, label %if.then205, !dbg !1960

if.then205:                                       ; preds = %for.end203
  %call206 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !1961
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !1963
  %call207 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i64 %supply_value.0.lcssa) #6, !dbg !1964
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !1965
  %call208 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i64 %demand_value.0.lcssa) #6, !dbg !1966
  br label %if.end209, !dbg !1967

if.end209:                                        ; preds = %for.end203, %if.then205
  %cmp210 = icmp sgt i64 %demand_value.0.lcssa, %supply_value.0.lcssa, !dbg !1968
  br i1 %cmp210, label %if.then212, label %if.else216, !dbg !1970

if.then212:                                       ; preds = %if.end209
  %call213 = call fastcc %struct.fixup_edge_d* @find_fixup_edge(%struct.fixup_graph_d* %fixup_graph, i32 %59, i32 0) #8, !dbg !1971
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %call213, metadata !1747, metadata !DIExpression()), !dbg !1755
  %sub214 = sub nsw i64 %demand_value.0.lcssa, %supply_value.0.lcssa, !dbg !1973
  %max_capacity = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call213, i64 0, i32 9, !dbg !1974
  %71 = load i64, i64* %max_capacity, align 8, !dbg !1975
  %add215 = add nsw i64 %71, %sub214, !dbg !1975
  store i64 %add215, i64* %max_capacity, align 8, !dbg !1975
  br label %if.end221, !dbg !1976

if.else216:                                       ; preds = %if.end209
  %call217 = call fastcc %struct.fixup_edge_d* @find_fixup_edge(%struct.fixup_graph_d* %fixup_graph, i32 3, i32 %60) #8, !dbg !1977
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %call217, metadata !1747, metadata !DIExpression()), !dbg !1755
  %sub218 = sub nsw i64 %supply_value.0.lcssa, %demand_value.0.lcssa, !dbg !1979
  %max_capacity219 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call217, i64 0, i32 9, !dbg !1980
  %72 = load i64, i64* %max_capacity219, align 8, !dbg !1981
  %add220 = add nsw i64 %72, %sub218, !dbg !1981
  store i64 %add220, i64* %max_capacity219, align 8, !dbg !1981
  br label %if.end221

if.end221:                                        ; preds = %if.else216, %if.then212
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !1982
  %tobool222 = icmp eq %struct._IO_FILE* %73, null, !dbg !1982
  br i1 %tobool222, label %if.end225, label %if.then223, !dbg !1984

if.then223:                                       ; preds = %if.end221
  %call224 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %73, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !1985
  br label %if.end225, !dbg !1985

if.end225:                                        ; preds = %if.end221, %if.then223
  %74 = load i32, i32* %num_edges, align 4, !dbg !1986
  call void @llvm.dbg.value(metadata i32 %74, metadata !1750, metadata !DIExpression()), !dbg !1755
  %75 = load %struct.fixup_edge_d*, %struct.fixup_edge_d** %edge_list, align 8, !dbg !1987
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %75, metadata !1749, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i32 0, metadata !1741, metadata !DIExpression()), !dbg !1755
  %76 = sext i32 %74 to i64, !dbg !1988
  br label %for.cond228, !dbg !1988

for.cond228:                                      ; preds = %for.inc280, %if.end225
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc280 ], [ 0, %if.end225 ], !dbg !1990
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1741, metadata !DIExpression()), !dbg !1755
  %cmp229 = icmp slt i64 %indvars.iv, %76, !dbg !1991
  br i1 %cmp229, label %for.body231, label %for.end282, !dbg !1993

for.body231:                                      ; preds = %for.cond228
  %add.ptr233 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %75, i64 %indvars.iv, !dbg !1994
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %add.ptr233, metadata !1747, metadata !DIExpression()), !dbg !1755
  %dest234 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %75, i64 %indvars.iv, i32 1, !dbg !1996
  %77 = load i32, i32* %dest234, align 4, !dbg !1996
  %src235 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %add.ptr233, i64 0, i32 0, !dbg !1997
  %78 = load i32, i32* %src235, align 8, !dbg !1997
  %call236 = call fastcc %struct.fixup_edge_d* @find_fixup_edge(%struct.fixup_graph_d* %fixup_graph, i32 %77, i32 %78) #8, !dbg !1998
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %call236, metadata !1748, metadata !DIExpression()), !dbg !1755
  %type = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %75, i64 %indvars.iv, i32 2, !dbg !1999
  %79 = load i32, i32* %type, align 8, !dbg !1999
  %cmp237 = icmp eq i32 %79, 1, !dbg !2001
  br i1 %cmp237, label %land.lhs.true243, label %lor.lhs.false239, !dbg !2002

lor.lhs.false239:                                 ; preds = %for.body231
  %cmp241 = icmp eq i32 %79, 2, !dbg !2003
  %tobool244 = icmp ne %struct.fixup_edge_d* %call236, null, !dbg !2004
  %or.cond = and i1 %cmp241, %tobool244, !dbg !2005
  br i1 %or.cond, label %if.then245, label %for.inc280, !dbg !2005

land.lhs.true243:                                 ; preds = %for.body231
  %tobool244.old = icmp eq %struct.fixup_edge_d* %call236, null, !dbg !2004
  br i1 %tobool244.old, label %for.inc280, label %if.then245, !dbg !2006

if.then245:                                       ; preds = %land.lhs.true243, %lor.lhs.false239
  %80 = load i32, i32* %num_vertices, align 8, !dbg !2007
  call void @llvm.dbg.value(metadata i32 %80, metadata !1743, metadata !DIExpression()), !dbg !1755
  %inc248 = add nsw i32 %80, 1, !dbg !2009
  store i32 %inc248, i32* %num_vertices, align 8, !dbg !2009
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2010
  %tobool249 = icmp eq %struct._IO_FILE* %81, null, !dbg !2010
  br i1 %tobool249, label %if.end254, label %if.then250, !dbg !2012

if.then250:                                       ; preds = %if.then245
  %call251 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !2013
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2015
  call fastcc void @dump_fixup_edge(%struct._IO_FILE* %82, %struct.fixup_graph_d* %fixup_graph, %struct.fixup_edge_d* %add.ptr233) #8, !dbg !2016
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2017
  call fastcc void @dump_fixup_edge(%struct._IO_FILE* %83, %struct.fixup_graph_d* %fixup_graph, %struct.fixup_edge_d* %call236) #8, !dbg !2018
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2019
  %call252 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %80) #6, !dbg !2020
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2021
  %call253 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !2022
  br label %if.end254, !dbg !2023

if.end254:                                        ; preds = %if.then245, %if.then250
  %cost = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %75, i64 %indvars.iv, i32 8, !dbg !2024
  %86 = load i64, i64* %cost, align 8, !dbg !2025
  %div255 = sdiv i64 %86, 2, !dbg !2025
  store i64 %div255, i64* %cost, align 8, !dbg !2025
  %norm_vertex_index = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %75, i64 %indvars.iv, i32 4, !dbg !2026
  store i32 %80, i32* %norm_vertex_index, align 8, !dbg !2027
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2028
  %tobool256 = icmp eq %struct._IO_FILE* %87, null, !dbg !2028
  br i1 %tobool256, label %if.end259, label %if.then257, !dbg !2030

if.then257:                                       ; preds = %if.end254
  %call258 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %87, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !2031
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2033
  call fastcc void @dump_fixup_edge(%struct._IO_FILE* %88, %struct.fixup_graph_d* %fixup_graph, %struct.fixup_edge_d* %add.ptr233) #8, !dbg !2034
  br label %if.end259, !dbg !2035

if.end259:                                        ; preds = %if.end254, %if.then257
  %89 = load i32, i32* %src235, align 8, !dbg !2036
  %cost261 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call236, i64 0, i32 8, !dbg !2037
  %90 = load i64, i64* %cost261, align 8, !dbg !2037
  %max_capacity262 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call236, i64 0, i32 9, !dbg !2038
  %91 = load i64, i64* %max_capacity262, align 8, !dbg !2038
  call fastcc void @add_fixup_edge(%struct.fixup_graph_d* %fixup_graph, i32 %80, i32 %89, i32 8, i64 0, i64 %90, i64 %91) #8, !dbg !2039
  %92 = load i32, i32* %num_vertices, align 8, !dbg !2040
  %cmp264 = icmp sgt i32 %92, %add14, !dbg !2040
  br i1 %cmp264, label %cond.true266, label %cond.end268, !dbg !2040

cond.true266:                                     ; preds = %if.end259
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 689, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2040
  br label %cond.end268, !dbg !2040

cond.end268:                                      ; preds = %if.end259, %cond.true266
  %dest270 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call236, i64 0, i32 1, !dbg !2041
  store i32 %80, i32* %dest270, align 4, !dbg !2042
  %type271 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call236, i64 0, i32 2, !dbg !2043
  store i32 8, i32* %type271, align 8, !dbg !2044
  %93 = load i64, i64* %cost, align 8, !dbg !2045
  store i64 %93, i64* %cost261, align 8, !dbg !2046
  %max_capacity274 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %75, i64 %indvars.iv, i32 9, !dbg !2047
  %94 = load i64, i64* %max_capacity274, align 8, !dbg !2047
  store i64 %94, i64* %max_capacity262, align 8, !dbg !2048
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2049
  %tobool276 = icmp eq %struct._IO_FILE* %95, null, !dbg !2049
  br i1 %tobool276, label %for.inc280, label %if.then277, !dbg !2051

if.then277:                                       ; preds = %cond.end268
  call fastcc void @dump_fixup_edge(%struct._IO_FILE* nonnull %95, %struct.fixup_graph_d* %fixup_graph, %struct.fixup_edge_d* %call236) #8, !dbg !2052
  br label %for.inc280, !dbg !2052

for.inc280:                                       ; preds = %land.lhs.true243, %cond.end268, %lor.lhs.false239, %if.then277
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2053
  call void @llvm.dbg.value(metadata i32 undef, metadata !1741, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1755
  br label %for.cond228, !dbg !2054, !llvm.loop !2055

for.end282:                                       ; preds = %for.cond228
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2057
  %tobool283 = icmp eq %struct._IO_FILE* %96, null, !dbg !2057
  br i1 %tobool283, label %if.end285, label %if.then284, !dbg !2059

if.then284:                                       ; preds = %for.end282
  call fastcc void @dump_fixup_graph(%struct._IO_FILE* nonnull %96, %struct.fixup_graph_d* %fixup_graph, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !2060
  br label %if.end285, !dbg !2060

if.end285:                                        ; preds = %for.end282, %if.then284
  call void @free(i8* %call30) #6, !dbg !2061
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !2062
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2062
  ret void, !dbg !2062
}

; Function Attrs: nounwind uwtable
define internal fastcc void @find_minimum_cost_flow(%struct.fixup_graph_d* %fixup_graph) unnamed_addr #4 !dbg !2063 {
entry:
  call void @llvm.dbg.value(metadata %struct.fixup_graph_d* %fixup_graph, metadata !2065, metadata !DIExpression()), !dbg !2073
  %tobool = icmp eq %struct.fixup_graph_d* %fixup_graph, null, !dbg !2074
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2074

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 1334, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2074
  br label %cond.end, !dbg !2074

cond.end:                                         ; preds = %entry, %cond.true
  %num_vertices = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 0, !dbg !2075
  %0 = load i32, i32* %num_vertices, align 8, !dbg !2075
  call void @llvm.dbg.value(metadata i32 %0, metadata !2070, metadata !DIExpression()), !dbg !2073
  %new_exit_index1 = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 3, !dbg !2076
  %1 = load i32, i32* %new_exit_index1, align 4, !dbg !2076
  call void @llvm.dbg.value(metadata i32 %1, metadata !2071, metadata !DIExpression()), !dbg !2073
  %new_entry_index2 = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 2, !dbg !2077
  %2 = load i32, i32* %new_entry_index2, align 8, !dbg !2077
  call void @llvm.dbg.value(metadata i32 %2, metadata !2072, metadata !DIExpression()), !dbg !2073
  %call = tail call fastcc i64 @find_max_flow(%struct.fixup_graph_d* %fixup_graph, i32 %2, i32 %1) #8, !dbg !2078
  %conv = sext i32 %0 to i64, !dbg !2079
  %call3 = tail call i8* @xcalloc(i64 %conv, i64 4) #6, !dbg !2080
  %3 = bitcast i8* %call3 to i32*, !dbg !2081
  call void @llvm.dbg.value(metadata i32* %3, metadata !2066, metadata !DIExpression()), !dbg !2073
  %call5 = tail call i8* @xcalloc(i64 %conv, i64 8) #6, !dbg !2082
  %4 = bitcast i8* %call5 to i64*, !dbg !2083
  call void @llvm.dbg.value(metadata i64* %4, metadata !2069, metadata !DIExpression()), !dbg !2073
  %call7 = tail call i8* @xcalloc(i64 %conv, i64 4) #6, !dbg !2084
  %5 = bitcast i8* %call7 to i32*, !dbg !2085
  call void @llvm.dbg.value(metadata i32* %5, metadata !2067, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i32 0, metadata !2068, metadata !DIExpression()), !dbg !2073
  %num_edges = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 1, !dbg !2086
  br label %while.cond, !dbg !2089

while.cond:                                       ; preds = %while.body, %cond.end
  %iteration.0 = phi i32 [ 0, %cond.end ], [ %inc, %while.body ], !dbg !2073
  call void @llvm.dbg.value(metadata i32 %iteration.0, metadata !2068, metadata !DIExpression()), !dbg !2073
  %call8 = tail call fastcc zeroext i8 @cancel_negative_cycle(%struct.fixup_graph_d* %fixup_graph, i32* %3, i64* %4, i32* %5) #8, !dbg !2090
  %tobool9 = icmp eq i8 %call8, 0, !dbg !2089
  br i1 %tobool9, label %while.end, label %while.body, !dbg !2089

while.body:                                       ; preds = %while.cond
  %inc = add nuw nsw i32 %iteration.0, 1, !dbg !2091
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2068, metadata !DIExpression()), !dbg !2073
  %6 = load i32, i32* %num_vertices, align 8, !dbg !2092
  %7 = load i32, i32* %num_edges, align 4, !dbg !2092
  %mul = mul nsw i32 %6, %7, !dbg !2092
  %div = sdiv i32 1000000, %mul, !dbg !2092
  %add = add nsw i32 %div, 10, !dbg !2092
  %cmp = icmp slt i32 %iteration.0, %add, !dbg !2093
  br i1 %cmp, label %while.cond, label %while.end, !dbg !2094, !llvm.loop !2095

while.end:                                        ; preds = %while.body, %while.cond
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2097
  %tobool12 = icmp eq %struct._IO_FILE* %8, null, !dbg !2097
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !2099

if.then13:                                        ; preds = %while.end
  tail call fastcc void @dump_fixup_graph(%struct._IO_FILE* nonnull %8, %struct.fixup_graph_d* %fixup_graph, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.49, i64 0, i64 0)) #8, !dbg !2100
  br label %if.end14, !dbg !2100

if.end14:                                         ; preds = %while.end, %if.then13
  tail call void @free(i8* %call3) #6, !dbg !2101
  tail call void @free(i8* %call5) #6, !dbg !2102
  tail call void @free(i8* %call7) #6, !dbg !2103
  ret void, !dbg !2104
}

; Function Attrs: nounwind uwtable
define internal fastcc void @adjust_cfg_counts(%struct.fixup_graph_d* %fixup_graph) unnamed_addr #4 !dbg !2105 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp172 = alloca %struct.edge_iterator, align 8
  %tmp188 = alloca %struct.edge_iterator, align 8
  %tmp202 = alloca %struct.edge_iterator, align 8
  %tmp230 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.fixup_graph_d* %fixup_graph, metadata !2107, metadata !DIExpression()), !dbg !2121
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !2122
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2122
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2123
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #7, !dbg !2123
  %tobool = icmp eq %struct.fixup_graph_d* %fixup_graph, null, !dbg !2124
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2124

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 1126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2124
  br label %cond.end, !dbg !2124

cond.end:                                         ; preds = %entry, %cond.true
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2125
  %tobool1 = icmp eq %struct._IO_FILE* %2, null, !dbg !2125
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2127

if.then:                                          ; preds = %cond.end
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.60, i64 0, i64 0)) #6, !dbg !2128
  br label %if.end, !dbg !2128

if.end:                                           ; preds = %cond.end, %if.then
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2129
  %cfg = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !2129
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2129
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 0, !dbg !2129
  %5 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2131
  %6 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2131
  %7 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2131
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2135
  %9 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2135
  br label %for.cond, !dbg !2129

for.cond:                                         ; preds = %for.inc144, %if.end
  %10 = phi %struct.control_flow_graph* [ %4, %if.end ], [ %.pre3, %for.inc144 ], !dbg !2137
  %bb.0.in = phi %struct.basic_block_def** [ %x_entry_block_ptr, %if.end ], [ %next_bb, %for.inc144 ]
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2138
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2108, metadata !DIExpression()), !dbg !2121
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 1, !dbg !2137
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2137
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %11, !dbg !2137
  br i1 %cmp, label %for.end145, label %for.body, !dbg !2129

for.body:                                         ; preds = %for.cond
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !2139
  %12 = load i32, i32* %index, align 8, !dbg !2139
  %mul = shl nsw i32 %12, 1, !dbg !2140
  call void @llvm.dbg.value(metadata i32 %mul, metadata !2111, metadata !DIExpression()), !dbg !2121
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2141
  %tobool4 = icmp eq %struct._IO_FILE* %13, null, !dbg !2141
  br i1 %tobool4, label %if.end8, label %if.then5, !dbg !2143

if.then5:                                         ; preds = %for.body
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 8, !dbg !2144
  %14 = load i64, i64* %count, align 8, !dbg !2144
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0), i32 %12, i64 %14) #6, !dbg !2145
  br label %if.end8, !dbg !2145

if.end8:                                          ; preds = %for.body, %if.then5
  %add = or i32 %mul, 1, !dbg !2146
  %call9 = call fastcc %struct.fixup_edge_d* @find_fixup_edge(%struct.fixup_graph_d* %fixup_graph, i32 %mul, i32 %add) #8, !dbg !2147
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %call9, metadata !2113, metadata !DIExpression()), !dbg !2121
  %flow = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call9, i64 0, i32 5, !dbg !2148
  %15 = load i64, i64* %flow, align 8, !dbg !2148
  %tobool10 = icmp eq i64 %15, 0, !dbg !2150
  br i1 %tobool10, label %if.end22, label %if.then11, !dbg !2151

if.then11:                                        ; preds = %if.end8
  %count13 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 8, !dbg !2152
  %16 = load i64, i64* %count13, align 8, !dbg !2154
  %add14 = add nsw i64 %16, %15, !dbg !2154
  store i64 %add14, i64* %count13, align 8, !dbg !2154
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2155
  %tobool15 = icmp eq %struct._IO_FILE* %17, null, !dbg !2155
  br i1 %tobool15, label %if.end22, label %if.then16, !dbg !2157

if.then16:                                        ; preds = %if.then11
  %18 = load i64, i64* %flow, align 8, !dbg !2158
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i64 0, i64 0), i64 %18) #6, !dbg !2160
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2161
  call fastcc void @print_edge(%struct._IO_FILE* %19, %struct.fixup_graph_d* %fixup_graph, i32 %mul, i32 %add) #8, !dbg !2162
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2163
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0)) #6, !dbg !2164
  br label %if.end22, !dbg !2165

if.end22:                                         ; preds = %if.then11, %if.end8, %if.then16
  %norm_vertex_index = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call9, i64 0, i32 4, !dbg !2166
  %21 = load i32, i32* %norm_vertex_index, align 8, !dbg !2166
  %call24 = call fastcc %struct.fixup_edge_d* @find_fixup_edge(%struct.fixup_graph_d* %fixup_graph, i32 %add, i32 %21) #8, !dbg !2167
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %call24, metadata !2114, metadata !DIExpression()), !dbg !2121
  %22 = load i32, i32* %norm_vertex_index, align 8, !dbg !2168
  %tobool26 = icmp eq i32 %22, 0, !dbg !2170
  br i1 %tobool26, label %if.end40, label %land.lhs.true, !dbg !2171

land.lhs.true:                                    ; preds = %if.end22
  %flow27 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call24, i64 0, i32 5, !dbg !2172
  %23 = load i64, i64* %flow27, align 8, !dbg !2172
  %tobool28 = icmp eq i64 %23, 0, !dbg !2173
  br i1 %tobool28, label %if.end40, label %if.then29, !dbg !2174

if.then29:                                        ; preds = %land.lhs.true
  %count31 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 8, !dbg !2175
  %24 = load i64, i64* %count31, align 8, !dbg !2177
  %sub = sub nsw i64 %24, %23, !dbg !2177
  store i64 %sub, i64* %count31, align 8, !dbg !2177
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2178
  %tobool32 = icmp eq %struct._IO_FILE* %25, null, !dbg !2178
  br i1 %tobool32, label %if.end40, label %if.then33, !dbg !2180

if.then33:                                        ; preds = %if.then29
  %26 = load i64, i64* %flow27, align 8, !dbg !2181
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i64 0, i64 0), i64 %26) #6, !dbg !2183
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2184
  %28 = load i32, i32* %norm_vertex_index, align 8, !dbg !2185
  call fastcc void @print_edge(%struct._IO_FILE* %27, %struct.fixup_graph_d* %fixup_graph, i32 %add, i32 %28) #8, !dbg !2186
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2187
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0)) #6, !dbg !2188
  br label %if.end40, !dbg !2189

if.end40:                                         ; preds = %if.then29, %land.lhs.true, %if.end22, %if.then33
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2190
  %tobool41 = icmp eq %struct._IO_FILE* %30, null, !dbg !2190
  br i1 %tobool41, label %if.end45, label %if.then42, !dbg !2192

if.then42:                                        ; preds = %if.end40
  %count43 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 8, !dbg !2193
  %31 = load i64, i64* %count43, align 8, !dbg !2193
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i64 0, i64 0), i64 %31) #6, !dbg !2194
  br label %if.end45, !dbg !2194

if.end45:                                         ; preds = %if.end40, %if.then42
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #7, !dbg !2195
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !2195
  %call46 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #8, !dbg !2195
  %32 = extractvalue { i32, %struct.VEC_edge_gc** } %call46, 0, !dbg !2195
  store i32 %32, i32* %6, align 8, !dbg !2195
  %33 = extractvalue { i32, %struct.VEC_edge_gc** } %call46, 1, !dbg !2195
  store %struct.VEC_edge_gc** %33, %struct.VEC_edge_gc*** %7, align 8, !dbg !2195
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %5, i64 16, i1 false), !dbg !2195
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #7, !dbg !2195
  %count116 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 8, !dbg !2196
  br label %for.cond47, !dbg !2195

for.cond47:                                       ; preds = %for.inc, %if.end45
  %34 = load i32, i32* %8, align 8, !dbg !2200
  %35 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %9, align 8, !dbg !2200
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2109, metadata !DIExpression(DW_OP_deref)), !dbg !2121
  %call48 = call fastcc zeroext i8 @ei_cond(i32 %34, %struct.VEC_edge_gc** %35, %struct.edge_def** nonnull %e) #8, !dbg !2200
  %tobool49 = icmp eq i8 %call48, 0, !dbg !2195
  br i1 %tobool49, label %for.inc144, label %for.body50, !dbg !2195

for.body50:                                       ; preds = %for.cond47
  %36 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2201
  call void @llvm.dbg.value(metadata %struct.edge_def* %36, metadata !2109, metadata !DIExpression()), !dbg !2121
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %36, i64 0, i32 3, !dbg !2201
  %37 = bitcast i8** %aux to %struct.edge_info**, !dbg !2201
  %38 = load %struct.edge_info*, %struct.edge_info** %37, align 8, !dbg !2201
  %tobool51 = icmp eq %struct.edge_info* %38, null, !dbg !2201
  br i1 %tobool51, label %if.end56, label %land.lhs.true52, !dbg !2203

land.lhs.true52:                                  ; preds = %for.body50
  %39 = getelementptr inbounds %struct.edge_info, %struct.edge_info* %38, i64 0, i32 0, !dbg !2203
  call void @llvm.dbg.value(metadata %struct.edge_def* %36, metadata !2109, metadata !DIExpression()), !dbg !2121
  %bf.load = load i8, i8* %39, align 4, !dbg !2204
  %bf.clear = and i8 %bf.load, 4, !dbg !2204
  %tobool54 = icmp eq i8 %bf.clear, 0, !dbg !2205
  br i1 %tobool54, label %if.end56, label %for.inc, !dbg !2206

if.end56:                                         ; preds = %land.lhs.true52, %for.body50
  call void @llvm.dbg.value(metadata %struct.edge_def* %36, metadata !2109, metadata !DIExpression()), !dbg !2121
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %36, i64 0, i32 1, !dbg !2207
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2207
  %index57 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %40, i64 0, i32 9, !dbg !2208
  %41 = load i32, i32* %index57, align 8, !dbg !2208
  %mul58 = shl nsw i32 %41, 1, !dbg !2209
  call void @llvm.dbg.value(metadata i32 %mul58, metadata !2112, metadata !DIExpression()), !dbg !2121
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2210
  %tobool59 = icmp eq %struct._IO_FILE* %42, null, !dbg !2210
  br i1 %tobool59, label %if.end66, label %if.then60, !dbg !2212

if.then60:                                        ; preds = %if.end56
  %43 = load i32, i32* %index, align 8, !dbg !2213
  call void @llvm.dbg.value(metadata %struct.edge_def* %36, metadata !2109, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata %struct.edge_def* %36, metadata !2109, metadata !DIExpression()), !dbg !2121
  %count64 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %36, i64 0, i32 9, !dbg !2214
  %44 = load i64, i64* %count64, align 8, !dbg !2214
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i64 0, i64 0), i32 %43, i32 %41, i64 %44) #6, !dbg !2215
  br label %if.end66, !dbg !2215

if.end66:                                         ; preds = %if.end56, %if.then60
  %call68 = call fastcc %struct.fixup_edge_d* @find_fixup_edge(%struct.fixup_graph_d* %fixup_graph, i32 %add, i32 %mul58) #8, !dbg !2216
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %call68, metadata !2113, metadata !DIExpression()), !dbg !2121
  %45 = load i32, i32* %index, align 8, !dbg !2217
  %46 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2218
  call void @llvm.dbg.value(metadata %struct.edge_def* %46, metadata !2109, metadata !DIExpression()), !dbg !2121
  %dest70 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %46, i64 0, i32 1, !dbg !2219
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %dest70, align 8, !dbg !2219
  %index71 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %47, i64 0, i32 9, !dbg !2220
  %48 = load i32, i32* %index71, align 8, !dbg !2220
  %cmp72 = icmp eq i32 %45, %48, !dbg !2221
  br i1 %cmp72, label %if.else, label %if.then73, !dbg !2222

if.then73:                                        ; preds = %if.end66
  %flow74 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call68, i64 0, i32 5, !dbg !2223
  %49 = load i64, i64* %flow74, align 8, !dbg !2223
  %tobool75 = icmp eq i64 %49, 0, !dbg !2226
  br i1 %tobool75, label %if.end87, label %if.then76, !dbg !2227

if.then76:                                        ; preds = %if.then73
  call void @llvm.dbg.value(metadata %struct.edge_def* %46, metadata !2109, metadata !DIExpression()), !dbg !2121
  %count78 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %46, i64 0, i32 9, !dbg !2228
  %50 = load i64, i64* %count78, align 8, !dbg !2230
  %add79 = add nsw i64 %50, %49, !dbg !2230
  store i64 %add79, i64* %count78, align 8, !dbg !2230
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2231
  %tobool80 = icmp eq %struct._IO_FILE* %51, null, !dbg !2231
  br i1 %tobool80, label %if.end87, label %if.then81, !dbg !2233

if.then81:                                        ; preds = %if.then76
  %52 = load i64, i64* %flow74, align 8, !dbg !2234
  %call83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i64 0, i64 0), i64 %52) #6, !dbg !2236
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2237
  call fastcc void @print_edge(%struct._IO_FILE* %53, %struct.fixup_graph_d* %fixup_graph, i32 %add, i32 %mul58) #8, !dbg !2238
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2239
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0)) #6, !dbg !2240
  br label %if.end87, !dbg !2241

if.end87:                                         ; preds = %if.then76, %if.then73, %if.then81
  %norm_vertex_index88 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call68, i64 0, i32 4, !dbg !2242
  %55 = load i32, i32* %norm_vertex_index88, align 8, !dbg !2242
  %call89 = call fastcc %struct.fixup_edge_d* @find_fixup_edge(%struct.fixup_graph_d* %fixup_graph, i32 %mul58, i32 %55) #8, !dbg !2243
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %call89, metadata !2114, metadata !DIExpression()), !dbg !2121
  %56 = load i32, i32* %norm_vertex_index88, align 8, !dbg !2244
  %tobool91 = icmp eq i32 %56, 0, !dbg !2246
  br i1 %tobool91, label %if.end127, label %land.lhs.true92, !dbg !2247

land.lhs.true92:                                  ; preds = %if.end87
  %flow93 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call89, i64 0, i32 5, !dbg !2248
  %57 = load i64, i64* %flow93, align 8, !dbg !2248
  %tobool94 = icmp eq i64 %57, 0, !dbg !2249
  br i1 %tobool94, label %if.end127, label %if.then95, !dbg !2250

if.then95:                                        ; preds = %land.lhs.true92
  %58 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2251
  call void @llvm.dbg.value(metadata %struct.edge_def* %58, metadata !2109, metadata !DIExpression()), !dbg !2121
  %count97 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %58, i64 0, i32 9, !dbg !2253
  %59 = load i64, i64* %count97, align 8, !dbg !2254
  %sub98 = sub nsw i64 %59, %57, !dbg !2254
  store i64 %sub98, i64* %count97, align 8, !dbg !2254
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2255
  %tobool99 = icmp eq %struct._IO_FILE* %60, null, !dbg !2255
  br i1 %tobool99, label %if.end127, label %if.then100, !dbg !2257

if.then100:                                       ; preds = %if.then95
  %61 = load i64, i64* %flow93, align 8, !dbg !2258
  %call102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i64 0, i64 0), i64 %61) #6, !dbg !2260
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2261
  %63 = load i32, i32* %norm_vertex_index88, align 8, !dbg !2262
  call fastcc void @print_edge(%struct._IO_FILE* %62, %struct.fixup_graph_d* %fixup_graph, i32 %mul58, i32 %63) #8, !dbg !2263
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2264
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0)) #6, !dbg !2265
  br label %if.end127, !dbg !2266

if.else:                                          ; preds = %if.end66
  %call108 = call fastcc %struct.fixup_edge_d* @find_fixup_edge(%struct.fixup_graph_d* %fixup_graph, i32 %mul58, i32 %add) #8, !dbg !2267
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %call108, metadata !2113, metadata !DIExpression()), !dbg !2121
  %norm_vertex_index110 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call108, i64 0, i32 4, !dbg !2268
  %65 = load i32, i32* %norm_vertex_index110, align 8, !dbg !2268
  %call111 = call fastcc %struct.fixup_edge_d* @find_fixup_edge(%struct.fixup_graph_d* %fixup_graph, i32 %add, i32 %65) #8, !dbg !2269
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %call111, metadata !2114, metadata !DIExpression()), !dbg !2121
  %flow112 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call111, i64 0, i32 5, !dbg !2270
  %66 = load i64, i64* %flow112, align 8, !dbg !2270
  %67 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2271
  call void @llvm.dbg.value(metadata %struct.edge_def* %67, metadata !2109, metadata !DIExpression()), !dbg !2121
  %count113 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %67, i64 0, i32 9, !dbg !2272
  %68 = load i64, i64* %count113, align 8, !dbg !2273
  %add114 = add nsw i64 %68, %66, !dbg !2273
  store i64 %add114, i64* %count113, align 8, !dbg !2273
  %69 = load i64, i64* %flow112, align 8, !dbg !2274
  %70 = load i64, i64* %count116, align 8, !dbg !2275
  %add117 = add nsw i64 %70, %69, !dbg !2275
  store i64 %add117, i64* %count116, align 8, !dbg !2275
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2276
  %tobool118 = icmp eq %struct._IO_FILE* %71, null, !dbg !2276
  br i1 %tobool118, label %if.end127, label %if.then119, !dbg !2278

if.then119:                                       ; preds = %if.else
  %call120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i64 0, i64 0)) #6, !dbg !2279
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2281
  %73 = load i64, i64* %flow112, align 8, !dbg !2282
  %call122 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i64 0, i64 0), i64 %73) #6, !dbg !2283
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2284
  %75 = load i32, i32* %norm_vertex_index110, align 8, !dbg !2285
  call fastcc void @print_edge(%struct._IO_FILE* %74, %struct.fixup_graph_d* %fixup_graph, i32 %add, i32 %75) #8, !dbg !2286
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2287
  %call125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0)) #6, !dbg !2288
  br label %if.end127, !dbg !2289

if.end127:                                        ; preds = %if.then95, %land.lhs.true92, %if.end87, %if.else, %if.then119, %if.then100
  %77 = load i64, i64* %count116, align 8, !dbg !2290
  %tobool129 = icmp eq i64 %77, 0, !dbg !2292
  br i1 %tobool129, label %if.end134, label %if.then130, !dbg !2293

if.then130:                                       ; preds = %if.end127
  %78 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2294
  call void @llvm.dbg.value(metadata %struct.edge_def* %78, metadata !2109, metadata !DIExpression()), !dbg !2121
  %count131 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %78, i64 0, i32 9, !dbg !2295
  %79 = load i64, i64* %count131, align 8, !dbg !2295
  %mul132 = mul nsw i64 %79, 10000, !dbg !2296
  %div = sdiv i64 %mul132, %77, !dbg !2297
  %conv = trunc i64 %div to i32, !dbg !2298
  call void @llvm.dbg.value(metadata %struct.edge_def* %78, metadata !2109, metadata !DIExpression()), !dbg !2121
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %78, i64 0, i32 8, !dbg !2299
  store i32 %conv, i32* %probability, align 4, !dbg !2300
  br label %if.end134, !dbg !2301

if.end134:                                        ; preds = %if.end127, %if.then130
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2302
  %tobool135 = icmp eq %struct._IO_FILE* %80, null, !dbg !2302
  br i1 %tobool135, label %for.inc, label %if.then136, !dbg !2304

if.then136:                                       ; preds = %if.end134
  %81 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2305
  call void @llvm.dbg.value(metadata %struct.edge_def* %81, metadata !2109, metadata !DIExpression()), !dbg !2121
  %count137 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %81, i64 0, i32 9, !dbg !2306
  %82 = load i64, i64* %count137, align 8, !dbg !2306
  call void @llvm.dbg.value(metadata %struct.edge_def* %81, metadata !2109, metadata !DIExpression()), !dbg !2121
  %probability138 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %81, i64 0, i32 8, !dbg !2307
  %83 = load i32, i32* %probability138, align 4, !dbg !2307
  %conv139 = sitofp i32 %83 to double, !dbg !2308
  %mul140 = fmul double %conv139, 1.000000e+02, !dbg !2309
  %div141 = fdiv double %mul140, 1.000000e+04, !dbg !2310
  %call142 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %80, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.68, i64 0, i64 0), i64 %82, double %div141) #6, !dbg !2311
  br label %for.inc, !dbg !2311

for.inc:                                          ; preds = %land.lhs.true52, %if.end134, %if.then136
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2110, metadata !DIExpression(DW_OP_deref)), !dbg !2121
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2200
  br label %for.cond47, !dbg !2200, !llvm.loop !2312

for.inc144:                                       ; preds = %for.cond47
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 6, !dbg !2137
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2137
  %cfg3.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2314
  %.pre3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg3.phi.trans.insert, align 8, !dbg !2137
  br label %for.cond, !dbg !2137, !llvm.loop !2315

for.end145:                                       ; preds = %for.cond
  %.lcssa = phi %struct.control_flow_graph* [ %10, %for.cond ], !dbg !2137
  %x_entry_block_ptr148 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.lcssa, i64 0, i32 0, !dbg !2317
  %84 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr148, align 8, !dbg !2317
  %succs149 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %84, i64 0, i32 1, !dbg !2318
  %85 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs149, align 8, !dbg !2318
  %call150 = call i64 @sum_edge_counts(%struct.VEC_edge_gc* %85) #8, !dbg !2319
  %86 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2320
  %cfg152 = getelementptr inbounds %struct.function, %struct.function* %86, i64 0, i32 1, !dbg !2320
  %87 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg152, align 8, !dbg !2320
  %x_entry_block_ptr153 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %87, i64 0, i32 0, !dbg !2320
  %88 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr153, align 8, !dbg !2320
  %count154 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %88, i64 0, i32 8, !dbg !2321
  store i64 %call150, i64* %count154, align 8, !dbg !2322
  %89 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg152, align 8, !dbg !2323
  %x_exit_block_ptr157 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %89, i64 0, i32 1, !dbg !2323
  %90 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr157, align 8, !dbg !2323
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %90, i64 0, i32 0, !dbg !2324
  %91 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !2324
  %call158 = call i64 @sum_edge_counts(%struct.VEC_edge_gc* %91) #8, !dbg !2325
  %92 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2326
  %cfg160 = getelementptr inbounds %struct.function, %struct.function* %92, i64 0, i32 1, !dbg !2326
  %93 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg160, align 8, !dbg !2326
  %x_exit_block_ptr161 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %93, i64 0, i32 1, !dbg !2326
  %94 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr161, align 8, !dbg !2326
  %count162 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %94, i64 0, i32 8, !dbg !2327
  store i64 %call158, i64* %count162, align 8, !dbg !2328
  %95 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg160, align 8, !dbg !2329
  %x_entry_block_ptr165 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %95, i64 0, i32 0, !dbg !2329
  %96 = bitcast %struct.edge_iterator* %tmp172 to i8*, !dbg !2330
  %97 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp172, i64 0, i32 0, !dbg !2330
  %98 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp172, i64 0, i32 1, !dbg !2330
  %99 = bitcast %struct.edge_iterator* %tmp188 to i8*, !dbg !2333
  %100 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp188, i64 0, i32 0, !dbg !2333
  %101 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp188, i64 0, i32 1, !dbg !2333
  %102 = bitcast %struct.edge_iterator* %tmp202 to i8*, !dbg !2335
  %103 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp202, i64 0, i32 0, !dbg !2335
  %104 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp202, i64 0, i32 1, !dbg !2335
  %105 = bitcast %struct.edge_iterator* %tmp230 to i8*, !dbg !2339
  %106 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp230, i64 0, i32 0, !dbg !2339
  %107 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp230, i64 0, i32 1, !dbg !2339
  br label %for.cond166, !dbg !2329

for.cond166:                                      ; preds = %for.inc243, %for.end145
  %bb.1.in = phi %struct.basic_block_def** [ %x_entry_block_ptr165, %for.end145 ], [ %next_bb244, %for.inc243 ]
  %bb.1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.1.in, align 8, !dbg !2342
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1, metadata !2108, metadata !DIExpression()), !dbg !2121
  %tobool167 = icmp eq %struct.basic_block_def* %bb.1, null, !dbg !2329
  br i1 %tobool167, label %for.end245, label %for.body168, !dbg !2329

for.body168:                                      ; preds = %for.cond166
  %count169 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 8, !dbg !2343
  %108 = load i64, i64* %count169, align 8, !dbg !2343
  %tobool170 = icmp eq i64 %108, 0, !dbg !2344
  br i1 %tobool170, label %if.else187, label %if.then171, !dbg !2345

if.then171:                                       ; preds = %for.body168
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %96) #7, !dbg !2346
  %succs173 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 1, !dbg !2346
  %call174 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs173) #8, !dbg !2346
  %109 = extractvalue { i32, %struct.VEC_edge_gc** } %call174, 0, !dbg !2346
  store i32 %109, i32* %97, align 8, !dbg !2346
  %110 = extractvalue { i32, %struct.VEC_edge_gc** } %call174, 1, !dbg !2346
  store %struct.VEC_edge_gc** %110, %struct.VEC_edge_gc*** %98, align 8, !dbg !2346
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %96, i64 16, i1 false), !dbg !2346
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %96) #7, !dbg !2346
  br label %for.cond175, !dbg !2346

for.cond175:                                      ; preds = %for.body178, %if.then171
  %111 = load i32, i32* %8, align 8, !dbg !2347
  %112 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %9, align 8, !dbg !2347
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2109, metadata !DIExpression(DW_OP_deref)), !dbg !2121
  %call176 = call fastcc zeroext i8 @ei_cond(i32 %111, %struct.VEC_edge_gc** %112, %struct.edge_def** nonnull %e) #8, !dbg !2347
  %tobool177 = icmp eq i8 %call176, 0, !dbg !2346
  br i1 %tobool177, label %for.inc243.loopexit2, label %for.body178, !dbg !2346

for.body178:                                      ; preds = %for.cond175
  %113 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2349
  call void @llvm.dbg.value(metadata %struct.edge_def* %113, metadata !2109, metadata !DIExpression()), !dbg !2121
  %count179 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %113, i64 0, i32 9, !dbg !2350
  %114 = load i64, i64* %count179, align 8, !dbg !2350
  %mul180 = mul nsw i64 %114, 10000, !dbg !2351
  %115 = load i64, i64* %count169, align 8, !dbg !2352
  %div182 = sdiv i64 %mul180, %115, !dbg !2353
  %conv183 = trunc i64 %div182 to i32, !dbg !2354
  call void @llvm.dbg.value(metadata %struct.edge_def* %113, metadata !2109, metadata !DIExpression()), !dbg !2121
  %probability184 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %113, i64 0, i32 8, !dbg !2355
  store i32 %conv183, i32* %probability184, align 4, !dbg !2356
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2110, metadata !DIExpression(DW_OP_deref)), !dbg !2121
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2347
  br label %for.cond175, !dbg !2347, !llvm.loop !2357

if.else187:                                       ; preds = %for.body168
  call void @llvm.dbg.value(metadata i32 0, metadata !2115, metadata !DIExpression()), !dbg !2359
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %99) #7, !dbg !2360
  %succs189 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 1, !dbg !2360
  %call190 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs189) #8, !dbg !2360
  %116 = extractvalue { i32, %struct.VEC_edge_gc** } %call190, 0, !dbg !2360
  store i32 %116, i32* %100, align 8, !dbg !2360
  %117 = extractvalue { i32, %struct.VEC_edge_gc** } %call190, 1, !dbg !2360
  store %struct.VEC_edge_gc** %117, %struct.VEC_edge_gc*** %101, align 8, !dbg !2360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %99, i64 16, i1 false), !dbg !2360
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %99) #7, !dbg !2360
  br label %for.cond191, !dbg !2360

for.cond191:                                      ; preds = %for.body194, %if.else187
  %total.0 = phi i32 [ 0, %if.else187 ], [ %spec.select, %for.body194 ], !dbg !2361
  call void @llvm.dbg.value(metadata i32 %total.0, metadata !2115, metadata !DIExpression()), !dbg !2359
  %118 = load i32, i32* %8, align 8, !dbg !2362
  %119 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %9, align 8, !dbg !2362
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2109, metadata !DIExpression(DW_OP_deref)), !dbg !2121
  %call192 = call fastcc zeroext i8 @ei_cond(i32 %118, %struct.VEC_edge_gc** %119, %struct.edge_def** nonnull %e) #8, !dbg !2362
  %tobool193 = icmp eq i8 %call192, 0, !dbg !2360
  br i1 %tobool193, label %for.end199, label %for.body194, !dbg !2360

for.body194:                                      ; preds = %for.cond191
  %120 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2364
  call void @llvm.dbg.value(metadata %struct.edge_def* %120, metadata !2109, metadata !DIExpression()), !dbg !2121
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %120, i64 0, i32 7, !dbg !2366
  %121 = load i32, i32* %flags, align 8, !dbg !2366
  %and = and i32 %121, 30, !dbg !2367
  %tobool195 = icmp eq i32 %and, 0, !dbg !2367
  %inc = zext i1 %tobool195 to i32, !dbg !2368
  %spec.select = add nuw nsw i32 %total.0, %inc, !dbg !2368
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2115, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2110, metadata !DIExpression(DW_OP_deref)), !dbg !2121
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2362
  br label %for.cond191, !dbg !2362, !llvm.loop !2369

for.end199:                                       ; preds = %for.cond191
  %total.0.lcssa = phi i32 [ %total.0, %for.cond191 ], !dbg !2361
  call void @llvm.dbg.value(metadata i32 %total.0.lcssa, metadata !2115, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i32 %total.0.lcssa, metadata !2115, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i32 %total.0.lcssa, metadata !2115, metadata !DIExpression()), !dbg !2359
  %tobool200 = icmp eq i32 %total.0.lcssa, 0, !dbg !2371
  br i1 %tobool200, label %if.else220, label %if.then201, !dbg !2372

if.then201:                                       ; preds = %for.end199
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %102) #7, !dbg !2373
  %call204 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs189) #8, !dbg !2373
  %122 = extractvalue { i32, %struct.VEC_edge_gc** } %call204, 0, !dbg !2373
  store i32 %122, i32* %103, align 8, !dbg !2373
  %123 = extractvalue { i32, %struct.VEC_edge_gc** } %call204, 1, !dbg !2373
  store %struct.VEC_edge_gc** %123, %struct.VEC_edge_gc*** %104, align 8, !dbg !2373
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %102, i64 16, i1 false), !dbg !2373
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %102) #7, !dbg !2373
  br label %for.cond205, !dbg !2373

for.cond205:                                      ; preds = %for.inc218, %if.then201
  %124 = load i32, i32* %8, align 8, !dbg !2374
  %125 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %9, align 8, !dbg !2374
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2109, metadata !DIExpression(DW_OP_deref)), !dbg !2121
  %call206 = call fastcc zeroext i8 @ei_cond(i32 %124, %struct.VEC_edge_gc** %125, %struct.edge_def** nonnull %e) #8, !dbg !2374
  %tobool207 = icmp eq i8 %call206, 0, !dbg !2373
  br i1 %tobool207, label %for.inc243.loopexit1, label %for.body208, !dbg !2373

for.body208:                                      ; preds = %for.cond205
  %126 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2376
  call void @llvm.dbg.value(metadata %struct.edge_def* %126, metadata !2109, metadata !DIExpression()), !dbg !2121
  %flags209 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %126, i64 0, i32 7, !dbg !2379
  %127 = load i32, i32* %flags209, align 8, !dbg !2379
  %and210 = and i32 %127, 30, !dbg !2380
  %tobool211 = icmp eq i32 %and210, 0, !dbg !2380
  br i1 %tobool211, label %if.then212, label %if.else215, !dbg !2381

if.then212:                                       ; preds = %for.body208
  %div213 = udiv i32 10000, %total.0.lcssa, !dbg !2382
  call void @llvm.dbg.value(metadata %struct.edge_def* %126, metadata !2109, metadata !DIExpression()), !dbg !2121
  %probability214 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %126, i64 0, i32 8, !dbg !2383
  store i32 %div213, i32* %probability214, align 4, !dbg !2384
  br label %for.inc218, !dbg !2385

if.else215:                                       ; preds = %for.body208
  call void @llvm.dbg.value(metadata %struct.edge_def* %126, metadata !2109, metadata !DIExpression()), !dbg !2121
  %probability216 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %126, i64 0, i32 8, !dbg !2386
  store i32 0, i32* %probability216, align 4, !dbg !2387
  br label %for.inc218

for.inc218:                                       ; preds = %if.then212, %if.else215
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2110, metadata !DIExpression(DW_OP_deref)), !dbg !2121
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2374
  br label %for.cond205, !dbg !2374, !llvm.loop !2388

if.else220:                                       ; preds = %for.end199
  %128 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs189, align 8, !dbg !2390
  %tobool222 = icmp eq %struct.VEC_edge_gc* %128, null, !dbg !2390
  br i1 %tobool222, label %cond.end226, label %cond.true223, !dbg !2390

cond.true223:                                     ; preds = %if.else220
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %128, i64 0, i32 0, !dbg !2390
  br label %cond.end226, !dbg !2390

cond.end226:                                      ; preds = %if.else220, %cond.true223
  %cond227 = phi %struct.VEC_edge_base* [ %base, %cond.true223 ], [ null, %if.else220 ], !dbg !2390
  %call228 = call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond227) #8, !dbg !2390
  call void @llvm.dbg.value(metadata i32 %call228, metadata !2115, metadata !DIExpression()), !dbg !2359
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %105) #7, !dbg !2391
  %call232 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs189) #8, !dbg !2391
  %129 = extractvalue { i32, %struct.VEC_edge_gc** } %call232, 0, !dbg !2391
  store i32 %129, i32* %106, align 8, !dbg !2391
  %130 = extractvalue { i32, %struct.VEC_edge_gc** } %call232, 1, !dbg !2391
  store %struct.VEC_edge_gc** %130, %struct.VEC_edge_gc*** %107, align 8, !dbg !2391
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %105, i64 16, i1 false), !dbg !2391
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %105) #7, !dbg !2391
  br label %for.cond233, !dbg !2391

for.cond233:                                      ; preds = %for.body236, %cond.end226
  %131 = load i32, i32* %8, align 8, !dbg !2392
  %132 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %9, align 8, !dbg !2392
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2109, metadata !DIExpression(DW_OP_deref)), !dbg !2121
  %call234 = call fastcc zeroext i8 @ei_cond(i32 %131, %struct.VEC_edge_gc** %132, %struct.edge_def** nonnull %e) #8, !dbg !2392
  %tobool235 = icmp eq i8 %call234, 0, !dbg !2391
  br i1 %tobool235, label %for.inc243.loopexit, label %for.body236, !dbg !2391

for.body236:                                      ; preds = %for.cond233
  %div237 = sdiv i32 10000, %call228, !dbg !2394
  %133 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2395
  call void @llvm.dbg.value(metadata %struct.edge_def* %133, metadata !2109, metadata !DIExpression()), !dbg !2121
  %probability238 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %133, i64 0, i32 8, !dbg !2396
  store i32 %div237, i32* %probability238, align 4, !dbg !2397
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2110, metadata !DIExpression(DW_OP_deref)), !dbg !2121
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #8, !dbg !2392
  br label %for.cond233, !dbg !2392, !llvm.loop !2398

for.inc243.loopexit:                              ; preds = %for.cond233
  br label %for.inc243, !dbg !2400

for.inc243.loopexit1:                             ; preds = %for.cond205
  br label %for.inc243, !dbg !2400

for.inc243.loopexit2:                             ; preds = %for.cond175
  br label %for.inc243, !dbg !2400

for.inc243:                                       ; preds = %for.inc243.loopexit2, %for.inc243.loopexit1, %for.inc243.loopexit
  %next_bb244 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 6, !dbg !2400
  br label %for.cond166, !dbg !2400, !llvm.loop !2401

for.end245:                                       ; preds = %for.cond166
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2403
  %tobool246 = icmp eq %struct._IO_FILE* %134, null, !dbg !2403
  br i1 %tobool246, label %if.end288, label %if.then247, !dbg !2405

if.then247:                                       ; preds = %for.end245
  %135 = load i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 22), align 8, !dbg !2406
  %136 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !2408
  %call248 = call i8* %135(%union.tree_node* %136, i32 2) #6, !dbg !2409
  %call249 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %134, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.69, i64 0, i64 0), i8* %call248) #6, !dbg !2410
  %137 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2411
  %cfg251 = getelementptr inbounds %struct.function, %struct.function* %137, i64 0, i32 1, !dbg !2411
  %138 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg251, align 8, !dbg !2411
  %x_entry_block_ptr252 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %138, i64 0, i32 0, !dbg !2411
  %139 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr252, align 8, !dbg !2411
  br label %for.cond254, !dbg !2411

for.cond254:                                      ; preds = %for.inc285, %if.then247
  %140 = phi %struct.control_flow_graph* [ %138, %if.then247 ], [ %.pre5, %for.inc285 ], !dbg !2413
  %.pn = phi %struct.basic_block_def* [ %139, %if.then247 ], [ %bb.2, %for.inc285 ]
  %bb.2.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2415
  %bb.2 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.2.in, align 8, !dbg !2415
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.2, metadata !2108, metadata !DIExpression()), !dbg !2121
  %x_exit_block_ptr257 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %140, i64 0, i32 1, !dbg !2413
  %141 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr257, align 8, !dbg !2413
  %cmp258 = icmp eq %struct.basic_block_def* %bb.2, %141, !dbg !2413
  br i1 %cmp258, label %if.end288.loopexit, label %for.body260, !dbg !2411

for.body260:                                      ; preds = %for.cond254
  %count261 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.2, i64 0, i32 8, !dbg !2416
  %142 = load i64, i64* %count261, align 8, !dbg !2416
  %preds262 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.2, i64 0, i32 0, !dbg !2419
  %143 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds262, align 8, !dbg !2419
  %call263 = call i64 @sum_edge_counts(%struct.VEC_edge_gc* %143) #8, !dbg !2420
  %cmp264 = icmp eq i64 %142, %call263, !dbg !2421
  br i1 %cmp264, label %lor.lhs.false, label %if.then271, !dbg !2422

lor.lhs.false:                                    ; preds = %for.body260
  %144 = load i64, i64* %count261, align 8, !dbg !2423
  %succs267 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.2, i64 0, i32 1, !dbg !2424
  %145 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs267, align 8, !dbg !2424
  %call268 = call i64 @sum_edge_counts(%struct.VEC_edge_gc* %145) #8, !dbg !2425
  %cmp269 = icmp eq i64 %144, %call268, !dbg !2426
  br i1 %cmp269, label %for.inc285, label %if.then271, !dbg !2427

if.then271:                                       ; preds = %lor.lhs.false, %for.body260
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2428
  %index272 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.2, i64 0, i32 9, !dbg !2430
  %147 = load i32, i32* %index272, align 8, !dbg !2430
  %148 = load i64, i64* %count261, align 8, !dbg !2431
  %call274 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %146, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.70, i64 0, i64 0), i32 %147, i64 %148) #6, !dbg !2432
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2433
  %150 = load i32, i32* %index272, align 8, !dbg !2434
  %151 = load i64, i64* %count261, align 8, !dbg !2435
  %call277 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %149, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.71, i64 0, i64 0), i32 %150, i64 %151) #6, !dbg !2436
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2437
  %153 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds262, align 8, !dbg !2438
  %call279 = call i64 @sum_edge_counts(%struct.VEC_edge_gc* %153) #8, !dbg !2439
  %call280 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %152, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.72, i64 0, i64 0), i64 %call279) #6, !dbg !2440
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2441
  %succs281 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.2, i64 0, i32 1, !dbg !2442
  %155 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs281, align 8, !dbg !2442
  %call282 = call i64 @sum_edge_counts(%struct.VEC_edge_gc* %155) #8, !dbg !2443
  %call283 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %154, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.73, i64 0, i64 0), i64 %call282) #6, !dbg !2444
  br label %for.inc285, !dbg !2445

for.inc285:                                       ; preds = %lor.lhs.false, %if.then271
  %.pre4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2413
  %cfg256.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre4, i64 0, i32 1, !dbg !2446
  %.pre5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg256.phi.trans.insert, align 8, !dbg !2413
  br label %for.cond254, !dbg !2413, !llvm.loop !2447

if.end288.loopexit:                               ; preds = %for.cond254
  br label %if.end288, !dbg !2449

if.end288:                                        ; preds = %if.end288.loopexit, %for.end245
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #7, !dbg !2449
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2449
  ret void, !dbg !2449
}

; Function Attrs: nounwind uwtable
define internal fastcc void @delete_fixup_graph(%struct.fixup_graph_d* %fixup_graph) unnamed_addr #4 !dbg !2450 {
entry:
  call void @llvm.dbg.value(metadata %struct.fixup_graph_d* %fixup_graph, metadata !2452, metadata !DIExpression()), !dbg !2456
  %num_vertices = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 0, !dbg !2457
  %0 = load i32, i32* %num_vertices, align 8, !dbg !2457
  call void @llvm.dbg.value(metadata i32 %0, metadata !2454, metadata !DIExpression()), !dbg !2456
  %vertex_list = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 4, !dbg !2458
  %1 = load %struct.fixup_vertex_d*, %struct.fixup_vertex_d** %vertex_list, align 8, !dbg !2458
  call void @llvm.dbg.value(metadata %struct.fixup_vertex_d* %1, metadata !2455, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i32 0, metadata !2453, metadata !DIExpression()), !dbg !2456
  br label %for.cond, !dbg !2459

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2461
  %pfvertex.0 = phi %struct.fixup_vertex_d* [ %1, %entry ], [ %incdec.ptr, %for.body ], !dbg !2456
  call void @llvm.dbg.value(metadata %struct.fixup_vertex_d* %pfvertex.0, metadata !2455, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2453, metadata !DIExpression()), !dbg !2456
  %cmp = icmp slt i32 %i.0, %0, !dbg !2462
  br i1 %cmp, label %for.body, label %for.end, !dbg !2464

for.body:                                         ; preds = %for.cond
  %succ_edges = getelementptr inbounds %struct.fixup_vertex_d, %struct.fixup_vertex_d* %pfvertex.0, i64 0, i32 0, !dbg !2465
  tail call fastcc void @VEC_fixup_edge_p_heap_free(%struct.VEC_fixup_edge_p_heap** %succ_edges) #8, !dbg !2465
  %inc = add nuw nsw i32 %i.0, 1, !dbg !2466
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2453, metadata !DIExpression()), !dbg !2456
  %incdec.ptr = getelementptr inbounds %struct.fixup_vertex_d, %struct.fixup_vertex_d* %pfvertex.0, i64 1, !dbg !2467
  call void @llvm.dbg.value(metadata %struct.fixup_vertex_d* %incdec.ptr, metadata !2455, metadata !DIExpression()), !dbg !2456
  br label %for.cond, !dbg !2468, !llvm.loop !2469

for.end:                                          ; preds = %for.cond
  %2 = bitcast %struct.fixup_vertex_d** %vertex_list to i8**, !dbg !2471
  %3 = load i8*, i8** %2, align 8, !dbg !2471
  tail call void @free(i8* %3) #6, !dbg !2472
  %edge_list = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 5, !dbg !2473
  %4 = bitcast %struct.fixup_edge_d** %edge_list to i8**, !dbg !2473
  %5 = load i8*, i8** %4, align 8, !dbg !2473
  tail call void @free(i8* %5) #6, !dbg !2474
  ret void, !dbg !2475
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !2476 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !2481
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !2481
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2481

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !2481
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !2481
  br label %cond.end, !dbg !2481

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2481
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #8, !dbg !2481
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !2482
  %conv3 = zext i1 %cmp to i8, !dbg !2483
  ret i8 %conv3, !dbg !2484
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !2485 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !2490
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !2490
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2490

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #8, !dbg !2490
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !2490
  br label %cond.end, !dbg !2490

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2490
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #8, !dbg !2490
  ret %struct.edge_def* %call2, !dbg !2491
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !2492 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !2498, metadata !DIExpression()), !dbg !2499
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !2500
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2500

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !2500
  %0 = load i32, i32* %num, align 8, !dbg !2500
  br label %cond.end, !dbg !2500

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2500
  ret i32 %cond, !dbg !2500
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !2501 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !2506
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2506

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2506
  br label %cond.end, !dbg !2506

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !2507
  ret %struct.VEC_edge_gc* %0, !dbg !2508
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2509 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !2513, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2514, metadata !DIExpression()), !dbg !2515
  br label %land.end, !dbg !2516

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2516
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2516
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !2516
  ret %struct.edge_def* %0, !dbg !2516
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc double @mcf_sqrt(double %x) unnamed_addr #4 !dbg !2517 {
entry:
  call void @llvm.dbg.value(metadata double %x, metadata !2521, metadata !DIExpression()), !dbg !2529
  %cmp = fcmp ult double %x, 0.000000e+00, !dbg !2530
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !2530

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2530
  br label %cond.end, !dbg !2530

cond.end:                                         ; preds = %entry, %cond.true
  %conv = fptrunc double %x to float, !dbg !2531
  %.cast = bitcast float %conv to i32, !dbg !2532
  %shr = ashr i32 %.cast, 1, !dbg !2533
  %add = add nsw i32 %shr, 532477952, !dbg !2534
  %sub = sub nsw i32 1597463007, %shr, !dbg !2535
  %0 = bitcast i32 %add to float, !dbg !2536
  %conv8 = fpext float %0 to double, !dbg !2537
  %.cast1 = bitcast i32 %sub to float, !dbg !2538
  %conv10 = fpext float %.cast1 to double, !dbg !2539
  %mul = fmul double %conv10, %x, !dbg !2540
  %add11 = fadd double %mul, %conv8, !dbg !2541
  %mul12 = fmul double %add11, 5.000000e-01, !dbg !2542
  ret double %mul12, !dbg !2543
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc double @mcf_ln(double %x) unnamed_addr #4 !dbg !2544 {
entry:
  call void @llvm.dbg.value(metadata double %x, metadata !2546, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i32 1, metadata !2547, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata double 2.718280e+00, metadata !2548, metadata !DIExpression()), !dbg !2549
  %cmp = fcmp ult double %x, 0.000000e+00, !dbg !2550
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !2550

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 331, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2550
  br label %cond.end, !dbg !2550

cond.end:                                         ; preds = %entry, %cond.true
  br label %while.cond, !dbg !2551

while.cond:                                       ; preds = %while.body, %cond.end
  %l.0 = phi i32 [ 1, %cond.end ], [ %inc, %while.body ], !dbg !2549
  %m.0 = phi double [ 2.718280e+00, %cond.end ], [ %mul, %while.body ], !dbg !2549
  call void @llvm.dbg.value(metadata double %m.0, metadata !2548, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i32 %l.0, metadata !2547, metadata !DIExpression()), !dbg !2549
  %cmp1 = fcmp olt double %m.0, %x, !dbg !2552
  br i1 %cmp1, label %while.body, label %while.end, !dbg !2551

while.body:                                       ; preds = %while.cond
  %mul = fmul double %m.0, 2.718280e+00, !dbg !2553
  call void @llvm.dbg.value(metadata double %mul, metadata !2548, metadata !DIExpression()), !dbg !2549
  %inc = add nuw nsw i32 %l.0, 1, !dbg !2555
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2547, metadata !DIExpression()), !dbg !2549
  br label %while.cond, !dbg !2551, !llvm.loop !2556

while.end:                                        ; preds = %while.cond
  %l.0.lcssa = phi i32 [ %l.0, %while.cond ], !dbg !2549
  call void @llvm.dbg.value(metadata i32 %l.0.lcssa, metadata !2547, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i32 %l.0.lcssa, metadata !2547, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i32 %l.0.lcssa, metadata !2547, metadata !DIExpression()), !dbg !2549
  %conv = sitofp i32 %l.0.lcssa to double, !dbg !2558
  ret double %conv, !dbg !2559
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_fixup_edge(%struct.fixup_graph_d* %fixup_graph, i32 %src, i32 %dest, i32 %type, i64 %weight, i64 %cost, i64 %max_capacity) unnamed_addr #4 !dbg !2560 {
entry:
  call void @llvm.dbg.value(metadata %struct.fixup_graph_d* %fixup_graph, metadata !2564, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i32 %src, metadata !2565, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i32 %dest, metadata !2566, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i32 %type, metadata !2567, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i64 %weight, metadata !2568, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i64 %cost, metadata !2569, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i64 %max_capacity, metadata !2570, metadata !DIExpression()), !dbg !2572
  %call = tail call fastcc %struct.fixup_edge_d* @add_edge(%struct.fixup_graph_d* %fixup_graph, i32 %src, i32 %dest, i64 %cost) #8, !dbg !2573
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %call, metadata !2571, metadata !DIExpression()), !dbg !2572
  %type1 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call, i64 0, i32 2, !dbg !2574
  store i32 %type, i32* %type1, align 8, !dbg !2575
  %weight2 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call, i64 0, i32 7, !dbg !2576
  store i64 %weight, i64* %weight2, align 8, !dbg !2577
  %max_capacity3 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call, i64 0, i32 9, !dbg !2578
  store i64 %max_capacity, i64* %max_capacity3, align 8, !dbg !2579
  ret void, !dbg !2580
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.fixup_edge_d* @find_fixup_edge(%struct.fixup_graph_d* %fixup_graph, i32 %src, i32 %dest) unnamed_addr #4 !dbg !2581 {
entry:
  %pfedge = alloca %struct.fixup_edge_d*, align 8
  call void @llvm.dbg.value(metadata %struct.fixup_graph_d* %fixup_graph, metadata !2585, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i32 %src, metadata !2586, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i32 %dest, metadata !2587, metadata !DIExpression()), !dbg !2591
  %0 = bitcast %struct.fixup_edge_d** %pfedge to i8*, !dbg !2592
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2592
  %num_vertices = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 0, !dbg !2593
  %1 = load i32, i32* %num_vertices, align 8, !dbg !2593
  %cmp = icmp sgt i32 %1, %src, !dbg !2593
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2593

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 427, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2593
  br label %cond.end, !dbg !2593

cond.end:                                         ; preds = %entry, %cond.true
  %vertex_list = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 4, !dbg !2594
  %2 = load %struct.fixup_vertex_d*, %struct.fixup_vertex_d** %vertex_list, align 8, !dbg !2594
  %idx.ext = sext i32 %src to i64, !dbg !2595
  call void @llvm.dbg.value(metadata %struct.fixup_vertex_d* undef, metadata !2590, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i32 0, metadata !2588, metadata !DIExpression()), !dbg !2591
  %succ_edges = getelementptr inbounds %struct.fixup_vertex_d, %struct.fixup_vertex_d* %2, i64 %idx.ext, i32 0, !dbg !2596
  br label %for.cond, !dbg !2599

for.cond:                                         ; preds = %for.inc, %cond.end
  %j.0 = phi i32 [ 0, %cond.end ], [ %inc, %for.inc ], !dbg !2600
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !2588, metadata !DIExpression()), !dbg !2591
  %3 = load %struct.VEC_fixup_edge_p_heap*, %struct.VEC_fixup_edge_p_heap** %succ_edges, align 8, !dbg !2601
  %tobool = icmp eq %struct.VEC_fixup_edge_p_heap* %3, null, !dbg !2601
  br i1 %tobool, label %cond.end4, label %cond.true1, !dbg !2601

cond.true1:                                       ; preds = %for.cond
  %base = getelementptr inbounds %struct.VEC_fixup_edge_p_heap, %struct.VEC_fixup_edge_p_heap* %3, i64 0, i32 0, !dbg !2601
  br label %cond.end4, !dbg !2601

cond.end4:                                        ; preds = %for.cond, %cond.true1
  %cond5 = phi %struct.VEC_fixup_edge_p_base* [ %base, %cond.true1 ], [ null, %for.cond ], !dbg !2601
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d** %pfedge, metadata !2589, metadata !DIExpression(DW_OP_deref)), !dbg !2591
  %call = call fastcc i32 @VEC_fixup_edge_p_base_iterate(%struct.VEC_fixup_edge_p_base* %cond5, i32 %j.0, %struct.fixup_edge_d** nonnull %pfedge) #8, !dbg !2601
  %tobool6 = icmp eq i32 %call, 0, !dbg !2602
  br i1 %tobool6, label %cleanup.loopexit, label %for.body, !dbg !2602

for.body:                                         ; preds = %cond.end4
  %4 = load %struct.fixup_edge_d*, %struct.fixup_edge_d** %pfedge, align 8, !dbg !2603
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %4, metadata !2589, metadata !DIExpression()), !dbg !2591
  %dest7 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %4, i64 0, i32 1, !dbg !2605
  %5 = load i32, i32* %dest7, align 4, !dbg !2605
  %cmp8 = icmp eq i32 %5, %dest, !dbg !2606
  br i1 %cmp8, label %if.then, label %for.inc, !dbg !2607

if.then:                                          ; preds = %for.body
  %.lcssa = phi %struct.fixup_edge_d* [ %4, %for.body ], !dbg !2603
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %.lcssa, metadata !2589, metadata !DIExpression()), !dbg !2591
  br label %cleanup, !dbg !2608

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %j.0, 1, !dbg !2609
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2588, metadata !DIExpression()), !dbg !2591
  br label %for.cond, !dbg !2610, !llvm.loop !2611

cleanup.loopexit:                                 ; preds = %cond.end4
  br label %cleanup, !dbg !2613

cleanup:                                          ; preds = %cleanup.loopexit, %if.then
  %retval.0 = phi %struct.fixup_edge_d* [ %.lcssa, %if.then ], [ null, %cleanup.loopexit ], !dbg !2591
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2613
  ret %struct.fixup_edge_d* %retval.0, !dbg !2613
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dump_fixup_edge(%struct._IO_FILE* %file, %struct.fixup_graph_d* %fixup_graph, %struct.fixup_edge_d* %fedge) unnamed_addr #4 !dbg !2614 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2618, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata %struct.fixup_graph_d* %fixup_graph, metadata !2619, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %fedge, metadata !2620, metadata !DIExpression()), !dbg !2621
  %tobool = icmp eq %struct.fixup_edge_d* %fedge, null, !dbg !2622
  br i1 %tobool, label %if.then, label %if.end, !dbg !2624

if.then:                                          ; preds = %entry
  %call = tail call i32 @fputs(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !2625
  br label %return, !dbg !2627

if.end:                                           ; preds = %entry
  %src = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %fedge, i64 0, i32 0, !dbg !2628
  %0 = load i32, i32* %src, align 8, !dbg !2628
  %dest = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %fedge, i64 0, i32 1, !dbg !2629
  %1 = load i32, i32* %dest, align 4, !dbg !2629
  tail call fastcc void @print_edge(%struct._IO_FILE* %file, %struct.fixup_graph_d* %fixup_graph, i32 %0, i32 %1) #8, !dbg !2630
  %call1 = tail call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !2631
  %type = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %fedge, i64 0, i32 2, !dbg !2632
  %2 = load i32, i32* %type, align 8, !dbg !2632
  %tobool2 = icmp eq i32 %2, 0, !dbg !2634
  br i1 %tobool2, label %if.end10, label %if.then3, !dbg !2635

if.then3:                                         ; preds = %if.end
  %flow = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %fedge, i64 0, i32 5, !dbg !2636
  %3 = load i64, i64* %flow, align 8, !dbg !2636
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i64 %3) #6, !dbg !2638
  %max_capacity = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %fedge, i64 0, i32 9, !dbg !2639
  %4 = load i64, i64* %max_capacity, align 8, !dbg !2639
  %cmp = icmp eq i64 %4, 9223372036854775807, !dbg !2641
  br i1 %cmp, label %if.then5, label %if.else, !dbg !2642

if.then5:                                         ; preds = %if.then3
  %call6 = tail call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !2643
  br label %if.end10, !dbg !2643

if.else:                                          ; preds = %if.then3
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i64 %4) #6, !dbg !2644
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then5, %if.else
  %is_rflow_valid = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %fedge, i64 0, i32 3, !dbg !2645
  %5 = load i8, i8* %is_rflow_valid, align 4, !dbg !2645
  %tobool11 = icmp eq i8 %5, 0, !dbg !2647
  br i1 %tobool11, label %if.end20, label %if.then12, !dbg !2648

if.then12:                                        ; preds = %if.end10
  %rflow = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %fedge, i64 0, i32 6, !dbg !2649
  %6 = load i64, i64* %rflow, align 8, !dbg !2649
  %cmp13 = icmp eq i64 %6, 9223372036854775807, !dbg !2652
  br i1 %cmp13, label %if.then14, label %if.else16, !dbg !2653

if.then14:                                        ; preds = %if.then12
  %call15 = tail call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !2654
  br label %if.end20, !dbg !2654

if.else16:                                        ; preds = %if.then12
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i64 %6) #6, !dbg !2655
  br label %if.end20

if.end20:                                         ; preds = %if.end10, %if.then14, %if.else16
  %cost = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %fedge, i64 0, i32 8, !dbg !2656
  %7 = load i64, i64* %cost, align 8, !dbg !2656
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i64 %7) #6, !dbg !2657
  %8 = load i32, i32* %src, align 8, !dbg !2658
  %9 = load i32, i32* %dest, align 4, !dbg !2659
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i32 %8, i32 %9) #6, !dbg !2660
  %10 = load i32, i32* %type, align 8, !dbg !2661
  %tobool26 = icmp eq i32 %10, 0, !dbg !2663
  br i1 %tobool26, label %if.end43, label %if.then27, !dbg !2664

if.then27:                                        ; preds = %if.end20
  switch i32 %10, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb30
    i32 4, label %sw.bb32
    i32 5, label %sw.bb34
    i32 3, label %sw.bb36
    i32 6, label %sw.bb38
    i32 7, label %sw.bb40
    i32 8, label %sw.bb40
  ], !dbg !2665

sw.bb:                                            ; preds = %if.then27
  %call29 = tail call i32 @fputs(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !2667
  br label %if.end43, !dbg !2669

sw.bb30:                                          ; preds = %if.then27
  %call31 = tail call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !2670
  br label %if.end43, !dbg !2671

sw.bb32:                                          ; preds = %if.then27
  %call33 = tail call i32 @fputs(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !2672
  br label %if.end43, !dbg !2673

sw.bb34:                                          ; preds = %if.then27
  %call35 = tail call i32 @fputs(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !2674
  br label %if.end43, !dbg !2675

sw.bb36:                                          ; preds = %if.then27
  %call37 = tail call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !2676
  br label %if.end43, !dbg !2677

sw.bb38:                                          ; preds = %if.then27
  %call39 = tail call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !2678
  br label %if.end43, !dbg !2679

sw.bb40:                                          ; preds = %if.then27, %if.then27
  %call41 = tail call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !2680
  br label %if.end43, !dbg !2681

sw.default:                                       ; preds = %if.then27
  %call42 = tail call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !2682
  br label %if.end43, !dbg !2683

if.end43:                                         ; preds = %if.end20, %sw.bb, %sw.bb30, %sw.bb32, %sw.bb34, %sw.bb36, %sw.bb38, %sw.bb40, %sw.default
  %call44 = tail call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !2684
  br label %return, !dbg !2685

return:                                           ; preds = %if.end43, %if.then
  ret void, !dbg !2685
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dump_fixup_graph(%struct._IO_FILE* %file, %struct.fixup_graph_d* %fixup_graph, i8* %msg) unnamed_addr #4 !dbg !2686 {
entry:
  %pfedge = alloca %struct.fixup_edge_d*, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2690, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata %struct.fixup_graph_d* %fixup_graph, metadata !2691, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8* %msg, metadata !2692, metadata !DIExpression()), !dbg !2700
  %0 = bitcast %struct.fixup_edge_d** %pfedge to i8*, !dbg !2701
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2701
  %tobool = icmp eq %struct.fixup_graph_d* %fixup_graph, null, !dbg !2702
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2702

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 287, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2702
  br label %cond.end, !dbg !2702

cond.end:                                         ; preds = %entry, %cond.true
  %vertex_list = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 4, !dbg !2703
  %1 = load %struct.fixup_vertex_d*, %struct.fixup_vertex_d** %vertex_list, align 8, !dbg !2703
  call void @llvm.dbg.value(metadata %struct.fixup_vertex_d* %1, metadata !2697, metadata !DIExpression()), !dbg !2700
  %num_vertices = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 0, !dbg !2704
  %2 = load i32, i32* %num_vertices, align 8, !dbg !2704
  call void @llvm.dbg.value(metadata i32 %2, metadata !2695, metadata !DIExpression()), !dbg !2700
  %num_edges = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 1, !dbg !2705
  %3 = load i32, i32* %num_edges, align 4, !dbg !2705
  call void @llvm.dbg.value(metadata i32 %3, metadata !2696, metadata !DIExpression()), !dbg !2700
  %4 = load i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i64 0, i32 22), align 8, !dbg !2706
  %5 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8, !dbg !2707
  %call = tail call i8* %4(%union.tree_node* %5, i32 2) #6, !dbg !2708
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i64 0, i64 0), i8* %call, i8* %msg) #6, !dbg !2709
  %new_exit_index = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 3, !dbg !2710
  %6 = load i32, i32* %new_exit_index, align 4, !dbg !2710
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.45, i64 0, i64 0), i32 %2, i32 %3, i32 %6) #6, !dbg !2711
  call void @llvm.dbg.value(metadata i32 0, metadata !2693, metadata !DIExpression()), !dbg !2700
  %7 = sext i32 %2 to i64, !dbg !2712
  br label %for.cond, !dbg !2712

for.cond:                                         ; preds = %for.inc29, %cond.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc29 ], [ 0, %cond.end ], !dbg !2714
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2693, metadata !DIExpression()), !dbg !2700
  %cmp = icmp slt i64 %indvars.iv, %7, !dbg !2715
  br i1 %cmp, label %for.body, label %for.end31, !dbg !2717

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.fixup_vertex_d* undef, metadata !2698, metadata !DIExpression()), !dbg !2700
  %succ_edges = getelementptr inbounds %struct.fixup_vertex_d, %struct.fixup_vertex_d* %1, i64 %indvars.iv, i32 0, !dbg !2718
  %8 = load %struct.VEC_fixup_edge_p_heap*, %struct.VEC_fixup_edge_p_heap** %succ_edges, align 8, !dbg !2718
  %tobool3 = icmp eq %struct.VEC_fixup_edge_p_heap* %8, null, !dbg !2718
  br i1 %tobool3, label %cond.end7, label %cond.true4, !dbg !2718

cond.true4:                                       ; preds = %for.body
  %base = getelementptr inbounds %struct.VEC_fixup_edge_p_heap, %struct.VEC_fixup_edge_p_heap* %8, i64 0, i32 0, !dbg !2718
  br label %cond.end7, !dbg !2718

cond.end7:                                        ; preds = %for.body, %cond.true4
  %cond8 = phi %struct.VEC_fixup_edge_p_base* [ %base, %cond.true4 ], [ null, %for.body ], !dbg !2718
  %call9 = call fastcc i32 @VEC_fixup_edge_p_base_length(%struct.VEC_fixup_edge_p_base* %cond8) #8, !dbg !2718
  %9 = trunc i64 %indvars.iv to i32, !dbg !2720
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.46, i64 0, i64 0), i32 %9, i32 %call9) #6, !dbg !2720
  call void @llvm.dbg.value(metadata i32 0, metadata !2694, metadata !DIExpression()), !dbg !2700
  br label %for.cond11, !dbg !2721

for.cond11:                                       ; preds = %if.end28, %cond.end7
  %j.0 = phi i32 [ 0, %cond.end7 ], [ %inc, %if.end28 ], !dbg !2723
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !2694, metadata !DIExpression()), !dbg !2700
  %10 = load %struct.VEC_fixup_edge_p_heap*, %struct.VEC_fixup_edge_p_heap** %succ_edges, align 8, !dbg !2724
  %tobool13 = icmp eq %struct.VEC_fixup_edge_p_heap* %10, null, !dbg !2724
  br i1 %tobool13, label %cond.end18, label %cond.true14, !dbg !2724

cond.true14:                                      ; preds = %for.cond11
  %base16 = getelementptr inbounds %struct.VEC_fixup_edge_p_heap, %struct.VEC_fixup_edge_p_heap* %10, i64 0, i32 0, !dbg !2724
  br label %cond.end18, !dbg !2724

cond.end18:                                       ; preds = %for.cond11, %cond.true14
  %cond19 = phi %struct.VEC_fixup_edge_p_base* [ %base16, %cond.true14 ], [ null, %for.cond11 ], !dbg !2724
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d** %pfedge, metadata !2699, metadata !DIExpression(DW_OP_deref)), !dbg !2700
  %call20 = call fastcc i32 @VEC_fixup_edge_p_base_iterate(%struct.VEC_fixup_edge_p_base* %cond19, i32 %j.0, %struct.fixup_edge_d** nonnull %pfedge) #8, !dbg !2724
  %tobool21 = icmp eq i32 %call20, 0, !dbg !2726
  br i1 %tobool21, label %for.inc29, label %for.body22, !dbg !2726

for.body22:                                       ; preds = %cond.end18
  %11 = load %struct.fixup_edge_d*, %struct.fixup_edge_d** %pfedge, align 8, !dbg !2727
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %11, metadata !2699, metadata !DIExpression()), !dbg !2700
  %type = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %11, i64 0, i32 2, !dbg !2730
  %12 = load i32, i32* %type, align 8, !dbg !2730
  %tobool23 = icmp eq i32 %12, 0, !dbg !2727
  br i1 %tobool23, label %if.else, label %if.then, !dbg !2731

if.then:                                          ; preds = %for.body22
  %call24 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !2732
  br label %if.end28, !dbg !2732

if.else:                                          ; preds = %for.body22
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %11, metadata !2699, metadata !DIExpression()), !dbg !2700
  %is_rflow_valid = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %11, i64 0, i32 3, !dbg !2733
  %13 = load i8, i8* %is_rflow_valid, align 4, !dbg !2733
  %tobool25 = icmp eq i8 %13, 0, !dbg !2735
  br i1 %tobool25, label %if.end28, label %if.then26, !dbg !2736

if.then26:                                        ; preds = %if.else
  %call27 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !2737
  br label %if.end28, !dbg !2737

if.end28:                                         ; preds = %if.else, %if.then26, %if.then
  %14 = load %struct.fixup_edge_d*, %struct.fixup_edge_d** %pfedge, align 8, !dbg !2738
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %14, metadata !2699, metadata !DIExpression()), !dbg !2700
  call fastcc void @dump_fixup_edge(%struct._IO_FILE* %file, %struct.fixup_graph_d* %fixup_graph, %struct.fixup_edge_d* %14) #8, !dbg !2739
  %inc = add nuw nsw i32 %j.0, 1, !dbg !2740
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2694, metadata !DIExpression()), !dbg !2700
  br label %for.cond11, !dbg !2741, !llvm.loop !2742

for.inc29:                                        ; preds = %cond.end18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2744
  call void @llvm.dbg.value(metadata i32 undef, metadata !2693, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2700
  br label %for.cond, !dbg !2745, !llvm.loop !2746

for.end31:                                        ; preds = %for.cond
  %call32 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !2748
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !2749
  ret void, !dbg !2749
}

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct.fixup_edge_d* @add_edge(%struct.fixup_graph_d* %fixup_graph, i32 %src, i32 %dest, i64 %cost) unnamed_addr #4 !dbg !2750 {
entry:
  call void @llvm.dbg.value(metadata %struct.fixup_graph_d* %fixup_graph, metadata !2754, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i32 %src, metadata !2755, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i32 %dest, metadata !2756, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i64 %cost, metadata !2757, metadata !DIExpression()), !dbg !2760
  %vertex_list = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 4, !dbg !2761
  %0 = load %struct.fixup_vertex_d*, %struct.fixup_vertex_d** %vertex_list, align 8, !dbg !2761
  %idx.ext = sext i32 %src to i64, !dbg !2762
  call void @llvm.dbg.value(metadata %struct.fixup_vertex_d* undef, metadata !2758, metadata !DIExpression()), !dbg !2760
  %edge_list = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 5, !dbg !2763
  %1 = load %struct.fixup_edge_d*, %struct.fixup_edge_d** %edge_list, align 8, !dbg !2763
  %num_edges = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 1, !dbg !2764
  %2 = load i32, i32* %num_edges, align 4, !dbg !2764
  %idx.ext1 = sext i32 %2 to i64, !dbg !2765
  %add.ptr2 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %1, i64 %idx.ext1, !dbg !2765
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %add.ptr2, metadata !2759, metadata !DIExpression()), !dbg !2760
  %src3 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %add.ptr2, i64 0, i32 0, !dbg !2766
  store i32 %src, i32* %src3, align 8, !dbg !2767
  %dest4 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %1, i64 %idx.ext1, i32 1, !dbg !2768
  store i32 %dest, i32* %dest4, align 4, !dbg !2769
  %cost5 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %1, i64 %idx.ext1, i32 8, !dbg !2770
  store i64 %cost, i64* %cost5, align 8, !dbg !2771
  %3 = load i32, i32* %num_edges, align 4, !dbg !2772
  %inc = add nsw i32 %3, 1, !dbg !2772
  store i32 %inc, i32* %num_edges, align 4, !dbg !2772
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2773
  %tobool = icmp eq %struct._IO_FILE* %4, null, !dbg !2773
  br i1 %tobool, label %if.end, label %if.then, !dbg !2775

if.then:                                          ; preds = %entry
  tail call fastcc void @dump_fixup_edge(%struct._IO_FILE* nonnull %4, %struct.fixup_graph_d* %fixup_graph, %struct.fixup_edge_d* %add.ptr2) #8, !dbg !2776
  br label %if.end, !dbg !2776

if.end:                                           ; preds = %entry, %if.then
  %succ_edges = getelementptr inbounds %struct.fixup_vertex_d, %struct.fixup_vertex_d* %0, i64 %idx.ext, i32 0, !dbg !2777
  %call = tail call fastcc %struct.fixup_edge_d** @VEC_fixup_edge_p_heap_safe_push(%struct.VEC_fixup_edge_p_heap** %succ_edges, %struct.fixup_edge_d* %add.ptr2) #8, !dbg !2777
  ret %struct.fixup_edge_d* %add.ptr2, !dbg !2778
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.fixup_edge_d** @VEC_fixup_edge_p_heap_safe_push(%struct.VEC_fixup_edge_p_heap** %vec_, %struct.fixup_edge_d* %obj_) unnamed_addr #0 !dbg !2779 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_fixup_edge_p_heap** %vec_, metadata !2785, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %obj_, metadata !2786, metadata !DIExpression()), !dbg !2787
  %call = tail call fastcc i32 @VEC_fixup_edge_p_heap_reserve(%struct.VEC_fixup_edge_p_heap** %vec_, i32 1) #8, !dbg !2788
  %0 = load %struct.VEC_fixup_edge_p_heap*, %struct.VEC_fixup_edge_p_heap** %vec_, align 8, !dbg !2788
  %tobool = icmp eq %struct.VEC_fixup_edge_p_heap* %0, null, !dbg !2788
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2788

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_fixup_edge_p_heap, %struct.VEC_fixup_edge_p_heap* %0, i64 0, i32 0, !dbg !2788
  br label %cond.end, !dbg !2788

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_fixup_edge_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2788
  %call1 = tail call fastcc %struct.fixup_edge_d** @VEC_fixup_edge_p_base_quick_push(%struct.VEC_fixup_edge_p_base* %cond, %struct.fixup_edge_d* %obj_) #8, !dbg !2788
  ret %struct.fixup_edge_d** %call1, !dbg !2788
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_fixup_edge_p_heap_reserve(%struct.VEC_fixup_edge_p_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !2789 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_fixup_edge_p_heap** %vec_, metadata !2793, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i32 1, metadata !2794, metadata !DIExpression()), !dbg !2796
  %0 = load %struct.VEC_fixup_edge_p_heap*, %struct.VEC_fixup_edge_p_heap** %vec_, align 8, !dbg !2797
  %tobool = icmp eq %struct.VEC_fixup_edge_p_heap* %0, null, !dbg !2797
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2797

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_fixup_edge_p_heap, %struct.VEC_fixup_edge_p_heap* %0, i64 0, i32 0, !dbg !2797
  br label %cond.end, !dbg !2797

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_fixup_edge_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2797
  %call = tail call fastcc i32 @VEC_fixup_edge_p_base_space(%struct.VEC_fixup_edge_p_base* %cond, i32 1) #8, !dbg !2797
  %tobool1 = icmp eq i32 %call, 0, !dbg !2797
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !2797
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !2795, metadata !DIExpression()), !dbg !2796
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2797

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_fixup_edge_p_heap** %vec_ to i8**, !dbg !2798
  %2 = load i8*, i8** %1, align 8, !dbg !2798
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %2, i32 1) #6, !dbg !2798
  store i8* %call3, i8** %1, align 8, !dbg !2798
  br label %if.end, !dbg !2798

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !2797
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.fixup_edge_d** @VEC_fixup_edge_p_base_quick_push(%struct.VEC_fixup_edge_p_base* %vec_, %struct.fixup_edge_d* %obj_) unnamed_addr #0 !dbg !2800 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_fixup_edge_p_base* %vec_, metadata !2805, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %obj_, metadata !2806, metadata !DIExpression()), !dbg !2808
  %num1 = getelementptr inbounds %struct.VEC_fixup_edge_p_base, %struct.VEC_fixup_edge_p_base* %vec_, i64 0, i32 0, !dbg !2809
  %0 = load i32, i32* %num1, align 8, !dbg !2809
  %inc = add i32 %0, 1, !dbg !2809
  store i32 %inc, i32* %num1, align 8, !dbg !2809
  %idxprom = zext i32 %0 to i64, !dbg !2809
  %arrayidx = getelementptr inbounds %struct.VEC_fixup_edge_p_base, %struct.VEC_fixup_edge_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2809
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d** %arrayidx, metadata !2807, metadata !DIExpression()), !dbg !2808
  store %struct.fixup_edge_d* %obj_, %struct.fixup_edge_d** %arrayidx, align 8, !dbg !2809
  ret %struct.fixup_edge_d** %arrayidx, !dbg !2809
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_fixup_edge_p_base_space(%struct.VEC_fixup_edge_p_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !2810 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_fixup_edge_p_base* %vec_, metadata !2814, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i32 1, metadata !2815, metadata !DIExpression()), !dbg !2816
  %tobool = icmp eq %struct.VEC_fixup_edge_p_base* %vec_, null, !dbg !2817
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2817

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_fixup_edge_p_base, %struct.VEC_fixup_edge_p_base* %vec_, i64 0, i32 1, !dbg !2817
  %0 = load i32, i32* %alloc, align 4, !dbg !2817
  %num = getelementptr inbounds %struct.VEC_fixup_edge_p_base, %struct.VEC_fixup_edge_p_base* %vec_, i64 0, i32 0, !dbg !2817
  %1 = load i32, i32* %num, align 8, !dbg !2817
  %cmp1 = icmp ne i32 %0, %1, !dbg !2817
  %phitmp = zext i1 %cmp1 to i32, !dbg !2817
  br label %cond.end, !dbg !2817

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2817

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !2817
}

declare dso_local i8* @vec_heap_p_reserve(i8*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_fixup_edge_p_base_iterate(%struct.VEC_fixup_edge_p_base* %vec_, i32 %ix_, %struct.fixup_edge_d** %ptr) unnamed_addr #0 !dbg !2818 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_fixup_edge_p_base* %vec_, metadata !2824, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2825, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d** %ptr, metadata !2826, metadata !DIExpression()), !dbg !2827
  %tobool = icmp eq %struct.VEC_fixup_edge_p_base* %vec_, null, !dbg !2828
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !2828

land.lhs.true:                                    ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_fixup_edge_p_base, %struct.VEC_fixup_edge_p_base* %vec_, i64 0, i32 0, !dbg !2828
  %0 = load i32, i32* %num, align 8, !dbg !2828
  %cmp = icmp ugt i32 %0, %ix_, !dbg !2828
  br i1 %cmp, label %if.then, label %if.else, !dbg !2830

if.then:                                          ; preds = %land.lhs.true
  %idxprom = zext i32 %ix_ to i64, !dbg !2831
  %arrayidx = getelementptr inbounds %struct.VEC_fixup_edge_p_base, %struct.VEC_fixup_edge_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2831
  %1 = load %struct.fixup_edge_d*, %struct.fixup_edge_d** %arrayidx, align 8, !dbg !2831
  br label %return, !dbg !2831

if.else:                                          ; preds = %entry, %land.lhs.true
  br label %return, !dbg !2833

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.fixup_edge_d* [ null, %if.else ], [ %1, %if.then ], !dbg !2835
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %if.then ], !dbg !2835
  store %struct.fixup_edge_d* %storemerge, %struct.fixup_edge_d** %ptr, align 8, !dbg !2835
  ret i32 %retval.0, !dbg !2830
}

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @print_edge(%struct._IO_FILE* %file, %struct.fixup_graph_d* %fixup_graph, i32 %s, i32 %d) unnamed_addr #4 !dbg !2836 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2840, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata %struct.fixup_graph_d* %fixup_graph, metadata !2841, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i32 %s, metadata !2842, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i32 %d, metadata !2843, metadata !DIExpression()), !dbg !2844
  tail call fastcc void @print_basic_block(%struct._IO_FILE* %file, %struct.fixup_graph_d* %fixup_graph, i32 %s) #8, !dbg !2845
  %call = tail call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !2846
  tail call fastcc void @print_basic_block(%struct._IO_FILE* %file, %struct.fixup_graph_d* %fixup_graph, i32 %d) #8, !dbg !2847
  ret void, !dbg !2848
}

; Function Attrs: nounwind uwtable
define internal fastcc void @print_basic_block(%struct._IO_FILE* %file, %struct.fixup_graph_d* %fixup_graph, i32 %n) unnamed_addr #4 !dbg !2849 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2853, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata %struct.fixup_graph_d* %fixup_graph, metadata !2854, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i32 %n, metadata !2855, metadata !DIExpression()), !dbg !2856
  switch i32 %n, label %if.else12 [
    i32 0, label %if.then
    i32 1, label %if.then2
    i32 2, label %if.then6
    i32 3, label %if.then10
  ], !dbg !2857

if.then:                                          ; preds = %entry
  %call = tail call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !2858
  br label %if.end31, !dbg !2858

if.then2:                                         ; preds = %entry
  %call3 = tail call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !2860
  br label %if.end31, !dbg !2860

if.then6:                                         ; preds = %entry
  %call7 = tail call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !2862
  br label %if.end31, !dbg !2862

if.then10:                                        ; preds = %entry
  %call11 = tail call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !2864
  br label %if.end31, !dbg !2864

if.else12:                                        ; preds = %entry
  %new_exit_index = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 3, !dbg !2866
  %0 = load i32, i32* %new_exit_index, align 4, !dbg !2866
  %cmp13 = icmp eq i32 %0, %n, !dbg !2868
  br i1 %cmp13, label %if.then14, label %if.else16, !dbg !2869

if.then14:                                        ; preds = %if.else12
  %call15 = tail call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !2870
  br label %if.end31, !dbg !2870

if.else16:                                        ; preds = %if.else12
  %new_entry_index = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 2, !dbg !2871
  %1 = load i32, i32* %new_entry_index, align 8, !dbg !2871
  %cmp17 = icmp eq i32 %1, %n, !dbg !2873
  br i1 %cmp17, label %if.then18, label %if.else20, !dbg !2874

if.then18:                                        ; preds = %if.else16
  %call19 = tail call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !2875
  br label %if.end31, !dbg !2875

if.else20:                                        ; preds = %if.else16
  %div = sdiv i32 %n, 2, !dbg !2876
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i32 %div) #6, !dbg !2878
  %rem1 = and i32 %n, 1, !dbg !2879
  %tobool = icmp eq i32 %rem1, 0, !dbg !2879
  br i1 %tobool, label %if.else24, label %if.then22, !dbg !2881

if.then22:                                        ; preds = %if.else20
  %call23 = tail call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !2882
  br label %if.end31, !dbg !2882

if.else24:                                        ; preds = %if.else20
  %call25 = tail call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), %struct._IO_FILE* %file) #6, !dbg !2883
  br label %if.end31

if.end31:                                         ; preds = %if.then2, %if.then10, %if.then18, %if.else24, %if.then22, %if.then14, %if.then6, %if.then
  ret void, !dbg !2884
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_fixup_edge_p_base_length(%struct.VEC_fixup_edge_p_base* %vec_) unnamed_addr #0 !dbg !2885 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_fixup_edge_p_base* %vec_, metadata !2889, metadata !DIExpression()), !dbg !2890
  %tobool = icmp eq %struct.VEC_fixup_edge_p_base* %vec_, null, !dbg !2891
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2891

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_fixup_edge_p_base, %struct.VEC_fixup_edge_p_base* %vec_, i64 0, i32 0, !dbg !2891
  %0 = load i32, i32* %num, align 8, !dbg !2891
  br label %cond.end, !dbg !2891

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2891
  ret i32 %cond, !dbg !2891
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @find_max_flow(%struct.fixup_graph_d* %fixup_graph, i32 %source, i32 %sink) unnamed_addr #4 !dbg !2892 {
entry:
  %augmenting_path = alloca %struct.augmenting_path_d, align 8
  call void @llvm.dbg.value(metadata %struct.fixup_graph_d* %fixup_graph, metadata !2896, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i32 %source, metadata !2897, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i32 %sink, metadata !2898, metadata !DIExpression()), !dbg !2923
  %0 = bitcast %struct.augmenting_path_d* %augmenting_path to i8*, !dbg !2924
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #7, !dbg !2924
  call void @llvm.dbg.value(metadata i64 0, metadata !2915, metadata !DIExpression()), !dbg !2923
  %tobool = icmp eq %struct.fixup_graph_d* %fixup_graph, null, !dbg !2925
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2925

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 1040, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2925
  br label %cond.end, !dbg !2925

cond.end:                                         ; preds = %entry, %cond.true
  %num_edges = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 1, !dbg !2926
  %1 = load i32, i32* %num_edges, align 4, !dbg !2926
  call void @llvm.dbg.value(metadata i32 %1, metadata !2899, metadata !DIExpression()), !dbg !2923
  %edge_list = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 5, !dbg !2927
  %2 = load %struct.fixup_edge_d*, %struct.fixup_edge_d** %edge_list, align 8, !dbg !2927
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %2, metadata !2918, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i32 0, metadata !2916, metadata !DIExpression()), !dbg !2923
  %3 = sext i32 %1 to i64, !dbg !2928
  br label %for.cond, !dbg !2928

for.cond:                                         ; preds = %for.body, %cond.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %cond.end ], !dbg !2930
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2916, metadata !DIExpression()), !dbg !2923
  %cmp = icmp slt i64 %indvars.iv, %3, !dbg !2931
  br i1 %cmp, label %for.body, label %for.end, !dbg !2933

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* undef, metadata !2919, metadata !DIExpression()), !dbg !2923
  %flow = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %2, i64 %indvars.iv, i32 5, !dbg !2934
  store i64 0, i64* %flow, align 8, !dbg !2936
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2937
  call void @llvm.dbg.value(metadata i32 undef, metadata !2916, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2923
  br label %for.cond, !dbg !2938, !llvm.loop !2939

for.end:                                          ; preds = %for.cond
  tail call fastcc void @compute_residual_flow(%struct.fixup_graph_d* %fixup_graph) #8, !dbg !2941
  %num_vertices = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 0, !dbg !2942
  %4 = load i32, i32* %num_vertices, align 8, !dbg !2942
  call void @llvm.dbg.value(metadata %struct.augmenting_path_d* %augmenting_path, metadata !2900, metadata !DIExpression(DW_OP_deref)), !dbg !2923
  call fastcc void @init_augmenting_path(%struct.augmenting_path_d* nonnull %augmenting_path, i32 %4) #8, !dbg !2943
  %bb_pred1 = getelementptr inbounds %struct.augmenting_path_d, %struct.augmenting_path_d* %augmenting_path, i64 0, i32 1, !dbg !2944
  %5 = load i32*, i32** %bb_pred1, align 8, !dbg !2944
  call void @llvm.dbg.value(metadata i32* %5, metadata !2914, metadata !DIExpression()), !dbg !2923
  br label %while.cond, !dbg !2945

while.cond:                                       ; preds = %if.end61, %for.end
  %max_flow.0 = phi i64 [ 0, %for.end ], [ %add, %if.end61 ], !dbg !2923
  call void @llvm.dbg.value(metadata i64 %max_flow.0, metadata !2915, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata %struct.augmenting_path_d* %augmenting_path, metadata !2900, metadata !DIExpression(DW_OP_deref)), !dbg !2923
  %call = call fastcc i32 @find_augmenting_path(%struct.fixup_graph_d* %fixup_graph, %struct.augmenting_path_d* nonnull %augmenting_path, i32 %source, i32 %sink) #8, !dbg !2946
  %tobool2 = icmp eq i32 %call, 0, !dbg !2945
  br i1 %tobool2, label %while.end, label %for.cond3.preheader, !dbg !2945

for.cond3.preheader:                              ; preds = %while.cond
  br label %for.cond3, !dbg !2947

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc13
  %u.0 = phi i32 [ %8, %for.inc13 ], [ %sink, %for.cond3.preheader ], !dbg !2949
  %increment.0 = phi i64 [ %cond12, %for.inc13 ], [ 9223372036854775807, %for.cond3.preheader ], !dbg !2950
  call void @llvm.dbg.value(metadata i64 %increment.0, metadata !2921, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i32 %u.0, metadata !2917, metadata !DIExpression()), !dbg !2923
  %cmp4 = icmp eq i32 %u.0, %source, !dbg !2951
  br i1 %cmp4, label %for.end16, label %for.body5, !dbg !2947

for.body5:                                        ; preds = %for.cond3
  %idxprom = sext i32 %u.0 to i64, !dbg !2953
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom, !dbg !2953
  %6 = load i32, i32* %arrayidx, align 4, !dbg !2953
  %call6 = call fastcc %struct.fixup_edge_d* @find_fixup_edge(%struct.fixup_graph_d* %fixup_graph, i32 %6, i32 %u.0) #8, !dbg !2955
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %call6, metadata !2919, metadata !DIExpression()), !dbg !2923
  %rflow = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call6, i64 0, i32 6, !dbg !2956
  %7 = load i64, i64* %rflow, align 8, !dbg !2956
  %cmp7 = icmp slt i64 %increment.0, %7, !dbg !2956
  br i1 %cmp7, label %for.inc13, label %cond.false9, !dbg !2956

cond.false9:                                      ; preds = %for.body5
  br label %for.inc13, !dbg !2956

for.inc13:                                        ; preds = %cond.false9, %for.body5
  %cond12 = phi i64 [ %7, %cond.false9 ], [ %increment.0, %for.body5 ], !dbg !2956
  call void @llvm.dbg.value(metadata i64 %cond12, metadata !2921, metadata !DIExpression()), !dbg !2950
  %8 = load i32, i32* %arrayidx, align 4, !dbg !2957
  call void @llvm.dbg.value(metadata i32 %8, metadata !2917, metadata !DIExpression()), !dbg !2923
  br label %for.cond3, !dbg !2958, !llvm.loop !2959

for.end16:                                        ; preds = %for.cond3
  %increment.0.lcssa = phi i64 [ %increment.0, %for.cond3 ], !dbg !2950
  call void @llvm.dbg.value(metadata i64 %increment.0.lcssa, metadata !2921, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i64 %increment.0.lcssa, metadata !2921, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i64 %increment.0.lcssa, metadata !2921, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i64 %add, metadata !2915, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i32 %sink, metadata !2917, metadata !DIExpression()), !dbg !2923
  br label %for.cond17, !dbg !2961

for.cond17:                                       ; preds = %for.inc44, %for.end16
  %u.1 = phi i32 [ %sink, %for.end16 ], [ %19, %for.inc44 ], !dbg !2963
  call void @llvm.dbg.value(metadata i32 %u.1, metadata !2917, metadata !DIExpression()), !dbg !2923
  %cmp18 = icmp eq i32 %u.1, %source, !dbg !2964
  br i1 %cmp18, label %for.end47, label %for.body19, !dbg !2966

for.body19:                                       ; preds = %for.cond17
  %idxprom20 = sext i32 %u.1 to i64, !dbg !2967
  %arrayidx21 = getelementptr inbounds i32, i32* %5, i64 %idxprom20, !dbg !2967
  %9 = load i32, i32* %arrayidx21, align 4, !dbg !2967
  %call22 = call fastcc %struct.fixup_edge_d* @find_fixup_edge(%struct.fixup_graph_d* %fixup_graph, i32 %9, i32 %u.1) #8, !dbg !2969
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %call22, metadata !2919, metadata !DIExpression()), !dbg !2923
  %10 = load i32, i32* %arrayidx21, align 4, !dbg !2970
  %call25 = call fastcc %struct.fixup_edge_d* @find_fixup_edge(%struct.fixup_graph_d* %fixup_graph, i32 %u.1, i32 %10) #8, !dbg !2971
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %call25, metadata !2920, metadata !DIExpression()), !dbg !2923
  %type = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call22, i64 0, i32 2, !dbg !2972
  %11 = load i32, i32* %type, align 8, !dbg !2972
  %tobool26 = icmp eq i32 %11, 0, !dbg !2974
  br i1 %tobool26, label %if.else, label %if.then, !dbg !2975

if.then:                                          ; preds = %for.body19
  %flow27 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call22, i64 0, i32 5, !dbg !2976
  %12 = load i64, i64* %flow27, align 8, !dbg !2978
  %add28 = add nsw i64 %12, %increment.0.lcssa, !dbg !2978
  store i64 %add28, i64* %flow27, align 8, !dbg !2978
  %rflow29 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call22, i64 0, i32 6, !dbg !2979
  %13 = load i64, i64* %rflow29, align 8, !dbg !2980
  %sub = sub nsw i64 %13, %increment.0.lcssa, !dbg !2980
  store i64 %sub, i64* %rflow29, align 8, !dbg !2980
  %rflow30 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call25, i64 0, i32 6, !dbg !2981
  %14 = load i64, i64* %rflow30, align 8, !dbg !2982
  %add31 = add nsw i64 %14, %increment.0.lcssa, !dbg !2982
  store i64 %add31, i64* %rflow30, align 8, !dbg !2982
  br label %for.inc44, !dbg !2983

if.else:                                          ; preds = %for.body19
  %type32 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call25, i64 0, i32 2, !dbg !2984
  %15 = load i32, i32* %type32, align 8, !dbg !2984
  %tobool33 = icmp eq i32 %15, 0, !dbg !2984
  br i1 %tobool33, label %cond.true34, label %cond.end36, !dbg !2984

cond.true34:                                      ; preds = %if.else
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 1083, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2984
  br label %cond.end36, !dbg !2984

cond.end36:                                       ; preds = %if.else, %cond.true34
  %rflow38 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call25, i64 0, i32 6, !dbg !2986
  %16 = load i64, i64* %rflow38, align 8, !dbg !2987
  %add39 = add nsw i64 %16, %increment.0.lcssa, !dbg !2987
  store i64 %add39, i64* %rflow38, align 8, !dbg !2987
  %flow40 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call25, i64 0, i32 5, !dbg !2988
  %17 = load i64, i64* %flow40, align 8, !dbg !2989
  %sub41 = sub nsw i64 %17, %increment.0.lcssa, !dbg !2989
  store i64 %sub41, i64* %flow40, align 8, !dbg !2989
  %rflow42 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call22, i64 0, i32 6, !dbg !2990
  %18 = load i64, i64* %rflow42, align 8, !dbg !2991
  %sub43 = sub nsw i64 %18, %increment.0.lcssa, !dbg !2991
  store i64 %sub43, i64* %rflow42, align 8, !dbg !2991
  br label %for.inc44

for.inc44:                                        ; preds = %if.then, %cond.end36
  %19 = load i32, i32* %arrayidx21, align 4, !dbg !2992
  call void @llvm.dbg.value(metadata i32 %19, metadata !2917, metadata !DIExpression()), !dbg !2923
  br label %for.cond17, !dbg !2993, !llvm.loop !2994

for.end47:                                        ; preds = %for.cond17
  %add = add nsw i64 %max_flow.0, %increment.0.lcssa, !dbg !2996
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2997
  %tobool48 = icmp eq %struct._IO_FILE* %20, null, !dbg !2997
  br i1 %tobool48, label %if.end61, label %if.then49, !dbg !2999

if.then49:                                        ; preds = %for.end47
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.50, i64 0, i64 0)) #6, !dbg !3000
  call void @llvm.dbg.value(metadata i32 %sink, metadata !2917, metadata !DIExpression()), !dbg !2923
  br label %for.cond51, !dbg !3002

for.cond51:                                       ; preds = %for.body53, %if.then49
  %u.2 = phi i32 [ %sink, %if.then49 ], [ %23, %for.body53 ], !dbg !3004
  call void @llvm.dbg.value(metadata i32 %u.2, metadata !2917, metadata !DIExpression()), !dbg !2923
  %cmp52 = icmp eq i32 %u.2, %source, !dbg !3005
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3007
  br i1 %cmp52, label %for.end58, label %for.body53, !dbg !3008

for.body53:                                       ; preds = %for.cond51
  call fastcc void @print_basic_block(%struct._IO_FILE* %21, %struct.fixup_graph_d* %fixup_graph, i32 %u.2) #8, !dbg !3009
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3011
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0)) #6, !dbg !3012
  %idxprom56 = sext i32 %u.2 to i64, !dbg !3013
  %arrayidx57 = getelementptr inbounds i32, i32* %5, i64 %idxprom56, !dbg !3013
  %23 = load i32, i32* %arrayidx57, align 4, !dbg !3013
  call void @llvm.dbg.value(metadata i32 %23, metadata !2917, metadata !DIExpression()), !dbg !2923
  br label %for.cond51, !dbg !3014, !llvm.loop !3015

for.end58:                                        ; preds = %for.cond51
  %.lcssa = phi %struct._IO_FILE* [ %21, %for.cond51 ], !dbg !3007
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %.lcssa, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.52, i64 0, i64 0), i64 %increment.0.lcssa) #6, !dbg !3017
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3018
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i64 0, i64 0), i64 %add) #6, !dbg !3019
  br label %if.end61, !dbg !3020

if.end61:                                         ; preds = %for.end47, %for.end58
  br label %while.cond, !dbg !2945, !llvm.loop !3021

while.end:                                        ; preds = %while.cond
  %max_flow.0.lcssa = phi i64 [ %max_flow.0, %while.cond ], !dbg !2923
  call void @llvm.dbg.value(metadata i64 %max_flow.0.lcssa, metadata !2915, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i64 %max_flow.0.lcssa, metadata !2915, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata i64 %max_flow.0.lcssa, metadata !2915, metadata !DIExpression()), !dbg !2923
  call void @llvm.dbg.value(metadata %struct.augmenting_path_d* %augmenting_path, metadata !2900, metadata !DIExpression(DW_OP_deref)), !dbg !2923
  call fastcc void @free_augmenting_path(%struct.augmenting_path_d* nonnull %augmenting_path) #8, !dbg !3023
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3024
  %tobool62 = icmp eq %struct._IO_FILE* %25, null, !dbg !3024
  br i1 %tobool62, label %if.end64, label %if.then63, !dbg !3026

if.then63:                                        ; preds = %while.end
  call fastcc void @dump_fixup_graph(%struct._IO_FILE* nonnull %25, %struct.fixup_graph_d* %fixup_graph, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i64 0, i64 0)) #8, !dbg !3027
  br label %if.end64, !dbg !3027

if.end64:                                         ; preds = %while.end, %if.then63
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #7, !dbg !3028
  ret i64 %max_flow.0.lcssa, !dbg !3029
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @cancel_negative_cycle(%struct.fixup_graph_d* %fixup_graph, i32* %pi, i64* %d, i32* %cycle) unnamed_addr #4 !dbg !3030 {
entry:
  call void @llvm.dbg.value(metadata %struct.fixup_graph_d* %fixup_graph, metadata !3034, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32* %pi, metadata !3035, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i64* %d, metadata !3036, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32* %cycle, metadata !3037, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i8 0, metadata !3046, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32 0, metadata !3047, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32 0, metadata !3048, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i64 0, metadata !3049, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i64 0, metadata !3050, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i8 0, metadata !3052, metadata !DIExpression()), !dbg !3053
  %tobool = icmp eq %struct.fixup_graph_d* %fixup_graph, null, !dbg !3054
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3054

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 800, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3054
  br label %cond.end, !dbg !3054

cond.end:                                         ; preds = %entry, %cond.true
  %num_vertices = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 0, !dbg !3055
  %0 = load i32, i32* %num_vertices, align 8, !dbg !3055
  call void @llvm.dbg.value(metadata i32 %0, metadata !3041, metadata !DIExpression()), !dbg !3053
  %num_edges = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 1, !dbg !3056
  %1 = load i32, i32* %num_edges, align 4, !dbg !3056
  call void @llvm.dbg.value(metadata i32 %1, metadata !3042, metadata !DIExpression()), !dbg !3053
  %edge_list = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 5, !dbg !3057
  %2 = load %struct.fixup_edge_d*, %struct.fixup_edge_d** %edge_list, align 8, !dbg !3057
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %2, metadata !3043, metadata !DIExpression()), !dbg !3053
  %new_entry_index1 = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 2, !dbg !3058
  %3 = load i32, i32* %new_entry_index1, align 8, !dbg !3058
  call void @llvm.dbg.value(metadata i32 %3, metadata !3051, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32 1, metadata !3038, metadata !DIExpression()), !dbg !3053
  %4 = sext i32 %0 to i64, !dbg !3059
  br label %for.cond, !dbg !3059

for.cond:                                         ; preds = %for.body, %cond.end
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.body ], [ 1, %cond.end ], !dbg !3061
  call void @llvm.dbg.value(metadata i64 %indvars.iv11, metadata !3038, metadata !DIExpression()), !dbg !3053
  %cmp = icmp slt i64 %indvars.iv11, %4, !dbg !3062
  br i1 %cmp, label %for.body, label %for.end, !dbg !3064

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i64, i64* %d, i64 %indvars.iv11, !dbg !3065
  store i64 9223372036854775807, i64* %arrayidx, align 8, !dbg !3067
  %arrayidx3 = getelementptr inbounds i32, i32* %pi, i64 %indvars.iv11, !dbg !3068
  store i32 -1, i32* %arrayidx3, align 4, !dbg !3069
  %arrayidx5 = getelementptr inbounds i32, i32* %cycle, i64 %indvars.iv11, !dbg !3070
  store i32 -1, i32* %arrayidx5, align 4, !dbg !3071
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1, !dbg !3072
  call void @llvm.dbg.value(metadata i32 undef, metadata !3038, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3053
  br label %for.cond, !dbg !3073, !llvm.loop !3074

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %d, align 8, !dbg !3076
  call void @llvm.dbg.value(metadata i32 1, metadata !3040, metadata !DIExpression()), !dbg !3053
  %5 = sext i32 %1 to i64, !dbg !3077
  br label %for.cond7, !dbg !3077

for.cond7:                                        ; preds = %for.inc50, %for.end
  %pfedge.0 = phi %struct.fixup_edge_d* [ undef, %for.end ], [ %pfedge.1.lcssa, %for.inc50 ]
  %k.0 = phi i32 [ 1, %for.end ], [ %inc51, %for.inc50 ], !dbg !3079
  %propagated.0 = phi i8 [ 0, %for.end ], [ %propagated.1.lcssa, %for.inc50 ], !dbg !3053
  call void @llvm.dbg.value(metadata i8 %propagated.0, metadata !3052, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32 %k.0, metadata !3040, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %pfedge.0, metadata !3044, metadata !DIExpression()), !dbg !3053
  %cmp8 = icmp slt i32 %k.0, %0, !dbg !3080
  br i1 %cmp8, label %for.cond10.preheader, label %for.end52, !dbg !3082

for.cond10.preheader:                             ; preds = %for.cond7
  br label %for.cond10, !dbg !3083

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc44
  %indvars.iv9 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next10, %for.inc44 ]
  %pfedge.1 = phi %struct.fixup_edge_d* [ %pfedge.0, %for.cond10.preheader ], [ %add.ptr, %for.inc44 ]
  %propagated.1 = phi i8 [ 0, %for.cond10.preheader ], [ %propagated.3, %for.inc44 ], !dbg !3086
  call void @llvm.dbg.value(metadata i8 %propagated.1, metadata !3052, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i64 %indvars.iv9, metadata !3038, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %pfedge.1, metadata !3044, metadata !DIExpression()), !dbg !3053
  %cmp11 = icmp slt i64 %indvars.iv9, %5, !dbg !3087
  br i1 %cmp11, label %for.body12, label %for.end46, !dbg !3083

for.body12:                                       ; preds = %for.cond10
  %add.ptr = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %2, i64 %indvars.iv9, !dbg !3089
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %add.ptr, metadata !3044, metadata !DIExpression()), !dbg !3053
  %src = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %add.ptr, i64 0, i32 0, !dbg !3091
  %6 = load i32, i32* %src, align 8, !dbg !3091
  %cmp13 = icmp eq i32 %6, %3, !dbg !3093
  br i1 %cmp13, label %for.inc44, label %if.end, !dbg !3094

if.end:                                           ; preds = %for.body12
  %is_rflow_valid = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %2, i64 %indvars.iv9, i32 3, !dbg !3095
  %7 = load i8, i8* %is_rflow_valid, align 4, !dbg !3095
  %tobool14 = icmp eq i8 %7, 0, !dbg !3097
  br i1 %tobool14, label %for.inc44, label %land.lhs.true, !dbg !3098

land.lhs.true:                                    ; preds = %if.end
  %rflow = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %2, i64 %indvars.iv9, i32 6, !dbg !3099
  %8 = load i64, i64* %rflow, align 8, !dbg !3099
  %tobool15 = icmp eq i64 %8, 0, !dbg !3100
  br i1 %tobool15, label %for.inc44, label %land.lhs.true16, !dbg !3101

land.lhs.true16:                                  ; preds = %land.lhs.true
  %idxprom18 = sext i32 %6 to i64, !dbg !3102
  %arrayidx19 = getelementptr inbounds i64, i64* %d, i64 %idxprom18, !dbg !3102
  %9 = load i64, i64* %arrayidx19, align 8, !dbg !3102
  %cmp20 = icmp eq i64 %9, 9223372036854775807, !dbg !3103
  br i1 %cmp20, label %for.inc44, label %land.lhs.true22, !dbg !3104

land.lhs.true22:                                  ; preds = %land.lhs.true16
  %dest = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %2, i64 %indvars.iv9, i32 1, !dbg !3105
  %10 = load i32, i32* %dest, align 4, !dbg !3105
  %idxprom23 = sext i32 %10 to i64, !dbg !3106
  %arrayidx24 = getelementptr inbounds i64, i64* %d, i64 %idxprom23, !dbg !3106
  %11 = load i64, i64* %arrayidx24, align 8, !dbg !3106
  %cost = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %2, i64 %indvars.iv9, i32 8, !dbg !3107
  %12 = load i64, i64* %cost, align 8, !dbg !3107
  %add = add nsw i64 %9, %12, !dbg !3108
  %cmp28 = icmp sgt i64 %11, %add, !dbg !3109
  br i1 %cmp28, label %if.then30, label %for.inc44, !dbg !3110

if.then30:                                        ; preds = %land.lhs.true22
  store i64 %add, i64* %arrayidx24, align 8, !dbg !3111
  %13 = load i32, i32* %src, align 8, !dbg !3113
  %14 = load i32, i32* %dest, align 4, !dbg !3114
  %idxprom41 = sext i32 %14 to i64, !dbg !3115
  %arrayidx42 = getelementptr inbounds i32, i32* %pi, i64 %idxprom41, !dbg !3115
  store i32 %13, i32* %arrayidx42, align 4, !dbg !3116
  call void @llvm.dbg.value(metadata i8 1, metadata !3052, metadata !DIExpression()), !dbg !3053
  br label %for.inc44, !dbg !3117

for.inc44:                                        ; preds = %land.lhs.true16, %land.lhs.true, %if.end, %land.lhs.true22, %if.then30, %for.body12
  %propagated.3 = phi i8 [ %propagated.1, %for.body12 ], [ 1, %if.then30 ], [ %propagated.1, %land.lhs.true22 ], [ %propagated.1, %land.lhs.true16 ], [ %propagated.1, %land.lhs.true ], [ %propagated.1, %if.end ], !dbg !3118
  call void @llvm.dbg.value(metadata i8 %propagated.3, metadata !3052, metadata !DIExpression()), !dbg !3053
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1, !dbg !3119
  call void @llvm.dbg.value(metadata i32 undef, metadata !3038, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3053
  br label %for.cond10, !dbg !3120, !llvm.loop !3121

for.end46:                                        ; preds = %for.cond10
  %pfedge.1.lcssa = phi %struct.fixup_edge_d* [ %pfedge.1, %for.cond10 ]
  %propagated.1.lcssa = phi i8 [ %propagated.1, %for.cond10 ], !dbg !3086
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %pfedge.1.lcssa, metadata !3044, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i8 %propagated.1.lcssa, metadata !3052, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %pfedge.1.lcssa, metadata !3044, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i8 %propagated.1.lcssa, metadata !3052, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %pfedge.1.lcssa, metadata !3044, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i8 %propagated.1.lcssa, metadata !3052, metadata !DIExpression()), !dbg !3053
  %tobool47 = icmp eq i8 %propagated.1.lcssa, 0, !dbg !3123
  br i1 %tobool47, label %for.end52, label %for.inc50, !dbg !3125

for.inc50:                                        ; preds = %for.end46
  %inc51 = add nuw nsw i32 %k.0, 1, !dbg !3126
  call void @llvm.dbg.value(metadata i32 %inc51, metadata !3040, metadata !DIExpression()), !dbg !3053
  br label %for.cond7, !dbg !3127, !llvm.loop !3128

for.end52:                                        ; preds = %for.end46, %for.cond7
  %pfedge.2 = phi %struct.fixup_edge_d* [ %pfedge.0, %for.cond7 ], [ %pfedge.1.lcssa, %for.end46 ]
  %propagated.4 = phi i8 [ %propagated.0, %for.cond7 ], [ 0, %for.end46 ], !dbg !3053
  call void @llvm.dbg.value(metadata i8 %propagated.4, metadata !3052, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %pfedge.2, metadata !3044, metadata !DIExpression()), !dbg !3053
  %tobool53 = icmp eq i8 %propagated.4, 0, !dbg !3130
  br i1 %tobool53, label %cleanup, label %for.cond56.preheader, !dbg !3132

for.cond56.preheader:                             ; preds = %for.end52
  %15 = sext i32 %1 to i64, !dbg !3133
  br label %for.cond56, !dbg !3133

for.cond56:                                       ; preds = %for.cond56.preheader, %for.inc92
  %indvars.iv7 = phi i64 [ 0, %for.cond56.preheader ], [ %indvars.iv.next8, %for.inc92 ]
  %pfedge.3 = phi %struct.fixup_edge_d* [ %pfedge.2, %for.cond56.preheader ], [ %add.ptr61, %for.inc92 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv7, metadata !3038, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %pfedge.3, metadata !3044, metadata !DIExpression()), !dbg !3053
  %cmp57 = icmp slt i64 %indvars.iv7, %15, !dbg !3135
  br i1 %cmp57, label %for.body59, label %for.end94, !dbg !3133

for.body59:                                       ; preds = %for.cond56
  %add.ptr61 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %2, i64 %indvars.iv7, !dbg !3137
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %add.ptr61, metadata !3044, metadata !DIExpression()), !dbg !3053
  %src62 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %add.ptr61, i64 0, i32 0, !dbg !3139
  %16 = load i32, i32* %src62, align 8, !dbg !3139
  %cmp63 = icmp eq i32 %16, %3, !dbg !3141
  br i1 %cmp63, label %for.inc92, label %if.end66, !dbg !3142

if.end66:                                         ; preds = %for.body59
  %is_rflow_valid67 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %2, i64 %indvars.iv7, i32 3, !dbg !3143
  %17 = load i8, i8* %is_rflow_valid67, align 4, !dbg !3143
  %tobool69 = icmp eq i8 %17, 0, !dbg !3145
  br i1 %tobool69, label %for.inc92, label %land.lhs.true70, !dbg !3146

land.lhs.true70:                                  ; preds = %if.end66
  %rflow71 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %2, i64 %indvars.iv7, i32 6, !dbg !3147
  %18 = load i64, i64* %rflow71, align 8, !dbg !3147
  %tobool72 = icmp eq i64 %18, 0, !dbg !3148
  br i1 %tobool72, label %for.inc92, label %land.lhs.true73, !dbg !3149

land.lhs.true73:                                  ; preds = %land.lhs.true70
  %idxprom75 = sext i32 %16 to i64, !dbg !3150
  %arrayidx76 = getelementptr inbounds i64, i64* %d, i64 %idxprom75, !dbg !3150
  %19 = load i64, i64* %arrayidx76, align 8, !dbg !3150
  %cmp77 = icmp eq i64 %19, 9223372036854775807, !dbg !3151
  br i1 %cmp77, label %for.inc92, label %land.lhs.true79, !dbg !3152

land.lhs.true79:                                  ; preds = %land.lhs.true73
  %dest80 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %2, i64 %indvars.iv7, i32 1, !dbg !3153
  %20 = load i32, i32* %dest80, align 4, !dbg !3153
  %idxprom81 = sext i32 %20 to i64, !dbg !3154
  %arrayidx82 = getelementptr inbounds i64, i64* %d, i64 %idxprom81, !dbg !3154
  %21 = load i64, i64* %arrayidx82, align 8, !dbg !3154
  %cost86 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %2, i64 %indvars.iv7, i32 8, !dbg !3155
  %22 = load i64, i64* %cost86, align 8, !dbg !3155
  %add87 = add nsw i64 %19, %22, !dbg !3156
  %cmp88 = icmp sgt i64 %21, %add87, !dbg !3157
  br i1 %cmp88, label %for.end94, label %for.inc92, !dbg !3158

for.inc92:                                        ; preds = %land.lhs.true73, %land.lhs.true70, %if.end66, %land.lhs.true79, %for.body59
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1, !dbg !3159
  call void @llvm.dbg.value(metadata i32 undef, metadata !3038, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3053
  br label %for.cond56, !dbg !3160, !llvm.loop !3161

for.end94:                                        ; preds = %land.lhs.true79, %for.cond56
  %pfedge.4 = phi %struct.fixup_edge_d* [ %pfedge.3, %for.cond56 ], [ %add.ptr61, %land.lhs.true79 ]
  %found_cycle.0 = phi i1 [ false, %for.cond56 ], [ true, %land.lhs.true79 ]
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %pfedge.4, metadata !3044, metadata !DIExpression()), !dbg !3053
  br i1 %found_cycle.0, label %if.end97, label %cleanup, !dbg !3163

if.end97:                                         ; preds = %for.end94
  call void @llvm.dbg.value(metadata i8 0, metadata !3046, metadata !DIExpression()), !dbg !3053
  %dest98 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %pfedge.4, i64 0, i32 1, !dbg !3164
  %23 = load i32, i32* %dest98, align 4, !dbg !3164
  store i32 %23, i32* %cycle, align 4, !dbg !3165
  %24 = load i32, i32* %dest98, align 4, !dbg !3166
  call void @llvm.dbg.value(metadata i32 %24, metadata !3039, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32 1, metadata !3038, metadata !DIExpression()), !dbg !3053
  %25 = sext i32 %0 to i64, !dbg !3167
  br label %for.cond101, !dbg !3167

for.cond101:                                      ; preds = %for.inc125, %if.end97
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %for.inc125 ], [ 1, %if.end97 ], !dbg !3053
  %cycle_start.0 = phi i32 [ %cycle_start.1, %for.inc125 ], [ 0, %if.end97 ], !dbg !3053
  %cycle_end.0 = phi i32 [ %cycle_end.1, %for.inc125 ], [ 0, %if.end97 ], !dbg !3053
  %j.0 = phi i32 [ %26, %for.inc125 ], [ %24, %if.end97 ], !dbg !3053
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !3038, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !3039, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32 %cycle_end.0, metadata !3048, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32 %cycle_start.0, metadata !3047, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i8 0, metadata !3046, metadata !DIExpression()), !dbg !3053
  %cmp102 = icmp slt i64 %indvars.iv5, %25, !dbg !3169
  br i1 %cmp102, label %for.body104, label %for.end127, !dbg !3171

for.body104:                                      ; preds = %for.cond101
  %idxprom105 = sext i32 %j.0 to i64, !dbg !3172
  %arrayidx106 = getelementptr inbounds i32, i32* %pi, i64 %idxprom105, !dbg !3172
  %26 = load i32, i32* %arrayidx106, align 4, !dbg !3172
  call void @llvm.dbg.value(metadata i32 %26, metadata !3039, metadata !DIExpression()), !dbg !3053
  %arrayidx108 = getelementptr inbounds i32, i32* %cycle, i64 %indvars.iv5, !dbg !3174
  store i32 %26, i32* %arrayidx108, align 4, !dbg !3175
  call void @llvm.dbg.value(metadata i32 0, metadata !3040, metadata !DIExpression()), !dbg !3053
  %27 = trunc i64 %indvars.iv5 to i32, !dbg !3176
  br label %for.cond109, !dbg !3176

for.cond109:                                      ; preds = %for.inc119, %for.body104
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.inc119 ], [ 0, %for.body104 ], !dbg !3178
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !3040, metadata !DIExpression()), !dbg !3053
  %exitcond = icmp eq i64 %indvars.iv3, %indvars.iv5, !dbg !3179
  br i1 %exitcond, label %for.end121, label %for.body112, !dbg !3181

for.body112:                                      ; preds = %for.cond109
  %arrayidx114 = getelementptr inbounds i32, i32* %cycle, i64 %indvars.iv3, !dbg !3182
  %28 = load i32, i32* %arrayidx114, align 4, !dbg !3182
  %cmp115 = icmp eq i32 %28, %26, !dbg !3185
  %29 = trunc i64 %indvars.iv3 to i32, !dbg !3186
  br i1 %cmp115, label %for.end121, label %for.inc119, !dbg !3186

for.inc119:                                       ; preds = %for.body112
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1, !dbg !3187
  call void @llvm.dbg.value(metadata i32 undef, metadata !3040, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3053
  br label %for.cond109, !dbg !3188, !llvm.loop !3189

for.end121:                                       ; preds = %for.cond109, %for.body112
  %found_cycle.2 = phi i1 [ true, %for.cond109 ], [ false, %for.body112 ]
  %cycle_start.1 = phi i32 [ %cycle_start.0, %for.cond109 ], [ %29, %for.body112 ], !dbg !3053
  %cycle_end.1 = phi i32 [ %cycle_end.0, %for.cond109 ], [ %27, %for.body112 ], !dbg !3053
  call void @llvm.dbg.value(metadata i32 %cycle_end.1, metadata !3048, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32 %cycle_start.1, metadata !3047, metadata !DIExpression()), !dbg !3053
  br i1 %found_cycle.2, label %for.inc125, label %for.end127, !dbg !3191

for.inc125:                                       ; preds = %for.end121
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !3192
  call void @llvm.dbg.value(metadata i32 undef, metadata !3038, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3053
  br label %for.cond101, !dbg !3193, !llvm.loop !3194

for.end127:                                       ; preds = %for.end121, %for.cond101
  %cycle_start.2 = phi i32 [ %cycle_start.0, %for.cond101 ], [ %cycle_start.1, %for.end121 ], !dbg !3053
  %cycle_end.2 = phi i32 [ %cycle_end.0, %for.cond101 ], [ %cycle_end.1, %for.end121 ], !dbg !3053
  call void @llvm.dbg.value(metadata i32 %cycle_end.2, metadata !3048, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32 %cycle_start.2, metadata !3047, metadata !DIExpression()), !dbg !3053
  %idxprom128 = sext i32 %cycle_start.2 to i64, !dbg !3196
  %arrayidx129 = getelementptr inbounds i32, i32* %cycle, i64 %idxprom128, !dbg !3196
  %30 = load i32, i32* %arrayidx129, align 4, !dbg !3196
  %idxprom130 = sext i32 %cycle_end.2 to i64, !dbg !3196
  %arrayidx131 = getelementptr inbounds i32, i32* %cycle, i64 %idxprom130, !dbg !3196
  %31 = load i32, i32* %arrayidx131, align 4, !dbg !3196
  %cmp132 = icmp eq i32 %30, %31, !dbg !3196
  br i1 %cmp132, label %cond.end136, label %cond.true134, !dbg !3196

cond.true134:                                     ; preds = %for.end127
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 884, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3196
  br label %cond.end136, !dbg !3196

cond.end136:                                      ; preds = %for.end127, %cond.true134
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3197
  %tobool138 = icmp eq %struct._IO_FILE* %32, null, !dbg !3197
  br i1 %tobool138, label %if.end140, label %if.then139, !dbg !3199

if.then139:                                       ; preds = %cond.end136
  %sub = sub nsw i32 %cycle_end.2, %cycle_start.2, !dbg !3200
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.56, i64 0, i64 0), i32 %sub) #6, !dbg !3201
  br label %if.end140, !dbg !3201

if.end140:                                        ; preds = %cond.end136, %if.then139
  call void @llvm.dbg.value(metadata i64 0, metadata !3049, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i64 9223372036854775807, metadata !3050, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32 %cycle_start.2, metadata !3040, metadata !DIExpression()), !dbg !3053
  %33 = sext i32 %cycle_start.2 to i64, !dbg !3202
  %34 = sext i32 %cycle_end.2 to i64, !dbg !3202
  br label %for.cond141, !dbg !3202

for.cond141:                                      ; preds = %for.inc167, %if.end140
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.inc167 ], [ %33, %if.end140 ], !dbg !3204
  %sum_cost.0 = phi i64 [ %add160, %for.inc167 ], [ 0, %if.end140 ], !dbg !3053
  %cycle_flow.0 = phi i64 [ %cond158, %for.inc167 ], [ 9223372036854775807, %if.end140 ], !dbg !3053
  call void @llvm.dbg.value(metadata i64 %cycle_flow.0, metadata !3050, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i64 %sum_cost.0, metadata !3049, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !3040, metadata !DIExpression()), !dbg !3053
  %cmp142 = icmp slt i64 %indvars.iv1, %34, !dbg !3205
  br i1 %cmp142, label %for.body144, label %for.end169, !dbg !3207

for.body144:                                      ; preds = %for.cond141
  %indvars.iv.next2 = add nsw i64 %indvars.iv1, 1, !dbg !3208
  %arrayidx147 = getelementptr inbounds i32, i32* %cycle, i64 %indvars.iv.next2, !dbg !3210
  %35 = load i32, i32* %arrayidx147, align 4, !dbg !3210
  %arrayidx149 = getelementptr inbounds i32, i32* %cycle, i64 %indvars.iv1, !dbg !3211
  %36 = load i32, i32* %arrayidx149, align 4, !dbg !3211
  %call150 = tail call fastcc %struct.fixup_edge_d* @find_fixup_edge(%struct.fixup_graph_d* %fixup_graph, i32 %35, i32 %36) #8, !dbg !3212
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %call150, metadata !3044, metadata !DIExpression()), !dbg !3053
  %rflow151 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call150, i64 0, i32 6, !dbg !3213
  %37 = load i64, i64* %rflow151, align 8, !dbg !3213
  %cmp152 = icmp slt i64 %cycle_flow.0, %37, !dbg !3213
  br i1 %cmp152, label %cond.end157, label %cond.false155, !dbg !3213

cond.false155:                                    ; preds = %for.body144
  br label %cond.end157, !dbg !3213

cond.end157:                                      ; preds = %for.body144, %cond.false155
  %cond158 = phi i64 [ %37, %cond.false155 ], [ %cycle_flow.0, %for.body144 ], !dbg !3213
  call void @llvm.dbg.value(metadata i64 %cond158, metadata !3050, metadata !DIExpression()), !dbg !3053
  %cost159 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call150, i64 0, i32 8, !dbg !3214
  %38 = load i64, i64* %cost159, align 8, !dbg !3214
  %add160 = add nsw i64 %sum_cost.0, %38, !dbg !3215
  call void @llvm.dbg.value(metadata i64 %add160, metadata !3049, metadata !DIExpression()), !dbg !3053
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3216
  %tobool161 = icmp eq %struct._IO_FILE* %39, null, !dbg !3216
  br i1 %tobool161, label %for.inc167, label %if.then162, !dbg !3218

if.then162:                                       ; preds = %cond.end157
  %40 = load i32, i32* %arrayidx149, align 4, !dbg !3219
  %call165 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0), i32 %40) #6, !dbg !3220
  br label %for.inc167, !dbg !3220

for.inc167:                                       ; preds = %cond.end157, %if.then162
  call void @llvm.dbg.value(metadata i32 undef, metadata !3040, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3053
  br label %for.cond141, !dbg !3221, !llvm.loop !3222

for.end169:                                       ; preds = %for.cond141
  %indvars.iv1.lcssa = phi i64 [ %indvars.iv1, %for.cond141 ], !dbg !3204
  %sum_cost.0.lcssa = phi i64 [ %sum_cost.0, %for.cond141 ], !dbg !3053
  %cycle_flow.0.lcssa = phi i64 [ %cycle_flow.0, %for.cond141 ], !dbg !3053
  call void @llvm.dbg.value(metadata i64 %indvars.iv1.lcssa, metadata !3040, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i64 %sum_cost.0.lcssa, metadata !3049, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i64 %cycle_flow.0.lcssa, metadata !3050, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32 undef, metadata !3040, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i64 %sum_cost.0.lcssa, metadata !3049, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i64 %cycle_flow.0.lcssa, metadata !3050, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i32 undef, metadata !3040, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i64 %sum_cost.0.lcssa, metadata !3049, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i64 %cycle_flow.0.lcssa, metadata !3050, metadata !DIExpression()), !dbg !3053
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3224
  %tobool170 = icmp eq %struct._IO_FILE* %41, null, !dbg !3224
  br i1 %tobool170, label %if.end177, label %if.then171, !dbg !3226

if.then171:                                       ; preds = %for.end169
  %sext = shl i64 %indvars.iv1.lcssa, 32, !dbg !3227
  %idxprom172 = ashr exact i64 %sext, 32, !dbg !3227
  %arrayidx173 = getelementptr inbounds i32, i32* %cycle, i64 %idxprom172, !dbg !3227
  %42 = load i32, i32* %arrayidx173, align 4, !dbg !3227
  %call174 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i32 %42) #6, !dbg !3229
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3230
  %call175 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i64 0, i64 0), i64 %sum_cost.0.lcssa, i64 %cycle_flow.0.lcssa) #6, !dbg !3231
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3232
  %call176 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.59, i64 0, i64 0), i64 %cycle_flow.0.lcssa) #6, !dbg !3233
  br label %if.end177, !dbg !3234

if.end177:                                        ; preds = %for.end169, %if.then171
  call void @llvm.dbg.value(metadata i32 %cycle_start.2, metadata !3040, metadata !DIExpression()), !dbg !3053
  %45 = sext i32 %cycle_start.2 to i64, !dbg !3235
  %46 = sext i32 %cycle_end.2 to i64, !dbg !3235
  br label %for.cond178, !dbg !3235

for.cond178:                                      ; preds = %for.inc208, %if.end177
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc208 ], [ %45, %if.end177 ], !dbg !3237
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3040, metadata !DIExpression()), !dbg !3053
  %cmp179 = icmp slt i64 %indvars.iv, %46, !dbg !3238
  br i1 %cmp179, label %for.body181, label %cleanup.loopexit, !dbg !3240

for.body181:                                      ; preds = %for.cond178
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !3241
  %arrayidx184 = getelementptr inbounds i32, i32* %cycle, i64 %indvars.iv.next, !dbg !3243
  %47 = load i32, i32* %arrayidx184, align 4, !dbg !3243
  %arrayidx186 = getelementptr inbounds i32, i32* %cycle, i64 %indvars.iv, !dbg !3244
  %48 = load i32, i32* %arrayidx186, align 4, !dbg !3244
  %call187 = tail call fastcc %struct.fixup_edge_d* @find_fixup_edge(%struct.fixup_graph_d* %fixup_graph, i32 %47, i32 %48) #8, !dbg !3245
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %call187, metadata !3044, metadata !DIExpression()), !dbg !3053
  %49 = load i32, i32* %arrayidx186, align 4, !dbg !3246
  %50 = load i32, i32* %arrayidx184, align 4, !dbg !3247
  %call193 = tail call fastcc %struct.fixup_edge_d* @find_fixup_edge(%struct.fixup_graph_d* %fixup_graph, i32 %49, i32 %50) #8, !dbg !3248
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %call193, metadata !3045, metadata !DIExpression()), !dbg !3053
  %rflow194 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call187, i64 0, i32 6, !dbg !3249
  %51 = load i64, i64* %rflow194, align 8, !dbg !3250
  %sub195 = sub nsw i64 %51, %cycle_flow.0.lcssa, !dbg !3250
  store i64 %sub195, i64* %rflow194, align 8, !dbg !3250
  %type = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call187, i64 0, i32 2, !dbg !3251
  %52 = load i32, i32* %type, align 8, !dbg !3251
  %tobool196 = icmp eq i32 %52, 0, !dbg !3253
  br i1 %tobool196, label %if.end199, label %if.then197, !dbg !3254

if.then197:                                       ; preds = %for.body181
  %flow = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call187, i64 0, i32 5, !dbg !3255
  %53 = load i64, i64* %flow, align 8, !dbg !3256
  %add198 = add nsw i64 %53, %cycle_flow.0.lcssa, !dbg !3256
  store i64 %add198, i64* %flow, align 8, !dbg !3256
  br label %if.end199, !dbg !3257

if.end199:                                        ; preds = %for.body181, %if.then197
  %rflow200 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call193, i64 0, i32 6, !dbg !3258
  %54 = load i64, i64* %rflow200, align 8, !dbg !3259
  %add201 = add nsw i64 %54, %cycle_flow.0.lcssa, !dbg !3259
  store i64 %add201, i64* %rflow200, align 8, !dbg !3259
  %type202 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call193, i64 0, i32 2, !dbg !3260
  %55 = load i32, i32* %type202, align 8, !dbg !3260
  %tobool203 = icmp eq i32 %55, 0, !dbg !3262
  br i1 %tobool203, label %for.inc208, label %if.then204, !dbg !3263

if.then204:                                       ; preds = %if.end199
  %flow205 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call193, i64 0, i32 5, !dbg !3264
  %56 = load i64, i64* %flow205, align 8, !dbg !3265
  %sub206 = sub nsw i64 %56, %cycle_flow.0.lcssa, !dbg !3265
  store i64 %sub206, i64* %flow205, align 8, !dbg !3265
  br label %for.inc208, !dbg !3266

for.inc208:                                       ; preds = %if.end199, %if.then204
  call void @llvm.dbg.value(metadata i32 undef, metadata !3040, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3053
  br label %for.cond178, !dbg !3267, !llvm.loop !3268

cleanup.loopexit:                                 ; preds = %for.cond178
  br label %cleanup, !dbg !3270

cleanup:                                          ; preds = %cleanup.loopexit, %for.end52, %for.end94
  %retval.0 = phi i8 [ 0, %for.end52 ], [ 0, %for.end94 ], [ 1, %cleanup.loopexit ], !dbg !3053
  ret i8 %retval.0, !dbg !3270
}

; Function Attrs: nounwind uwtable
define internal fastcc void @compute_residual_flow(%struct.fixup_graph_d* %fixup_graph) unnamed_addr #4 !dbg !3271 {
entry:
  call void @llvm.dbg.value(metadata %struct.fixup_graph_d* %fixup_graph, metadata !3273, metadata !DIExpression()), !dbg !3278
  %tobool = icmp eq %struct.fixup_graph_d* %fixup_graph, null, !dbg !3279
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3279

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 937, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3279
  br label %cond.end, !dbg !3279

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3280
  %tobool1 = icmp eq %struct._IO_FILE* %0, null, !dbg !3280
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3282

if.then:                                          ; preds = %cond.end
  %call = tail call i32 @fputs(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.55, i64 0, i64 0), %struct._IO_FILE* nonnull %0) #6, !dbg !3283
  br label %if.end, !dbg !3283

if.end:                                           ; preds = %cond.end, %if.then
  %num_edges = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 1, !dbg !3284
  %1 = load i32, i32* %num_edges, align 4, !dbg !3284
  call void @llvm.dbg.value(metadata i32 %1, metadata !3275, metadata !DIExpression()), !dbg !3278
  %edge_list = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 5, !dbg !3285
  %2 = load %struct.fixup_edge_d*, %struct.fixup_edge_d** %edge_list, align 8, !dbg !3285
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %2, metadata !3276, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i32 0, metadata !3274, metadata !DIExpression()), !dbg !3278
  %3 = sext i32 %1 to i64, !dbg !3286
  br label %for.cond, !dbg !3286

for.cond:                                         ; preds = %for.body, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end ], !dbg !3288
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3274, metadata !DIExpression()), !dbg !3278
  %cmp = icmp slt i64 %indvars.iv, %3, !dbg !3289
  br i1 %cmp, label %for.body, label %for.end, !dbg !3291

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* undef, metadata !3277, metadata !DIExpression()), !dbg !3278
  %max_capacity = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %2, i64 %indvars.iv, i32 9, !dbg !3292
  %4 = load i64, i64* %max_capacity, align 8, !dbg !3292
  %flow = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %2, i64 %indvars.iv, i32 5, !dbg !3294
  %5 = load i64, i64* %flow, align 8, !dbg !3294
  %sub = sub nsw i64 %4, %5, !dbg !3295
  %rflow = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %2, i64 %indvars.iv, i32 6, !dbg !3296
  store i64 %sub, i64* %rflow, align 8, !dbg !3297
  %is_rflow_valid = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %2, i64 %indvars.iv, i32 3, !dbg !3298
  store i8 1, i8* %is_rflow_valid, align 4, !dbg !3299
  %dest = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %2, i64 %indvars.iv, i32 1, !dbg !3300
  %6 = load i32, i32* %dest, align 4, !dbg !3300
  %src = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %2, i64 %indvars.iv, i32 0, !dbg !3301
  %7 = load i32, i32* %src, align 8, !dbg !3301
  %cost = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %2, i64 %indvars.iv, i32 8, !dbg !3302
  %8 = load i64, i64* %cost, align 8, !dbg !3302
  %sub3 = sub nsw i64 0, %8, !dbg !3303
  tail call fastcc void @add_rfixup_edge(%struct.fixup_graph_d* %fixup_graph, i32 %6, i32 %7, i64 %5, i64 %sub3) #8, !dbg !3304
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3305
  call void @llvm.dbg.value(metadata i32 undef, metadata !3274, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3278
  br label %for.cond, !dbg !3306, !llvm.loop !3307

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3309
}

; Function Attrs: nounwind uwtable
define internal fastcc void @init_augmenting_path(%struct.augmenting_path_d* %augmenting_path, i32 %graph_size) unnamed_addr #4 !dbg !3310 {
entry:
  call void @llvm.dbg.value(metadata %struct.augmenting_path_d* %augmenting_path, metadata !3315, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i32 %graph_size, metadata !3316, metadata !DIExpression()), !dbg !3317
  %add = add nsw i32 %graph_size, 2, !dbg !3318
  %conv = sext i32 %add to i64, !dbg !3319
  %call = tail call i8* @xcalloc(i64 %conv, i64 4) #6, !dbg !3320
  %0 = bitcast %struct.augmenting_path_d* %augmenting_path to i8**, !dbg !3321
  store i8* %call, i8** %0, align 8, !dbg !3321
  %size = getelementptr inbounds %struct.augmenting_path_d, %struct.augmenting_path_d* %augmenting_path, i64 0, i32 0, i32 3, !dbg !3322
  store i32 %add, i32* %size, align 8, !dbg !3323
  %conv3 = sext i32 %graph_size to i64, !dbg !3324
  %call4 = tail call i8* @xcalloc(i64 %conv3, i64 4) #6, !dbg !3325
  %bb_pred = getelementptr inbounds %struct.augmenting_path_d, %struct.augmenting_path_d* %augmenting_path, i64 0, i32 1, !dbg !3326
  %1 = bitcast i32** %bb_pred to i8**, !dbg !3327
  store i8* %call4, i8** %1, align 8, !dbg !3327
  %call6 = tail call i8* @xcalloc(i64 %conv3, i64 4) #6, !dbg !3328
  %is_visited = getelementptr inbounds %struct.augmenting_path_d, %struct.augmenting_path_d* %augmenting_path, i64 0, i32 2, !dbg !3329
  %2 = bitcast i32** %is_visited to i8**, !dbg !3330
  store i8* %call6, i8** %2, align 8, !dbg !3330
  ret void, !dbg !3331
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @find_augmenting_path(%struct.fixup_graph_d* %fixup_graph, %struct.augmenting_path_d* %augmenting_path, i32 %source, i32 %sink) unnamed_addr #4 !dbg !3332 {
entry:
  %pfedge = alloca %struct.fixup_edge_d*, align 8
  call void @llvm.dbg.value(metadata %struct.fixup_graph_d* %fixup_graph, metadata !3336, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata %struct.augmenting_path_d* %augmenting_path, metadata !3337, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i32 %source, metadata !3338, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i32 %sink, metadata !3339, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i32 0, metadata !3340, metadata !DIExpression()), !dbg !3354
  %0 = bitcast %struct.fixup_edge_d** %pfedge to i8*, !dbg !3355
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3355
  %tobool = icmp eq %struct.augmenting_path_d* %augmenting_path, null, !dbg !3356
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3356

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 974, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3356
  br label %cond.end, !dbg !3356

cond.end:                                         ; preds = %entry, %cond.true
  %bb_pred1 = getelementptr inbounds %struct.augmenting_path_d, %struct.augmenting_path_d* %augmenting_path, i64 0, i32 1, !dbg !3357
  %1 = load i32*, i32** %bb_pred1, align 8, !dbg !3357
  call void @llvm.dbg.value(metadata i32* %1, metadata !3345, metadata !DIExpression()), !dbg !3354
  %tobool2 = icmp eq i32* %1, null, !dbg !3358
  br i1 %tobool2, label %cond.true3, label %cond.end5, !dbg !3358

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 976, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3358
  br label %cond.end5, !dbg !3358

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %is_visited7 = getelementptr inbounds %struct.augmenting_path_d, %struct.augmenting_path_d* %augmenting_path, i64 0, i32 2, !dbg !3359
  %2 = load i32*, i32** %is_visited7, align 8, !dbg !3359
  call void @llvm.dbg.value(metadata i32* %2, metadata !3346, metadata !DIExpression()), !dbg !3354
  %tobool8 = icmp eq i32* %2, null, !dbg !3360
  br i1 %tobool8, label %cond.true9, label %cond.end11, !dbg !3360

cond.true9:                                       ; preds = %cond.end5
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 978, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3360
  br label %cond.end11, !dbg !3360

cond.end11:                                       ; preds = %cond.end5, %cond.true9
  %queue_list13 = getelementptr inbounds %struct.augmenting_path_d, %struct.augmenting_path_d* %augmenting_path, i64 0, i32 0, !dbg !3361
  call void @llvm.dbg.value(metadata %struct.queue_d* %queue_list13, metadata !3347, metadata !DIExpression()), !dbg !3354
  %tobool14 = icmp eq %struct.fixup_graph_d* %fixup_graph, null, !dbg !3362
  br i1 %tobool14, label %cond.true15, label %cond.end17, !dbg !3362

cond.true15:                                      ; preds = %cond.end11
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 981, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3362
  br label %cond.end17, !dbg !3362

cond.end17:                                       ; preds = %cond.end11, %cond.true15
  %vertex_list = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 4, !dbg !3363
  %3 = load %struct.fixup_vertex_d*, %struct.fixup_vertex_d** %vertex_list, align 8, !dbg !3363
  call void @llvm.dbg.value(metadata %struct.fixup_vertex_d* %3, metadata !3342, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i32 0, metadata !3340, metadata !DIExpression()), !dbg !3354
  %num_vertices = getelementptr inbounds %struct.fixup_graph_d, %struct.fixup_graph_d* %fixup_graph, i64 0, i32 0, !dbg !3364
  br label %for.cond, !dbg !3367

for.cond:                                         ; preds = %for.body, %cond.end17
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %cond.end17 ], !dbg !3368
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3340, metadata !DIExpression()), !dbg !3354
  %4 = load i32, i32* %num_vertices, align 8, !dbg !3369
  %5 = sext i32 %4 to i64, !dbg !3370
  %cmp = icmp slt i64 %indvars.iv, %5, !dbg !3370
  br i1 %cmp, label %for.body, label %for.end, !dbg !3371

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %indvars.iv, !dbg !3372
  store i32 0, i32* %arrayidx, align 4, !dbg !3373
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3374
  call void @llvm.dbg.value(metadata i32 undef, metadata !3340, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3354
  br label %for.cond, !dbg !3375, !llvm.loop !3376

for.end:                                          ; preds = %for.cond
  tail call fastcc void @init_queue(%struct.queue_d* %queue_list13) #8, !dbg !3378
  tail call fastcc void @enqueue(%struct.queue_d* %queue_list13, i32 %source) #8, !dbg !3379
  %idxprom19 = sext i32 %source to i64, !dbg !3380
  %arrayidx20 = getelementptr inbounds i32, i32* %1, i64 %idxprom19, !dbg !3380
  store i32 -1, i32* %arrayidx20, align 4, !dbg !3381
  br label %while.cond, !dbg !3382

while.cond.loopexit:                              ; preds = %cond.end30
  br label %while.cond, !dbg !3382

while.cond:                                       ; preds = %while.cond.loopexit, %for.end
  %call = call fastcc zeroext i8 @is_empty(%struct.queue_d* %queue_list13) #8, !dbg !3383
  %tobool21 = icmp eq i8 %call, 0, !dbg !3384
  br i1 %tobool21, label %while.body, label %cleanup50.loopexit2, !dbg !3382

while.body:                                       ; preds = %while.cond
  %call22 = call fastcc i32 @dequeue(%struct.queue_d* %queue_list13) #8, !dbg !3385
  call void @llvm.dbg.value(metadata i32 %call22, metadata !3340, metadata !DIExpression()), !dbg !3354
  %idxprom23 = sext i32 %call22 to i64, !dbg !3386
  %arrayidx24 = getelementptr inbounds i32, i32* %2, i64 %idxprom23, !dbg !3386
  store i32 1, i32* %arrayidx24, align 4, !dbg !3387
  call void @llvm.dbg.value(metadata %struct.fixup_vertex_d* undef, metadata !3343, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i32 0, metadata !3341, metadata !DIExpression()), !dbg !3354
  %succ_edges = getelementptr inbounds %struct.fixup_vertex_d, %struct.fixup_vertex_d* %3, i64 %idxprom23, i32 0, !dbg !3388
  br label %for.cond25, !dbg !3389

for.cond25:                                       ; preds = %for.inc47, %while.body
  %i.0 = phi i32 [ 0, %while.body ], [ %inc48, %for.inc47 ], !dbg !3390
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3341, metadata !DIExpression()), !dbg !3354
  %6 = load %struct.VEC_fixup_edge_p_heap*, %struct.VEC_fixup_edge_p_heap** %succ_edges, align 8, !dbg !3391
  %tobool26 = icmp eq %struct.VEC_fixup_edge_p_heap* %6, null, !dbg !3391
  br i1 %tobool26, label %cond.end30, label %cond.true27, !dbg !3391

cond.true27:                                      ; preds = %for.cond25
  %base = getelementptr inbounds %struct.VEC_fixup_edge_p_heap, %struct.VEC_fixup_edge_p_heap* %6, i64 0, i32 0, !dbg !3391
  br label %cond.end30, !dbg !3391

cond.end30:                                       ; preds = %for.cond25, %cond.true27
  %cond31 = phi %struct.VEC_fixup_edge_p_base* [ %base, %cond.true27 ], [ null, %for.cond25 ], !dbg !3391
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d** %pfedge, metadata !3344, metadata !DIExpression(DW_OP_deref)), !dbg !3354
  %call32 = call fastcc i32 @VEC_fixup_edge_p_base_iterate(%struct.VEC_fixup_edge_p_base* %cond31, i32 %i.0, %struct.fixup_edge_d** nonnull %pfedge) #8, !dbg !3391
  %tobool33 = icmp eq i32 %call32, 0, !dbg !3392
  br i1 %tobool33, label %while.cond.loopexit, label %for.body34, !dbg !3392, !llvm.loop !3393

for.body34:                                       ; preds = %cond.end30
  %7 = load %struct.fixup_edge_d*, %struct.fixup_edge_d** %pfedge, align 8, !dbg !3395
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %7, metadata !3344, metadata !DIExpression()), !dbg !3354
  %dest35 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %7, i64 0, i32 1, !dbg !3396
  %8 = load i32, i32* %dest35, align 4, !dbg !3396
  call void @llvm.dbg.value(metadata i32 %8, metadata !3349, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %7, metadata !3344, metadata !DIExpression()), !dbg !3354
  %rflow = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %7, i64 0, i32 6, !dbg !3398
  %9 = load i64, i64* %rflow, align 8, !dbg !3398
  %cmp36 = icmp sgt i64 %9, 0, !dbg !3400
  br i1 %cmp36, label %land.lhs.true, label %if.end46, !dbg !3401

land.lhs.true:                                    ; preds = %for.body34
  %idxprom37 = sext i32 %8 to i64, !dbg !3402
  %arrayidx38 = getelementptr inbounds i32, i32* %2, i64 %idxprom37, !dbg !3402
  %10 = load i32, i32* %arrayidx38, align 4, !dbg !3402
  %cmp39 = icmp eq i32 %10, 0, !dbg !3403
  br i1 %cmp39, label %if.then, label %if.end46, !dbg !3404

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @enqueue(%struct.queue_d* %queue_list13, i32 %8) #8, !dbg !3405
  %arrayidx41 = getelementptr inbounds i32, i32* %1, i64 %idxprom37, !dbg !3407
  store i32 %call22, i32* %arrayidx41, align 4, !dbg !3408
  store i32 1, i32* %arrayidx38, align 4, !dbg !3409
  %cmp44 = icmp eq i32 %8, %sink, !dbg !3410
  br i1 %cmp44, label %cleanup, label %if.end46, !dbg !3412

if.end46:                                         ; preds = %if.then, %land.lhs.true, %for.body34
  br label %cleanup, !dbg !3413

cleanup:                                          ; preds = %if.then, %if.end46
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end46 ], [ false, %if.then ]
  br i1 %cleanup.dest.slot.0, label %for.inc47, label %cleanup50.loopexit

for.inc47:                                        ; preds = %cleanup
  %inc48 = add nuw nsw i32 %i.0, 1, !dbg !3414
  call void @llvm.dbg.value(metadata i32 %inc48, metadata !3341, metadata !DIExpression()), !dbg !3354
  br label %for.cond25, !dbg !3415, !llvm.loop !3416

cleanup50.loopexit:                               ; preds = %cleanup
  br label %cleanup50, !dbg !3418

cleanup50.loopexit2:                              ; preds = %while.cond
  br label %cleanup50, !dbg !3418

cleanup50:                                        ; preds = %cleanup50.loopexit2, %cleanup50.loopexit
  %retval.3 = phi i32 [ 1, %cleanup50.loopexit ], [ 0, %cleanup50.loopexit2 ], !dbg !3354
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #7, !dbg !3418
  ret i32 %retval.3, !dbg !3418
}

; Function Attrs: nounwind uwtable
define internal fastcc void @free_augmenting_path(%struct.augmenting_path_d* %augmenting_path) unnamed_addr #4 !dbg !3419 {
entry:
  call void @llvm.dbg.value(metadata %struct.augmenting_path_d* %augmenting_path, metadata !3423, metadata !DIExpression()), !dbg !3424
  %0 = bitcast %struct.augmenting_path_d* %augmenting_path to i8**, !dbg !3425
  %1 = load i8*, i8** %0, align 8, !dbg !3425
  tail call void @free(i8* %1) #6, !dbg !3426
  %bb_pred = getelementptr inbounds %struct.augmenting_path_d, %struct.augmenting_path_d* %augmenting_path, i64 0, i32 1, !dbg !3427
  %2 = bitcast i32** %bb_pred to i8**, !dbg !3427
  %3 = load i8*, i8** %2, align 8, !dbg !3427
  tail call void @free(i8* %3) #6, !dbg !3428
  %is_visited = getelementptr inbounds %struct.augmenting_path_d, %struct.augmenting_path_d* %augmenting_path, i64 0, i32 2, !dbg !3429
  %4 = bitcast i32** %is_visited to i8**, !dbg !3429
  %5 = load i8*, i8** %4, align 8, !dbg !3429
  tail call void @free(i8* %5) #6, !dbg !3430
  ret void, !dbg !3431
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_rfixup_edge(%struct.fixup_graph_d* %fixup_graph, i32 %src, i32 %dest, i64 %rflow, i64 %cost) unnamed_addr #4 !dbg !3432 {
entry:
  call void @llvm.dbg.value(metadata %struct.fixup_graph_d* %fixup_graph, metadata !3436, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i32 %src, metadata !3437, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i32 %dest, metadata !3438, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i64 %rflow, metadata !3439, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i64 %cost, metadata !3440, metadata !DIExpression()), !dbg !3442
  %call = tail call fastcc %struct.fixup_edge_d* @add_edge(%struct.fixup_graph_d* %fixup_graph, i32 %src, i32 %dest, i64 %cost) #8, !dbg !3443
  call void @llvm.dbg.value(metadata %struct.fixup_edge_d* %call, metadata !3441, metadata !DIExpression()), !dbg !3442
  %rflow1 = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call, i64 0, i32 6, !dbg !3444
  store i64 %rflow, i64* %rflow1, align 8, !dbg !3445
  %is_rflow_valid = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call, i64 0, i32 3, !dbg !3446
  store i8 1, i8* %is_rflow_valid, align 4, !dbg !3447
  %type = getelementptr inbounds %struct.fixup_edge_d, %struct.fixup_edge_d* %call, i64 0, i32 2, !dbg !3448
  store i32 0, i32* %type, align 8, !dbg !3449
  ret void, !dbg !3450
}

; Function Attrs: nounwind uwtable
define internal fastcc void @init_queue(%struct.queue_d* %queue_list) unnamed_addr #4 !dbg !3451 {
entry:
  call void @llvm.dbg.value(metadata %struct.queue_d* %queue_list, metadata !3455, metadata !DIExpression()), !dbg !3456
  %tobool = icmp eq %struct.queue_d* %queue_list, null, !dbg !3457
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3457

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 739, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3457
  br label %cond.end, !dbg !3457

cond.end:                                         ; preds = %entry, %cond.true
  %head = getelementptr inbounds %struct.queue_d, %struct.queue_d* %queue_list, i64 0, i32 1, !dbg !3458
  store i32 0, i32* %head, align 8, !dbg !3459
  %tail = getelementptr inbounds %struct.queue_d, %struct.queue_d* %queue_list, i64 0, i32 2, !dbg !3460
  store i32 0, i32* %tail, align 4, !dbg !3461
  ret void, !dbg !3462
}

; Function Attrs: nounwind uwtable
define internal fastcc void @enqueue(%struct.queue_d* %queue_list, i32 %x) unnamed_addr #4 !dbg !3463 {
entry:
  call void @llvm.dbg.value(metadata %struct.queue_d* %queue_list, metadata !3467, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata i32 %x, metadata !3468, metadata !DIExpression()), !dbg !3469
  %tail = getelementptr inbounds %struct.queue_d, %struct.queue_d* %queue_list, i64 0, i32 2, !dbg !3470
  %0 = load i32, i32* %tail, align 4, !dbg !3470
  %size = getelementptr inbounds %struct.queue_d, %struct.queue_d* %queue_list, i64 0, i32 3, !dbg !3470
  %1 = load i32, i32* %size, align 8, !dbg !3470
  %cmp = icmp slt i32 %0, %1, !dbg !3470
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3470

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 755, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3470
  %.pre = load i32, i32* %tail, align 4, !dbg !3471
  br label %cond.end, !dbg !3470

cond.end:                                         ; preds = %entry, %cond.true
  %2 = phi i32 [ %0, %entry ], [ %.pre, %cond.true ], !dbg !3471
  %queue = getelementptr inbounds %struct.queue_d, %struct.queue_d* %queue_list, i64 0, i32 0, !dbg !3472
  %3 = load i32*, i32** %queue, align 8, !dbg !3472
  %idxprom = sext i32 %2 to i64, !dbg !3473
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom, !dbg !3473
  store i32 %x, i32* %arrayidx, align 4, !dbg !3474
  %4 = load i32, i32* %tail, align 4, !dbg !3475
  %inc = add nsw i32 %4, 1, !dbg !3475
  store i32 %inc, i32* %tail, align 4, !dbg !3475
  ret void, !dbg !3476
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @is_empty(%struct.queue_d* %queue_list) unnamed_addr #4 !dbg !3477 {
entry:
  call void @llvm.dbg.value(metadata %struct.queue_d* %queue_list, metadata !3481, metadata !DIExpression()), !dbg !3482
  %head = getelementptr inbounds %struct.queue_d, %struct.queue_d* %queue_list, i64 0, i32 1, !dbg !3483
  %0 = load i32, i32* %head, align 8, !dbg !3483
  %tail = getelementptr inbounds %struct.queue_d, %struct.queue_d* %queue_list, i64 0, i32 2, !dbg !3484
  %1 = load i32, i32* %tail, align 4, !dbg !3484
  %cmp = icmp eq i32 %0, %1, !dbg !3485
  %conv1 = zext i1 %cmp to i8, !dbg !3486
  ret i8 %conv1, !dbg !3487
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @dequeue(%struct.queue_d* %queue_list) unnamed_addr #4 !dbg !3488 {
entry:
  call void @llvm.dbg.value(metadata %struct.queue_d* %queue_list, metadata !3492, metadata !DIExpression()), !dbg !3494
  %head = getelementptr inbounds %struct.queue_d, %struct.queue_d* %queue_list, i64 0, i32 1, !dbg !3495
  %0 = load i32, i32* %head, align 8, !dbg !3495
  %cmp = icmp sgt i32 %0, -1, !dbg !3495
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3495

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 765, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3495
  %.pre = load i32, i32* %head, align 8, !dbg !3496
  br label %cond.end, !dbg !3495

cond.end:                                         ; preds = %entry, %cond.true
  %1 = phi i32 [ %0, %entry ], [ %.pre, %cond.true ], !dbg !3496
  %queue = getelementptr inbounds %struct.queue_d, %struct.queue_d* %queue_list, i64 0, i32 0, !dbg !3497
  %2 = load i32*, i32** %queue, align 8, !dbg !3497
  %idxprom = sext i32 %1 to i64, !dbg !3498
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom, !dbg !3498
  %3 = load i32, i32* %arrayidx, align 4, !dbg !3498
  call void @llvm.dbg.value(metadata i32 %3, metadata !3493, metadata !DIExpression()), !dbg !3494
  %inc = add nsw i32 %1, 1, !dbg !3499
  store i32 %inc, i32* %head, align 8, !dbg !3499
  ret i32 %3, !dbg !3500
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_fixup_edge_p_heap_free(%struct.VEC_fixup_edge_p_heap** %vec_) unnamed_addr #0 !dbg !3501 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_fixup_edge_p_heap** %vec_, metadata !3505, metadata !DIExpression()), !dbg !3506
  %0 = load %struct.VEC_fixup_edge_p_heap*, %struct.VEC_fixup_edge_p_heap** %vec_, align 8, !dbg !3507
  %tobool = icmp eq %struct.VEC_fixup_edge_p_heap* %0, null, !dbg !3507
  br i1 %tobool, label %if.end, label %if.then, !dbg !3509

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_fixup_edge_p_heap* %0 to i8*, !dbg !3509
  tail call void @free(i8* nonnull %1) #6, !dbg !3507
  br label %if.end, !dbg !3507

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_fixup_edge_p_heap* null, %struct.VEC_fixup_edge_p_heap** %vec_, align 8, !dbg !3509
  ret void, !dbg !3509
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
!llvm.module.flags = !{!315, !316, !317}
!llvm.ident = !{!318}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !258, nameTableKind: None)
!1 = !DIFile(filename: "mcf.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !10, !15, !20, !39, !46, !53, !247}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !4, line: 363, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !4, line: 355, baseType: !5, size: 32, elements: !11)
!11 = !{!12, !13, !14}
!12 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!13 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!14 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !16, line: 474, baseType: !5, size: 32, elements: !17)
!16 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!17 = !{!18, !19}
!18 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!19 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !21, line: 280, baseType: !5, size: 32, elements: !22)
!21 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38}
!23 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!25 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!26 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!27 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!28 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!29 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!30 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!31 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!32 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!33 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!34 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!35 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!36 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!37 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!38 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !21, line: 1817, baseType: !5, size: 32, elements: !40)
!40 = !{!41, !42, !43, !44, !45}
!41 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!42 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!43 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!44 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!45 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !21, line: 1805, baseType: !5, size: 32, elements: !47)
!47 = !{!48, !49, !50, !51, !52}
!48 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!49 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!50 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!51 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!52 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !21, line: 39, baseType: !5, size: 32, elements: !54)
!54 = !{!55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246}
!55 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!56 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!57 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!58 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!59 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!60 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!61 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!62 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!63 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!64 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!65 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!66 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!67 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!68 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!69 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!70 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!71 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!72 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!73 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!74 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!75 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!76 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!77 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!78 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!79 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!80 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!81 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!82 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!83 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!84 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!85 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!86 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!87 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!88 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!89 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!90 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!91 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!92 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!93 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!94 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!95 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!96 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!97 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!98 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!99 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!100 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!101 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!102 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!103 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!104 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!105 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!106 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!107 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!108 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!109 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!110 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!111 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!112 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!113 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!114 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!115 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!116 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!117 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!118 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!119 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!120 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!121 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!122 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!123 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!124 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!125 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!126 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!127 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!128 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!129 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!130 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!131 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!132 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!133 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!134 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!135 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!136 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!137 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!138 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!139 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!140 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!141 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!142 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!143 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!144 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!145 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!146 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!147 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!148 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!149 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!150 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!151 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!152 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!153 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!154 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!155 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!156 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!157 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!158 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!159 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!160 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!161 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!162 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!163 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!164 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!165 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!166 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!167 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!168 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!169 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!170 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!171 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!172 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!173 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!174 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!175 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!176 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!177 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!178 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!179 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!180 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!181 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!182 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!183 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!184 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!185 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!186 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!187 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!188 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!189 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!190 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!191 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!192 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!193 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!194 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!195 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!196 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!197 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!198 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!199 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!200 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!201 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!202 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!203 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!204 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!205 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!206 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!207 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!208 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!209 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!210 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!211 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!212 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!213 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!214 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!215 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!216 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!217 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!218 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!219 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!220 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!221 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!222 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!223 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!224 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!225 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!226 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!227 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!228 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!229 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!230 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!231 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!232 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!233 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!234 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!235 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!236 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!237 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!238 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!239 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!240 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!241 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!242 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!243 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!244 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!245 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!246 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!247 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 68, baseType: !5, size: 32, elements: !248)
!248 = !{!249, !250, !251, !252, !253, !254, !255, !256, !257}
!249 = !DIEnumerator(name: "INVALID_EDGE", value: 0, isUnsigned: true)
!250 = !DIEnumerator(name: "VERTEX_SPLIT_EDGE", value: 1, isUnsigned: true)
!251 = !DIEnumerator(name: "REDIRECT_EDGE", value: 2, isUnsigned: true)
!252 = !DIEnumerator(name: "REVERSE_EDGE", value: 3, isUnsigned: true)
!253 = !DIEnumerator(name: "SOURCE_CONNECT_EDGE", value: 4, isUnsigned: true)
!254 = !DIEnumerator(name: "SINK_CONNECT_EDGE", value: 5, isUnsigned: true)
!255 = !DIEnumerator(name: "BALANCE_EDGE", value: 6, isUnsigned: true)
!256 = !DIEnumerator(name: "REDIRECT_NORMALIZED_EDGE", value: 7, isUnsigned: true)
!257 = !DIEnumerator(name: "REVERSE_NORMALIZED_EDGE", value: 8, isUnsigned: true)
!258 = !{!259, !260, !261, !262, !265, !266, !268, !275, !293, !313, !305, !306, !281, !5, !314}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!261 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_info", file: !270, line: 27, size: 32, elements: !271)
!270 = !DIFile(filename: "./profile.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!271 = !{!272, !273, !274}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "count_valid", scope: !269, file: !270, line: 29, baseType: !5, size: 1, flags: DIFlagBitField, extraData: i64 0)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "on_tree", scope: !269, file: !270, line: 32, baseType: !5, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "ignore", scope: !269, file: !270, line: 36, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "fixup_vertex_p", file: !1, line: 111, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "fixup_vertex_type", file: !1, line: 109, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixup_vertex_d", file: !1, line: 106, size: 64, elements: !279)
!279 = !{!280}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "succ_edges", scope: !278, file: !1, line: 108, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_fixup_edge_p_heap", file: !1, line: 103, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_fixup_edge_p_heap", file: !1, line: 103, size: 128, elements: !284)
!284 = !{!285}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !283, file: !1, line: 103, baseType: !286, size: 128)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_fixup_edge_p_base", file: !1, line: 102, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_fixup_edge_p_base", file: !1, line: 102, size: 128, elements: !288)
!288 = !{!289, !290, !291}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !287, file: !1, line: 102, baseType: !5, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !287, file: !1, line: 102, baseType: !5, size: 32, offset: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !287, file: !1, line: 102, baseType: !292, size: 64, offset: 64)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 64, elements: !311)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "fixup_edge_p", file: !1, line: 100, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "fixup_edge_type", file: !1, line: 98, baseType: !296)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixup_edge_d", file: !1, line: 82, size: 512, elements: !297)
!297 = !{!298, !299, !300, !302, !303, !304, !307, !308, !309, !310}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !296, file: !1, line: 84, baseType: !261, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !296, file: !1, line: 85, baseType: !261, size: 32, offset: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !296, file: !1, line: 87, baseType: !301, size: 32, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_type", file: !1, line: 79, baseType: !247)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "is_rflow_valid", scope: !296, file: !1, line: 88, baseType: !260, size: 8, offset: 96)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "norm_vertex_index", scope: !296, file: !1, line: 90, baseType: !261, size: 32, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !296, file: !1, line: 92, baseType: !305, size: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !4, line: 119, baseType: !306)
!306 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "rflow", scope: !296, file: !1, line: 94, baseType: !305, size: 64, offset: 256)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !296, file: !1, line: 95, baseType: !305, size: 64, offset: 320)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !296, file: !1, line: 96, baseType: !305, size: 64, offset: 384)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "max_capacity", scope: !296, file: !1, line: 97, baseType: !305, size: 64, offset: 448)
!311 = !{!312}
!312 = !DISubrange(count: 1)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!315 = !{i32 2, !"Dwarf Version", i32 4}
!316 = !{i32 2, !"Debug Info Version", i32 3}
!317 = !{i32 1, !"wchar_size", i32 4}
!318 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!319 = distinct !DISubprogram(name: "vprintf", scope: !320, file: !320, line: 39, type: !321, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !331)
!320 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!321 = !DISubroutineType(types: !322)
!322 = !{!261, !323, !324}
!323 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !266)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !326)
!326 = !{!327, !328, !329, !330}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !325, file: !1, baseType: !5, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !325, file: !1, baseType: !5, size: 32, offset: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !325, file: !1, baseType: !265, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !325, file: !1, baseType: !265, size: 64, offset: 128)
!331 = !{!332, !333}
!332 = !DILocalVariable(name: "__fmt", arg: 1, scope: !319, file: !320, line: 39, type: !323)
!333 = !DILocalVariable(name: "__arg", arg: 2, scope: !319, file: !320, line: 39, type: !324)
!334 = !DILocation(line: 0, scope: !319)
!335 = !DILocation(line: 41, column: 20, scope: !319)
!336 = !DILocation(line: 41, column: 10, scope: !319)
!337 = !DILocation(line: 41, column: 3, scope: !319)
!338 = distinct !DISubprogram(name: "getchar", scope: !320, file: !320, line: 47, type: !339, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !341)
!339 = !DISubroutineType(types: !340)
!340 = !{!261}
!341 = !{}
!342 = !DILocation(line: 49, column: 16, scope: !338)
!343 = !DILocation(line: 49, column: 10, scope: !338)
!344 = !DILocation(line: 49, column: 3, scope: !338)
!345 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !320, file: !320, line: 56, type: !346, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !404)
!346 = !DISubroutineType(types: !347)
!347 = !{!261, !348}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !350, line: 7, baseType: !351)
!350 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !352, line: 49, size: 1728, elements: !353)
!352 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!353 = !{!354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !369, !371, !372, !373, !376, !378, !380, !382, !385, !387, !390, !393, !394, !395, !399, !400}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !351, file: !352, line: 51, baseType: !261, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !351, file: !352, line: 54, baseType: !263, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !351, file: !352, line: 55, baseType: !263, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !351, file: !352, line: 56, baseType: !263, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !351, file: !352, line: 57, baseType: !263, size: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !351, file: !352, line: 58, baseType: !263, size: 64, offset: 320)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !351, file: !352, line: 59, baseType: !263, size: 64, offset: 384)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !351, file: !352, line: 60, baseType: !263, size: 64, offset: 448)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !351, file: !352, line: 61, baseType: !263, size: 64, offset: 512)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !351, file: !352, line: 64, baseType: !263, size: 64, offset: 576)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !351, file: !352, line: 65, baseType: !263, size: 64, offset: 640)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !351, file: !352, line: 66, baseType: !263, size: 64, offset: 704)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !351, file: !352, line: 68, baseType: !367, size: 64, offset: 768)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !352, line: 36, flags: DIFlagFwdDecl)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !351, file: !352, line: 70, baseType: !370, size: 64, offset: 832)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !351, file: !352, line: 72, baseType: !261, size: 32, offset: 896)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !351, file: !352, line: 73, baseType: !261, size: 32, offset: 928)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !351, file: !352, line: 74, baseType: !374, size: 64, offset: 960)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !375, line: 152, baseType: !306)
!375 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !351, file: !352, line: 77, baseType: !377, size: 16, offset: 1024)
!377 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !351, file: !352, line: 78, baseType: !379, size: 8, offset: 1040)
!379 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !351, file: !352, line: 79, baseType: !381, size: 8, offset: 1048)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 8, elements: !311)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !351, file: !352, line: 81, baseType: !383, size: 64, offset: 1088)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !352, line: 43, baseType: null)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !351, file: !352, line: 89, baseType: !386, size: 64, offset: 1152)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !375, line: 153, baseType: !306)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !351, file: !352, line: 91, baseType: !388, size: 64, offset: 1216)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !352, line: 37, flags: DIFlagFwdDecl)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !351, file: !352, line: 92, baseType: !391, size: 64, offset: 1280)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !352, line: 38, flags: DIFlagFwdDecl)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !351, file: !352, line: 93, baseType: !370, size: 64, offset: 1344)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !351, file: !352, line: 94, baseType: !265, size: 64, offset: 1408)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !351, file: !352, line: 95, baseType: !396, size: 64, offset: 1472)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !397, line: 46, baseType: !398)
!397 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!398 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !351, file: !352, line: 96, baseType: !261, size: 32, offset: 1536)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !351, file: !352, line: 98, baseType: !401, size: 160, offset: 1568)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 160, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 20)
!404 = !{!405}
!405 = !DILocalVariable(name: "__fp", arg: 1, scope: !345, file: !320, line: 56, type: !348)
!406 = !DILocation(line: 0, scope: !345)
!407 = !DILocation(line: 58, column: 10, scope: !345)
!408 = !DILocation(line: 58, column: 3, scope: !345)
!409 = distinct !DISubprogram(name: "getc_unlocked", scope: !320, file: !320, line: 66, type: !346, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !410)
!410 = !{!411}
!411 = !DILocalVariable(name: "__fp", arg: 1, scope: !409, file: !320, line: 66, type: !348)
!412 = !DILocation(line: 0, scope: !409)
!413 = !DILocation(line: 68, column: 10, scope: !409)
!414 = !DILocation(line: 68, column: 3, scope: !409)
!415 = distinct !DISubprogram(name: "getchar_unlocked", scope: !320, file: !320, line: 73, type: !339, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !341)
!416 = !DILocation(line: 75, column: 10, scope: !415)
!417 = !DILocation(line: 75, column: 3, scope: !415)
!418 = distinct !DISubprogram(name: "putchar", scope: !320, file: !320, line: 82, type: !419, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !421)
!419 = !DISubroutineType(types: !420)
!420 = !{!261, !261}
!421 = !{!422}
!422 = !DILocalVariable(name: "__c", arg: 1, scope: !418, file: !320, line: 82, type: !261)
!423 = !DILocation(line: 0, scope: !418)
!424 = !DILocation(line: 84, column: 21, scope: !418)
!425 = !DILocation(line: 84, column: 10, scope: !418)
!426 = !DILocation(line: 84, column: 3, scope: !418)
!427 = distinct !DISubprogram(name: "fputc_unlocked", scope: !320, file: !320, line: 91, type: !428, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !430)
!428 = !DISubroutineType(types: !429)
!429 = !{!261, !261, !348}
!430 = !{!431, !432}
!431 = !DILocalVariable(name: "__c", arg: 1, scope: !427, file: !320, line: 91, type: !261)
!432 = !DILocalVariable(name: "__stream", arg: 2, scope: !427, file: !320, line: 91, type: !348)
!433 = !DILocation(line: 0, scope: !427)
!434 = !DILocation(line: 93, column: 10, scope: !427)
!435 = !DILocation(line: 93, column: 3, scope: !427)
!436 = distinct !DISubprogram(name: "putc_unlocked", scope: !320, file: !320, line: 101, type: !428, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !437)
!437 = !{!438, !439}
!438 = !DILocalVariable(name: "__c", arg: 1, scope: !436, file: !320, line: 101, type: !261)
!439 = !DILocalVariable(name: "__stream", arg: 2, scope: !436, file: !320, line: 101, type: !348)
!440 = !DILocation(line: 0, scope: !436)
!441 = !DILocation(line: 103, column: 10, scope: !436)
!442 = !DILocation(line: 103, column: 3, scope: !436)
!443 = distinct !DISubprogram(name: "putchar_unlocked", scope: !320, file: !320, line: 108, type: !419, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !444)
!444 = !{!445}
!445 = !DILocalVariable(name: "__c", arg: 1, scope: !443, file: !320, line: 108, type: !261)
!446 = !DILocation(line: 0, scope: !443)
!447 = !DILocation(line: 110, column: 10, scope: !443)
!448 = !DILocation(line: 110, column: 3, scope: !443)
!449 = distinct !DISubprogram(name: "getline", scope: !320, file: !320, line: 118, type: !450, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !454)
!450 = !DISubroutineType(types: !451)
!451 = !{!452, !262, !453, !348}
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !375, line: 193, baseType: !306)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!454 = !{!455, !456, !457}
!455 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !449, file: !320, line: 118, type: !262)
!456 = !DILocalVariable(name: "__n", arg: 2, scope: !449, file: !320, line: 118, type: !453)
!457 = !DILocalVariable(name: "__stream", arg: 3, scope: !449, file: !320, line: 118, type: !348)
!458 = !DILocation(line: 0, scope: !449)
!459 = !DILocation(line: 120, column: 10, scope: !449)
!460 = !DILocation(line: 120, column: 3, scope: !449)
!461 = distinct !DISubprogram(name: "feof_unlocked", scope: !320, file: !320, line: 128, type: !346, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !462)
!462 = !{!463}
!463 = !DILocalVariable(name: "__stream", arg: 1, scope: !461, file: !320, line: 128, type: !348)
!464 = !DILocation(line: 0, scope: !461)
!465 = !DILocation(line: 130, column: 10, scope: !461)
!466 = !DILocation(line: 130, column: 3, scope: !461)
!467 = distinct !DISubprogram(name: "ferror_unlocked", scope: !320, file: !320, line: 135, type: !346, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !468)
!468 = !{!469}
!469 = !DILocalVariable(name: "__stream", arg: 1, scope: !467, file: !320, line: 135, type: !348)
!470 = !DILocation(line: 0, scope: !467)
!471 = !DILocation(line: 137, column: 10, scope: !467)
!472 = !DILocation(line: 137, column: 3, scope: !467)
!473 = distinct !DISubprogram(name: "tolower", scope: !474, file: !474, line: 207, type: !419, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !475)
!474 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!475 = !{!476}
!476 = !DILocalVariable(name: "__c", arg: 1, scope: !473, file: !474, line: 207, type: !261)
!477 = !DILocation(line: 0, scope: !473)
!478 = !DILocation(line: 209, column: 22, scope: !473)
!479 = !DILocation(line: 209, column: 39, scope: !473)
!480 = !DILocation(line: 209, column: 38, scope: !473)
!481 = !DILocation(line: 209, column: 37, scope: !473)
!482 = !DILocation(line: 209, column: 10, scope: !473)
!483 = !DILocation(line: 209, column: 3, scope: !473)
!484 = distinct !DISubprogram(name: "toupper", scope: !474, file: !474, line: 213, type: !419, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !485)
!485 = !{!486}
!486 = !DILocalVariable(name: "__c", arg: 1, scope: !484, file: !474, line: 213, type: !261)
!487 = !DILocation(line: 0, scope: !484)
!488 = !DILocation(line: 215, column: 22, scope: !484)
!489 = !DILocation(line: 215, column: 39, scope: !484)
!490 = !DILocation(line: 215, column: 38, scope: !484)
!491 = !DILocation(line: 215, column: 37, scope: !484)
!492 = !DILocation(line: 215, column: 10, scope: !484)
!493 = !DILocation(line: 215, column: 3, scope: !484)
!494 = distinct !DISubprogram(name: "atoi", scope: !495, file: !495, line: 361, type: !496, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !498)
!495 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!496 = !DISubroutineType(types: !497)
!497 = !{!261, !266}
!498 = !{!499}
!499 = !DILocalVariable(name: "__nptr", arg: 1, scope: !494, file: !495, line: 361, type: !266)
!500 = !DILocation(line: 0, scope: !494)
!501 = !DILocation(line: 363, column: 16, scope: !494)
!502 = !DILocation(line: 363, column: 10, scope: !494)
!503 = !DILocation(line: 363, column: 3, scope: !494)
!504 = distinct !DISubprogram(name: "atol", scope: !495, file: !495, line: 366, type: !505, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !507)
!505 = !DISubroutineType(types: !506)
!506 = !{!306, !266}
!507 = !{!508}
!508 = !DILocalVariable(name: "__nptr", arg: 1, scope: !504, file: !495, line: 366, type: !266)
!509 = !DILocation(line: 0, scope: !504)
!510 = !DILocation(line: 368, column: 10, scope: !504)
!511 = !DILocation(line: 368, column: 3, scope: !504)
!512 = distinct !DISubprogram(name: "atoll", scope: !495, file: !495, line: 373, type: !513, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !516)
!513 = !DISubroutineType(types: !514)
!514 = !{!515, !266}
!515 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!516 = !{!517}
!517 = !DILocalVariable(name: "__nptr", arg: 1, scope: !512, file: !495, line: 373, type: !266)
!518 = !DILocation(line: 0, scope: !512)
!519 = !DILocation(line: 375, column: 10, scope: !512)
!520 = !DILocation(line: 375, column: 3, scope: !512)
!521 = distinct !DISubprogram(name: "bsearch", scope: !522, file: !522, line: 20, type: !523, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !531)
!522 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!523 = !DISubroutineType(types: !524)
!524 = !{!265, !525, !525, !396, !396, !527}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !495, line: 808, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!261, !525, !525}
!531 = !{!532, !533, !534, !535, !536, !537, !538, !539, !540, !541}
!532 = !DILocalVariable(name: "__key", arg: 1, scope: !521, file: !522, line: 20, type: !525)
!533 = !DILocalVariable(name: "__base", arg: 2, scope: !521, file: !522, line: 20, type: !525)
!534 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !521, file: !522, line: 20, type: !396)
!535 = !DILocalVariable(name: "__size", arg: 4, scope: !521, file: !522, line: 20, type: !396)
!536 = !DILocalVariable(name: "__compar", arg: 5, scope: !521, file: !522, line: 21, type: !527)
!537 = !DILocalVariable(name: "__l", scope: !521, file: !522, line: 23, type: !396)
!538 = !DILocalVariable(name: "__u", scope: !521, file: !522, line: 23, type: !396)
!539 = !DILocalVariable(name: "__idx", scope: !521, file: !522, line: 23, type: !396)
!540 = !DILocalVariable(name: "__p", scope: !521, file: !522, line: 24, type: !525)
!541 = !DILocalVariable(name: "__comparison", scope: !521, file: !522, line: 25, type: !261)
!542 = !DILocation(line: 0, scope: !521)
!543 = !DILocation(line: 29, column: 3, scope: !521)
!544 = !DILocation(line: 27, column: 7, scope: !521)
!545 = !DILocation(line: 29, column: 14, scope: !521)
!546 = !DILocation(line: 31, column: 20, scope: !547)
!547 = distinct !DILexicalBlock(scope: !521, file: !522, line: 30, column: 5)
!548 = !DILocation(line: 31, column: 27, scope: !547)
!549 = !DILocation(line: 32, column: 56, scope: !547)
!550 = !DILocation(line: 32, column: 47, scope: !547)
!551 = !DILocation(line: 33, column: 22, scope: !547)
!552 = !DILocation(line: 34, column: 24, scope: !553)
!553 = distinct !DILexicalBlock(scope: !547, file: !522, line: 34, column: 11)
!554 = !DILocation(line: 34, column: 11, scope: !547)
!555 = !DILocation(line: 36, column: 29, scope: !556)
!556 = distinct !DILexicalBlock(scope: !553, file: !522, line: 36, column: 16)
!557 = !DILocation(line: 36, column: 16, scope: !553)
!558 = !DILocation(line: 37, column: 14, scope: !556)
!559 = distinct !{!559, !543, !560}
!560 = !DILocation(line: 40, column: 5, scope: !521)
!561 = !DILocation(line: 43, column: 1, scope: !521)
!562 = distinct !DISubprogram(name: "atof", scope: !563, file: !563, line: 25, type: !564, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !567)
!563 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!564 = !DISubroutineType(types: !565)
!565 = !{!566, !266}
!566 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!567 = !{!568}
!568 = !DILocalVariable(name: "__nptr", arg: 1, scope: !562, file: !563, line: 25, type: !266)
!569 = !DILocation(line: 0, scope: !562)
!570 = !DILocation(line: 27, column: 10, scope: !562)
!571 = !DILocation(line: 27, column: 3, scope: !562)
!572 = distinct !DISubprogram(name: "strtoimax", scope: !573, file: !573, line: 324, type: !574, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !580)
!573 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!574 = !DISubroutineType(types: !575)
!575 = !{!576, !323, !579, !261}
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !577, line: 101, baseType: !578)
!577 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !375, line: 72, baseType: !306)
!579 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !262)
!580 = !{!581, !582, !583}
!581 = !DILocalVariable(name: "nptr", arg: 1, scope: !572, file: !573, line: 324, type: !323)
!582 = !DILocalVariable(name: "endptr", arg: 2, scope: !572, file: !573, line: 324, type: !579)
!583 = !DILocalVariable(name: "base", arg: 3, scope: !572, file: !573, line: 324, type: !261)
!584 = !DILocation(line: 0, scope: !572)
!585 = !DILocation(line: 327, column: 10, scope: !572)
!586 = !DILocation(line: 327, column: 3, scope: !572)
!587 = distinct !DISubprogram(name: "strtoumax", scope: !573, file: !573, line: 336, type: !588, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !592)
!588 = !DISubroutineType(types: !589)
!589 = !{!590, !323, !579, !261}
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !577, line: 102, baseType: !591)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !375, line: 73, baseType: !398)
!592 = !{!593, !594, !595}
!593 = !DILocalVariable(name: "nptr", arg: 1, scope: !587, file: !573, line: 336, type: !323)
!594 = !DILocalVariable(name: "endptr", arg: 2, scope: !587, file: !573, line: 336, type: !579)
!595 = !DILocalVariable(name: "base", arg: 3, scope: !587, file: !573, line: 336, type: !261)
!596 = !DILocation(line: 0, scope: !587)
!597 = !DILocation(line: 339, column: 10, scope: !587)
!598 = !DILocation(line: 339, column: 3, scope: !587)
!599 = distinct !DISubprogram(name: "wcstoimax", scope: !573, file: !573, line: 348, type: !600, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !609)
!600 = !DISubroutineType(types: !601)
!601 = !{!576, !602, !606, !261}
!602 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !603)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !605)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !573, line: 34, baseType: !261)
!606 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !607)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!609 = !{!610, !611, !612}
!610 = !DILocalVariable(name: "nptr", arg: 1, scope: !599, file: !573, line: 348, type: !602)
!611 = !DILocalVariable(name: "endptr", arg: 2, scope: !599, file: !573, line: 348, type: !606)
!612 = !DILocalVariable(name: "base", arg: 3, scope: !599, file: !573, line: 348, type: !261)
!613 = !DILocation(line: 0, scope: !599)
!614 = !DILocation(line: 351, column: 10, scope: !599)
!615 = !DILocation(line: 351, column: 3, scope: !599)
!616 = distinct !DISubprogram(name: "wcstoumax", scope: !573, file: !573, line: 362, type: !617, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !619)
!617 = !DISubroutineType(types: !618)
!618 = !{!590, !602, !606, !261}
!619 = !{!620, !621, !622}
!620 = !DILocalVariable(name: "nptr", arg: 1, scope: !616, file: !573, line: 362, type: !602)
!621 = !DILocalVariable(name: "endptr", arg: 2, scope: !616, file: !573, line: 362, type: !606)
!622 = !DILocalVariable(name: "base", arg: 3, scope: !616, file: !573, line: 362, type: !261)
!623 = !DILocation(line: 0, scope: !616)
!624 = !DILocation(line: 365, column: 10, scope: !616)
!625 = !DILocation(line: 365, column: 3, scope: !616)
!626 = distinct !DISubprogram(name: "stat", scope: !627, file: !627, line: 453, type: !628, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !667)
!627 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!628 = !DISubroutineType(types: !629)
!629 = !{!261, !266, !630}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !632, line: 46, size: 1152, elements: !633)
!632 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!633 = !{!634, !636, !638, !640, !642, !644, !646, !647, !648, !649, !651, !653, !661, !662, !663}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !631, file: !632, line: 48, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !375, line: 145, baseType: !398)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !631, file: !632, line: 53, baseType: !637, size: 64, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !375, line: 148, baseType: !398)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !631, file: !632, line: 61, baseType: !639, size: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !375, line: 151, baseType: !398)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !631, file: !632, line: 62, baseType: !641, size: 32, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !375, line: 150, baseType: !5)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !631, file: !632, line: 64, baseType: !643, size: 32, offset: 224)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !375, line: 146, baseType: !5)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !631, file: !632, line: 65, baseType: !645, size: 32, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !375, line: 147, baseType: !5)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !631, file: !632, line: 67, baseType: !261, size: 32, offset: 288)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !631, file: !632, line: 69, baseType: !635, size: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !631, file: !632, line: 74, baseType: !374, size: 64, offset: 384)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !631, file: !632, line: 78, baseType: !650, size: 64, offset: 448)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !375, line: 174, baseType: !306)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !631, file: !632, line: 80, baseType: !652, size: 64, offset: 512)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !375, line: 179, baseType: !306)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !631, file: !632, line: 91, baseType: !654, size: 128, offset: 576)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !655, line: 10, size: 128, elements: !656)
!655 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!656 = !{!657, !659}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !654, file: !655, line: 12, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !375, line: 160, baseType: !306)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !654, file: !655, line: 16, baseType: !660, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !375, line: 196, baseType: !306)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !631, file: !632, line: 92, baseType: !654, size: 128, offset: 704)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !631, file: !632, line: 93, baseType: !654, size: 128, offset: 832)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !631, file: !632, line: 106, baseType: !664, size: 192, offset: 960)
!664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !660, size: 192, elements: !665)
!665 = !{!666}
!666 = !DISubrange(count: 3)
!667 = !{!668, !669}
!668 = !DILocalVariable(name: "__path", arg: 1, scope: !626, file: !627, line: 453, type: !266)
!669 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !626, file: !627, line: 453, type: !630)
!670 = !DILocation(line: 0, scope: !626)
!671 = !DILocation(line: 455, column: 10, scope: !626)
!672 = !DILocation(line: 455, column: 3, scope: !626)
!673 = distinct !DISubprogram(name: "lstat", scope: !627, file: !627, line: 460, type: !628, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !674)
!674 = !{!675, !676}
!675 = !DILocalVariable(name: "__path", arg: 1, scope: !673, file: !627, line: 460, type: !266)
!676 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !673, file: !627, line: 460, type: !630)
!677 = !DILocation(line: 0, scope: !673)
!678 = !DILocation(line: 462, column: 10, scope: !673)
!679 = !DILocation(line: 462, column: 3, scope: !673)
!680 = distinct !DISubprogram(name: "fstat", scope: !627, file: !627, line: 467, type: !681, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !683)
!681 = !DISubroutineType(types: !682)
!682 = !{!261, !261, !630}
!683 = !{!684, !685}
!684 = !DILocalVariable(name: "__fd", arg: 1, scope: !680, file: !627, line: 467, type: !261)
!685 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !680, file: !627, line: 467, type: !630)
!686 = !DILocation(line: 0, scope: !680)
!687 = !DILocation(line: 469, column: 10, scope: !680)
!688 = !DILocation(line: 469, column: 3, scope: !680)
!689 = distinct !DISubprogram(name: "fstatat", scope: !627, file: !627, line: 474, type: !690, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !692)
!690 = !DISubroutineType(types: !691)
!691 = !{!261, !261, !266, !630, !261}
!692 = !{!693, !694, !695, !696}
!693 = !DILocalVariable(name: "__fd", arg: 1, scope: !689, file: !627, line: 474, type: !261)
!694 = !DILocalVariable(name: "__filename", arg: 2, scope: !689, file: !627, line: 474, type: !266)
!695 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !689, file: !627, line: 474, type: !630)
!696 = !DILocalVariable(name: "__flag", arg: 4, scope: !689, file: !627, line: 474, type: !261)
!697 = !DILocation(line: 0, scope: !689)
!698 = !DILocation(line: 477, column: 10, scope: !689)
!699 = !DILocation(line: 477, column: 3, scope: !689)
!700 = distinct !DISubprogram(name: "mknod", scope: !627, file: !627, line: 483, type: !701, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !703)
!701 = !DISubroutineType(types: !702)
!702 = !{!261, !266, !641, !635}
!703 = !{!704, !705, !706}
!704 = !DILocalVariable(name: "__path", arg: 1, scope: !700, file: !627, line: 483, type: !266)
!705 = !DILocalVariable(name: "__mode", arg: 2, scope: !700, file: !627, line: 483, type: !641)
!706 = !DILocalVariable(name: "__dev", arg: 3, scope: !700, file: !627, line: 483, type: !635)
!707 = !DILocation(line: 0, scope: !700)
!708 = !DILocation(line: 485, column: 10, scope: !700)
!709 = !DILocation(line: 485, column: 3, scope: !700)
!710 = distinct !DISubprogram(name: "mknodat", scope: !627, file: !627, line: 491, type: !711, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !713)
!711 = !DISubroutineType(types: !712)
!712 = !{!261, !261, !266, !641, !635}
!713 = !{!714, !715, !716, !717}
!714 = !DILocalVariable(name: "__fd", arg: 1, scope: !710, file: !627, line: 491, type: !261)
!715 = !DILocalVariable(name: "__path", arg: 2, scope: !710, file: !627, line: 491, type: !266)
!716 = !DILocalVariable(name: "__mode", arg: 3, scope: !710, file: !627, line: 491, type: !641)
!717 = !DILocalVariable(name: "__dev", arg: 4, scope: !710, file: !627, line: 491, type: !635)
!718 = !DILocation(line: 0, scope: !710)
!719 = !DILocation(line: 494, column: 10, scope: !710)
!720 = !DILocation(line: 494, column: 3, scope: !710)
!721 = distinct !DISubprogram(name: "stat64", scope: !627, file: !627, line: 502, type: !722, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !744)
!722 = !DISubroutineType(types: !723)
!723 = !{!261, !266, !724}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !632, line: 119, size: 1152, elements: !726)
!726 = !{!727, !728, !730, !731, !732, !733, !734, !735, !736, !737, !738, !740, !741, !742, !743}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !725, file: !632, line: 121, baseType: !635, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !725, file: !632, line: 123, baseType: !729, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !375, line: 149, baseType: !398)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !725, file: !632, line: 124, baseType: !639, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !725, file: !632, line: 125, baseType: !641, size: 32, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !725, file: !632, line: 132, baseType: !643, size: 32, offset: 224)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !725, file: !632, line: 133, baseType: !645, size: 32, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !725, file: !632, line: 135, baseType: !261, size: 32, offset: 288)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !725, file: !632, line: 136, baseType: !635, size: 64, offset: 320)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !725, file: !632, line: 137, baseType: !374, size: 64, offset: 384)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !725, file: !632, line: 143, baseType: !650, size: 64, offset: 448)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !725, file: !632, line: 144, baseType: !739, size: 64, offset: 512)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !375, line: 180, baseType: !306)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !725, file: !632, line: 152, baseType: !654, size: 128, offset: 576)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !725, file: !632, line: 153, baseType: !654, size: 128, offset: 704)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !725, file: !632, line: 154, baseType: !654, size: 128, offset: 832)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !725, file: !632, line: 164, baseType: !664, size: 192, offset: 960)
!744 = !{!745, !746}
!745 = !DILocalVariable(name: "__path", arg: 1, scope: !721, file: !627, line: 502, type: !266)
!746 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !721, file: !627, line: 502, type: !724)
!747 = !DILocation(line: 0, scope: !721)
!748 = !DILocation(line: 504, column: 10, scope: !721)
!749 = !DILocation(line: 504, column: 3, scope: !721)
!750 = distinct !DISubprogram(name: "lstat64", scope: !627, file: !627, line: 509, type: !722, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !751)
!751 = !{!752, !753}
!752 = !DILocalVariable(name: "__path", arg: 1, scope: !750, file: !627, line: 509, type: !266)
!753 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !750, file: !627, line: 509, type: !724)
!754 = !DILocation(line: 0, scope: !750)
!755 = !DILocation(line: 511, column: 10, scope: !750)
!756 = !DILocation(line: 511, column: 3, scope: !750)
!757 = distinct !DISubprogram(name: "fstat64", scope: !627, file: !627, line: 516, type: !758, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !760)
!758 = !DISubroutineType(types: !759)
!759 = !{!261, !261, !724}
!760 = !{!761, !762}
!761 = !DILocalVariable(name: "__fd", arg: 1, scope: !757, file: !627, line: 516, type: !261)
!762 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !757, file: !627, line: 516, type: !724)
!763 = !DILocation(line: 0, scope: !757)
!764 = !DILocation(line: 518, column: 10, scope: !757)
!765 = !DILocation(line: 518, column: 3, scope: !757)
!766 = distinct !DISubprogram(name: "fstatat64", scope: !627, file: !627, line: 523, type: !767, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !769)
!767 = !DISubroutineType(types: !768)
!768 = !{!261, !261, !266, !724, !261}
!769 = !{!770, !771, !772, !773}
!770 = !DILocalVariable(name: "__fd", arg: 1, scope: !766, file: !627, line: 523, type: !261)
!771 = !DILocalVariable(name: "__filename", arg: 2, scope: !766, file: !627, line: 523, type: !266)
!772 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !766, file: !627, line: 523, type: !724)
!773 = !DILocalVariable(name: "__flag", arg: 4, scope: !766, file: !627, line: 523, type: !261)
!774 = !DILocation(line: 0, scope: !766)
!775 = !DILocation(line: 526, column: 10, scope: !766)
!776 = !DILocation(line: 526, column: 3, scope: !766)
!777 = distinct !DISubprogram(name: "sum_edge_counts", scope: !1, file: !1, line: 1372, type: !778, scopeLine: 1373, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1629)
!778 = !DISubroutineType(types: !779)
!779 = !{!305, !780}
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !4, line: 151, baseType: !782)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !4, line: 151, size: 128, elements: !783)
!783 = !{!784}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !782, file: !4, line: 151, baseType: !785, size: 128)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !4, line: 150, baseType: !786)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !4, line: 150, size: 128, elements: !787)
!787 = !{!788, !789, !790}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !786, file: !4, line: 150, baseType: !5, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !786, file: !4, line: 150, baseType: !5, size: 32, offset: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !786, file: !4, line: 150, baseType: !791, size: 64, offset: 64)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !792, size: 64, elements: !311)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !793, line: 108, baseType: !794)
!793 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !4, line: 122, size: 512, elements: !796)
!796 = !{!797, !845, !846, !851, !852, !1624, !1625, !1626, !1627, !1628}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !795, file: !4, line: 124, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !4, line: 217, size: 832, elements: !800)
!800 = !{!801, !802, !803, !804, !807, !813, !814, !815, !839, !840, !841, !842, !843, !844}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !799, file: !4, line: 219, baseType: !780, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !799, file: !4, line: 220, baseType: !780, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !799, file: !4, line: 223, baseType: !265, size: 64, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !799, file: !4, line: 226, baseType: !805, size: 64, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !4, line: 185, flags: DIFlagFwdDecl)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !799, file: !4, line: 229, baseType: !808, size: 128, offset: 256)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !809, size: 128, elements: !811)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !4, line: 229, flags: DIFlagFwdDecl)
!811 = !{!812}
!812 = !DISubrange(count: 2)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !799, file: !4, line: 232, baseType: !798, size: 64, offset: 384)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !799, file: !4, line: 233, baseType: !798, size: 64, offset: 448)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !799, file: !4, line: 238, baseType: !816, size: 64, offset: 512)
!816 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !4, line: 235, size: 64, elements: !817)
!817 = !{!818, !827}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !816, file: !4, line: 236, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !4, line: 273, size: 128, elements: !821)
!821 = !{!822, !826}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !820, file: !4, line: 275, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !793, line: 66, baseType: !824)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !793, line: 65, flags: DIFlagFwdDecl)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !820, file: !4, line: 278, baseType: !823, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !816, file: !4, line: 237, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !4, line: 259, size: 320, elements: !830)
!830 = !{!831, !835, !836, !837, !838}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !829, file: !4, line: 261, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !793, line: 50, baseType: !833)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !793, line: 49, flags: DIFlagFwdDecl)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !829, file: !4, line: 262, baseType: !832, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !829, file: !4, line: 266, baseType: !832, size: 64, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !829, file: !4, line: 267, baseType: !832, size: 64, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !829, file: !4, line: 270, baseType: !261, size: 32, offset: 256)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !799, file: !4, line: 241, baseType: !305, size: 64, offset: 576)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !799, file: !4, line: 244, baseType: !261, size: 32, offset: 640)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !799, file: !4, line: 247, baseType: !261, size: 32, offset: 672)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !799, file: !4, line: 250, baseType: !261, size: 32, offset: 704)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !799, file: !4, line: 253, baseType: !261, size: 32, offset: 736)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !799, file: !4, line: 256, baseType: !261, size: 32, offset: 768)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !795, file: !4, line: 125, baseType: !798, size: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !795, file: !4, line: 131, baseType: !847, size: 64, offset: 128)
!847 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !4, line: 128, size: 64, elements: !848)
!848 = !{!849, !850}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !847, file: !4, line: 129, baseType: !823, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !847, file: !4, line: 130, baseType: !832, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !795, file: !4, line: 134, baseType: !265, size: 64, offset: 192)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !795, file: !4, line: 137, baseType: !853, size: 64, offset: 256)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !793, line: 56, baseType: !854)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !21, line: 3371, size: 1792, elements: !856)
!856 = !{!857, !890, !896, !907, !914, !921, !926, !932, !938, !951, !963, !1001, !1006, !1034, !1042, !1043, !1048, !1057, !1063, !1068, !1072, !1076, !1249, !1298, !1304, !1311, !1318, !1344, !1369, !1386, !1398, !1420, !1435, !1606}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !855, file: !21, line: 3372, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !21, line: 360, size: 64, elements: !859)
!859 = !{!860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !858, file: !21, line: 361, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !858, file: !21, line: 363, baseType: !5, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !858, file: !21, line: 364, baseType: !5, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !858, file: !21, line: 365, baseType: !5, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !858, file: !21, line: 366, baseType: !5, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !858, file: !21, line: 367, baseType: !5, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !858, file: !21, line: 368, baseType: !5, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !858, file: !21, line: 369, baseType: !5, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !858, file: !21, line: 370, baseType: !5, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !858, file: !21, line: 372, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !858, file: !21, line: 373, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !858, file: !21, line: 374, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !858, file: !21, line: 375, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !858, file: !21, line: 376, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !858, file: !21, line: 377, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !858, file: !21, line: 378, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !858, file: !21, line: 379, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !858, file: !21, line: 381, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !858, file: !21, line: 382, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !858, file: !21, line: 383, baseType: !5, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !858, file: !21, line: 384, baseType: !5, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !858, file: !21, line: 385, baseType: !5, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !858, file: !21, line: 386, baseType: !5, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !858, file: !21, line: 387, baseType: !5, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !858, file: !21, line: 388, baseType: !5, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !858, file: !21, line: 390, baseType: !5, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !858, file: !21, line: 391, baseType: !5, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !858, file: !21, line: 392, baseType: !5, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !858, file: !21, line: 394, baseType: !5, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !858, file: !21, line: 399, baseType: !5, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !855, file: !21, line: 3373, baseType: !891, size: 192)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !21, line: 402, size: 192, elements: !892)
!892 = !{!893, !894, !895}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !891, file: !21, line: 403, baseType: !858, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !891, file: !21, line: 404, baseType: !853, size: 64, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !891, file: !21, line: 405, baseType: !853, size: 64, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !855, file: !21, line: 3374, baseType: !897, size: 320)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !21, line: 1384, size: 320, elements: !898)
!898 = !{!899, !900}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !897, file: !21, line: 1385, baseType: !891, size: 192)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !897, file: !21, line: 1386, baseType: !901, size: 128, offset: 192)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !902, line: 58, baseType: !903)
!902 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !902, line: 54, size: 128, elements: !904)
!904 = !{!905, !906}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !903, file: !902, line: 56, baseType: !398, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !903, file: !902, line: 57, baseType: !306, size: 64, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !855, file: !21, line: 3375, baseType: !908, size: 256)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !21, line: 1397, size: 256, elements: !909)
!909 = !{!910, !911}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !908, file: !21, line: 1398, baseType: !891, size: 192)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !908, file: !21, line: 1399, baseType: !912, size: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !21, line: 1392, flags: DIFlagFwdDecl)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !855, file: !21, line: 3376, baseType: !915, size: 256)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !21, line: 1408, size: 256, elements: !916)
!916 = !{!917, !918}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !915, file: !21, line: 1409, baseType: !891, size: 192)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !915, file: !21, line: 1410, baseType: !919, size: 64, offset: 192)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !21, line: 1403, flags: DIFlagFwdDecl)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !855, file: !21, line: 3377, baseType: !922, size: 256)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !21, line: 1437, size: 256, elements: !923)
!923 = !{!924, !925}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !922, file: !21, line: 1438, baseType: !891, size: 192)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !922, file: !21, line: 1439, baseType: !853, size: 64, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !855, file: !21, line: 3378, baseType: !927, size: 256)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !21, line: 1418, size: 256, elements: !928)
!928 = !{!929, !930, !931}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !927, file: !21, line: 1419, baseType: !891, size: 192)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !927, file: !21, line: 1420, baseType: !261, size: 32, offset: 192)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !927, file: !21, line: 1421, baseType: !381, size: 8, offset: 224)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !855, file: !21, line: 3379, baseType: !933, size: 320)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !21, line: 1428, size: 320, elements: !934)
!934 = !{!935, !936, !937}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !933, file: !21, line: 1429, baseType: !891, size: 192)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !933, file: !21, line: 1430, baseType: !853, size: 64, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !933, file: !21, line: 1431, baseType: !853, size: 64, offset: 256)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !855, file: !21, line: 3380, baseType: !939, size: 320)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !21, line: 1460, size: 320, elements: !940)
!940 = !{!941, !942}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !939, file: !21, line: 1461, baseType: !891, size: 192)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !939, file: !21, line: 1462, baseType: !943, size: 128, offset: 192)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !944, line: 31, size: 128, elements: !945)
!944 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!945 = !{!946, !949, !950}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !943, file: !944, line: 32, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !943, file: !944, line: 33, baseType: !5, size: 32, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !943, file: !944, line: 34, baseType: !5, size: 32, offset: 96)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !855, file: !21, line: 3381, baseType: !952, size: 384)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !21, line: 2507, size: 384, elements: !953)
!953 = !{!954, !955, !960, !961, !962}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !952, file: !21, line: 2508, baseType: !891, size: 192)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !952, file: !21, line: 2509, baseType: !956, size: 32, offset: 192)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !957, line: 58, baseType: !958)
!957 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !959, line: 44, baseType: !5)
!959 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!960 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !952, file: !21, line: 2510, baseType: !5, size: 32, offset: 224)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !952, file: !21, line: 2511, baseType: !853, size: 64, offset: 256)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !952, file: !21, line: 2512, baseType: !853, size: 64, offset: 320)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !855, file: !21, line: 3382, baseType: !964, size: 896)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !21, line: 2652, size: 896, elements: !965)
!965 = !{!966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !964, file: !21, line: 2653, baseType: !952, size: 384)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !964, file: !21, line: 2654, baseType: !853, size: 64, offset: 384)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !964, file: !21, line: 2656, baseType: !5, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !964, file: !21, line: 2658, baseType: !5, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !964, file: !21, line: 2659, baseType: !5, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !964, file: !21, line: 2660, baseType: !5, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !964, file: !21, line: 2661, baseType: !5, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !964, file: !21, line: 2662, baseType: !5, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !964, file: !21, line: 2663, baseType: !5, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !964, file: !21, line: 2664, baseType: !5, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !964, file: !21, line: 2666, baseType: !5, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !964, file: !21, line: 2667, baseType: !5, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !964, file: !21, line: 2668, baseType: !5, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !964, file: !21, line: 2669, baseType: !5, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !964, file: !21, line: 2670, baseType: !5, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !964, file: !21, line: 2671, baseType: !5, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !964, file: !21, line: 2672, baseType: !5, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !964, file: !21, line: 2673, baseType: !5, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !964, file: !21, line: 2674, baseType: !5, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !964, file: !21, line: 2678, baseType: !5, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !964, file: !21, line: 2682, baseType: !5, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !964, file: !21, line: 2685, baseType: !5, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !964, file: !21, line: 2688, baseType: !5, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !964, file: !21, line: 2690, baseType: !5, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !964, file: !21, line: 2692, baseType: !5, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !964, file: !21, line: 2695, baseType: !5, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !964, file: !21, line: 2698, baseType: !5, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !964, file: !21, line: 2703, baseType: !5, size: 32, offset: 512)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !964, file: !21, line: 2705, baseType: !853, size: 64, offset: 576)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !964, file: !21, line: 2706, baseType: !853, size: 64, offset: 640)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !964, file: !21, line: 2707, baseType: !853, size: 64, offset: 704)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !964, file: !21, line: 2708, baseType: !853, size: 64, offset: 768)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !964, file: !21, line: 2711, baseType: !999, size: 64, offset: 832)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !21, line: 2711, flags: DIFlagFwdDecl)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !855, file: !21, line: 3383, baseType: !1002, size: 960)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !21, line: 2756, size: 960, elements: !1003)
!1003 = !{!1004, !1005}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1002, file: !21, line: 2757, baseType: !964, size: 896)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1002, file: !21, line: 2758, baseType: !832, size: 64, offset: 896)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !855, file: !21, line: 3384, baseType: !1007, size: 1472)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !21, line: 3114, size: 1472, elements: !1008)
!1008 = !{!1009, !1030, !1031, !1032, !1033}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1007, file: !21, line: 3115, baseType: !1010, size: 1216)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !21, line: 2984, size: 1216, elements: !1011)
!1011 = !{!1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1010, file: !21, line: 2985, baseType: !1002, size: 960)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1010, file: !21, line: 2986, baseType: !853, size: 64, offset: 960)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1010, file: !21, line: 2987, baseType: !853, size: 64, offset: 1024)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1010, file: !21, line: 2988, baseType: !853, size: 64, offset: 1088)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1010, file: !21, line: 2991, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1010, file: !21, line: 2992, baseType: !5, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1010, file: !21, line: 2993, baseType: !5, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1010, file: !21, line: 2994, baseType: !5, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1010, file: !21, line: 2995, baseType: !5, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1010, file: !21, line: 2996, baseType: !5, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1010, file: !21, line: 2998, baseType: !5, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1010, file: !21, line: 3000, baseType: !5, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1010, file: !21, line: 3002, baseType: !5, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1010, file: !21, line: 3003, baseType: !5, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1010, file: !21, line: 3004, baseType: !5, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1010, file: !21, line: 3005, baseType: !5, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1010, file: !21, line: 3007, baseType: !5, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1010, file: !21, line: 3010, baseType: !5, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1007, file: !21, line: 3117, baseType: !853, size: 64, offset: 1216)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1007, file: !21, line: 3119, baseType: !853, size: 64, offset: 1280)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1007, file: !21, line: 3121, baseType: !853, size: 64, offset: 1344)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1007, file: !21, line: 3123, baseType: !853, size: 64, offset: 1408)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !855, file: !21, line: 3385, baseType: !1035, size: 1088)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !21, line: 2874, size: 1088, elements: !1036)
!1036 = !{!1037, !1038, !1039}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1035, file: !21, line: 2875, baseType: !1002, size: 960)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1035, file: !21, line: 2876, baseType: !832, size: 64, offset: 960)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1035, file: !21, line: 2877, baseType: !1040, size: 64, offset: 1024)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !21, line: 2856, flags: DIFlagFwdDecl)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !855, file: !21, line: 3386, baseType: !1010, size: 1216)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !855, file: !21, line: 3387, baseType: !1044, size: 1280)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !21, line: 3093, size: 1280, elements: !1045)
!1045 = !{!1046, !1047}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1044, file: !21, line: 3094, baseType: !1010, size: 1216)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1044, file: !21, line: 3095, baseType: !1040, size: 64, offset: 1216)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !855, file: !21, line: 3388, baseType: !1049, size: 1216)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !21, line: 2824, size: 1216, elements: !1050)
!1050 = !{!1051, !1052, !1053, !1054, !1055, !1056}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1049, file: !21, line: 2825, baseType: !964, size: 896)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1049, file: !21, line: 2827, baseType: !853, size: 64, offset: 896)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1049, file: !21, line: 2828, baseType: !853, size: 64, offset: 960)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1049, file: !21, line: 2829, baseType: !853, size: 64, offset: 1024)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1049, file: !21, line: 2830, baseType: !853, size: 64, offset: 1088)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1049, file: !21, line: 2831, baseType: !853, size: 64, offset: 1152)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !855, file: !21, line: 3389, baseType: !1058, size: 1024)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !21, line: 2850, size: 1024, elements: !1059)
!1059 = !{!1060, !1061, !1062}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1058, file: !21, line: 2851, baseType: !1002, size: 960)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1058, file: !21, line: 2852, baseType: !261, size: 32, offset: 960)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1058, file: !21, line: 2853, baseType: !261, size: 32, offset: 992)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !855, file: !21, line: 3390, baseType: !1064, size: 1024)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !21, line: 2857, size: 1024, elements: !1065)
!1065 = !{!1066, !1067}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1064, file: !21, line: 2858, baseType: !1002, size: 960)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1064, file: !21, line: 2859, baseType: !1040, size: 64, offset: 960)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !855, file: !21, line: 3391, baseType: !1069, size: 960)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !21, line: 2862, size: 960, elements: !1070)
!1070 = !{!1071}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1069, file: !21, line: 2863, baseType: !1002, size: 960)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !855, file: !21, line: 3392, baseType: !1073, size: 1472)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !21, line: 3304, size: 1472, elements: !1074)
!1074 = !{!1075}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1073, file: !21, line: 3305, baseType: !1007, size: 1472)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !855, file: !21, line: 3393, baseType: !1077, size: 1792)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !21, line: 3248, size: 1792, elements: !1078)
!1078 = !{!1079, !1080, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1077, file: !21, line: 3249, baseType: !1007, size: 1472)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1077, file: !21, line: 3251, baseType: !1081, size: 64, offset: 1472)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1083, line: 463, size: 1152, elements: !1084)
!1083 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1084 = !{!1085, !1088, !1119, !1120, !1123, !1126, !1171, !1172, !1173, !1174, !1175, !1201, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1082, file: !1083, line: 464, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1083, line: 464, flags: DIFlagFwdDecl)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1082, file: !1083, line: 467, baseType: !1089, size: 64, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !4, line: 374, size: 640, elements: !1091)
!1091 = !{!1092, !1094, !1095, !1108, !1109, !1110, !1111, !1112, !1113, !1115, !1117, !1118}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1090, file: !4, line: 377, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !793, line: 111, baseType: !798)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1090, file: !4, line: 378, baseType: !1093, size: 64, offset: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1090, file: !4, line: 381, baseType: !1096, size: 64, offset: 128)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !4, line: 282, baseType: !1098)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !4, line: 282, size: 128, elements: !1099)
!1099 = !{!1100}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1098, file: !4, line: 282, baseType: !1101, size: 128)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !4, line: 281, baseType: !1102)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !4, line: 281, size: 128, elements: !1103)
!1103 = !{!1104, !1105, !1106}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1102, file: !4, line: 281, baseType: !5, size: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1102, file: !4, line: 281, baseType: !5, size: 32, offset: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1102, file: !4, line: 281, baseType: !1107, size: 64, offset: 64)
!1107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1093, size: 64, elements: !311)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1090, file: !4, line: 384, baseType: !261, size: 32, offset: 192)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1090, file: !4, line: 387, baseType: !261, size: 32, offset: 224)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1090, file: !4, line: 390, baseType: !261, size: 32, offset: 256)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1090, file: !4, line: 394, baseType: !1096, size: 64, offset: 320)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1090, file: !4, line: 396, baseType: !3, size: 32, offset: 384)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1090, file: !4, line: 399, baseType: !1114, size: 64, offset: 416)
!1114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 64, elements: !811)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1090, file: !4, line: 402, baseType: !1116, size: 64, offset: 480)
!1116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !811)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1090, file: !4, line: 406, baseType: !261, size: 32, offset: 544)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1090, file: !4, line: 409, baseType: !261, size: 32, offset: 576)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1082, file: !1083, line: 470, baseType: !824, size: 64, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1082, file: !1083, line: 473, baseType: !1121, size: 64, offset: 192)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1083, line: 166, flags: DIFlagFwdDecl)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1082, file: !1083, line: 476, baseType: !1124, size: 64, offset: 256)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1083, line: 476, flags: DIFlagFwdDecl)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1082, file: !1083, line: 479, baseType: !1127, size: 64, offset: 320)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1128, line: 144, baseType: !1129)
!1128 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1128, line: 100, size: 896, elements: !1131)
!1131 = !{!1132, !1138, !1140, !1145, !1147, !1148, !1149, !1150, !1151, !1152, !1157, !1159, !1160, !1165, !1170}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1130, file: !1128, line: 102, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1128, line: 52, baseType: !1134)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!1137, !525}
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1128, line: 47, baseType: !5)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1130, file: !1128, line: 105, baseType: !1139, size: 64, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1128, line: 59, baseType: !528)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1130, file: !1128, line: 108, baseType: !1141, size: 64, offset: 128)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1128, line: 63, baseType: !1142)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{null, !265}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1130, file: !1128, line: 111, baseType: !1146, size: 64, offset: 192)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1130, file: !1128, line: 114, baseType: !396, size: 64, offset: 256)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1130, file: !1128, line: 117, baseType: !396, size: 64, offset: 320)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1130, file: !1128, line: 120, baseType: !396, size: 64, offset: 384)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1130, file: !1128, line: 124, baseType: !5, size: 32, offset: 448)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1130, file: !1128, line: 128, baseType: !5, size: 32, offset: 480)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1130, file: !1128, line: 131, baseType: !1153, size: 64, offset: 512)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1128, line: 75, baseType: !1154)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!265, !396, !396}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1130, file: !1128, line: 132, baseType: !1158, size: 64, offset: 576)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1128, line: 78, baseType: !1142)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1130, file: !1128, line: 135, baseType: !265, size: 64, offset: 640)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1130, file: !1128, line: 136, baseType: !1161, size: 64, offset: 704)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1128, line: 82, baseType: !1162)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!265, !265, !396, !396}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1130, file: !1128, line: 137, baseType: !1166, size: 64, offset: 768)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1128, line: 83, baseType: !1167)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{null, !265, !265}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1130, file: !1128, line: 141, baseType: !5, size: 32, offset: 832)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1082, file: !1083, line: 484, baseType: !853, size: 64, offset: 384)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1082, file: !1083, line: 488, baseType: !853, size: 64, offset: 448)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1082, file: !1083, line: 493, baseType: !853, size: 64, offset: 512)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1082, file: !1083, line: 496, baseType: !853, size: 64, offset: 576)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1082, file: !1083, line: 501, baseType: !1176, size: 64, offset: 640)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !16, line: 2355, size: 576, elements: !1178)
!1178 = !{!1179, !1182, !1183, !1184, !1185, !1189, !1190, !1195, !1196, !1197, !1198, !1199, !1200}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1177, file: !16, line: 2356, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !16, line: 2356, flags: DIFlagFwdDecl)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1177, file: !16, line: 2357, baseType: !266, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1177, file: !16, line: 2358, baseType: !261, size: 32, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1177, file: !16, line: 2359, baseType: !261, size: 32, offset: 160)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1177, file: !16, line: 2360, baseType: !1186, size: 128, offset: 192)
!1186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 128, elements: !1187)
!1187 = !{!1188}
!1188 = !DISubrange(count: 4)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1177, file: !16, line: 2364, baseType: !261, size: 32, offset: 320)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1177, file: !16, line: 2367, baseType: !1191, size: 128, offset: 384)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !16, line: 2349, size: 128, elements: !1192)
!1192 = !{!1193, !1194}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1191, file: !16, line: 2351, baseType: !832, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1191, file: !16, line: 2352, baseType: !306, size: 64, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1177, file: !16, line: 2371, baseType: !15, size: 32, offset: 512)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1177, file: !16, line: 2374, baseType: !5, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1177, file: !16, line: 2377, baseType: !5, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1177, file: !16, line: 2381, baseType: !5, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1177, file: !16, line: 2392, baseType: !5, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1177, file: !16, line: 2396, baseType: !5, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1082, file: !1083, line: 504, baseType: !1202, size: 64, offset: 704)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1083, line: 504, flags: DIFlagFwdDecl)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1082, file: !1083, line: 507, baseType: !1127, size: 64, offset: 768)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1082, file: !1083, line: 510, baseType: !261, size: 32, offset: 832)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1082, file: !1083, line: 513, baseType: !261, size: 32, offset: 864)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1082, file: !1083, line: 516, baseType: !956, size: 32, offset: 896)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1082, file: !1083, line: 519, baseType: !956, size: 32, offset: 928)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1082, file: !1083, line: 522, baseType: !5, size: 32, offset: 960)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1082, file: !1083, line: 523, baseType: !5, size: 32, offset: 992)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1082, file: !1083, line: 528, baseType: !266, size: 64, offset: 1024)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1082, file: !1083, line: 535, baseType: !5, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1082, file: !1083, line: 539, baseType: !5, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1082, file: !1083, line: 543, baseType: !5, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1082, file: !1083, line: 546, baseType: !5, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1082, file: !1083, line: 550, baseType: !5, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1082, file: !1083, line: 554, baseType: !5, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1082, file: !1083, line: 559, baseType: !5, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1082, file: !1083, line: 562, baseType: !5, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1082, file: !1083, line: 571, baseType: !5, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1082, file: !1083, line: 573, baseType: !5, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1082, file: !1083, line: 574, baseType: !5, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1082, file: !1083, line: 581, baseType: !5, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1082, file: !1083, line: 585, baseType: !5, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1082, file: !1083, line: 588, baseType: !5, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1082, file: !1083, line: 592, baseType: !5, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1082, file: !1083, line: 598, baseType: !5, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1077, file: !21, line: 3254, baseType: !853, size: 64, offset: 1536)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1077, file: !21, line: 3257, baseType: !853, size: 64, offset: 1600)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1077, file: !21, line: 3258, baseType: !853, size: 64, offset: 1664)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1077, file: !21, line: 3264, baseType: !5, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1077, file: !21, line: 3265, baseType: !5, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1077, file: !21, line: 3267, baseType: !5, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1077, file: !21, line: 3268, baseType: !5, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1077, file: !21, line: 3269, baseType: !5, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1077, file: !21, line: 3271, baseType: !5, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1077, file: !21, line: 3272, baseType: !5, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1077, file: !21, line: 3273, baseType: !5, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1077, file: !21, line: 3274, baseType: !5, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1077, file: !21, line: 3275, baseType: !5, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1077, file: !21, line: 3276, baseType: !5, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1077, file: !21, line: 3277, baseType: !5, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1077, file: !21, line: 3279, baseType: !5, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1077, file: !21, line: 3280, baseType: !5, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1077, file: !21, line: 3281, baseType: !5, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1077, file: !21, line: 3282, baseType: !5, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1077, file: !21, line: 3283, baseType: !5, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1077, file: !21, line: 3284, baseType: !5, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !855, file: !21, line: 3394, baseType: !1250, size: 1344)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !21, line: 2279, size: 1344, elements: !1251)
!1251 = !{!1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1277, !1278, !1279, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1250, file: !21, line: 2280, baseType: !891, size: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1250, file: !21, line: 2281, baseType: !853, size: 64, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1250, file: !21, line: 2282, baseType: !853, size: 64, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1250, file: !21, line: 2283, baseType: !853, size: 64, offset: 320)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1250, file: !21, line: 2284, baseType: !853, size: 64, offset: 384)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1250, file: !21, line: 2285, baseType: !5, size: 32, offset: 448)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1250, file: !21, line: 2287, baseType: !5, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1250, file: !21, line: 2288, baseType: !5, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1250, file: !21, line: 2289, baseType: !5, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1250, file: !21, line: 2290, baseType: !5, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1250, file: !21, line: 2291, baseType: !5, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1250, file: !21, line: 2292, baseType: !5, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1250, file: !21, line: 2294, baseType: !5, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1250, file: !21, line: 2296, baseType: !5, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1250, file: !21, line: 2297, baseType: !5, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1250, file: !21, line: 2298, baseType: !5, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1250, file: !21, line: 2299, baseType: !5, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1250, file: !21, line: 2300, baseType: !5, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1250, file: !21, line: 2301, baseType: !5, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1250, file: !21, line: 2302, baseType: !5, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1250, file: !21, line: 2303, baseType: !5, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1250, file: !21, line: 2305, baseType: !5, size: 32, offset: 512)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1250, file: !21, line: 2306, baseType: !1275, size: 32, offset: 544)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1276, line: 31, baseType: !261)
!1276 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1250, file: !21, line: 2307, baseType: !853, size: 64, offset: 576)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1250, file: !21, line: 2308, baseType: !853, size: 64, offset: 640)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1250, file: !21, line: 2314, baseType: !1280, size: 64, offset: 704)
!1280 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !21, line: 2309, size: 64, elements: !1281)
!1281 = !{!1282, !1283, !1284}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1280, file: !21, line: 2310, baseType: !261, size: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1280, file: !21, line: 2311, baseType: !266, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1280, file: !21, line: 2312, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !21, line: 2277, flags: DIFlagFwdDecl)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1250, file: !21, line: 2315, baseType: !853, size: 64, offset: 768)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1250, file: !21, line: 2316, baseType: !853, size: 64, offset: 832)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1250, file: !21, line: 2317, baseType: !853, size: 64, offset: 896)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1250, file: !21, line: 2318, baseType: !853, size: 64, offset: 960)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1250, file: !21, line: 2319, baseType: !853, size: 64, offset: 1024)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1250, file: !21, line: 2320, baseType: !853, size: 64, offset: 1088)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1250, file: !21, line: 2321, baseType: !853, size: 64, offset: 1152)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1250, file: !21, line: 2322, baseType: !853, size: 64, offset: 1216)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1250, file: !21, line: 2324, baseType: !1296, size: 64, offset: 1280)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !21, line: 2324, flags: DIFlagFwdDecl)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !855, file: !21, line: 3395, baseType: !1299, size: 320)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !21, line: 1469, size: 320, elements: !1300)
!1300 = !{!1301, !1302, !1303}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1299, file: !21, line: 1470, baseType: !891, size: 192)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1299, file: !21, line: 1471, baseType: !853, size: 64, offset: 192)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1299, file: !21, line: 1472, baseType: !853, size: 64, offset: 256)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !855, file: !21, line: 3396, baseType: !1305, size: 320)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !21, line: 1482, size: 320, elements: !1306)
!1306 = !{!1307, !1308, !1309}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1305, file: !21, line: 1483, baseType: !891, size: 192)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1305, file: !21, line: 1484, baseType: !261, size: 32, offset: 192)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1305, file: !21, line: 1485, baseType: !1310, size: 64, offset: 256)
!1310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !853, size: 64, elements: !311)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !855, file: !21, line: 3397, baseType: !1312, size: 384)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !21, line: 1829, size: 384, elements: !1313)
!1313 = !{!1314, !1315, !1316, !1317}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1312, file: !21, line: 1830, baseType: !891, size: 192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1312, file: !21, line: 1831, baseType: !956, size: 32, offset: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1312, file: !21, line: 1832, baseType: !853, size: 64, offset: 256)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1312, file: !21, line: 1835, baseType: !1310, size: 64, offset: 320)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !855, file: !21, line: 3398, baseType: !1319, size: 704)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !21, line: 1898, size: 704, elements: !1320)
!1320 = !{!1321, !1322, !1323, !1327, !1328, !1331}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1319, file: !21, line: 1899, baseType: !891, size: 192)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1319, file: !21, line: 1902, baseType: !853, size: 64, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1319, file: !21, line: 1905, baseType: !1324, size: 64, offset: 256)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !793, line: 58, baseType: !1325)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !793, line: 57, flags: DIFlagFwdDecl)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1319, file: !21, line: 1908, baseType: !5, size: 32, offset: 320)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1319, file: !21, line: 1911, baseType: !1329, size: 64, offset: 384)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !21, line: 1876, flags: DIFlagFwdDecl)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1319, file: !21, line: 1914, baseType: !1332, size: 256, offset: 448)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !21, line: 1883, size: 256, elements: !1333)
!1333 = !{!1334, !1336, !1337, !1342}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1332, file: !21, line: 1884, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1332, file: !21, line: 1885, baseType: !1335, size: 64, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1332, file: !21, line: 1891, baseType: !1338, size: 64, offset: 128)
!1338 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1332, file: !21, line: 1891, size: 64, elements: !1339)
!1339 = !{!1340, !1341}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1338, file: !21, line: 1891, baseType: !1324, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1338, file: !21, line: 1891, baseType: !853, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1332, file: !21, line: 1892, baseType: !1343, size: 64, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !855, file: !21, line: 3399, baseType: !1345, size: 704)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !21, line: 2008, size: 704, elements: !1346)
!1346 = !{!1347, !1348, !1349, !1350, !1351, !1352, !1364, !1365, !1366, !1367, !1368}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1345, file: !21, line: 2009, baseType: !891, size: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1345, file: !21, line: 2011, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1345, file: !21, line: 2012, baseType: !5, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1345, file: !21, line: 2014, baseType: !956, size: 32, offset: 224)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1345, file: !21, line: 2016, baseType: !853, size: 64, offset: 256)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1345, file: !21, line: 2017, baseType: !1353, size: 64, offset: 320)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !21, line: 183, baseType: !1355)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !21, line: 183, size: 128, elements: !1356)
!1356 = !{!1357}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1355, file: !21, line: 183, baseType: !1358, size: 128)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !21, line: 182, baseType: !1359)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !21, line: 182, size: 128, elements: !1360)
!1360 = !{!1361, !1362, !1363}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1359, file: !21, line: 182, baseType: !5, size: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1359, file: !21, line: 182, baseType: !5, size: 32, offset: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1359, file: !21, line: 182, baseType: !1310, size: 64, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1345, file: !21, line: 2019, baseType: !853, size: 64, offset: 384)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1345, file: !21, line: 2020, baseType: !853, size: 64, offset: 448)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1345, file: !21, line: 2021, baseType: !853, size: 64, offset: 512)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1345, file: !21, line: 2022, baseType: !853, size: 64, offset: 576)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1345, file: !21, line: 2023, baseType: !853, size: 64, offset: 640)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !855, file: !21, line: 3400, baseType: !1370, size: 832)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !21, line: 2430, size: 832, elements: !1371)
!1371 = !{!1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1370, file: !21, line: 2431, baseType: !891, size: 192)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1370, file: !21, line: 2433, baseType: !853, size: 64, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1370, file: !21, line: 2434, baseType: !853, size: 64, offset: 256)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1370, file: !21, line: 2435, baseType: !853, size: 64, offset: 320)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1370, file: !21, line: 2436, baseType: !853, size: 64, offset: 384)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1370, file: !21, line: 2437, baseType: !1353, size: 64, offset: 448)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1370, file: !21, line: 2438, baseType: !853, size: 64, offset: 512)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1370, file: !21, line: 2440, baseType: !853, size: 64, offset: 576)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1370, file: !21, line: 2441, baseType: !853, size: 64, offset: 640)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1370, file: !21, line: 2443, baseType: !1382, size: 128, offset: 704)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !21, line: 182, baseType: !1383)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !21, line: 182, size: 128, elements: !1384)
!1384 = !{!1385}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1383, file: !21, line: 182, baseType: !1358, size: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !855, file: !21, line: 3401, baseType: !1387, size: 320)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !21, line: 3327, size: 320, elements: !1388)
!1388 = !{!1389, !1390, !1397}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1387, file: !21, line: 3329, baseType: !891, size: 192)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1387, file: !21, line: 3330, baseType: !1391, size: 64, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !21, line: 3320, size: 192, elements: !1393)
!1393 = !{!1394, !1395, !1396}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1392, file: !21, line: 3322, baseType: !1391, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1392, file: !21, line: 3323, baseType: !1391, size: 64, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1392, file: !21, line: 3324, baseType: !853, size: 64, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1387, file: !21, line: 3331, baseType: !1391, size: 64, offset: 256)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !855, file: !21, line: 3402, baseType: !1399, size: 256)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !21, line: 1540, size: 256, elements: !1400)
!1400 = !{!1401, !1402}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1399, file: !21, line: 1541, baseType: !891, size: 192)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1399, file: !21, line: 1542, baseType: !1403, size: 64, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !21, line: 1538, baseType: !1405)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !21, line: 1538, size: 192, elements: !1406)
!1406 = !{!1407}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1405, file: !21, line: 1538, baseType: !1408, size: 192)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !21, line: 1537, baseType: !1409)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !21, line: 1537, size: 192, elements: !1410)
!1410 = !{!1411, !1412, !1413}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1409, file: !21, line: 1537, baseType: !5, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1409, file: !21, line: 1537, baseType: !5, size: 32, offset: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1409, file: !21, line: 1537, baseType: !1414, size: 128, offset: 64)
!1414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1415, size: 128, elements: !311)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !21, line: 1535, baseType: !1416)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !21, line: 1532, size: 128, elements: !1417)
!1417 = !{!1418, !1419}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1416, file: !21, line: 1533, baseType: !853, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1416, file: !21, line: 1534, baseType: !853, size: 64, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !855, file: !21, line: 3403, baseType: !1421, size: 512)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !21, line: 1938, size: 512, elements: !1422)
!1422 = !{!1423, !1424, !1425, !1426, !1432, !1433, !1434}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1421, file: !21, line: 1939, baseType: !891, size: 192)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1421, file: !21, line: 1940, baseType: !956, size: 32, offset: 192)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1421, file: !21, line: 1941, baseType: !20, size: 32, offset: 224)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1421, file: !21, line: 1946, baseType: !1427, size: 32, offset: 256)
!1427 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !21, line: 1942, size: 32, elements: !1428)
!1428 = !{!1429, !1430, !1431}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1427, file: !21, line: 1943, baseType: !39, size: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1427, file: !21, line: 1944, baseType: !46, size: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1427, file: !21, line: 1945, baseType: !53, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1421, file: !21, line: 1950, baseType: !823, size: 64, offset: 320)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1421, file: !21, line: 1951, baseType: !823, size: 64, offset: 384)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1421, file: !21, line: 1953, baseType: !1310, size: 64, offset: 448)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !855, file: !21, line: 3404, baseType: !1436, size: 1664)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !21, line: 3337, size: 1664, elements: !1437)
!1437 = !{!1438, !1439}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1436, file: !21, line: 3338, baseType: !891, size: 192)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1436, file: !21, line: 3341, baseType: !1440, size: 1472, offset: 192)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1441, line: 410, size: 1472, elements: !1442)
!1441 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1442 = !{!1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1440, file: !1441, line: 412, baseType: !261, size: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1440, file: !1441, line: 413, baseType: !261, size: 32, offset: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1440, file: !1441, line: 414, baseType: !261, size: 32, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1440, file: !1441, line: 415, baseType: !261, size: 32, offset: 96)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1440, file: !1441, line: 416, baseType: !261, size: 32, offset: 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1440, file: !1441, line: 417, baseType: !261, size: 32, offset: 160)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1440, file: !1441, line: 418, baseType: !260, size: 8, offset: 192)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1440, file: !1441, line: 419, baseType: !260, size: 8, offset: 200)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1440, file: !1441, line: 420, baseType: !379, size: 8, offset: 208)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1440, file: !1441, line: 421, baseType: !379, size: 8, offset: 216)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1440, file: !1441, line: 422, baseType: !379, size: 8, offset: 224)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1440, file: !1441, line: 423, baseType: !379, size: 8, offset: 232)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1440, file: !1441, line: 424, baseType: !379, size: 8, offset: 240)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1440, file: !1441, line: 425, baseType: !379, size: 8, offset: 248)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1440, file: !1441, line: 426, baseType: !379, size: 8, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1440, file: !1441, line: 427, baseType: !379, size: 8, offset: 264)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1440, file: !1441, line: 428, baseType: !379, size: 8, offset: 272)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1440, file: !1441, line: 429, baseType: !379, size: 8, offset: 280)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1440, file: !1441, line: 430, baseType: !379, size: 8, offset: 288)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1440, file: !1441, line: 431, baseType: !379, size: 8, offset: 296)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1440, file: !1441, line: 432, baseType: !379, size: 8, offset: 304)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1440, file: !1441, line: 433, baseType: !379, size: 8, offset: 312)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1440, file: !1441, line: 434, baseType: !379, size: 8, offset: 320)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1440, file: !1441, line: 435, baseType: !379, size: 8, offset: 328)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1440, file: !1441, line: 436, baseType: !379, size: 8, offset: 336)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1440, file: !1441, line: 437, baseType: !379, size: 8, offset: 344)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1440, file: !1441, line: 438, baseType: !379, size: 8, offset: 352)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1440, file: !1441, line: 439, baseType: !379, size: 8, offset: 360)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1440, file: !1441, line: 440, baseType: !379, size: 8, offset: 368)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1440, file: !1441, line: 441, baseType: !379, size: 8, offset: 376)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1440, file: !1441, line: 442, baseType: !379, size: 8, offset: 384)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1440, file: !1441, line: 443, baseType: !379, size: 8, offset: 392)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1440, file: !1441, line: 444, baseType: !379, size: 8, offset: 400)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1440, file: !1441, line: 445, baseType: !379, size: 8, offset: 408)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1440, file: !1441, line: 446, baseType: !379, size: 8, offset: 416)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1440, file: !1441, line: 447, baseType: !379, size: 8, offset: 424)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1440, file: !1441, line: 448, baseType: !379, size: 8, offset: 432)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1440, file: !1441, line: 449, baseType: !379, size: 8, offset: 440)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1440, file: !1441, line: 450, baseType: !379, size: 8, offset: 448)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1440, file: !1441, line: 451, baseType: !379, size: 8, offset: 456)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1440, file: !1441, line: 452, baseType: !379, size: 8, offset: 464)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1440, file: !1441, line: 453, baseType: !379, size: 8, offset: 472)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1440, file: !1441, line: 454, baseType: !379, size: 8, offset: 480)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1440, file: !1441, line: 455, baseType: !379, size: 8, offset: 488)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1440, file: !1441, line: 456, baseType: !379, size: 8, offset: 496)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1440, file: !1441, line: 457, baseType: !379, size: 8, offset: 504)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1440, file: !1441, line: 458, baseType: !379, size: 8, offset: 512)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1440, file: !1441, line: 459, baseType: !379, size: 8, offset: 520)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1440, file: !1441, line: 460, baseType: !379, size: 8, offset: 528)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1440, file: !1441, line: 461, baseType: !379, size: 8, offset: 536)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1440, file: !1441, line: 462, baseType: !379, size: 8, offset: 544)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1440, file: !1441, line: 463, baseType: !379, size: 8, offset: 552)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1440, file: !1441, line: 464, baseType: !379, size: 8, offset: 560)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1440, file: !1441, line: 465, baseType: !379, size: 8, offset: 568)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1440, file: !1441, line: 466, baseType: !379, size: 8, offset: 576)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1440, file: !1441, line: 467, baseType: !379, size: 8, offset: 584)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1440, file: !1441, line: 468, baseType: !379, size: 8, offset: 592)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1440, file: !1441, line: 469, baseType: !379, size: 8, offset: 600)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1440, file: !1441, line: 470, baseType: !379, size: 8, offset: 608)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1440, file: !1441, line: 471, baseType: !379, size: 8, offset: 616)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1440, file: !1441, line: 472, baseType: !379, size: 8, offset: 624)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1440, file: !1441, line: 473, baseType: !379, size: 8, offset: 632)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1440, file: !1441, line: 474, baseType: !379, size: 8, offset: 640)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1440, file: !1441, line: 475, baseType: !379, size: 8, offset: 648)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1440, file: !1441, line: 476, baseType: !379, size: 8, offset: 656)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1440, file: !1441, line: 477, baseType: !379, size: 8, offset: 664)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1440, file: !1441, line: 478, baseType: !379, size: 8, offset: 672)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1440, file: !1441, line: 479, baseType: !379, size: 8, offset: 680)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1440, file: !1441, line: 480, baseType: !379, size: 8, offset: 688)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1440, file: !1441, line: 481, baseType: !379, size: 8, offset: 696)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1440, file: !1441, line: 482, baseType: !379, size: 8, offset: 704)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1440, file: !1441, line: 483, baseType: !379, size: 8, offset: 712)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1440, file: !1441, line: 484, baseType: !379, size: 8, offset: 720)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1440, file: !1441, line: 485, baseType: !379, size: 8, offset: 728)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1440, file: !1441, line: 486, baseType: !379, size: 8, offset: 736)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1440, file: !1441, line: 487, baseType: !379, size: 8, offset: 744)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1440, file: !1441, line: 488, baseType: !379, size: 8, offset: 752)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1440, file: !1441, line: 489, baseType: !379, size: 8, offset: 760)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1440, file: !1441, line: 490, baseType: !379, size: 8, offset: 768)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1440, file: !1441, line: 491, baseType: !379, size: 8, offset: 776)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1440, file: !1441, line: 492, baseType: !379, size: 8, offset: 784)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1440, file: !1441, line: 493, baseType: !379, size: 8, offset: 792)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1440, file: !1441, line: 494, baseType: !379, size: 8, offset: 800)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1440, file: !1441, line: 495, baseType: !379, size: 8, offset: 808)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1440, file: !1441, line: 496, baseType: !379, size: 8, offset: 816)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1440, file: !1441, line: 497, baseType: !379, size: 8, offset: 824)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1440, file: !1441, line: 498, baseType: !379, size: 8, offset: 832)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1440, file: !1441, line: 499, baseType: !379, size: 8, offset: 840)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1440, file: !1441, line: 500, baseType: !379, size: 8, offset: 848)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1440, file: !1441, line: 501, baseType: !379, size: 8, offset: 856)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1440, file: !1441, line: 502, baseType: !379, size: 8, offset: 864)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1440, file: !1441, line: 503, baseType: !379, size: 8, offset: 872)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1440, file: !1441, line: 504, baseType: !379, size: 8, offset: 880)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1440, file: !1441, line: 505, baseType: !379, size: 8, offset: 888)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1440, file: !1441, line: 506, baseType: !379, size: 8, offset: 896)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1440, file: !1441, line: 507, baseType: !379, size: 8, offset: 904)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1440, file: !1441, line: 508, baseType: !379, size: 8, offset: 912)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1440, file: !1441, line: 509, baseType: !379, size: 8, offset: 920)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1440, file: !1441, line: 510, baseType: !379, size: 8, offset: 928)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1440, file: !1441, line: 511, baseType: !379, size: 8, offset: 936)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1440, file: !1441, line: 512, baseType: !379, size: 8, offset: 944)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1440, file: !1441, line: 513, baseType: !379, size: 8, offset: 952)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1440, file: !1441, line: 514, baseType: !379, size: 8, offset: 960)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1440, file: !1441, line: 515, baseType: !379, size: 8, offset: 968)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1440, file: !1441, line: 516, baseType: !379, size: 8, offset: 976)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1440, file: !1441, line: 517, baseType: !379, size: 8, offset: 984)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1440, file: !1441, line: 518, baseType: !379, size: 8, offset: 992)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1440, file: !1441, line: 519, baseType: !379, size: 8, offset: 1000)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1440, file: !1441, line: 520, baseType: !379, size: 8, offset: 1008)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1440, file: !1441, line: 521, baseType: !379, size: 8, offset: 1016)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1440, file: !1441, line: 522, baseType: !379, size: 8, offset: 1024)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1440, file: !1441, line: 523, baseType: !379, size: 8, offset: 1032)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1440, file: !1441, line: 524, baseType: !379, size: 8, offset: 1040)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1440, file: !1441, line: 525, baseType: !379, size: 8, offset: 1048)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1440, file: !1441, line: 526, baseType: !379, size: 8, offset: 1056)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1440, file: !1441, line: 527, baseType: !379, size: 8, offset: 1064)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1440, file: !1441, line: 528, baseType: !379, size: 8, offset: 1072)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1440, file: !1441, line: 529, baseType: !379, size: 8, offset: 1080)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1440, file: !1441, line: 530, baseType: !379, size: 8, offset: 1088)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1440, file: !1441, line: 531, baseType: !379, size: 8, offset: 1096)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1440, file: !1441, line: 532, baseType: !379, size: 8, offset: 1104)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1440, file: !1441, line: 533, baseType: !379, size: 8, offset: 1112)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1440, file: !1441, line: 534, baseType: !379, size: 8, offset: 1120)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1440, file: !1441, line: 535, baseType: !379, size: 8, offset: 1128)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1440, file: !1441, line: 536, baseType: !379, size: 8, offset: 1136)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1440, file: !1441, line: 537, baseType: !379, size: 8, offset: 1144)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1440, file: !1441, line: 538, baseType: !379, size: 8, offset: 1152)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1440, file: !1441, line: 539, baseType: !379, size: 8, offset: 1160)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1440, file: !1441, line: 540, baseType: !379, size: 8, offset: 1168)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1440, file: !1441, line: 541, baseType: !379, size: 8, offset: 1176)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1440, file: !1441, line: 542, baseType: !379, size: 8, offset: 1184)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1440, file: !1441, line: 543, baseType: !379, size: 8, offset: 1192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1440, file: !1441, line: 544, baseType: !379, size: 8, offset: 1200)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1440, file: !1441, line: 545, baseType: !379, size: 8, offset: 1208)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1440, file: !1441, line: 546, baseType: !379, size: 8, offset: 1216)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1440, file: !1441, line: 547, baseType: !379, size: 8, offset: 1224)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1440, file: !1441, line: 548, baseType: !379, size: 8, offset: 1232)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1440, file: !1441, line: 549, baseType: !379, size: 8, offset: 1240)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1440, file: !1441, line: 550, baseType: !379, size: 8, offset: 1248)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1440, file: !1441, line: 551, baseType: !379, size: 8, offset: 1256)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1440, file: !1441, line: 552, baseType: !379, size: 8, offset: 1264)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1440, file: !1441, line: 553, baseType: !379, size: 8, offset: 1272)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1440, file: !1441, line: 554, baseType: !379, size: 8, offset: 1280)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1440, file: !1441, line: 555, baseType: !379, size: 8, offset: 1288)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1440, file: !1441, line: 556, baseType: !379, size: 8, offset: 1296)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1440, file: !1441, line: 557, baseType: !379, size: 8, offset: 1304)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1440, file: !1441, line: 558, baseType: !379, size: 8, offset: 1312)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1440, file: !1441, line: 559, baseType: !379, size: 8, offset: 1320)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1440, file: !1441, line: 560, baseType: !379, size: 8, offset: 1328)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1440, file: !1441, line: 561, baseType: !379, size: 8, offset: 1336)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1440, file: !1441, line: 562, baseType: !379, size: 8, offset: 1344)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1440, file: !1441, line: 563, baseType: !379, size: 8, offset: 1352)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1440, file: !1441, line: 564, baseType: !379, size: 8, offset: 1360)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1440, file: !1441, line: 565, baseType: !379, size: 8, offset: 1368)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1440, file: !1441, line: 566, baseType: !379, size: 8, offset: 1376)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1440, file: !1441, line: 567, baseType: !379, size: 8, offset: 1384)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1440, file: !1441, line: 568, baseType: !379, size: 8, offset: 1392)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1440, file: !1441, line: 569, baseType: !379, size: 8, offset: 1400)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1440, file: !1441, line: 570, baseType: !379, size: 8, offset: 1408)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1440, file: !1441, line: 571, baseType: !379, size: 8, offset: 1416)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1440, file: !1441, line: 572, baseType: !379, size: 8, offset: 1424)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1440, file: !1441, line: 573, baseType: !379, size: 8, offset: 1432)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1440, file: !1441, line: 574, baseType: !379, size: 8, offset: 1440)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !855, file: !21, line: 3405, baseType: !1607, size: 384)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !21, line: 3352, size: 384, elements: !1608)
!1608 = !{!1609, !1610}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1607, file: !21, line: 3353, baseType: !891, size: 192)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1607, file: !21, line: 3356, baseType: !1611, size: 192, offset: 192)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1441, line: 578, size: 192, elements: !1612)
!1612 = !{!1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1611, file: !1441, line: 580, baseType: !261, size: 32)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1611, file: !1441, line: 581, baseType: !261, size: 32, offset: 32)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1611, file: !1441, line: 582, baseType: !261, size: 32, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1611, file: !1441, line: 583, baseType: !261, size: 32, offset: 96)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1611, file: !1441, line: 584, baseType: !260, size: 8, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1611, file: !1441, line: 585, baseType: !260, size: 8, offset: 136)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1611, file: !1441, line: 586, baseType: !260, size: 8, offset: 144)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1611, file: !1441, line: 587, baseType: !260, size: 8, offset: 152)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1611, file: !1441, line: 588, baseType: !260, size: 8, offset: 160)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1611, file: !1441, line: 589, baseType: !260, size: 8, offset: 168)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1611, file: !1441, line: 590, baseType: !260, size: 8, offset: 176)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !795, file: !4, line: 138, baseType: !956, size: 32, offset: 320)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !795, file: !4, line: 142, baseType: !5, size: 32, offset: 352)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !795, file: !4, line: 144, baseType: !261, size: 32, offset: 384)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !795, file: !4, line: 145, baseType: !261, size: 32, offset: 416)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !795, file: !4, line: 146, baseType: !305, size: 64, offset: 448)
!1629 = !{!1630, !1631, !1632, !1633}
!1630 = !DILocalVariable(name: "to_edges", arg: 1, scope: !777, file: !1, line: 1372, type: !780)
!1631 = !DILocalVariable(name: "sum", scope: !777, file: !1, line: 1374, type: !305)
!1632 = !DILocalVariable(name: "e", scope: !777, file: !1, line: 1375, type: !792)
!1633 = !DILocalVariable(name: "ei", scope: !777, file: !1, line: 1376, type: !1634)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !4, line: 682, baseType: !1635)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 679, size: 128, elements: !1636)
!1636 = !{!1637, !1638}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1635, file: !4, line: 680, baseType: !5, size: 32)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !1635, file: !4, line: 681, baseType: !1639, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!1640 = !DILocation(line: 0, scope: !777)
!1641 = !DILocation(line: 1375, column: 3, scope: !777)
!1642 = !DILocation(line: 1376, column: 3, scope: !777)
!1643 = !DILocation(line: 1378, column: 3, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !777, file: !1, line: 1378, column: 3)
!1645 = !DILocation(line: 0, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1644, file: !1, line: 1378, column: 3)
!1647 = !DILocation(line: 1374, column: 13, scope: !777)
!1648 = !DILocation(line: 1378, column: 3, scope: !1646)
!1649 = !DILocation(line: 1380, column: 11, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !1, line: 1380, column: 11)
!1651 = distinct !DILexicalBlock(scope: !1646, file: !1, line: 1379, column: 5)
!1652 = !DILocation(line: 1380, column: 25, scope: !1650)
!1653 = !DILocation(line: 1380, column: 43, scope: !1650)
!1654 = !DILocation(line: 1380, column: 28, scope: !1650)
!1655 = !DILocation(line: 1380, column: 11, scope: !1651)
!1656 = !DILocation(line: 1382, column: 17, scope: !1651)
!1657 = !DILocation(line: 1382, column: 11, scope: !1651)
!1658 = !DILocation(line: 1383, column: 5, scope: !1651)
!1659 = distinct !{!1659, !1643, !1660}
!1660 = !DILocation(line: 1383, column: 5, scope: !1644)
!1661 = !DILocation(line: 1385, column: 1, scope: !777)
!1662 = !DILocation(line: 1384, column: 3, scope: !777)
!1663 = distinct !DISubprogram(name: "ei_start_1", scope: !4, file: !4, line: 696, type: !1664, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1666)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!1634, !1639}
!1666 = !{!1667, !1668}
!1667 = !DILocalVariable(name: "ev", arg: 1, scope: !1663, file: !4, line: 696, type: !1639)
!1668 = !DILocalVariable(name: "i", scope: !1663, file: !4, line: 698, type: !1634)
!1669 = !DILocation(line: 0, scope: !1663)
!1670 = !DILocation(line: 700, column: 5, scope: !1663)
!1671 = !DILocation(line: 700, column: 11, scope: !1663)
!1672 = !DILocation(line: 701, column: 5, scope: !1663)
!1673 = !DILocation(line: 701, column: 15, scope: !1663)
!1674 = !DILocation(line: 703, column: 3, scope: !1663)
!1675 = distinct !DISubprogram(name: "ei_cond", scope: !4, file: !4, line: 771, type: !1676, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1679)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!260, !1634, !1678}
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!1679 = !{!1680, !1681}
!1680 = !DILocalVariable(name: "ei", arg: 1, scope: !1675, file: !4, line: 771, type: !1634)
!1681 = !DILocalVariable(name: "p", arg: 2, scope: !1675, file: !4, line: 771, type: !1678)
!1682 = !DILocation(line: 0, scope: !1675)
!1683 = !DILocation(line: 773, column: 8, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1675, file: !4, line: 773, column: 7)
!1685 = !DILocation(line: 773, column: 7, scope: !1675)
!1686 = !DILocation(line: 775, column: 12, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1684, file: !4, line: 774, column: 5)
!1688 = !DILocation(line: 776, column: 7, scope: !1687)
!1689 = !DILocation(line: 781, column: 7, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1684, file: !4, line: 779, column: 5)
!1691 = !DILocation(line: 0, scope: !1684)
!1692 = !DILocation(line: 783, column: 1, scope: !1675)
!1693 = distinct !DISubprogram(name: "ei_next", scope: !4, file: !4, line: 736, type: !1694, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1697)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{null, !1696}
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1697 = !{!1698}
!1698 = !DILocalVariable(name: "i", arg: 1, scope: !1693, file: !4, line: 736, type: !1696)
!1699 = !DILocation(line: 0, scope: !1693)
!1700 = !DILocation(line: 738, column: 3, scope: !1693)
!1701 = !DILocation(line: 739, column: 11, scope: !1693)
!1702 = !DILocation(line: 740, column: 1, scope: !1693)
!1703 = distinct !DISubprogram(name: "mcf_smooth_cfg", scope: !1, file: !1, line: 1394, type: !1704, scopeLine: 1395, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1706)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{null}
!1706 = !{!1707}
!1707 = !DILocalVariable(name: "fixup_graph", scope: !1703, file: !1, line: 1396, type: !1708)
!1708 = !DIDerivedType(tag: DW_TAG_typedef, name: "fixup_graph_type", file: !1, line: 128, baseType: !1709)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixup_graph_d", file: !1, line: 114, size: 256, elements: !1710)
!1710 = !{!1711, !1712, !1713, !1714, !1715, !1716}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "num_vertices", scope: !1709, file: !1, line: 117, baseType: !261, size: 32)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "num_edges", scope: !1709, file: !1, line: 119, baseType: !261, size: 32, offset: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "new_entry_index", scope: !1709, file: !1, line: 121, baseType: !261, size: 32, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "new_exit_index", scope: !1709, file: !1, line: 123, baseType: !261, size: 32, offset: 96)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "vertex_list", scope: !1709, file: !1, line: 125, baseType: !275, size: 64, offset: 128)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "edge_list", scope: !1709, file: !1, line: 127, baseType: !293, size: 64, offset: 192)
!1717 = !DILocation(line: 1396, column: 3, scope: !1703)
!1718 = !DILocation(line: 1397, column: 3, scope: !1703)
!1719 = !DILocation(line: 0, scope: !1703)
!1720 = !DILocation(line: 1398, column: 3, scope: !1703)
!1721 = !DILocation(line: 1399, column: 3, scope: !1703)
!1722 = !DILocation(line: 1400, column: 3, scope: !1703)
!1723 = !DILocation(line: 1401, column: 3, scope: !1703)
!1724 = !DILocation(line: 1402, column: 1, scope: !1703)
!1725 = distinct !DISubprogram(name: "create_fixup_graph", scope: !1, file: !1, line: 460, type: !1726, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1729)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{null, !1728}
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1729 = !{!1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754}
!1730 = !DILocalVariable(name: "fixup_graph", arg: 1, scope: !1725, file: !1, line: 460, type: !1728)
!1731 = !DILocalVariable(name: "sqrt_avg_vertex_weight", scope: !1725, file: !1, line: 462, type: !566)
!1732 = !DILocalVariable(name: "total_vertex_weight", scope: !1725, file: !1, line: 463, type: !566)
!1733 = !DILocalVariable(name: "k_pos", scope: !1725, file: !1, line: 464, type: !566)
!1734 = !DILocalVariable(name: "k_neg", scope: !1725, file: !1, line: 465, type: !566)
!1735 = !DILocalVariable(name: "diff_out_in", scope: !1725, file: !1, line: 467, type: !313)
!1736 = !DILocalVariable(name: "supply_value", scope: !1725, file: !1, line: 468, type: !305)
!1737 = !DILocalVariable(name: "demand_value", scope: !1725, file: !1, line: 468, type: !305)
!1738 = !DILocalVariable(name: "fcost", scope: !1725, file: !1, line: 469, type: !305)
!1739 = !DILocalVariable(name: "new_entry_index", scope: !1725, file: !1, line: 470, type: !261)
!1740 = !DILocalVariable(name: "new_exit_index", scope: !1725, file: !1, line: 470, type: !261)
!1741 = !DILocalVariable(name: "i", scope: !1725, file: !1, line: 471, type: !261)
!1742 = !DILocalVariable(name: "j", scope: !1725, file: !1, line: 471, type: !261)
!1743 = !DILocalVariable(name: "new_index", scope: !1725, file: !1, line: 472, type: !261)
!1744 = !DILocalVariable(name: "bb", scope: !1725, file: !1, line: 473, type: !1093)
!1745 = !DILocalVariable(name: "e", scope: !1725, file: !1, line: 474, type: !792)
!1746 = !DILocalVariable(name: "ei", scope: !1725, file: !1, line: 475, type: !1634)
!1747 = !DILocalVariable(name: "pfedge", scope: !1725, file: !1, line: 476, type: !293)
!1748 = !DILocalVariable(name: "r_pfedge", scope: !1725, file: !1, line: 476, type: !293)
!1749 = !DILocalVariable(name: "fedge_list", scope: !1725, file: !1, line: 477, type: !293)
!1750 = !DILocalVariable(name: "fnum_edges", scope: !1725, file: !1, line: 478, type: !261)
!1751 = !DILocalVariable(name: "fnum_vertices_after_transform", scope: !1725, file: !1, line: 481, type: !261)
!1752 = !DILocalVariable(name: "fnum_edges_after_transform", scope: !1725, file: !1, line: 482, type: !261)
!1753 = !DILocalVariable(name: "fmax_num_vertices", scope: !1725, file: !1, line: 485, type: !261)
!1754 = !DILocalVariable(name: "fmax_num_edges", scope: !1725, file: !1, line: 496, type: !261)
!1755 = !DILocation(line: 0, scope: !1725)
!1756 = !DILocation(line: 474, column: 3, scope: !1725)
!1757 = !DILocation(line: 475, column: 3, scope: !1725)
!1758 = !DILocation(line: 481, column: 44, scope: !1725)
!1759 = !DILocation(line: 481, column: 42, scope: !1725)
!1760 = !DILocation(line: 482, column: 36, scope: !1725)
!1761 = !DILocation(line: 482, column: 44, scope: !1725)
!1762 = !DILocation(line: 486, column: 35, scope: !1725)
!1763 = !DILocation(line: 486, column: 45, scope: !1725)
!1764 = !DILocation(line: 486, column: 62, scope: !1725)
!1765 = !DILocation(line: 496, column: 26, scope: !1725)
!1766 = !DILocation(line: 499, column: 16, scope: !1725)
!1767 = !DILocation(line: 499, column: 29, scope: !1725)
!1768 = !DILocation(line: 503, column: 31, scope: !1725)
!1769 = !DILocation(line: 503, column: 22, scope: !1725)
!1770 = !DILocation(line: 502, column: 16, scope: !1725)
!1771 = !DILocation(line: 502, column: 28, scope: !1725)
!1772 = !DILocation(line: 507, column: 29, scope: !1725)
!1773 = !DILocation(line: 507, column: 20, scope: !1725)
!1774 = !DILocation(line: 506, column: 16, scope: !1725)
!1775 = !DILocation(line: 506, column: 26, scope: !1725)
!1776 = !DILocation(line: 510, column: 30, scope: !1725)
!1777 = !DILocation(line: 510, column: 28, scope: !1725)
!1778 = !DILocation(line: 510, column: 19, scope: !1725)
!1779 = !DILocation(line: 515, column: 3, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1725, file: !1, line: 515, column: 3)
!1781 = !DILocation(line: 0, scope: !1780)
!1782 = !DILocation(line: 515, column: 3, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1780, file: !1, line: 515, column: 3)
!1784 = !DILocation(line: 516, column: 32, scope: !1783)
!1785 = !DILocation(line: 516, column: 28, scope: !1783)
!1786 = !DILocation(line: 516, column: 25, scope: !1783)
!1787 = distinct !{!1787, !1779, !1788}
!1788 = !DILocation(line: 516, column: 32, scope: !1780)
!1789 = !DILocation(line: 510, column: 5, scope: !1725)
!1790 = !DILocation(line: 518, column: 60, scope: !1725)
!1791 = !DILocation(line: 518, column: 58, scope: !1725)
!1792 = !DILocation(line: 518, column: 28, scope: !1725)
!1793 = !DILocation(line: 521, column: 11, scope: !1725)
!1794 = !DILocation(line: 526, column: 7, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1725, file: !1, line: 526, column: 7)
!1796 = !DILocation(line: 526, column: 7, scope: !1725)
!1797 = !DILocation(line: 527, column: 5, scope: !1795)
!1798 = !DILocation(line: 529, column: 3, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1725, file: !1, line: 529, column: 3)
!1800 = !DILocation(line: 0, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !1, line: 538, column: 5)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !1, line: 530, column: 3)
!1803 = distinct !DILexicalBlock(scope: !1799, file: !1, line: 529, column: 3)
!1804 = !DILocation(line: 0, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1801, file: !1, line: 538, column: 5)
!1806 = !DILocation(line: 0, scope: !1799)
!1807 = !DILocation(line: 529, column: 3, scope: !1803)
!1808 = !DILocation(line: 532, column: 17, scope: !1802)
!1809 = !DILocation(line: 532, column: 11, scope: !1802)
!1810 = !DILocation(line: 533, column: 25, scope: !1802)
!1811 = !DILocation(line: 533, column: 13, scope: !1802)
!1812 = !DILocation(line: 534, column: 39, scope: !1802)
!1813 = !DILocation(line: 534, column: 67, scope: !1802)
!1814 = !DILocation(line: 534, column: 5, scope: !1802)
!1815 = !DILocation(line: 536, column: 30, scope: !1802)
!1816 = !DILocation(line: 538, column: 5, scope: !1801)
!1817 = !DILocation(line: 538, column: 5, scope: !1805)
!1818 = !DILocation(line: 542, column: 11, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !1, line: 542, column: 11)
!1820 = distinct !DILexicalBlock(scope: !1805, file: !1, line: 539, column: 5)
!1821 = !DILocation(line: 542, column: 25, scope: !1819)
!1822 = !DILocation(line: 542, column: 43, scope: !1819)
!1823 = !DILocation(line: 542, column: 28, scope: !1819)
!1824 = !DILocation(line: 542, column: 11, scope: !1820)
!1825 = !DILocation(line: 544, column: 18, scope: !1820)
!1826 = !DILocation(line: 544, column: 24, scope: !1820)
!1827 = !DILocation(line: 544, column: 13, scope: !1820)
!1828 = !DILocation(line: 545, column: 27, scope: !1820)
!1829 = !DILocation(line: 545, column: 15, scope: !1820)
!1830 = !DILocation(line: 546, column: 61, scope: !1820)
!1831 = !DILocation(line: 546, column: 64, scope: !1820)
!1832 = !DILocation(line: 546, column: 7, scope: !1820)
!1833 = !DILocation(line: 548, column: 5, scope: !1820)
!1834 = distinct !{!1834, !1816, !1835}
!1835 = !DILocation(line: 548, column: 5, scope: !1801)
!1836 = distinct !{!1836, !1798, !1837}
!1837 = !DILocation(line: 549, column: 3, scope: !1799)
!1838 = !DILocation(line: 552, column: 3, scope: !1725)
!1839 = !DILocation(line: 554, column: 3, scope: !1725)
!1840 = !DILocation(line: 556, column: 45, scope: !1725)
!1841 = !DILocation(line: 559, column: 8, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1725, file: !1, line: 559, column: 3)
!1843 = !DILocation(line: 0, scope: !1842)
!1844 = !DILocation(line: 559, column: 17, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1842, file: !1, line: 559, column: 3)
!1846 = !DILocation(line: 559, column: 3, scope: !1842)
!1847 = !DILocation(line: 567, column: 3, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1725, file: !1, line: 567, column: 3)
!1849 = !DILocation(line: 561, column: 29, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1845, file: !1, line: 560, column: 5)
!1851 = !DILocation(line: 562, column: 43, scope: !1850)
!1852 = !DILocation(line: 562, column: 27, scope: !1850)
!1853 = !DILocation(line: 562, column: 7, scope: !1850)
!1854 = !DILocation(line: 562, column: 32, scope: !1850)
!1855 = !DILocation(line: 563, column: 44, scope: !1850)
!1856 = !DILocation(line: 563, column: 27, scope: !1850)
!1857 = !DILocation(line: 563, column: 7, scope: !1850)
!1858 = !DILocation(line: 563, column: 33, scope: !1850)
!1859 = !DILocation(line: 559, column: 48, scope: !1845)
!1860 = !DILocation(line: 559, column: 3, scope: !1845)
!1861 = distinct !{!1861, !1846, !1862}
!1862 = !DILocation(line: 564, column: 5, scope: !1842)
!1863 = !DILocation(line: 0, scope: !1848)
!1864 = !DILocation(line: 567, column: 17, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1848, file: !1, line: 567, column: 3)
!1866 = !DILocation(line: 568, column: 5, scope: !1865)
!1867 = !DILocation(line: 568, column: 20, scope: !1865)
!1868 = !DILocation(line: 567, column: 24, scope: !1865)
!1869 = !DILocation(line: 567, column: 3, scope: !1865)
!1870 = distinct !{!1870, !1847, !1871}
!1871 = !DILocation(line: 568, column: 22, scope: !1848)
!1872 = !DILocation(line: 571, column: 7, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1725, file: !1, line: 571, column: 7)
!1874 = !DILocation(line: 571, column: 7, scope: !1725)
!1875 = !DILocation(line: 572, column: 5, scope: !1873)
!1876 = !DILocation(line: 573, column: 8, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1725, file: !1, line: 573, column: 3)
!1878 = !DILocation(line: 0, scope: !1877)
!1879 = !DILocation(line: 573, column: 17, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1877, file: !1, line: 573, column: 3)
!1881 = !DILocation(line: 573, column: 3, scope: !1877)
!1882 = !DILocation(line: 575, column: 29, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1880, file: !1, line: 574, column: 5)
!1884 = !DILocation(line: 576, column: 20, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1883, file: !1, line: 576, column: 11)
!1886 = !DILocation(line: 576, column: 24, scope: !1885)
!1887 = !DILocation(line: 576, column: 30, scope: !1885)
!1888 = !DILocation(line: 576, column: 46, scope: !1885)
!1889 = !DILocation(line: 576, column: 11, scope: !1883)
!1890 = !DILocation(line: 578, column: 56, scope: !1883)
!1891 = !DILocation(line: 578, column: 18, scope: !1883)
!1892 = !DILocation(line: 579, column: 12, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1883, file: !1, line: 579, column: 11)
!1894 = !DILocation(line: 579, column: 21, scope: !1893)
!1895 = !DILocation(line: 579, column: 32, scope: !1893)
!1896 = !DILocation(line: 579, column: 24, scope: !1893)
!1897 = !DILocation(line: 579, column: 11, scope: !1883)
!1898 = !DILocation(line: 583, column: 24, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1893, file: !1, line: 580, column: 2)
!1900 = !DILocation(line: 583, column: 12, scope: !1899)
!1901 = !DILocation(line: 584, column: 41, scope: !1899)
!1902 = !DILocation(line: 584, column: 55, scope: !1899)
!1903 = !DILocation(line: 585, column: 38, scope: !1899)
!1904 = !DILocation(line: 584, column: 4, scope: !1899)
!1905 = !DILocation(line: 586, column: 2, scope: !1899)
!1906 = !DILocation(line: 573, column: 48, scope: !1880)
!1907 = !DILocation(line: 573, column: 3, scope: !1880)
!1908 = distinct !{!1908, !1881, !1909}
!1909 = !DILocation(line: 587, column: 5, scope: !1877)
!1910 = !DILocation(line: 591, column: 7, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1725, file: !1, line: 591, column: 7)
!1912 = !DILocation(line: 591, column: 7, scope: !1725)
!1913 = !DILocation(line: 592, column: 5, scope: !1911)
!1914 = !DILocation(line: 594, column: 65, scope: !1725)
!1915 = !DILocation(line: 594, column: 34, scope: !1725)
!1916 = !DILocation(line: 594, column: 50, scope: !1725)
!1917 = !DILocation(line: 595, column: 28, scope: !1725)
!1918 = !DILocation(line: 597, column: 3, scope: !1725)
!1919 = !DILocation(line: 601, column: 63, scope: !1725)
!1920 = !DILocation(line: 601, column: 33, scope: !1725)
!1921 = !DILocation(line: 601, column: 48, scope: !1725)
!1922 = !DILocation(line: 602, column: 28, scope: !1725)
!1923 = !DILocation(line: 603, column: 3, scope: !1725)
!1924 = !DILocation(line: 608, column: 7, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1725, file: !1, line: 608, column: 7)
!1926 = !DILocation(line: 608, column: 7, scope: !1725)
!1927 = !DILocation(line: 609, column: 5, scope: !1925)
!1928 = !DILocation(line: 612, column: 8, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1725, file: !1, line: 612, column: 3)
!1930 = !DILocation(line: 0, scope: !1929)
!1931 = !DILocation(line: 468, column: 13, scope: !1725)
!1932 = !DILocation(line: 612, column: 17, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1929, file: !1, line: 612, column: 3)
!1934 = !DILocation(line: 612, column: 3, scope: !1929)
!1935 = !DILocation(line: 614, column: 11, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !1, line: 614, column: 11)
!1937 = distinct !DILexicalBlock(scope: !1933, file: !1, line: 613, column: 5)
!1938 = !DILocation(line: 614, column: 26, scope: !1936)
!1939 = !DILocation(line: 614, column: 11, scope: !1937)
!1940 = !DILocation(line: 616, column: 4, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1936, file: !1, line: 615, column: 2)
!1942 = !DILocation(line: 618, column: 20, scope: !1941)
!1943 = !DILocation(line: 618, column: 17, scope: !1941)
!1944 = !DILocation(line: 619, column: 2, scope: !1941)
!1945 = !DILocation(line: 620, column: 31, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1936, file: !1, line: 620, column: 16)
!1947 = !DILocation(line: 620, column: 16, scope: !1936)
!1948 = !DILocation(line: 623, column: 6, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1946, file: !1, line: 621, column: 2)
!1950 = !DILocation(line: 622, column: 4, scope: !1949)
!1951 = !DILocation(line: 624, column: 20, scope: !1949)
!1952 = !DILocation(line: 624, column: 17, scope: !1949)
!1953 = !DILocation(line: 625, column: 2, scope: !1949)
!1954 = !DILocation(line: 612, column: 38, scope: !1933)
!1955 = !DILocation(line: 612, column: 3, scope: !1933)
!1956 = distinct !{!1956, !1934, !1957}
!1957 = !DILocation(line: 626, column: 5, scope: !1929)
!1958 = !DILocation(line: 629, column: 7, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1725, file: !1, line: 629, column: 7)
!1960 = !DILocation(line: 629, column: 7, scope: !1725)
!1961 = !DILocation(line: 631, column: 7, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1959, file: !1, line: 630, column: 5)
!1963 = !DILocation(line: 632, column: 16, scope: !1962)
!1964 = !DILocation(line: 632, column: 7, scope: !1962)
!1965 = !DILocation(line: 634, column: 16, scope: !1962)
!1966 = !DILocation(line: 634, column: 7, scope: !1962)
!1967 = !DILocation(line: 636, column: 5, scope: !1962)
!1968 = !DILocation(line: 638, column: 20, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1725, file: !1, line: 638, column: 7)
!1970 = !DILocation(line: 638, column: 7, scope: !1725)
!1971 = !DILocation(line: 640, column: 16, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1969, file: !1, line: 639, column: 5)
!1973 = !DILocation(line: 641, column: 45, scope: !1972)
!1974 = !DILocation(line: 641, column: 15, scope: !1972)
!1975 = !DILocation(line: 641, column: 28, scope: !1972)
!1976 = !DILocation(line: 642, column: 5, scope: !1972)
!1977 = !DILocation(line: 645, column: 16, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1969, file: !1, line: 644, column: 5)
!1979 = !DILocation(line: 646, column: 45, scope: !1978)
!1980 = !DILocation(line: 646, column: 15, scope: !1978)
!1981 = !DILocation(line: 646, column: 28, scope: !1978)
!1982 = !DILocation(line: 652, column: 7, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1725, file: !1, line: 652, column: 7)
!1984 = !DILocation(line: 652, column: 7, scope: !1725)
!1985 = !DILocation(line: 653, column: 5, scope: !1983)
!1986 = !DILocation(line: 655, column: 29, scope: !1725)
!1987 = !DILocation(line: 656, column: 29, scope: !1725)
!1988 = !DILocation(line: 658, column: 8, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1725, file: !1, line: 658, column: 3)
!1990 = !DILocation(line: 0, scope: !1989)
!1991 = !DILocation(line: 658, column: 17, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1989, file: !1, line: 658, column: 3)
!1993 = !DILocation(line: 658, column: 3, scope: !1989)
!1994 = !DILocation(line: 660, column: 27, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1992, file: !1, line: 659, column: 5)
!1996 = !DILocation(line: 661, column: 56, scope: !1995)
!1997 = !DILocation(line: 661, column: 70, scope: !1995)
!1998 = !DILocation(line: 661, column: 18, scope: !1995)
!1999 = !DILocation(line: 662, column: 21, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1995, file: !1, line: 662, column: 11)
!2001 = !DILocation(line: 662, column: 26, scope: !2000)
!2002 = !DILocation(line: 663, column: 5, scope: !2000)
!2003 = !DILocation(line: 663, column: 22, scope: !2000)
!2004 = !DILocation(line: 663, column: 44, scope: !2000)
!2005 = !DILocation(line: 663, column: 41, scope: !2000)
!2006 = !DILocation(line: 662, column: 11, scope: !1995)
!2007 = !DILocation(line: 665, column: 29, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2000, file: !1, line: 664, column: 2)
!2009 = !DILocation(line: 666, column: 29, scope: !2008)
!2010 = !DILocation(line: 668, column: 8, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2008, file: !1, line: 668, column: 8)
!2012 = !DILocation(line: 668, column: 8, scope: !2008)
!2013 = !DILocation(line: 670, column: 8, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2011, file: !1, line: 669, column: 6)
!2015 = !DILocation(line: 671, column: 25, scope: !2014)
!2016 = !DILocation(line: 671, column: 8, scope: !2014)
!2017 = !DILocation(line: 672, column: 25, scope: !2014)
!2018 = !DILocation(line: 672, column: 8, scope: !2014)
!2019 = !DILocation(line: 673, column: 17, scope: !2014)
!2020 = !DILocation(line: 673, column: 8, scope: !2014)
!2021 = !DILocation(line: 674, column: 17, scope: !2014)
!2022 = !DILocation(line: 674, column: 8, scope: !2014)
!2023 = !DILocation(line: 675, column: 6, scope: !2014)
!2024 = !DILocation(line: 677, column: 12, scope: !2008)
!2025 = !DILocation(line: 677, column: 17, scope: !2008)
!2026 = !DILocation(line: 678, column: 12, scope: !2008)
!2027 = !DILocation(line: 678, column: 30, scope: !2008)
!2028 = !DILocation(line: 679, column: 8, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2008, file: !1, line: 679, column: 8)
!2030 = !DILocation(line: 679, column: 8, scope: !2008)
!2031 = !DILocation(line: 681, column: 8, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2029, file: !1, line: 680, column: 6)
!2033 = !DILocation(line: 682, column: 25, scope: !2032)
!2034 = !DILocation(line: 682, column: 8, scope: !2032)
!2035 = !DILocation(line: 683, column: 6, scope: !2032)
!2036 = !DILocation(line: 686, column: 52, scope: !2008)
!2037 = !DILocation(line: 687, column: 44, scope: !2008)
!2038 = !DILocation(line: 688, column: 16, scope: !2008)
!2039 = !DILocation(line: 686, column: 4, scope: !2008)
!2040 = !DILocation(line: 689, column: 4, scope: !2008)
!2041 = !DILocation(line: 693, column: 14, scope: !2008)
!2042 = !DILocation(line: 693, column: 19, scope: !2008)
!2043 = !DILocation(line: 694, column: 14, scope: !2008)
!2044 = !DILocation(line: 694, column: 19, scope: !2008)
!2045 = !DILocation(line: 695, column: 29, scope: !2008)
!2046 = !DILocation(line: 695, column: 19, scope: !2008)
!2047 = !DILocation(line: 696, column: 37, scope: !2008)
!2048 = !DILocation(line: 696, column: 27, scope: !2008)
!2049 = !DILocation(line: 697, column: 8, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2008, file: !1, line: 697, column: 8)
!2051 = !DILocation(line: 697, column: 8, scope: !2008)
!2052 = !DILocation(line: 698, column: 6, scope: !2050)
!2053 = !DILocation(line: 658, column: 32, scope: !1992)
!2054 = !DILocation(line: 658, column: 3, scope: !1992)
!2055 = distinct !{!2055, !1993, !2056}
!2056 = !DILocation(line: 700, column: 5, scope: !1989)
!2057 = !DILocation(line: 702, column: 7, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !1725, file: !1, line: 702, column: 7)
!2059 = !DILocation(line: 702, column: 7, scope: !1725)
!2060 = !DILocation(line: 703, column: 5, scope: !2058)
!2061 = !DILocation(line: 706, column: 3, scope: !1725)
!2062 = !DILocation(line: 707, column: 1, scope: !1725)
!2063 = distinct !DISubprogram(name: "find_minimum_cost_flow", scope: !1, file: !1, line: 1320, type: !1726, scopeLine: 1321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2064)
!2064 = !{!2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072}
!2065 = !DILocalVariable(name: "fixup_graph", arg: 1, scope: !2063, file: !1, line: 1320, type: !1728)
!2066 = !DILocalVariable(name: "pred", scope: !2063, file: !1, line: 1323, type: !314)
!2067 = !DILocalVariable(name: "cycle", scope: !2063, file: !1, line: 1325, type: !314)
!2068 = !DILocalVariable(name: "iteration", scope: !2063, file: !1, line: 1327, type: !261)
!2069 = !DILocalVariable(name: "d", scope: !2063, file: !1, line: 1329, type: !313)
!2070 = !DILocalVariable(name: "fnum_vertices", scope: !2063, file: !1, line: 1330, type: !261)
!2071 = !DILocalVariable(name: "new_exit_index", scope: !2063, file: !1, line: 1331, type: !261)
!2072 = !DILocalVariable(name: "new_entry_index", scope: !2063, file: !1, line: 1332, type: !261)
!2073 = !DILocation(line: 0, scope: !2063)
!2074 = !DILocation(line: 1334, column: 3, scope: !2063)
!2075 = !DILocation(line: 1335, column: 32, scope: !2063)
!2076 = !DILocation(line: 1336, column: 33, scope: !2063)
!2077 = !DILocation(line: 1337, column: 34, scope: !2063)
!2078 = !DILocation(line: 1339, column: 3, scope: !2063)
!2079 = !DILocation(line: 1342, column: 27, scope: !2063)
!2080 = !DILocation(line: 1342, column: 18, scope: !2063)
!2081 = !DILocation(line: 1342, column: 10, scope: !2063)
!2082 = !DILocation(line: 1343, column: 21, scope: !2063)
!2083 = !DILocation(line: 1343, column: 7, scope: !2063)
!2084 = !DILocation(line: 1344, column: 19, scope: !2063)
!2085 = !DILocation(line: 1344, column: 11, scope: !2063)
!2086 = !DILocation(line: 0, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !1, line: 1353, column: 11)
!2088 = distinct !DILexicalBlock(scope: !2063, file: !1, line: 1351, column: 5)
!2089 = !DILocation(line: 1350, column: 3, scope: !2063)
!2090 = !DILocation(line: 1350, column: 10, scope: !2063)
!2091 = !DILocation(line: 1352, column: 16, scope: !2088)
!2092 = !DILocation(line: 1353, column: 23, scope: !2087)
!2093 = !DILocation(line: 1353, column: 21, scope: !2087)
!2094 = !DILocation(line: 1353, column: 11, scope: !2088)
!2095 = distinct !{!2095, !2089, !2096}
!2096 = !DILocation(line: 1356, column: 5, scope: !2063)
!2097 = !DILocation(line: 1358, column: 7, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2063, file: !1, line: 1358, column: 7)
!2099 = !DILocation(line: 1358, column: 7, scope: !2063)
!2100 = !DILocation(line: 1359, column: 5, scope: !2098)
!2101 = !DILocation(line: 1363, column: 3, scope: !2063)
!2102 = !DILocation(line: 1364, column: 3, scope: !2063)
!2103 = !DILocation(line: 1365, column: 3, scope: !2063)
!2104 = !DILocation(line: 1366, column: 1, scope: !2063)
!2105 = distinct !DISubprogram(name: "adjust_cfg_counts", scope: !1, file: !1, line: 1118, type: !1726, scopeLine: 1119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2106)
!2106 = !{!2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115}
!2107 = !DILocalVariable(name: "fixup_graph", arg: 1, scope: !2105, file: !1, line: 1118, type: !1728)
!2108 = !DILocalVariable(name: "bb", scope: !2105, file: !1, line: 1120, type: !1093)
!2109 = !DILocalVariable(name: "e", scope: !2105, file: !1, line: 1121, type: !792)
!2110 = !DILocalVariable(name: "ei", scope: !2105, file: !1, line: 1122, type: !1634)
!2111 = !DILocalVariable(name: "i", scope: !2105, file: !1, line: 1123, type: !261)
!2112 = !DILocalVariable(name: "j", scope: !2105, file: !1, line: 1123, type: !261)
!2113 = !DILocalVariable(name: "pfedge", scope: !2105, file: !1, line: 1124, type: !293)
!2114 = !DILocalVariable(name: "pfedge_n", scope: !2105, file: !1, line: 1124, type: !293)
!2115 = !DILocalVariable(name: "total", scope: !2116, file: !1, line: 1257, type: !261)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !1, line: 1256, column: 9)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !1, line: 1250, column: 11)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !1, line: 1249, column: 5)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !1, line: 1248, column: 3)
!2120 = distinct !DILexicalBlock(scope: !2105, file: !1, line: 1248, column: 3)
!2121 = !DILocation(line: 0, scope: !2105)
!2122 = !DILocation(line: 1121, column: 3, scope: !2105)
!2123 = !DILocation(line: 1122, column: 3, scope: !2105)
!2124 = !DILocation(line: 1126, column: 3, scope: !2105)
!2125 = !DILocation(line: 1128, column: 7, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2105, file: !1, line: 1128, column: 7)
!2127 = !DILocation(line: 1128, column: 7, scope: !2105)
!2128 = !DILocation(line: 1129, column: 5, scope: !2126)
!2129 = !DILocation(line: 1131, column: 3, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2105, file: !1, line: 1131, column: 3)
!2131 = !DILocation(line: 0, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !1, line: 1172, column: 7)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !1, line: 1132, column: 5)
!2134 = distinct !DILexicalBlock(scope: !2130, file: !1, line: 1131, column: 3)
!2135 = !DILocation(line: 0, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2132, file: !1, line: 1172, column: 7)
!2137 = !DILocation(line: 1131, column: 3, scope: !2134)
!2138 = !DILocation(line: 0, scope: !2130)
!2139 = !DILocation(line: 1133, column: 19, scope: !2133)
!2140 = !DILocation(line: 1133, column: 13, scope: !2133)
!2141 = !DILocation(line: 1136, column: 11, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2133, file: !1, line: 1136, column: 11)
!2143 = !DILocation(line: 1136, column: 11, scope: !2133)
!2144 = !DILocation(line: 1138, column: 72, scope: !2142)
!2145 = !DILocation(line: 1137, column: 9, scope: !2142)
!2146 = !DILocation(line: 1140, column: 51, scope: !2133)
!2147 = !DILocation(line: 1140, column: 16, scope: !2133)
!2148 = !DILocation(line: 1141, column: 19, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2133, file: !1, line: 1141, column: 11)
!2150 = !DILocation(line: 1141, column: 11, scope: !2149)
!2151 = !DILocation(line: 1141, column: 11, scope: !2133)
!2152 = !DILocation(line: 1143, column: 15, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2149, file: !1, line: 1142, column: 9)
!2154 = !DILocation(line: 1143, column: 21, scope: !2153)
!2155 = !DILocation(line: 1144, column: 8, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2153, file: !1, line: 1144, column: 8)
!2157 = !DILocation(line: 1144, column: 8, scope: !2153)
!2158 = !DILocation(line: 1147, column: 25, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2156, file: !1, line: 1145, column: 6)
!2160 = !DILocation(line: 1146, column: 8, scope: !2159)
!2161 = !DILocation(line: 1148, column: 20, scope: !2159)
!2162 = !DILocation(line: 1148, column: 8, scope: !2159)
!2163 = !DILocation(line: 1149, column: 17, scope: !2159)
!2164 = !DILocation(line: 1149, column: 8, scope: !2159)
!2165 = !DILocation(line: 1150, column: 6, scope: !2159)
!2166 = !DILocation(line: 1154, column: 54, scope: !2133)
!2167 = !DILocation(line: 1154, column: 9, scope: !2133)
!2168 = !DILocation(line: 1156, column: 19, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2133, file: !1, line: 1156, column: 11)
!2170 = !DILocation(line: 1156, column: 11, scope: !2169)
!2171 = !DILocation(line: 1156, column: 37, scope: !2169)
!2172 = !DILocation(line: 1156, column: 50, scope: !2169)
!2173 = !DILocation(line: 1156, column: 40, scope: !2169)
!2174 = !DILocation(line: 1156, column: 11, scope: !2133)
!2175 = !DILocation(line: 1158, column: 15, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2169, file: !1, line: 1157, column: 9)
!2177 = !DILocation(line: 1158, column: 21, scope: !2176)
!2178 = !DILocation(line: 1159, column: 8, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2176, file: !1, line: 1159, column: 8)
!2180 = !DILocation(line: 1159, column: 8, scope: !2176)
!2181 = !DILocation(line: 1162, column: 20, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2179, file: !1, line: 1160, column: 6)
!2183 = !DILocation(line: 1161, column: 8, scope: !2182)
!2184 = !DILocation(line: 1163, column: 20, scope: !2182)
!2185 = !DILocation(line: 1164, column: 14, scope: !2182)
!2186 = !DILocation(line: 1163, column: 8, scope: !2182)
!2187 = !DILocation(line: 1165, column: 17, scope: !2182)
!2188 = !DILocation(line: 1165, column: 8, scope: !2182)
!2189 = !DILocation(line: 1166, column: 6, scope: !2182)
!2190 = !DILocation(line: 1168, column: 11, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2133, file: !1, line: 1168, column: 11)
!2192 = !DILocation(line: 1168, column: 11, scope: !2133)
!2193 = !DILocation(line: 1169, column: 71, scope: !2191)
!2194 = !DILocation(line: 1169, column: 9, scope: !2191)
!2195 = !DILocation(line: 1172, column: 7, scope: !2132)
!2196 = !DILocation(line: 0, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !1, line: 1217, column: 6)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !1, line: 1185, column: 15)
!2199 = distinct !DILexicalBlock(scope: !2136, file: !1, line: 1173, column: 9)
!2200 = !DILocation(line: 1172, column: 7, scope: !2136)
!2201 = !DILocation(line: 1175, column: 15, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2199, file: !1, line: 1175, column: 15)
!2203 = !DILocation(line: 1175, column: 29, scope: !2202)
!2204 = !DILocation(line: 1175, column: 47, scope: !2202)
!2205 = !DILocation(line: 1175, column: 32, scope: !2202)
!2206 = !DILocation(line: 1175, column: 15, scope: !2199)
!2207 = !DILocation(line: 1178, column: 22, scope: !2199)
!2208 = !DILocation(line: 1178, column: 28, scope: !2199)
!2209 = !DILocation(line: 1178, column: 17, scope: !2199)
!2210 = !DILocation(line: 1179, column: 15, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2199, file: !1, line: 1179, column: 15)
!2212 = !DILocation(line: 1179, column: 15, scope: !2199)
!2213 = !DILocation(line: 1181, column: 12, scope: !2211)
!2214 = !DILocation(line: 1181, column: 38, scope: !2211)
!2215 = !DILocation(line: 1180, column: 6, scope: !2211)
!2216 = !DILocation(line: 1183, column: 20, scope: !2199)
!2217 = !DILocation(line: 1185, column: 19, scope: !2198)
!2218 = !DILocation(line: 1185, column: 28, scope: !2198)
!2219 = !DILocation(line: 1185, column: 31, scope: !2198)
!2220 = !DILocation(line: 1185, column: 37, scope: !2198)
!2221 = !DILocation(line: 1185, column: 25, scope: !2198)
!2222 = !DILocation(line: 1185, column: 15, scope: !2199)
!2223 = !DILocation(line: 1188, column: 20, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !1, line: 1188, column: 12)
!2225 = distinct !DILexicalBlock(scope: !2198, file: !1, line: 1186, column: 6)
!2226 = !DILocation(line: 1188, column: 12, scope: !2224)
!2227 = !DILocation(line: 1188, column: 12, scope: !2225)
!2228 = !DILocation(line: 1190, column: 15, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2224, file: !1, line: 1189, column: 10)
!2230 = !DILocation(line: 1190, column: 21, scope: !2229)
!2231 = !DILocation(line: 1191, column: 16, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2229, file: !1, line: 1191, column: 16)
!2233 = !DILocation(line: 1191, column: 16, scope: !2229)
!2234 = !DILocation(line: 1194, column: 19, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2232, file: !1, line: 1192, column: 7)
!2236 = !DILocation(line: 1193, column: 9, scope: !2235)
!2237 = !DILocation(line: 1195, column: 21, scope: !2235)
!2238 = !DILocation(line: 1195, column: 9, scope: !2235)
!2239 = !DILocation(line: 1196, column: 18, scope: !2235)
!2240 = !DILocation(line: 1196, column: 9, scope: !2235)
!2241 = !DILocation(line: 1197, column: 7, scope: !2235)
!2242 = !DILocation(line: 1201, column: 51, scope: !2225)
!2243 = !DILocation(line: 1201, column: 10, scope: !2225)
!2244 = !DILocation(line: 1203, column: 20, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2225, file: !1, line: 1203, column: 12)
!2246 = !DILocation(line: 1203, column: 12, scope: !2245)
!2247 = !DILocation(line: 1203, column: 38, scope: !2245)
!2248 = !DILocation(line: 1203, column: 51, scope: !2245)
!2249 = !DILocation(line: 1203, column: 41, scope: !2245)
!2250 = !DILocation(line: 1203, column: 12, scope: !2225)
!2251 = !DILocation(line: 1205, column: 12, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2245, file: !1, line: 1204, column: 10)
!2253 = !DILocation(line: 1205, column: 15, scope: !2252)
!2254 = !DILocation(line: 1205, column: 21, scope: !2252)
!2255 = !DILocation(line: 1206, column: 16, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2252, file: !1, line: 1206, column: 16)
!2257 = !DILocation(line: 1206, column: 16, scope: !2252)
!2258 = !DILocation(line: 1209, column: 21, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2256, file: !1, line: 1207, column: 7)
!2260 = !DILocation(line: 1208, column: 9, scope: !2259)
!2261 = !DILocation(line: 1210, column: 21, scope: !2259)
!2262 = !DILocation(line: 1211, column: 22, scope: !2259)
!2263 = !DILocation(line: 1210, column: 9, scope: !2259)
!2264 = !DILocation(line: 1212, column: 18, scope: !2259)
!2265 = !DILocation(line: 1212, column: 9, scope: !2259)
!2266 = !DILocation(line: 1213, column: 7, scope: !2259)
!2267 = !DILocation(line: 1220, column: 17, scope: !2197)
!2268 = !DILocation(line: 1222, column: 55, scope: !2197)
!2269 = !DILocation(line: 1222, column: 10, scope: !2197)
!2270 = !DILocation(line: 1223, column: 30, scope: !2197)
!2271 = !DILocation(line: 1223, column: 8, scope: !2197)
!2272 = !DILocation(line: 1223, column: 11, scope: !2197)
!2273 = !DILocation(line: 1223, column: 17, scope: !2197)
!2274 = !DILocation(line: 1224, column: 31, scope: !2197)
!2275 = !DILocation(line: 1224, column: 18, scope: !2197)
!2276 = !DILocation(line: 1225, column: 12, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2197, file: !1, line: 1225, column: 12)
!2278 = !DILocation(line: 1225, column: 12, scope: !2197)
!2279 = !DILocation(line: 1227, column: 12, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2277, file: !1, line: 1226, column: 10)
!2281 = !DILocation(line: 1228, column: 21, scope: !2280)
!2282 = !DILocation(line: 1229, column: 24, scope: !2280)
!2283 = !DILocation(line: 1228, column: 12, scope: !2280)
!2284 = !DILocation(line: 1230, column: 24, scope: !2280)
!2285 = !DILocation(line: 1231, column: 18, scope: !2280)
!2286 = !DILocation(line: 1230, column: 12, scope: !2280)
!2287 = !DILocation(line: 1232, column: 21, scope: !2280)
!2288 = !DILocation(line: 1232, column: 12, scope: !2280)
!2289 = !DILocation(line: 1233, column: 10, scope: !2280)
!2290 = !DILocation(line: 1236, column: 19, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2199, file: !1, line: 1236, column: 15)
!2292 = !DILocation(line: 1236, column: 15, scope: !2291)
!2293 = !DILocation(line: 1236, column: 15, scope: !2199)
!2294 = !DILocation(line: 1237, column: 42, scope: !2291)
!2295 = !DILocation(line: 1237, column: 45, scope: !2291)
!2296 = !DILocation(line: 1237, column: 40, scope: !2291)
!2297 = !DILocation(line: 1237, column: 51, scope: !2291)
!2298 = !DILocation(line: 1237, column: 23, scope: !2291)
!2299 = !DILocation(line: 1237, column: 9, scope: !2291)
!2300 = !DILocation(line: 1237, column: 21, scope: !2291)
!2301 = !DILocation(line: 1237, column: 6, scope: !2291)
!2302 = !DILocation(line: 1238, column: 15, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2199, file: !1, line: 1238, column: 15)
!2304 = !DILocation(line: 1238, column: 15, scope: !2199)
!2305 = !DILocation(line: 1240, column: 8, scope: !2303)
!2306 = !DILocation(line: 1240, column: 11, scope: !2303)
!2307 = !DILocation(line: 1240, column: 21, scope: !2303)
!2308 = !DILocation(line: 1240, column: 18, scope: !2303)
!2309 = !DILocation(line: 1240, column: 33, scope: !2303)
!2310 = !DILocation(line: 1240, column: 41, scope: !2303)
!2311 = !DILocation(line: 1239, column: 6, scope: !2303)
!2312 = distinct !{!2312, !2195, !2313}
!2313 = !DILocation(line: 1241, column: 9, scope: !2132)
!2314 = !DILocation(line: 0, scope: !2134)
!2315 = distinct !{!2315, !2129, !2316}
!2316 = !DILocation(line: 1242, column: 5, scope: !2130)
!2317 = !DILocation(line: 1244, column: 45, scope: !2105)
!2318 = !DILocation(line: 1244, column: 62, scope: !2105)
!2319 = !DILocation(line: 1244, column: 28, scope: !2105)
!2320 = !DILocation(line: 1244, column: 3, scope: !2105)
!2321 = !DILocation(line: 1244, column: 20, scope: !2105)
!2322 = !DILocation(line: 1244, column: 26, scope: !2105)
!2323 = !DILocation(line: 1245, column: 44, scope: !2105)
!2324 = !DILocation(line: 1245, column: 60, scope: !2105)
!2325 = !DILocation(line: 1245, column: 27, scope: !2105)
!2326 = !DILocation(line: 1245, column: 3, scope: !2105)
!2327 = !DILocation(line: 1245, column: 19, scope: !2105)
!2328 = !DILocation(line: 1245, column: 25, scope: !2105)
!2329 = !DILocation(line: 1248, column: 3, scope: !2120)
!2330 = !DILocation(line: 0, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !1, line: 1252, column: 11)
!2332 = distinct !DILexicalBlock(scope: !2117, file: !1, line: 1251, column: 9)
!2333 = !DILocation(line: 0, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2116, file: !1, line: 1258, column: 11)
!2335 = !DILocation(line: 0, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2337, file: !1, line: 1263, column: 15)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !1, line: 1262, column: 13)
!2338 = distinct !DILexicalBlock(scope: !2116, file: !1, line: 1261, column: 15)
!2339 = !DILocation(line: 0, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !1, line: 1274, column: 15)
!2341 = distinct !DILexicalBlock(scope: !2338, file: !1, line: 1272, column: 13)
!2342 = !DILocation(line: 0, scope: !2120)
!2343 = !DILocation(line: 1250, column: 15, scope: !2117)
!2344 = !DILocation(line: 1250, column: 11, scope: !2117)
!2345 = !DILocation(line: 1250, column: 11, scope: !2118)
!2346 = !DILocation(line: 1252, column: 11, scope: !2331)
!2347 = !DILocation(line: 1252, column: 11, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2331, file: !1, line: 1252, column: 11)
!2349 = !DILocation(line: 1253, column: 49, scope: !2348)
!2350 = !DILocation(line: 1253, column: 52, scope: !2348)
!2351 = !DILocation(line: 1253, column: 47, scope: !2348)
!2352 = !DILocation(line: 1253, column: 64, scope: !2348)
!2353 = !DILocation(line: 1253, column: 58, scope: !2348)
!2354 = !DILocation(line: 1253, column: 30, scope: !2348)
!2355 = !DILocation(line: 1253, column: 16, scope: !2348)
!2356 = !DILocation(line: 1253, column: 28, scope: !2348)
!2357 = distinct !{!2357, !2346, !2358}
!2358 = !DILocation(line: 1253, column: 64, scope: !2331)
!2359 = !DILocation(line: 0, scope: !2116)
!2360 = !DILocation(line: 1258, column: 11, scope: !2334)
!2361 = !DILocation(line: 1257, column: 15, scope: !2116)
!2362 = !DILocation(line: 1258, column: 11, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2334, file: !1, line: 1258, column: 11)
!2364 = !DILocation(line: 1259, column: 19, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2363, file: !1, line: 1259, column: 17)
!2366 = !DILocation(line: 1259, column: 22, scope: !2365)
!2367 = !DILocation(line: 1259, column: 28, scope: !2365)
!2368 = !DILocation(line: 1259, column: 17, scope: !2363)
!2369 = distinct !{!2369, !2360, !2370}
!2370 = !DILocation(line: 1260, column: 20, scope: !2334)
!2371 = !DILocation(line: 1261, column: 15, scope: !2338)
!2372 = !DILocation(line: 1261, column: 15, scope: !2116)
!2373 = !DILocation(line: 1263, column: 15, scope: !2336)
!2374 = !DILocation(line: 1263, column: 15, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2336, file: !1, line: 1263, column: 15)
!2376 = !DILocation(line: 1265, column: 25, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !1, line: 1265, column: 23)
!2378 = distinct !DILexicalBlock(scope: !2375, file: !1, line: 1264, column: 17)
!2379 = !DILocation(line: 1265, column: 28, scope: !2377)
!2380 = !DILocation(line: 1265, column: 34, scope: !2377)
!2381 = !DILocation(line: 1265, column: 23, scope: !2378)
!2382 = !DILocation(line: 1266, column: 55, scope: !2377)
!2383 = !DILocation(line: 1266, column: 24, scope: !2377)
!2384 = !DILocation(line: 1266, column: 36, scope: !2377)
!2385 = !DILocation(line: 1266, column: 21, scope: !2377)
!2386 = !DILocation(line: 1268, column: 24, scope: !2377)
!2387 = !DILocation(line: 1268, column: 36, scope: !2377)
!2388 = distinct !{!2388, !2373, !2389}
!2389 = !DILocation(line: 1269, column: 17, scope: !2336)
!2390 = !DILocation(line: 1273, column: 24, scope: !2341)
!2391 = !DILocation(line: 1274, column: 15, scope: !2340)
!2392 = !DILocation(line: 1274, column: 15, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2340, file: !1, line: 1274, column: 15)
!2394 = !DILocation(line: 1275, column: 53, scope: !2393)
!2395 = !DILocation(line: 1275, column: 19, scope: !2393)
!2396 = !DILocation(line: 1275, column: 22, scope: !2393)
!2397 = !DILocation(line: 1275, column: 34, scope: !2393)
!2398 = distinct !{!2398, !2391, !2399}
!2399 = !DILocation(line: 1275, column: 55, scope: !2340)
!2400 = !DILocation(line: 1248, column: 3, scope: !2119)
!2401 = distinct !{!2401, !2329, !2402}
!2402 = !DILocation(line: 1278, column: 5, scope: !2120)
!2403 = !DILocation(line: 1280, column: 7, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2105, file: !1, line: 1280, column: 7)
!2405 = !DILocation(line: 1280, column: 7, scope: !2105)
!2406 = !DILocation(line: 1283, column: 23, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2404, file: !1, line: 1281, column: 5)
!2408 = !DILocation(line: 1283, column: 44, scope: !2407)
!2409 = !DILocation(line: 1283, column: 12, scope: !2407)
!2410 = !DILocation(line: 1282, column: 7, scope: !2407)
!2411 = !DILocation(line: 1284, column: 7, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2407, file: !1, line: 1284, column: 7)
!2413 = !DILocation(line: 1284, column: 7, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2412, file: !1, line: 1284, column: 7)
!2415 = !DILocation(line: 0, scope: !2412)
!2416 = !DILocation(line: 1286, column: 20, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !1, line: 1286, column: 15)
!2418 = distinct !DILexicalBlock(scope: !2414, file: !1, line: 1285, column: 9)
!2419 = !DILocation(line: 1286, column: 50, scope: !2417)
!2420 = !DILocation(line: 1286, column: 29, scope: !2417)
!2421 = !DILocation(line: 1286, column: 26, scope: !2417)
!2422 = !DILocation(line: 1287, column: 16, scope: !2417)
!2423 = !DILocation(line: 1287, column: 24, scope: !2417)
!2424 = !DILocation(line: 1287, column: 54, scope: !2417)
!2425 = !DILocation(line: 1287, column: 33, scope: !2417)
!2426 = !DILocation(line: 1287, column: 30, scope: !2417)
!2427 = !DILocation(line: 1286, column: 15, scope: !2418)
!2428 = !DILocation(line: 1289, column: 24, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2417, file: !1, line: 1288, column: 13)
!2430 = !DILocation(line: 1291, column: 28, scope: !2429)
!2431 = !DILocation(line: 1291, column: 39, scope: !2429)
!2432 = !DILocation(line: 1289, column: 15, scope: !2429)
!2433 = !DILocation(line: 1292, column: 24, scope: !2429)
!2434 = !DILocation(line: 1294, column: 50, scope: !2429)
!2435 = !DILocation(line: 1294, column: 61, scope: !2429)
!2436 = !DILocation(line: 1292, column: 15, scope: !2429)
!2437 = !DILocation(line: 1295, column: 24, scope: !2429)
!2438 = !DILocation(line: 1296, column: 45, scope: !2429)
!2439 = !DILocation(line: 1296, column: 24, scope: !2429)
!2440 = !DILocation(line: 1295, column: 15, scope: !2429)
!2441 = !DILocation(line: 1297, column: 24, scope: !2429)
!2442 = !DILocation(line: 1298, column: 45, scope: !2429)
!2443 = !DILocation(line: 1298, column: 24, scope: !2429)
!2444 = !DILocation(line: 1297, column: 15, scope: !2429)
!2445 = !DILocation(line: 1299, column: 13, scope: !2429)
!2446 = !DILocation(line: 0, scope: !2414)
!2447 = distinct !{!2447, !2411, !2448}
!2448 = !DILocation(line: 1300, column: 10, scope: !2412)
!2449 = !DILocation(line: 1302, column: 1, scope: !2105)
!2450 = distinct !DISubprogram(name: "delete_fixup_graph", scope: !1, file: !1, line: 443, type: !1726, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2451)
!2451 = !{!2452, !2453, !2454, !2455}
!2452 = !DILocalVariable(name: "fixup_graph", arg: 1, scope: !2450, file: !1, line: 443, type: !1728)
!2453 = !DILocalVariable(name: "i", scope: !2450, file: !1, line: 445, type: !261)
!2454 = !DILocalVariable(name: "fnum_vertices", scope: !2450, file: !1, line: 446, type: !261)
!2455 = !DILocalVariable(name: "pfvertex", scope: !2450, file: !1, line: 447, type: !275)
!2456 = !DILocation(line: 0, scope: !2450)
!2457 = !DILocation(line: 446, column: 36, scope: !2450)
!2458 = !DILocation(line: 447, column: 42, scope: !2450)
!2459 = !DILocation(line: 449, column: 8, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2450, file: !1, line: 449, column: 3)
!2461 = !DILocation(line: 0, scope: !2460)
!2462 = !DILocation(line: 449, column: 17, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2460, file: !1, line: 449, column: 3)
!2464 = !DILocation(line: 449, column: 3, scope: !2460)
!2465 = !DILocation(line: 450, column: 5, scope: !2463)
!2466 = !DILocation(line: 449, column: 35, scope: !2463)
!2467 = !DILocation(line: 449, column: 47, scope: !2463)
!2468 = !DILocation(line: 449, column: 3, scope: !2463)
!2469 = distinct !{!2469, !2464, !2470}
!2470 = !DILocation(line: 450, column: 5, scope: !2460)
!2471 = !DILocation(line: 452, column: 22, scope: !2450)
!2472 = !DILocation(line: 452, column: 3, scope: !2450)
!2473 = !DILocation(line: 453, column: 22, scope: !2450)
!2474 = !DILocation(line: 453, column: 3, scope: !2450)
!2475 = !DILocation(line: 454, column: 1, scope: !2450)
!2476 = distinct !DISubprogram(name: "ei_end_p", scope: !4, file: !4, line: 721, type: !2477, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2479)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!260, !1634}
!2479 = !{!2480}
!2480 = !DILocalVariable(name: "i", arg: 1, scope: !2476, file: !4, line: 721, type: !1634)
!2481 = !DILocation(line: 723, column: 22, scope: !2476)
!2482 = !DILocation(line: 723, column: 19, scope: !2476)
!2483 = !DILocation(line: 723, column: 10, scope: !2476)
!2484 = !DILocation(line: 723, column: 3, scope: !2476)
!2485 = distinct !DISubprogram(name: "ei_edge", scope: !4, file: !4, line: 752, type: !2486, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2488)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!792, !1634}
!2488 = !{!2489}
!2489 = !DILocalVariable(name: "i", arg: 1, scope: !2485, file: !4, line: 752, type: !1634)
!2490 = !DILocation(line: 754, column: 10, scope: !2485)
!2491 = !DILocation(line: 754, column: 3, scope: !2485)
!2492 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !4, file: !4, line: 150, type: !2493, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2497)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!5, !2495}
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !785)
!2497 = !{!2498}
!2498 = !DILocalVariable(name: "vec_", arg: 1, scope: !2492, file: !4, line: 150, type: !2495)
!2499 = !DILocation(line: 0, scope: !2492)
!2500 = !DILocation(line: 150, column: 1, scope: !2492)
!2501 = distinct !DISubprogram(name: "ei_container", scope: !4, file: !4, line: 685, type: !2502, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2504)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!780, !1634}
!2504 = !{!2505}
!2505 = !DILocalVariable(name: "i", arg: 1, scope: !2501, file: !4, line: 685, type: !1634)
!2506 = !DILocation(line: 687, column: 3, scope: !2501)
!2507 = !DILocation(line: 688, column: 10, scope: !2501)
!2508 = !DILocation(line: 688, column: 3, scope: !2501)
!2509 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !4, file: !4, line: 150, type: !2510, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2512)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!792, !2495, !5}
!2512 = !{!2513, !2514}
!2513 = !DILocalVariable(name: "vec_", arg: 1, scope: !2509, file: !4, line: 150, type: !2495)
!2514 = !DILocalVariable(name: "ix_", arg: 2, scope: !2509, file: !4, line: 150, type: !5)
!2515 = !DILocation(line: 0, scope: !2509)
!2516 = !DILocation(line: 150, column: 1, scope: !2509)
!2517 = distinct !DISubprogram(name: "mcf_sqrt", scope: !1, file: !1, line: 347, type: !2518, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2520)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!566, !566}
!2520 = !{!2521, !2522, !2528}
!2521 = !DILocalVariable(name: "x", arg: 1, scope: !2517, file: !1, line: 347, type: !566)
!2522 = !DILocalVariable(name: "convertor", scope: !2517, file: !1, line: 354, type: !2523)
!2523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2517, file: !1, line: 351, size: 32, elements: !2524)
!2524 = !{!2525, !2526}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "intPart", scope: !2523, file: !1, line: 352, baseType: !261, size: 32)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "floatPart", scope: !2523, file: !1, line: 353, baseType: !2527, size: 32)
!2527 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!2528 = !DILocalVariable(name: "convertor2", scope: !2517, file: !1, line: 354, type: !2523)
!2529 = !DILocation(line: 0, scope: !2517)
!2530 = !DILocation(line: 356, column: 3, scope: !2517)
!2531 = !DILocation(line: 358, column: 25, scope: !2517)
!2532 = !DILocation(line: 360, column: 49, scope: !2517)
!2533 = !DILocation(line: 360, column: 57, scope: !2517)
!2534 = !DILocation(line: 360, column: 36, scope: !2517)
!2535 = !DILocation(line: 361, column: 37, scope: !2517)
!2536 = !DILocation(line: 363, column: 28, scope: !2517)
!2537 = !DILocation(line: 363, column: 18, scope: !2517)
!2538 = !DILocation(line: 363, column: 56, scope: !2517)
!2539 = !DILocation(line: 363, column: 45, scope: !2517)
!2540 = !DILocation(line: 363, column: 43, scope: !2517)
!2541 = !DILocation(line: 363, column: 38, scope: !2517)
!2542 = !DILocation(line: 363, column: 15, scope: !2517)
!2543 = !DILocation(line: 363, column: 3, scope: !2517)
!2544 = distinct !DISubprogram(name: "mcf_ln", scope: !1, file: !1, line: 325, type: !2518, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2545)
!2545 = !{!2546, !2547, !2548}
!2546 = !DILocalVariable(name: "x", arg: 1, scope: !2544, file: !1, line: 325, type: !566)
!2547 = !DILocalVariable(name: "l", scope: !2544, file: !1, line: 328, type: !261)
!2548 = !DILocalVariable(name: "m", scope: !2544, file: !1, line: 329, type: !566)
!2549 = !DILocation(line: 0, scope: !2544)
!2550 = !DILocation(line: 331, column: 3, scope: !2544)
!2551 = !DILocation(line: 333, column: 3, scope: !2544)
!2552 = !DILocation(line: 333, column: 12, scope: !2544)
!2553 = !DILocation(line: 335, column: 9, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2544, file: !1, line: 334, column: 5)
!2555 = !DILocation(line: 336, column: 8, scope: !2554)
!2556 = distinct !{!2556, !2551, !2557}
!2557 = !DILocation(line: 337, column: 5, scope: !2544)
!2558 = !DILocation(line: 339, column: 10, scope: !2544)
!2559 = !DILocation(line: 339, column: 3, scope: !2544)
!2560 = distinct !DISubprogram(name: "add_fixup_edge", scope: !1, file: !1, line: 391, type: !2561, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2563)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{null, !1728, !261, !261, !301, !305, !305, !305}
!2563 = !{!2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571}
!2564 = !DILocalVariable(name: "fixup_graph", arg: 1, scope: !2560, file: !1, line: 391, type: !1728)
!2565 = !DILocalVariable(name: "src", arg: 2, scope: !2560, file: !1, line: 391, type: !261)
!2566 = !DILocalVariable(name: "dest", arg: 3, scope: !2560, file: !1, line: 391, type: !261)
!2567 = !DILocalVariable(name: "type", arg: 4, scope: !2560, file: !1, line: 392, type: !301)
!2568 = !DILocalVariable(name: "weight", arg: 5, scope: !2560, file: !1, line: 392, type: !305)
!2569 = !DILocalVariable(name: "cost", arg: 6, scope: !2560, file: !1, line: 392, type: !305)
!2570 = !DILocalVariable(name: "max_capacity", arg: 7, scope: !2560, file: !1, line: 393, type: !305)
!2571 = !DILocalVariable(name: "curr_edge", scope: !2560, file: !1, line: 395, type: !293)
!2572 = !DILocation(line: 0, scope: !2560)
!2573 = !DILocation(line: 395, column: 28, scope: !2560)
!2574 = !DILocation(line: 396, column: 14, scope: !2560)
!2575 = !DILocation(line: 396, column: 19, scope: !2560)
!2576 = !DILocation(line: 397, column: 14, scope: !2560)
!2577 = !DILocation(line: 397, column: 21, scope: !2560)
!2578 = !DILocation(line: 398, column: 14, scope: !2560)
!2579 = !DILocation(line: 398, column: 27, scope: !2560)
!2580 = !DILocation(line: 399, column: 1, scope: !2560)
!2581 = distinct !DISubprogram(name: "find_fixup_edge", scope: !1, file: !1, line: 421, type: !2582, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2584)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!293, !1728, !261, !261}
!2584 = !{!2585, !2586, !2587, !2588, !2589, !2590}
!2585 = !DILocalVariable(name: "fixup_graph", arg: 1, scope: !2581, file: !1, line: 421, type: !1728)
!2586 = !DILocalVariable(name: "src", arg: 2, scope: !2581, file: !1, line: 421, type: !261)
!2587 = !DILocalVariable(name: "dest", arg: 3, scope: !2581, file: !1, line: 421, type: !261)
!2588 = !DILocalVariable(name: "j", scope: !2581, file: !1, line: 423, type: !261)
!2589 = !DILocalVariable(name: "pfedge", scope: !2581, file: !1, line: 424, type: !293)
!2590 = !DILocalVariable(name: "pfvertex", scope: !2581, file: !1, line: 425, type: !275)
!2591 = !DILocation(line: 0, scope: !2581)
!2592 = !DILocation(line: 424, column: 3, scope: !2581)
!2593 = !DILocation(line: 427, column: 3, scope: !2581)
!2594 = !DILocation(line: 429, column: 27, scope: !2581)
!2595 = !DILocation(line: 429, column: 39, scope: !2581)
!2596 = !DILocation(line: 0, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !1, line: 431, column: 3)
!2598 = distinct !DILexicalBlock(scope: !2581, file: !1, line: 431, column: 3)
!2599 = !DILocation(line: 431, column: 8, scope: !2598)
!2600 = !DILocation(line: 0, scope: !2598)
!2601 = !DILocation(line: 431, column: 15, scope: !2597)
!2602 = !DILocation(line: 431, column: 3, scope: !2598)
!2603 = !DILocation(line: 433, column: 9, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2597, file: !1, line: 433, column: 9)
!2605 = !DILocation(line: 433, column: 17, scope: !2604)
!2606 = !DILocation(line: 433, column: 22, scope: !2604)
!2607 = !DILocation(line: 433, column: 9, scope: !2597)
!2608 = !DILocation(line: 434, column: 7, scope: !2604)
!2609 = !DILocation(line: 432, column: 9, scope: !2597)
!2610 = !DILocation(line: 431, column: 3, scope: !2597)
!2611 = distinct !{!2611, !2602, !2612}
!2612 = !DILocation(line: 434, column: 14, scope: !2598)
!2613 = !DILocation(line: 437, column: 1, scope: !2581)
!2614 = distinct !DISubprogram(name: "dump_fixup_edge", scope: !1, file: !1, line: 200, type: !2615, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2617)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{null, !348, !1728, !293}
!2617 = !{!2618, !2619, !2620}
!2618 = !DILocalVariable(name: "file", arg: 1, scope: !2614, file: !1, line: 200, type: !348)
!2619 = !DILocalVariable(name: "fixup_graph", arg: 2, scope: !2614, file: !1, line: 200, type: !1728)
!2620 = !DILocalVariable(name: "fedge", arg: 3, scope: !2614, file: !1, line: 200, type: !293)
!2621 = !DILocation(line: 0, scope: !2614)
!2622 = !DILocation(line: 202, column: 8, scope: !2623)
!2623 = distinct !DILexicalBlock(scope: !2614, file: !1, line: 202, column: 7)
!2624 = !DILocation(line: 202, column: 7, scope: !2614)
!2625 = !DILocation(line: 204, column: 7, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2623, file: !1, line: 203, column: 5)
!2627 = !DILocation(line: 205, column: 7, scope: !2626)
!2628 = !DILocation(line: 208, column: 41, scope: !2614)
!2629 = !DILocation(line: 208, column: 53, scope: !2614)
!2630 = !DILocation(line: 208, column: 3, scope: !2614)
!2631 = !DILocation(line: 209, column: 3, scope: !2614)
!2632 = !DILocation(line: 211, column: 14, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2614, file: !1, line: 211, column: 7)
!2634 = !DILocation(line: 211, column: 7, scope: !2633)
!2635 = !DILocation(line: 211, column: 7, scope: !2614)
!2636 = !DILocation(line: 214, column: 16, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2633, file: !1, line: 212, column: 5)
!2638 = !DILocation(line: 213, column: 7, scope: !2637)
!2639 = !DILocation(line: 215, column: 18, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2637, file: !1, line: 215, column: 11)
!2641 = !DILocation(line: 215, column: 31, scope: !2640)
!2642 = !DILocation(line: 215, column: 11, scope: !2637)
!2643 = !DILocation(line: 216, column: 2, scope: !2640)
!2644 = !DILocation(line: 218, column: 2, scope: !2640)
!2645 = !DILocation(line: 221, column: 14, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2614, file: !1, line: 221, column: 7)
!2647 = !DILocation(line: 221, column: 7, scope: !2646)
!2648 = !DILocation(line: 221, column: 7, scope: !2614)
!2649 = !DILocation(line: 223, column: 18, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !1, line: 223, column: 11)
!2651 = distinct !DILexicalBlock(scope: !2646, file: !1, line: 222, column: 5)
!2652 = !DILocation(line: 223, column: 24, scope: !2650)
!2653 = !DILocation(line: 223, column: 11, scope: !2651)
!2654 = !DILocation(line: 224, column: 2, scope: !2650)
!2655 = !DILocation(line: 226, column: 2, scope: !2650)
!2656 = !DILocation(line: 229, column: 65, scope: !2614)
!2657 = !DILocation(line: 229, column: 3, scope: !2614)
!2658 = !DILocation(line: 231, column: 39, scope: !2614)
!2659 = !DILocation(line: 231, column: 51, scope: !2614)
!2660 = !DILocation(line: 231, column: 3, scope: !2614)
!2661 = !DILocation(line: 233, column: 14, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2614, file: !1, line: 233, column: 7)
!2663 = !DILocation(line: 233, column: 7, scope: !2662)
!2664 = !DILocation(line: 233, column: 7, scope: !2614)
!2665 = !DILocation(line: 235, column: 7, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2662, file: !1, line: 234, column: 5)
!2667 = !DILocation(line: 238, column: 4, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2666, file: !1, line: 236, column: 2)
!2669 = !DILocation(line: 239, column: 4, scope: !2668)
!2670 = !DILocation(line: 242, column: 4, scope: !2668)
!2671 = !DILocation(line: 243, column: 4, scope: !2668)
!2672 = !DILocation(line: 246, column: 4, scope: !2668)
!2673 = !DILocation(line: 247, column: 4, scope: !2668)
!2674 = !DILocation(line: 250, column: 4, scope: !2668)
!2675 = !DILocation(line: 251, column: 4, scope: !2668)
!2676 = !DILocation(line: 254, column: 4, scope: !2668)
!2677 = !DILocation(line: 255, column: 4, scope: !2668)
!2678 = !DILocation(line: 258, column: 4, scope: !2668)
!2679 = !DILocation(line: 259, column: 4, scope: !2668)
!2680 = !DILocation(line: 263, column: 4, scope: !2668)
!2681 = !DILocation(line: 264, column: 4, scope: !2668)
!2682 = !DILocation(line: 267, column: 4, scope: !2668)
!2683 = !DILocation(line: 268, column: 4, scope: !2668)
!2684 = !DILocation(line: 271, column: 3, scope: !2614)
!2685 = !DILocation(line: 272, column: 1, scope: !2614)
!2686 = distinct !DISubprogram(name: "dump_fixup_graph", scope: !1, file: !1, line: 279, type: !2687, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2689)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{null, !348, !1728, !266}
!2689 = !{!2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699}
!2690 = !DILocalVariable(name: "file", arg: 1, scope: !2686, file: !1, line: 279, type: !348)
!2691 = !DILocalVariable(name: "fixup_graph", arg: 2, scope: !2686, file: !1, line: 279, type: !1728)
!2692 = !DILocalVariable(name: "msg", arg: 3, scope: !2686, file: !1, line: 279, type: !266)
!2693 = !DILocalVariable(name: "i", scope: !2686, file: !1, line: 281, type: !261)
!2694 = !DILocalVariable(name: "j", scope: !2686, file: !1, line: 281, type: !261)
!2695 = !DILocalVariable(name: "fnum_vertices", scope: !2686, file: !1, line: 282, type: !261)
!2696 = !DILocalVariable(name: "fnum_edges", scope: !2686, file: !1, line: 282, type: !261)
!2697 = !DILocalVariable(name: "fvertex_list", scope: !2686, file: !1, line: 284, type: !275)
!2698 = !DILocalVariable(name: "pfvertex", scope: !2686, file: !1, line: 284, type: !275)
!2699 = !DILocalVariable(name: "pfedge", scope: !2686, file: !1, line: 285, type: !293)
!2700 = !DILocation(line: 0, scope: !2686)
!2701 = !DILocation(line: 285, column: 3, scope: !2686)
!2702 = !DILocation(line: 287, column: 3, scope: !2686)
!2703 = !DILocation(line: 288, column: 31, scope: !2686)
!2704 = !DILocation(line: 289, column: 32, scope: !2686)
!2705 = !DILocation(line: 290, column: 29, scope: !2686)
!2706 = !DILocation(line: 293, column: 16, scope: !2686)
!2707 = !DILocation(line: 293, column: 37, scope: !2686)
!2708 = !DILocation(line: 293, column: 5, scope: !2686)
!2709 = !DILocation(line: 292, column: 3, scope: !2686)
!2710 = !DILocation(line: 296, column: 45, scope: !2686)
!2711 = !DILocation(line: 294, column: 3, scope: !2686)
!2712 = !DILocation(line: 298, column: 8, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2686, file: !1, line: 298, column: 3)
!2714 = !DILocation(line: 0, scope: !2713)
!2715 = !DILocation(line: 298, column: 17, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2713, file: !1, line: 298, column: 3)
!2717 = !DILocation(line: 298, column: 3, scope: !2713)
!2718 = !DILocation(line: 302, column: 12, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2716, file: !1, line: 299, column: 5)
!2720 = !DILocation(line: 301, column: 7, scope: !2719)
!2721 = !DILocation(line: 304, column: 12, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2719, file: !1, line: 304, column: 7)
!2723 = !DILocation(line: 0, scope: !2722)
!2724 = !DILocation(line: 304, column: 19, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2722, file: !1, line: 304, column: 7)
!2726 = !DILocation(line: 304, column: 7, scope: !2722)
!2727 = !DILocation(line: 309, column: 8, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2729, file: !1, line: 309, column: 8)
!2729 = distinct !DILexicalBlock(scope: !2725, file: !1, line: 306, column: 2)
!2730 = !DILocation(line: 309, column: 16, scope: !2728)
!2731 = !DILocation(line: 309, column: 8, scope: !2729)
!2732 = !DILocation(line: 310, column: 6, scope: !2728)
!2733 = !DILocation(line: 311, column: 21, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2728, file: !1, line: 311, column: 13)
!2735 = !DILocation(line: 311, column: 13, scope: !2734)
!2736 = !DILocation(line: 311, column: 13, scope: !2728)
!2737 = !DILocation(line: 312, column: 6, scope: !2734)
!2738 = !DILocation(line: 313, column: 40, scope: !2729)
!2739 = !DILocation(line: 313, column: 4, scope: !2729)
!2740 = !DILocation(line: 305, column: 6, scope: !2725)
!2741 = !DILocation(line: 304, column: 7, scope: !2725)
!2742 = distinct !{!2742, !2726, !2743}
!2743 = !DILocation(line: 314, column: 2, scope: !2722)
!2744 = !DILocation(line: 298, column: 35, scope: !2716)
!2745 = !DILocation(line: 298, column: 3, scope: !2716)
!2746 = distinct !{!2746, !2717, !2747}
!2747 = !DILocation(line: 315, column: 5, scope: !2713)
!2748 = !DILocation(line: 317, column: 3, scope: !2686)
!2749 = !DILocation(line: 318, column: 1, scope: !2686)
!2750 = distinct !DISubprogram(name: "add_edge", scope: !1, file: !1, line: 372, type: !2751, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2753)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!293, !1728, !261, !261, !305}
!2753 = !{!2754, !2755, !2756, !2757, !2758, !2759}
!2754 = !DILocalVariable(name: "fixup_graph", arg: 1, scope: !2750, file: !1, line: 372, type: !1728)
!2755 = !DILocalVariable(name: "src", arg: 2, scope: !2750, file: !1, line: 372, type: !261)
!2756 = !DILocalVariable(name: "dest", arg: 3, scope: !2750, file: !1, line: 372, type: !261)
!2757 = !DILocalVariable(name: "cost", arg: 4, scope: !2750, file: !1, line: 372, type: !305)
!2758 = !DILocalVariable(name: "curr_vertex", scope: !2750, file: !1, line: 374, type: !275)
!2759 = !DILocalVariable(name: "curr_edge", scope: !2750, file: !1, line: 375, type: !293)
!2760 = !DILocation(line: 0, scope: !2750)
!2761 = !DILocation(line: 374, column: 45, scope: !2750)
!2762 = !DILocation(line: 374, column: 57, scope: !2750)
!2763 = !DILocation(line: 375, column: 41, scope: !2750)
!2764 = !DILocation(line: 375, column: 66, scope: !2750)
!2765 = !DILocation(line: 375, column: 51, scope: !2750)
!2766 = !DILocation(line: 376, column: 14, scope: !2750)
!2767 = !DILocation(line: 376, column: 18, scope: !2750)
!2768 = !DILocation(line: 377, column: 14, scope: !2750)
!2769 = !DILocation(line: 377, column: 19, scope: !2750)
!2770 = !DILocation(line: 378, column: 14, scope: !2750)
!2771 = !DILocation(line: 378, column: 19, scope: !2750)
!2772 = !DILocation(line: 379, column: 25, scope: !2750)
!2773 = !DILocation(line: 380, column: 7, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2750, file: !1, line: 380, column: 7)
!2775 = !DILocation(line: 380, column: 7, scope: !2750)
!2776 = !DILocation(line: 381, column: 5, scope: !2774)
!2777 = !DILocation(line: 382, column: 3, scope: !2750)
!2778 = !DILocation(line: 383, column: 3, scope: !2750)
!2779 = distinct !DISubprogram(name: "VEC_fixup_edge_p_heap_safe_push", scope: !1, file: !1, line: 103, type: !2780, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2784)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!2782, !2783, !293}
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!2784 = !{!2785, !2786}
!2785 = !DILocalVariable(name: "vec_", arg: 1, scope: !2779, file: !1, line: 103, type: !2783)
!2786 = !DILocalVariable(name: "obj_", arg: 2, scope: !2779, file: !1, line: 103, type: !293)
!2787 = !DILocation(line: 0, scope: !2779)
!2788 = !DILocation(line: 103, column: 1, scope: !2779)
!2789 = distinct !DISubprogram(name: "VEC_fixup_edge_p_heap_reserve", scope: !1, file: !1, line: 103, type: !2790, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2792)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!261, !2783, !261}
!2792 = !{!2793, !2794, !2795}
!2793 = !DILocalVariable(name: "vec_", arg: 1, scope: !2789, file: !1, line: 103, type: !2783)
!2794 = !DILocalVariable(name: "alloc_", arg: 2, scope: !2789, file: !1, line: 103, type: !261)
!2795 = !DILocalVariable(name: "extend", scope: !2789, file: !1, line: 103, type: !261)
!2796 = !DILocation(line: 0, scope: !2789)
!2797 = !DILocation(line: 103, column: 1, scope: !2789)
!2798 = !DILocation(line: 103, column: 1, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2789, file: !1, line: 103, column: 1)
!2800 = distinct !DISubprogram(name: "VEC_fixup_edge_p_base_quick_push", scope: !1, file: !1, line: 102, type: !2801, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2804)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!2782, !2803, !293}
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!2804 = !{!2805, !2806, !2807}
!2805 = !DILocalVariable(name: "vec_", arg: 1, scope: !2800, file: !1, line: 102, type: !2803)
!2806 = !DILocalVariable(name: "obj_", arg: 2, scope: !2800, file: !1, line: 102, type: !293)
!2807 = !DILocalVariable(name: "slot_", scope: !2800, file: !1, line: 102, type: !2782)
!2808 = !DILocation(line: 0, scope: !2800)
!2809 = !DILocation(line: 102, column: 1, scope: !2800)
!2810 = distinct !DISubprogram(name: "VEC_fixup_edge_p_base_space", scope: !1, file: !1, line: 102, type: !2811, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2813)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!261, !2803, !261}
!2813 = !{!2814, !2815}
!2814 = !DILocalVariable(name: "vec_", arg: 1, scope: !2810, file: !1, line: 102, type: !2803)
!2815 = !DILocalVariable(name: "alloc_", arg: 2, scope: !2810, file: !1, line: 102, type: !261)
!2816 = !DILocation(line: 0, scope: !2810)
!2817 = !DILocation(line: 102, column: 1, scope: !2810)
!2818 = distinct !DISubprogram(name: "VEC_fixup_edge_p_base_iterate", scope: !1, file: !1, line: 102, type: !2819, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2823)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!261, !2821, !5, !2782}
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!2823 = !{!2824, !2825, !2826}
!2824 = !DILocalVariable(name: "vec_", arg: 1, scope: !2818, file: !1, line: 102, type: !2821)
!2825 = !DILocalVariable(name: "ix_", arg: 2, scope: !2818, file: !1, line: 102, type: !5)
!2826 = !DILocalVariable(name: "ptr", arg: 3, scope: !2818, file: !1, line: 102, type: !2782)
!2827 = !DILocation(line: 0, scope: !2818)
!2828 = !DILocation(line: 102, column: 1, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2818, file: !1, line: 102, column: 1)
!2830 = !DILocation(line: 102, column: 1, scope: !2818)
!2831 = !DILocation(line: 102, column: 1, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2829, file: !1, line: 102, column: 1)
!2833 = !DILocation(line: 102, column: 1, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2829, file: !1, line: 102, column: 1)
!2835 = !DILocation(line: 0, scope: !2829)
!2836 = distinct !DISubprogram(name: "print_edge", scope: !1, file: !1, line: 189, type: !2837, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2839)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{null, !348, !1728, !261, !261}
!2839 = !{!2840, !2841, !2842, !2843}
!2840 = !DILocalVariable(name: "file", arg: 1, scope: !2836, file: !1, line: 189, type: !348)
!2841 = !DILocalVariable(name: "fixup_graph", arg: 2, scope: !2836, file: !1, line: 189, type: !1728)
!2842 = !DILocalVariable(name: "s", arg: 3, scope: !2836, file: !1, line: 189, type: !261)
!2843 = !DILocalVariable(name: "d", arg: 4, scope: !2836, file: !1, line: 189, type: !261)
!2844 = !DILocation(line: 0, scope: !2836)
!2845 = !DILocation(line: 191, column: 3, scope: !2836)
!2846 = !DILocation(line: 192, column: 3, scope: !2836)
!2847 = !DILocation(line: 193, column: 3, scope: !2836)
!2848 = !DILocation(line: 194, column: 1, scope: !2836)
!2849 = distinct !DISubprogram(name: "print_basic_block", scope: !1, file: !1, line: 157, type: !2850, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2852)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{null, !348, !1728, !261}
!2852 = !{!2853, !2854, !2855}
!2853 = !DILocalVariable(name: "file", arg: 1, scope: !2849, file: !1, line: 157, type: !348)
!2854 = !DILocalVariable(name: "fixup_graph", arg: 2, scope: !2849, file: !1, line: 157, type: !1728)
!2855 = !DILocalVariable(name: "n", arg: 3, scope: !2849, file: !1, line: 157, type: !261)
!2856 = !DILocation(line: 0, scope: !2849)
!2857 = !DILocation(line: 159, column: 7, scope: !2849)
!2858 = !DILocation(line: 160, column: 5, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2849, file: !1, line: 159, column: 7)
!2860 = !DILocation(line: 162, column: 5, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2859, file: !1, line: 161, column: 12)
!2862 = !DILocation(line: 164, column: 5, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2861, file: !1, line: 163, column: 12)
!2864 = !DILocation(line: 166, column: 5, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2863, file: !1, line: 165, column: 12)
!2866 = !DILocation(line: 167, column: 30, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2865, file: !1, line: 167, column: 12)
!2868 = !DILocation(line: 167, column: 14, scope: !2867)
!2869 = !DILocation(line: 167, column: 12, scope: !2865)
!2870 = !DILocation(line: 168, column: 5, scope: !2867)
!2871 = !DILocation(line: 169, column: 30, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2867, file: !1, line: 169, column: 12)
!2873 = !DILocation(line: 169, column: 14, scope: !2872)
!2874 = !DILocation(line: 169, column: 12, scope: !2867)
!2875 = !DILocation(line: 170, column: 5, scope: !2872)
!2876 = !DILocation(line: 173, column: 30, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2872, file: !1, line: 172, column: 5)
!2878 = !DILocation(line: 173, column: 7, scope: !2877)
!2879 = !DILocation(line: 174, column: 13, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2877, file: !1, line: 174, column: 11)
!2881 = !DILocation(line: 174, column: 11, scope: !2877)
!2882 = !DILocation(line: 175, column: 2, scope: !2880)
!2883 = !DILocation(line: 177, column: 2, scope: !2880)
!2884 = !DILocation(line: 179, column: 1, scope: !2849)
!2885 = distinct !DISubprogram(name: "VEC_fixup_edge_p_base_length", scope: !1, file: !1, line: 102, type: !2886, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2888)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!5, !2821}
!2888 = !{!2889}
!2889 = !DILocalVariable(name: "vec_", arg: 1, scope: !2885, file: !1, line: 102, type: !2821)
!2890 = !DILocation(line: 0, scope: !2885)
!2891 = !DILocation(line: 102, column: 1, scope: !2885)
!2892 = distinct !DISubprogram(name: "find_max_flow", scope: !1, file: !1, line: 1031, type: !2893, scopeLine: 1032, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2895)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!305, !1728, !261, !261}
!2895 = !{!2896, !2897, !2898, !2899, !2900, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921}
!2896 = !DILocalVariable(name: "fixup_graph", arg: 1, scope: !2892, file: !1, line: 1031, type: !1728)
!2897 = !DILocalVariable(name: "source", arg: 2, scope: !2892, file: !1, line: 1031, type: !261)
!2898 = !DILocalVariable(name: "sink", arg: 3, scope: !2892, file: !1, line: 1031, type: !261)
!2899 = !DILocalVariable(name: "fnum_edges", scope: !2892, file: !1, line: 1033, type: !261)
!2900 = !DILocalVariable(name: "augmenting_path", scope: !2892, file: !1, line: 1034, type: !2901)
!2901 = !DIDerivedType(tag: DW_TAG_typedef, name: "augmenting_path_type", file: !1, line: 147, baseType: !2902)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "augmenting_path_d", file: !1, line: 139, size: 320, elements: !2903)
!2903 = !{!2904, !2912, !2913}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "queue_list", scope: !2902, file: !1, line: 142, baseType: !2905, size: 192)
!2905 = !DIDerivedType(tag: DW_TAG_typedef, name: "queue_type", file: !1, line: 136, baseType: !2906)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_d", file: !1, line: 130, size: 192, elements: !2907)
!2907 = !{!2908, !2909, !2910, !2911}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !2906, file: !1, line: 132, baseType: !314, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2906, file: !1, line: 133, baseType: !261, size: 32, offset: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2906, file: !1, line: 134, baseType: !261, size: 32, offset: 96)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2906, file: !1, line: 135, baseType: !261, size: 32, offset: 128)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "bb_pred", scope: !2902, file: !1, line: 144, baseType: !314, size: 64, offset: 192)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "is_visited", scope: !2902, file: !1, line: 146, baseType: !314, size: 64, offset: 256)
!2914 = !DILocalVariable(name: "bb_pred", scope: !2892, file: !1, line: 1035, type: !314)
!2915 = !DILocalVariable(name: "max_flow", scope: !2892, file: !1, line: 1036, type: !305)
!2916 = !DILocalVariable(name: "i", scope: !2892, file: !1, line: 1037, type: !261)
!2917 = !DILocalVariable(name: "u", scope: !2892, file: !1, line: 1037, type: !261)
!2918 = !DILocalVariable(name: "fedge_list", scope: !2892, file: !1, line: 1038, type: !293)
!2919 = !DILocalVariable(name: "pfedge", scope: !2892, file: !1, line: 1038, type: !293)
!2920 = !DILocalVariable(name: "r_pfedge", scope: !2892, file: !1, line: 1038, type: !293)
!2921 = !DILocalVariable(name: "increment", scope: !2922, file: !1, line: 1060, type: !305)
!2922 = distinct !DILexicalBlock(scope: !2892, file: !1, line: 1058, column: 5)
!2923 = !DILocation(line: 0, scope: !2892)
!2924 = !DILocation(line: 1034, column: 3, scope: !2892)
!2925 = !DILocation(line: 1040, column: 3, scope: !2892)
!2926 = !DILocation(line: 1042, column: 29, scope: !2892)
!2927 = !DILocation(line: 1043, column: 29, scope: !2892)
!2928 = !DILocation(line: 1046, column: 8, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2892, file: !1, line: 1046, column: 3)
!2930 = !DILocation(line: 0, scope: !2929)
!2931 = !DILocation(line: 1046, column: 17, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2929, file: !1, line: 1046, column: 3)
!2933 = !DILocation(line: 1046, column: 3, scope: !2929)
!2934 = !DILocation(line: 1049, column: 15, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2932, file: !1, line: 1047, column: 5)
!2936 = !DILocation(line: 1049, column: 20, scope: !2935)
!2937 = !DILocation(line: 1046, column: 32, scope: !2932)
!2938 = !DILocation(line: 1046, column: 3, scope: !2932)
!2939 = distinct !{!2939, !2933, !2940}
!2940 = !DILocation(line: 1050, column: 5, scope: !2929)
!2941 = !DILocation(line: 1052, column: 3, scope: !2892)
!2942 = !DILocation(line: 1054, column: 56, scope: !2892)
!2943 = !DILocation(line: 1054, column: 3, scope: !2892)
!2944 = !DILocation(line: 1056, column: 29, scope: !2892)
!2945 = !DILocation(line: 1057, column: 3, scope: !2892)
!2946 = !DILocation(line: 1057, column: 10, scope: !2892)
!2947 = !DILocation(line: 1061, column: 7, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2922, file: !1, line: 1061, column: 7)
!2949 = !DILocation(line: 0, scope: !2948)
!2950 = !DILocation(line: 0, scope: !2922)
!2951 = !DILocation(line: 1061, column: 24, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2948, file: !1, line: 1061, column: 7)
!2953 = !DILocation(line: 1063, column: 43, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2952, file: !1, line: 1062, column: 2)
!2955 = !DILocation(line: 1063, column: 13, scope: !2954)
!2956 = !DILocation(line: 1064, column: 16, scope: !2954)
!2957 = !DILocation(line: 1061, column: 39, scope: !2952)
!2958 = !DILocation(line: 1061, column: 7, scope: !2952)
!2959 = distinct !{!2959, !2947, !2960}
!2960 = !DILocation(line: 1065, column: 2, scope: !2948)
!2961 = !DILocation(line: 1069, column: 12, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2922, file: !1, line: 1069, column: 7)
!2963 = !DILocation(line: 0, scope: !2962)
!2964 = !DILocation(line: 1069, column: 24, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2962, file: !1, line: 1069, column: 7)
!2966 = !DILocation(line: 1069, column: 7, scope: !2962)
!2967 = !DILocation(line: 1071, column: 43, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2965, file: !1, line: 1070, column: 2)
!2969 = !DILocation(line: 1071, column: 13, scope: !2968)
!2970 = !DILocation(line: 1072, column: 48, scope: !2968)
!2971 = !DILocation(line: 1072, column: 15, scope: !2968)
!2972 = !DILocation(line: 1073, column: 16, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2968, file: !1, line: 1073, column: 8)
!2974 = !DILocation(line: 1073, column: 8, scope: !2973)
!2975 = !DILocation(line: 1073, column: 8, scope: !2968)
!2976 = !DILocation(line: 1076, column: 16, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2973, file: !1, line: 1074, column: 6)
!2978 = !DILocation(line: 1076, column: 21, scope: !2977)
!2979 = !DILocation(line: 1077, column: 16, scope: !2977)
!2980 = !DILocation(line: 1077, column: 22, scope: !2977)
!2981 = !DILocation(line: 1078, column: 18, scope: !2977)
!2982 = !DILocation(line: 1078, column: 24, scope: !2977)
!2983 = !DILocation(line: 1079, column: 6, scope: !2977)
!2984 = !DILocation(line: 1083, column: 8, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2973, file: !1, line: 1081, column: 6)
!2986 = !DILocation(line: 1084, column: 18, scope: !2985)
!2987 = !DILocation(line: 1084, column: 24, scope: !2985)
!2988 = !DILocation(line: 1085, column: 18, scope: !2985)
!2989 = !DILocation(line: 1085, column: 23, scope: !2985)
!2990 = !DILocation(line: 1086, column: 16, scope: !2985)
!2991 = !DILocation(line: 1086, column: 22, scope: !2985)
!2992 = !DILocation(line: 1069, column: 39, scope: !2965)
!2993 = !DILocation(line: 1069, column: 7, scope: !2965)
!2994 = distinct !{!2994, !2966, !2995}
!2995 = !DILocation(line: 1088, column: 2, scope: !2962)
!2996 = !DILocation(line: 1066, column: 16, scope: !2922)
!2997 = !DILocation(line: 1090, column: 11, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2922, file: !1, line: 1090, column: 11)
!2999 = !DILocation(line: 1090, column: 11, scope: !2922)
!3000 = !DILocation(line: 1092, column: 4, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2998, file: !1, line: 1091, column: 2)
!3002 = !DILocation(line: 1093, column: 9, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !3001, file: !1, line: 1093, column: 4)
!3004 = !DILocation(line: 0, scope: !3003)
!3005 = !DILocation(line: 1093, column: 21, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3003, file: !1, line: 1093, column: 4)
!3007 = !DILocation(line: 0, scope: !3001)
!3008 = !DILocation(line: 1093, column: 4, scope: !3003)
!3009 = !DILocation(line: 1095, column: 8, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3006, file: !1, line: 1094, column: 6)
!3011 = !DILocation(line: 1096, column: 17, scope: !3010)
!3012 = !DILocation(line: 1096, column: 8, scope: !3010)
!3013 = !DILocation(line: 1093, column: 36, scope: !3006)
!3014 = !DILocation(line: 1093, column: 4, scope: !3006)
!3015 = distinct !{!3015, !3008, !3016}
!3016 = !DILocation(line: 1097, column: 6, scope: !3003)
!3017 = !DILocation(line: 1098, column: 4, scope: !3001)
!3018 = !DILocation(line: 1101, column: 13, scope: !3001)
!3019 = !DILocation(line: 1101, column: 4, scope: !3001)
!3020 = !DILocation(line: 1104, column: 2, scope: !3001)
!3021 = distinct !{!3021, !2945, !3022}
!3022 = !DILocation(line: 1105, column: 5, scope: !2892)
!3023 = !DILocation(line: 1107, column: 3, scope: !2892)
!3024 = !DILocation(line: 1108, column: 7, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !2892, file: !1, line: 1108, column: 7)
!3026 = !DILocation(line: 1108, column: 7, scope: !2892)
!3027 = !DILocation(line: 1109, column: 5, scope: !3025)
!3028 = !DILocation(line: 1111, column: 1, scope: !2892)
!3029 = !DILocation(line: 1110, column: 3, scope: !2892)
!3030 = distinct !DISubprogram(name: "cancel_negative_cycle", scope: !1, file: !1, line: 788, type: !3031, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3033)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!260, !1728, !314, !313, !314}
!3033 = !{!3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052}
!3034 = !DILocalVariable(name: "fixup_graph", arg: 1, scope: !3030, file: !1, line: 788, type: !1728)
!3035 = !DILocalVariable(name: "pi", arg: 2, scope: !3030, file: !1, line: 789, type: !314)
!3036 = !DILocalVariable(name: "d", arg: 3, scope: !3030, file: !1, line: 789, type: !313)
!3037 = !DILocalVariable(name: "cycle", arg: 4, scope: !3030, file: !1, line: 789, type: !314)
!3038 = !DILocalVariable(name: "i", scope: !3030, file: !1, line: 791, type: !261)
!3039 = !DILocalVariable(name: "j", scope: !3030, file: !1, line: 791, type: !261)
!3040 = !DILocalVariable(name: "k", scope: !3030, file: !1, line: 791, type: !261)
!3041 = !DILocalVariable(name: "fnum_vertices", scope: !3030, file: !1, line: 792, type: !261)
!3042 = !DILocalVariable(name: "fnum_edges", scope: !3030, file: !1, line: 792, type: !261)
!3043 = !DILocalVariable(name: "fedge_list", scope: !3030, file: !1, line: 793, type: !293)
!3044 = !DILocalVariable(name: "pfedge", scope: !3030, file: !1, line: 793, type: !293)
!3045 = !DILocalVariable(name: "r_pfedge", scope: !3030, file: !1, line: 793, type: !293)
!3046 = !DILocalVariable(name: "found_cycle", scope: !3030, file: !1, line: 794, type: !260)
!3047 = !DILocalVariable(name: "cycle_start", scope: !3030, file: !1, line: 795, type: !261)
!3048 = !DILocalVariable(name: "cycle_end", scope: !3030, file: !1, line: 795, type: !261)
!3049 = !DILocalVariable(name: "sum_cost", scope: !3030, file: !1, line: 796, type: !305)
!3050 = !DILocalVariable(name: "cycle_flow", scope: !3030, file: !1, line: 796, type: !305)
!3051 = !DILocalVariable(name: "new_entry_index", scope: !3030, file: !1, line: 797, type: !261)
!3052 = !DILocalVariable(name: "propagated", scope: !3030, file: !1, line: 798, type: !260)
!3053 = !DILocation(line: 0, scope: !3030)
!3054 = !DILocation(line: 800, column: 3, scope: !3030)
!3055 = !DILocation(line: 801, column: 32, scope: !3030)
!3056 = !DILocation(line: 802, column: 29, scope: !3030)
!3057 = !DILocation(line: 803, column: 29, scope: !3030)
!3058 = !DILocation(line: 804, column: 34, scope: !3030)
!3059 = !DILocation(line: 808, column: 8, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3030, file: !1, line: 808, column: 3)
!3061 = !DILocation(line: 0, scope: !3060)
!3062 = !DILocation(line: 808, column: 17, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3060, file: !1, line: 808, column: 3)
!3064 = !DILocation(line: 808, column: 3, scope: !3060)
!3065 = !DILocation(line: 810, column: 7, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3063, file: !1, line: 809, column: 5)
!3067 = !DILocation(line: 810, column: 12, scope: !3066)
!3068 = !DILocation(line: 811, column: 7, scope: !3066)
!3069 = !DILocation(line: 811, column: 13, scope: !3066)
!3070 = !DILocation(line: 812, column: 7, scope: !3066)
!3071 = !DILocation(line: 812, column: 16, scope: !3066)
!3072 = !DILocation(line: 808, column: 35, scope: !3063)
!3073 = !DILocation(line: 808, column: 3, scope: !3063)
!3074 = distinct !{!3074, !3064, !3075}
!3075 = !DILocation(line: 813, column: 5, scope: !3060)
!3076 = !DILocation(line: 814, column: 18, scope: !3030)
!3077 = !DILocation(line: 817, column: 8, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3030, file: !1, line: 817, column: 3)
!3079 = !DILocation(line: 0, scope: !3078)
!3080 = !DILocation(line: 817, column: 17, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3078, file: !1, line: 817, column: 3)
!3082 = !DILocation(line: 817, column: 3, scope: !3078)
!3083 = !DILocation(line: 820, column: 5, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3085, file: !1, line: 820, column: 5)
!3085 = distinct !DILexicalBlock(scope: !3081, file: !1, line: 818, column: 3)
!3086 = !DILocation(line: 819, column: 16, scope: !3085)
!3087 = !DILocation(line: 820, column: 19, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3084, file: !1, line: 820, column: 5)
!3089 = !DILocation(line: 822, column: 22, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3088, file: !1, line: 821, column: 7)
!3091 = !DILocation(line: 823, column: 14, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3090, file: !1, line: 823, column: 6)
!3093 = !DILocation(line: 823, column: 18, scope: !3092)
!3094 = !DILocation(line: 823, column: 6, scope: !3090)
!3095 = !DILocation(line: 825, column: 14, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3090, file: !1, line: 825, column: 6)
!3097 = !DILocation(line: 825, column: 6, scope: !3096)
!3098 = !DILocation(line: 825, column: 29, scope: !3096)
!3099 = !DILocation(line: 825, column: 40, scope: !3096)
!3100 = !DILocation(line: 825, column: 32, scope: !3096)
!3101 = !DILocation(line: 826, column: 13, scope: !3096)
!3102 = !DILocation(line: 826, column: 16, scope: !3096)
!3103 = !DILocation(line: 826, column: 31, scope: !3096)
!3104 = !DILocation(line: 827, column: 6, scope: !3096)
!3105 = !DILocation(line: 827, column: 20, scope: !3096)
!3106 = !DILocation(line: 827, column: 10, scope: !3096)
!3107 = !DILocation(line: 827, column: 53, scope: !3096)
!3108 = !DILocation(line: 827, column: 43, scope: !3096)
!3109 = !DILocation(line: 827, column: 26, scope: !3096)
!3110 = !DILocation(line: 825, column: 6, scope: !3090)
!3111 = !DILocation(line: 829, column: 22, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3096, file: !1, line: 828, column: 4)
!3113 = !DILocation(line: 830, column: 33, scope: !3112)
!3114 = !DILocation(line: 830, column: 17, scope: !3112)
!3115 = !DILocation(line: 830, column: 6, scope: !3112)
!3116 = !DILocation(line: 830, column: 23, scope: !3112)
!3117 = !DILocation(line: 832, column: 4, scope: !3112)
!3118 = !DILocation(line: 0, scope: !3085)
!3119 = !DILocation(line: 820, column: 34, scope: !3088)
!3120 = !DILocation(line: 820, column: 5, scope: !3088)
!3121 = distinct !{!3121, !3083, !3122}
!3122 = !DILocation(line: 833, column: 7, scope: !3084)
!3123 = !DILocation(line: 834, column: 10, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3085, file: !1, line: 834, column: 9)
!3125 = !DILocation(line: 834, column: 9, scope: !3085)
!3126 = !DILocation(line: 817, column: 35, scope: !3081)
!3127 = !DILocation(line: 817, column: 3, scope: !3081)
!3128 = distinct !{!3128, !3082, !3129}
!3129 = !DILocation(line: 836, column: 3, scope: !3078)
!3130 = !DILocation(line: 838, column: 8, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3030, file: !1, line: 838, column: 7)
!3132 = !DILocation(line: 838, column: 7, scope: !3030)
!3133 = !DILocation(line: 843, column: 3, scope: !3134)
!3134 = distinct !DILexicalBlock(scope: !3030, file: !1, line: 843, column: 3)
!3135 = !DILocation(line: 843, column: 17, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3134, file: !1, line: 843, column: 3)
!3137 = !DILocation(line: 845, column: 27, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3136, file: !1, line: 844, column: 5)
!3139 = !DILocation(line: 846, column: 19, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3138, file: !1, line: 846, column: 11)
!3141 = !DILocation(line: 846, column: 23, scope: !3140)
!3142 = !DILocation(line: 846, column: 11, scope: !3138)
!3143 = !DILocation(line: 848, column: 19, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3138, file: !1, line: 848, column: 11)
!3145 = !DILocation(line: 848, column: 11, scope: !3144)
!3146 = !DILocation(line: 848, column: 34, scope: !3144)
!3147 = !DILocation(line: 848, column: 45, scope: !3144)
!3148 = !DILocation(line: 848, column: 37, scope: !3144)
!3149 = !DILocation(line: 849, column: 11, scope: !3144)
!3150 = !DILocation(line: 849, column: 14, scope: !3144)
!3151 = !DILocation(line: 849, column: 29, scope: !3144)
!3152 = !DILocation(line: 850, column: 4, scope: !3144)
!3153 = !DILocation(line: 850, column: 18, scope: !3144)
!3154 = !DILocation(line: 850, column: 8, scope: !3144)
!3155 = !DILocation(line: 850, column: 51, scope: !3144)
!3156 = !DILocation(line: 850, column: 41, scope: !3144)
!3157 = !DILocation(line: 850, column: 24, scope: !3144)
!3158 = !DILocation(line: 848, column: 11, scope: !3138)
!3159 = !DILocation(line: 843, column: 32, scope: !3136)
!3160 = !DILocation(line: 843, column: 3, scope: !3136)
!3161 = distinct !{!3161, !3133, !3162}
!3162 = !DILocation(line: 855, column: 5, scope: !3134)
!3163 = !DILocation(line: 857, column: 7, scope: !3030)
!3164 = !DILocation(line: 862, column: 22, scope: !3030)
!3165 = !DILocation(line: 862, column: 12, scope: !3030)
!3166 = !DILocation(line: 863, column: 15, scope: !3030)
!3167 = !DILocation(line: 865, column: 8, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3030, file: !1, line: 865, column: 3)
!3169 = !DILocation(line: 865, column: 17, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3168, file: !1, line: 865, column: 3)
!3171 = !DILocation(line: 865, column: 3, scope: !3168)
!3172 = !DILocation(line: 867, column: 11, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3170, file: !1, line: 866, column: 5)
!3174 = !DILocation(line: 868, column: 7, scope: !3173)
!3175 = !DILocation(line: 868, column: 16, scope: !3173)
!3176 = !DILocation(line: 869, column: 12, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3173, file: !1, line: 869, column: 7)
!3178 = !DILocation(line: 0, scope: !3177)
!3179 = !DILocation(line: 869, column: 21, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3177, file: !1, line: 869, column: 7)
!3181 = !DILocation(line: 869, column: 7, scope: !3177)
!3182 = !DILocation(line: 871, column: 8, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3184, file: !1, line: 871, column: 8)
!3184 = distinct !DILexicalBlock(scope: !3180, file: !1, line: 870, column: 2)
!3185 = !DILocation(line: 871, column: 17, scope: !3183)
!3186 = !DILocation(line: 871, column: 8, scope: !3184)
!3187 = !DILocation(line: 869, column: 27, scope: !3180)
!3188 = !DILocation(line: 869, column: 7, scope: !3180)
!3189 = distinct !{!3189, !3181, !3190}
!3190 = !DILocation(line: 879, column: 2, scope: !3177)
!3191 = !DILocation(line: 880, column: 11, scope: !3173)
!3192 = !DILocation(line: 865, column: 35, scope: !3170)
!3193 = !DILocation(line: 865, column: 3, scope: !3170)
!3194 = distinct !{!3194, !3171, !3195}
!3195 = !DILocation(line: 882, column: 5, scope: !3168)
!3196 = !DILocation(line: 884, column: 3, scope: !3030)
!3197 = !DILocation(line: 885, column: 7, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3030, file: !1, line: 885, column: 7)
!3199 = !DILocation(line: 885, column: 7, scope: !3030)
!3200 = !DILocation(line: 887, column: 17, scope: !3198)
!3201 = !DILocation(line: 886, column: 5, scope: !3198)
!3202 = !DILocation(line: 891, column: 8, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3030, file: !1, line: 891, column: 3)
!3204 = !DILocation(line: 0, scope: !3203)
!3205 = !DILocation(line: 891, column: 27, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3203, file: !1, line: 891, column: 3)
!3207 = !DILocation(line: 891, column: 3, scope: !3203)
!3208 = !DILocation(line: 893, column: 54, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3206, file: !1, line: 892, column: 5)
!3210 = !DILocation(line: 893, column: 46, scope: !3209)
!3211 = !DILocation(line: 893, column: 60, scope: !3209)
!3212 = !DILocation(line: 893, column: 16, scope: !3209)
!3213 = !DILocation(line: 894, column: 20, scope: !3209)
!3214 = !DILocation(line: 895, column: 27, scope: !3209)
!3215 = !DILocation(line: 895, column: 16, scope: !3209)
!3216 = !DILocation(line: 896, column: 11, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3209, file: !1, line: 896, column: 11)
!3218 = !DILocation(line: 896, column: 11, scope: !3209)
!3219 = !DILocation(line: 897, column: 29, scope: !3217)
!3220 = !DILocation(line: 897, column: 2, scope: !3217)
!3221 = !DILocation(line: 891, column: 3, scope: !3206)
!3222 = distinct !{!3222, !3207, !3223}
!3223 = !DILocation(line: 898, column: 5, scope: !3203)
!3224 = !DILocation(line: 900, column: 7, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3030, file: !1, line: 900, column: 7)
!3226 = !DILocation(line: 900, column: 7, scope: !3030)
!3227 = !DILocation(line: 902, column: 33, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3225, file: !1, line: 901, column: 5)
!3229 = !DILocation(line: 902, column: 7, scope: !3228)
!3230 = !DILocation(line: 903, column: 16, scope: !3228)
!3231 = !DILocation(line: 903, column: 7, scope: !3228)
!3232 = !DILocation(line: 906, column: 16, scope: !3228)
!3233 = !DILocation(line: 906, column: 7, scope: !3228)
!3234 = !DILocation(line: 909, column: 5, scope: !3228)
!3235 = !DILocation(line: 911, column: 8, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3030, file: !1, line: 911, column: 3)
!3237 = !DILocation(line: 0, scope: !3236)
!3238 = !DILocation(line: 911, column: 27, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3236, file: !1, line: 911, column: 3)
!3240 = !DILocation(line: 911, column: 3, scope: !3236)
!3241 = !DILocation(line: 913, column: 54, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3239, file: !1, line: 912, column: 5)
!3243 = !DILocation(line: 913, column: 46, scope: !3242)
!3244 = !DILocation(line: 913, column: 60, scope: !3242)
!3245 = !DILocation(line: 913, column: 16, scope: !3242)
!3246 = !DILocation(line: 914, column: 48, scope: !3242)
!3247 = !DILocation(line: 914, column: 58, scope: !3242)
!3248 = !DILocation(line: 914, column: 18, scope: !3242)
!3249 = !DILocation(line: 915, column: 15, scope: !3242)
!3250 = !DILocation(line: 915, column: 21, scope: !3242)
!3251 = !DILocation(line: 916, column: 19, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3242, file: !1, line: 916, column: 11)
!3253 = !DILocation(line: 916, column: 11, scope: !3252)
!3254 = !DILocation(line: 916, column: 11, scope: !3242)
!3255 = !DILocation(line: 917, column: 10, scope: !3252)
!3256 = !DILocation(line: 917, column: 15, scope: !3252)
!3257 = !DILocation(line: 917, column: 2, scope: !3252)
!3258 = !DILocation(line: 918, column: 17, scope: !3242)
!3259 = !DILocation(line: 918, column: 23, scope: !3242)
!3260 = !DILocation(line: 919, column: 21, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3242, file: !1, line: 919, column: 11)
!3262 = !DILocation(line: 919, column: 11, scope: !3261)
!3263 = !DILocation(line: 919, column: 11, scope: !3242)
!3264 = !DILocation(line: 920, column: 12, scope: !3261)
!3265 = !DILocation(line: 920, column: 17, scope: !3261)
!3266 = !DILocation(line: 920, column: 2, scope: !3261)
!3267 = !DILocation(line: 911, column: 3, scope: !3239)
!3268 = distinct !{!3268, !3240, !3269}
!3269 = !DILocation(line: 921, column: 5, scope: !3236)
!3270 = !DILocation(line: 924, column: 1, scope: !3030)
!3271 = distinct !DISubprogram(name: "compute_residual_flow", scope: !1, file: !1, line: 931, type: !1726, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3272)
!3272 = !{!3273, !3274, !3275, !3276, !3277}
!3273 = !DILocalVariable(name: "fixup_graph", arg: 1, scope: !3271, file: !1, line: 931, type: !1728)
!3274 = !DILocalVariable(name: "i", scope: !3271, file: !1, line: 933, type: !261)
!3275 = !DILocalVariable(name: "fnum_edges", scope: !3271, file: !1, line: 934, type: !261)
!3276 = !DILocalVariable(name: "fedge_list", scope: !3271, file: !1, line: 935, type: !293)
!3277 = !DILocalVariable(name: "pfedge", scope: !3271, file: !1, line: 935, type: !293)
!3278 = !DILocation(line: 0, scope: !3271)
!3279 = !DILocation(line: 937, column: 3, scope: !3271)
!3280 = !DILocation(line: 939, column: 7, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3271, file: !1, line: 939, column: 7)
!3282 = !DILocation(line: 939, column: 7, scope: !3271)
!3283 = !DILocation(line: 940, column: 5, scope: !3281)
!3284 = !DILocation(line: 942, column: 29, scope: !3271)
!3285 = !DILocation(line: 943, column: 29, scope: !3271)
!3286 = !DILocation(line: 945, column: 8, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3271, file: !1, line: 945, column: 3)
!3288 = !DILocation(line: 0, scope: !3287)
!3289 = !DILocation(line: 945, column: 17, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3287, file: !1, line: 945, column: 3)
!3291 = !DILocation(line: 945, column: 3, scope: !3287)
!3292 = !DILocation(line: 948, column: 31, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3290, file: !1, line: 946, column: 5)
!3294 = !DILocation(line: 948, column: 54, scope: !3293)
!3295 = !DILocation(line: 948, column: 44, scope: !3293)
!3296 = !DILocation(line: 948, column: 15, scope: !3293)
!3297 = !DILocation(line: 948, column: 21, scope: !3293)
!3298 = !DILocation(line: 949, column: 15, scope: !3293)
!3299 = !DILocation(line: 949, column: 30, scope: !3293)
!3300 = !DILocation(line: 950, column: 45, scope: !3293)
!3301 = !DILocation(line: 950, column: 59, scope: !3293)
!3302 = !DILocation(line: 951, column: 19, scope: !3293)
!3303 = !DILocation(line: 951, column: 10, scope: !3293)
!3304 = !DILocation(line: 950, column: 7, scope: !3293)
!3305 = !DILocation(line: 945, column: 32, scope: !3290)
!3306 = !DILocation(line: 945, column: 3, scope: !3290)
!3307 = distinct !{!3307, !3291, !3308}
!3308 = !DILocation(line: 952, column: 5, scope: !3287)
!3309 = !DILocation(line: 953, column: 1, scope: !3271)
!3310 = distinct !DISubprogram(name: "init_augmenting_path", scope: !1, file: !1, line: 715, type: !3311, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3314)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{null, !3313, !261}
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!3314 = !{!3315, !3316}
!3315 = !DILocalVariable(name: "augmenting_path", arg: 1, scope: !3310, file: !1, line: 715, type: !3313)
!3316 = !DILocalVariable(name: "graph_size", arg: 2, scope: !3310, file: !1, line: 715, type: !261)
!3317 = !DILocation(line: 0, scope: !3310)
!3318 = !DILocation(line: 718, column: 25, scope: !3310)
!3319 = !DILocation(line: 718, column: 14, scope: !3310)
!3320 = !DILocation(line: 718, column: 5, scope: !3310)
!3321 = !DILocation(line: 717, column: 37, scope: !3310)
!3322 = !DILocation(line: 719, column: 31, scope: !3310)
!3323 = !DILocation(line: 719, column: 36, scope: !3310)
!3324 = !DILocation(line: 720, column: 47, scope: !3310)
!3325 = !DILocation(line: 720, column: 38, scope: !3310)
!3326 = !DILocation(line: 720, column: 20, scope: !3310)
!3327 = !DILocation(line: 720, column: 28, scope: !3310)
!3328 = !DILocation(line: 721, column: 41, scope: !3310)
!3329 = !DILocation(line: 721, column: 20, scope: !3310)
!3330 = !DILocation(line: 721, column: 31, scope: !3310)
!3331 = !DILocation(line: 722, column: 1, scope: !3310)
!3332 = distinct !DISubprogram(name: "find_augmenting_path", scope: !1, file: !1, line: 963, type: !3333, scopeLine: 966, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3335)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!261, !1728, !3313, !261, !261}
!3335 = !{!3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3349}
!3336 = !DILocalVariable(name: "fixup_graph", arg: 1, scope: !3332, file: !1, line: 963, type: !1728)
!3337 = !DILocalVariable(name: "augmenting_path", arg: 2, scope: !3332, file: !1, line: 964, type: !3313)
!3338 = !DILocalVariable(name: "source", arg: 3, scope: !3332, file: !1, line: 964, type: !261)
!3339 = !DILocalVariable(name: "sink", arg: 4, scope: !3332, file: !1, line: 965, type: !261)
!3340 = !DILocalVariable(name: "u", scope: !3332, file: !1, line: 967, type: !261)
!3341 = !DILocalVariable(name: "i", scope: !3332, file: !1, line: 968, type: !261)
!3342 = !DILocalVariable(name: "fvertex_list", scope: !3332, file: !1, line: 969, type: !275)
!3343 = !DILocalVariable(name: "pfvertex", scope: !3332, file: !1, line: 969, type: !275)
!3344 = !DILocalVariable(name: "pfedge", scope: !3332, file: !1, line: 970, type: !293)
!3345 = !DILocalVariable(name: "bb_pred", scope: !3332, file: !1, line: 971, type: !314)
!3346 = !DILocalVariable(name: "is_visited", scope: !3332, file: !1, line: 971, type: !314)
!3347 = !DILocalVariable(name: "queue_list", scope: !3332, file: !1, line: 972, type: !3348)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!3349 = !DILocalVariable(name: "dest", scope: !3350, file: !1, line: 1000, type: !261)
!3350 = distinct !DILexicalBlock(scope: !3351, file: !1, line: 999, column: 2)
!3351 = distinct !DILexicalBlock(scope: !3352, file: !1, line: 997, column: 7)
!3352 = distinct !DILexicalBlock(scope: !3353, file: !1, line: 997, column: 7)
!3353 = distinct !DILexicalBlock(scope: !3332, file: !1, line: 993, column: 5)
!3354 = !DILocation(line: 0, scope: !3332)
!3355 = !DILocation(line: 970, column: 3, scope: !3332)
!3356 = !DILocation(line: 974, column: 3, scope: !3332)
!3357 = !DILocation(line: 975, column: 30, scope: !3332)
!3358 = !DILocation(line: 976, column: 3, scope: !3332)
!3359 = !DILocation(line: 977, column: 33, scope: !3332)
!3360 = !DILocation(line: 978, column: 3, scope: !3332)
!3361 = !DILocation(line: 979, column: 35, scope: !3332)
!3362 = !DILocation(line: 981, column: 3, scope: !3332)
!3363 = !DILocation(line: 983, column: 31, scope: !3332)
!3364 = !DILocation(line: 0, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3366, file: !1, line: 985, column: 3)
!3366 = distinct !DILexicalBlock(scope: !3332, file: !1, line: 985, column: 3)
!3367 = !DILocation(line: 985, column: 8, scope: !3366)
!3368 = !DILocation(line: 0, scope: !3366)
!3369 = !DILocation(line: 985, column: 32, scope: !3365)
!3370 = !DILocation(line: 985, column: 17, scope: !3365)
!3371 = !DILocation(line: 985, column: 3, scope: !3366)
!3372 = !DILocation(line: 986, column: 5, scope: !3365)
!3373 = !DILocation(line: 986, column: 19, scope: !3365)
!3374 = !DILocation(line: 985, column: 47, scope: !3365)
!3375 = !DILocation(line: 985, column: 3, scope: !3365)
!3376 = distinct !{!3376, !3371, !3377}
!3377 = !DILocation(line: 986, column: 21, scope: !3366)
!3378 = !DILocation(line: 988, column: 3, scope: !3332)
!3379 = !DILocation(line: 989, column: 3, scope: !3332)
!3380 = !DILocation(line: 990, column: 3, scope: !3332)
!3381 = !DILocation(line: 990, column: 19, scope: !3332)
!3382 = !DILocation(line: 992, column: 3, scope: !3332)
!3383 = !DILocation(line: 992, column: 11, scope: !3332)
!3384 = !DILocation(line: 992, column: 10, scope: !3332)
!3385 = !DILocation(line: 994, column: 11, scope: !3353)
!3386 = !DILocation(line: 995, column: 7, scope: !3353)
!3387 = !DILocation(line: 995, column: 21, scope: !3353)
!3388 = !DILocation(line: 0, scope: !3351)
!3389 = !DILocation(line: 997, column: 12, scope: !3352)
!3390 = !DILocation(line: 0, scope: !3352)
!3391 = !DILocation(line: 997, column: 19, scope: !3351)
!3392 = !DILocation(line: 997, column: 7, scope: !3352)
!3393 = distinct !{!3393, !3382, !3394}
!3394 = !DILocation(line: 1010, column: 5, scope: !3332)
!3395 = !DILocation(line: 1000, column: 15, scope: !3350)
!3396 = !DILocation(line: 1000, column: 23, scope: !3350)
!3397 = !DILocation(line: 0, scope: !3350)
!3398 = !DILocation(line: 1001, column: 17, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3350, file: !1, line: 1001, column: 8)
!3400 = !DILocation(line: 1001, column: 23, scope: !3399)
!3401 = !DILocation(line: 1001, column: 28, scope: !3399)
!3402 = !DILocation(line: 1001, column: 32, scope: !3399)
!3403 = !DILocation(line: 1001, column: 49, scope: !3399)
!3404 = !DILocation(line: 1001, column: 8, scope: !3350)
!3405 = !DILocation(line: 1003, column: 8, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3399, file: !1, line: 1002, column: 6)
!3407 = !DILocation(line: 1004, column: 8, scope: !3406)
!3408 = !DILocation(line: 1004, column: 22, scope: !3406)
!3409 = !DILocation(line: 1005, column: 25, scope: !3406)
!3410 = !DILocation(line: 1006, column: 17, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3406, file: !1, line: 1006, column: 12)
!3412 = !DILocation(line: 1006, column: 12, scope: !3406)
!3413 = !DILocation(line: 1009, column: 2, scope: !3351)
!3414 = !DILocation(line: 998, column: 6, scope: !3351)
!3415 = !DILocation(line: 997, column: 7, scope: !3351)
!3416 = distinct !{!3416, !3392, !3417}
!3417 = !DILocation(line: 1009, column: 2, scope: !3352)
!3418 = !DILocation(line: 1013, column: 1, scope: !3332)
!3419 = distinct !DISubprogram(name: "free_augmenting_path", scope: !1, file: !1, line: 726, type: !3420, scopeLine: 727, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3422)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{null, !3313}
!3422 = !{!3423}
!3423 = !DILocalVariable(name: "augmenting_path", arg: 1, scope: !3419, file: !1, line: 726, type: !3313)
!3424 = !DILocation(line: 0, scope: !3419)
!3425 = !DILocation(line: 728, column: 37, scope: !3419)
!3426 = !DILocation(line: 728, column: 3, scope: !3419)
!3427 = !DILocation(line: 729, column: 26, scope: !3419)
!3428 = !DILocation(line: 729, column: 3, scope: !3419)
!3429 = !DILocation(line: 730, column: 26, scope: !3419)
!3430 = !DILocation(line: 730, column: 3, scope: !3419)
!3431 = !DILocation(line: 731, column: 1, scope: !3419)
!3432 = distinct !DISubprogram(name: "add_rfixup_edge", scope: !1, file: !1, line: 406, type: !3433, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3435)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{null, !1728, !261, !261, !305, !305}
!3435 = !{!3436, !3437, !3438, !3439, !3440, !3441}
!3436 = !DILocalVariable(name: "fixup_graph", arg: 1, scope: !3432, file: !1, line: 406, type: !1728)
!3437 = !DILocalVariable(name: "src", arg: 2, scope: !3432, file: !1, line: 406, type: !261)
!3438 = !DILocalVariable(name: "dest", arg: 3, scope: !3432, file: !1, line: 406, type: !261)
!3439 = !DILocalVariable(name: "rflow", arg: 4, scope: !3432, file: !1, line: 407, type: !305)
!3440 = !DILocalVariable(name: "cost", arg: 5, scope: !3432, file: !1, line: 407, type: !305)
!3441 = !DILocalVariable(name: "curr_edge", scope: !3432, file: !1, line: 409, type: !293)
!3442 = !DILocation(line: 0, scope: !3432)
!3443 = !DILocation(line: 409, column: 28, scope: !3432)
!3444 = !DILocation(line: 410, column: 14, scope: !3432)
!3445 = !DILocation(line: 410, column: 20, scope: !3432)
!3446 = !DILocation(line: 411, column: 14, scope: !3432)
!3447 = !DILocation(line: 411, column: 29, scope: !3432)
!3448 = !DILocation(line: 413, column: 14, scope: !3432)
!3449 = !DILocation(line: 413, column: 19, scope: !3432)
!3450 = !DILocation(line: 414, column: 1, scope: !3432)
!3451 = distinct !DISubprogram(name: "init_queue", scope: !1, file: !1, line: 737, type: !3452, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3454)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{null, !3348}
!3454 = !{!3455}
!3455 = !DILocalVariable(name: "queue_list", arg: 1, scope: !3451, file: !1, line: 737, type: !3348)
!3456 = !DILocation(line: 0, scope: !3451)
!3457 = !DILocation(line: 739, column: 3, scope: !3451)
!3458 = !DILocation(line: 740, column: 15, scope: !3451)
!3459 = !DILocation(line: 740, column: 20, scope: !3451)
!3460 = !DILocation(line: 741, column: 15, scope: !3451)
!3461 = !DILocation(line: 741, column: 20, scope: !3451)
!3462 = !DILocation(line: 742, column: 1, scope: !3451)
!3463 = distinct !DISubprogram(name: "enqueue", scope: !1, file: !1, line: 753, type: !3464, scopeLine: 754, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3466)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{null, !3348, !261}
!3466 = !{!3467, !3468}
!3467 = !DILocalVariable(name: "queue_list", arg: 1, scope: !3463, file: !1, line: 753, type: !3348)
!3468 = !DILocalVariable(name: "x", arg: 2, scope: !3463, file: !1, line: 753, type: !261)
!3469 = !DILocation(line: 0, scope: !3463)
!3470 = !DILocation(line: 755, column: 3, scope: !3463)
!3471 = !DILocation(line: 756, column: 33, scope: !3463)
!3472 = !DILocation(line: 756, column: 15, scope: !3463)
!3473 = !DILocation(line: 756, column: 3, scope: !3463)
!3474 = !DILocation(line: 756, column: 39, scope: !3463)
!3475 = !DILocation(line: 757, column: 21, scope: !3463)
!3476 = !DILocation(line: 758, column: 1, scope: !3463)
!3477 = distinct !DISubprogram(name: "is_empty", scope: !1, file: !1, line: 746, type: !3478, scopeLine: 747, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3480)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!260, !3348}
!3480 = !{!3481}
!3481 = !DILocalVariable(name: "queue_list", arg: 1, scope: !3477, file: !1, line: 746, type: !3348)
!3482 = !DILocation(line: 0, scope: !3477)
!3483 = !DILocation(line: 748, column: 23, scope: !3477)
!3484 = !DILocation(line: 748, column: 43, scope: !3477)
!3485 = !DILocation(line: 748, column: 28, scope: !3477)
!3486 = !DILocation(line: 748, column: 10, scope: !3477)
!3487 = !DILocation(line: 748, column: 3, scope: !3477)
!3488 = distinct !DISubprogram(name: "dequeue", scope: !1, file: !1, line: 762, type: !3489, scopeLine: 763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3491)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!261, !3348}
!3491 = !{!3492, !3493}
!3492 = !DILocalVariable(name: "queue_list", arg: 1, scope: !3488, file: !1, line: 762, type: !3348)
!3493 = !DILocalVariable(name: "x", scope: !3488, file: !1, line: 764, type: !261)
!3494 = !DILocation(line: 0, scope: !3488)
!3495 = !DILocation(line: 765, column: 3, scope: !3488)
!3496 = !DILocation(line: 766, column: 37, scope: !3488)
!3497 = !DILocation(line: 766, column: 19, scope: !3488)
!3498 = !DILocation(line: 766, column: 7, scope: !3488)
!3499 = !DILocation(line: 767, column: 21, scope: !3488)
!3500 = !DILocation(line: 768, column: 3, scope: !3488)
!3501 = distinct !DISubprogram(name: "VEC_fixup_edge_p_heap_free", scope: !1, file: !1, line: 103, type: !3502, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3504)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{null, !2783}
!3504 = !{!3505}
!3505 = !DILocalVariable(name: "vec_", arg: 1, scope: !3501, file: !1, line: 103, type: !2783)
!3506 = !DILocation(line: 0, scope: !3501)
!3507 = !DILocation(line: 103, column: 1, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3501, file: !1, line: 103, column: 1)
!3509 = !DILocation(line: 103, column: 1, scope: !3501)
