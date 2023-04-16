; ModuleID = 'ddg.bc'
source_filename = "ddg.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._dep_link = type { %struct._dep_node*, %struct._dep_link*, %struct._dep_link** }
%struct._dep_node = type { %struct._dep_link, %struct._dep, %struct._dep_link }
%struct._dep = type { %struct.rtx_def*, %struct.rtx_def*, i32, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], %struct.object_block*, i64 }
%union.rtunion_def = type { i8* }
%struct.object_block = type { %union.section*, i32, i64, %struct.VEC_rtx_gc*, %struct.VEC_rtx_gc* }
%union.section = type opaque
%struct.VEC_rtx_gc = type { %struct.VEC_rtx_base }
%struct.VEC_rtx_base = type { i32, i32, [1 x %struct.rtx_def*] }
%struct.df = type { [8 x %struct.dataflow*], [8 x %struct.dataflow*], %struct.bitmap_head_def*, %struct.df_ref_info, %struct.df_ref_info, %struct.df_reg_info**, %struct.df_reg_info**, %struct.df_reg_info**, i32, i32, %struct.df_insn_info**, i32, i32, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i32*, i32*, i32, i32, i32*, i32, i8, i8, i8 }
%struct.dataflow = type { %struct.df_problem*, i8**, i32, %struct.alloc_pool_def*, %struct.bitmap_head_def*, i8*, i32, i8, i8, i8 }
%struct.df_problem = type { i32, i32, void (%struct.bitmap_head_def*)*, void (%struct.bitmap_head_def*)*, void (%struct.basic_block_def*, i8*)*, void (%struct.bitmap_head_def*)*, void (%struct.bitmap_head_def*)*, void (%struct.dataflow*, %struct.bitmap_head_def*, i32*, i32)*, void (%struct.basic_block_def*)*, void (%struct.edge_def*)*, i8 (i32)*, void (%struct.bitmap_head_def*)*, void ()*, void ()*, void (%struct._IO_FILE*)*, void (%struct.basic_block_def*, %struct._IO_FILE*)*, void (%struct.basic_block_def*, %struct._IO_FILE*)*, void ()*, void ()*, %struct.df_problem*, i32, i8 }
%struct.basic_block_def = type { %struct.VEC_edge_gc*, %struct.VEC_edge_gc*, i8*, %struct.loop*, [2 x %struct.et_node*], %struct.basic_block_def*, %struct.basic_block_def*, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%struct.VEC_edge_gc = type { %struct.VEC_edge_base }
%struct.VEC_edge_base = type { i32, i32, [1 x %struct.edge_def*] }
%struct.edge_def = type { %struct.basic_block_def*, %struct.basic_block_def*, %union.edge_def_insns, i8*, %union.tree_node*, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { %struct.gimple_seq_d* }
%struct.gimple_seq_d = type opaque
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
%struct.VEC_basic_block_gc = type { %struct.VEC_basic_block_base }
%struct.VEC_basic_block_base = type { i32, i32, [1 x %struct.basic_block_def*] }
%struct.gimple_df = type opaque
%struct.loops = type { i32, %struct.VEC_loop_p_gc*, %struct.htab*, %struct.loop* }
%struct.VEC_loop_p_gc = type { %struct.VEC_loop_p_base }
%struct.VEC_loop_p_base = type { i32, i32, [1 x %struct.loop*] }
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.loop = type { i32, i32, %struct.basic_block_def*, %struct.basic_block_def*, %struct.lpt_decision, i32, i32, %struct.VEC_loop_p_gc*, %struct.loop*, %struct.loop*, i8*, %union.tree_node*, %struct.double_int, %struct.double_int, i8, i8, i32, %struct.nb_iter_bound*, %struct.loop_exit*, i8, %union.tree_node* }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.nb_iter_bound = type { %union.gimple_statement_d*, %struct.double_int, i8, %struct.nb_iter_bound* }
%union.gimple_statement_d = type opaque
%struct.loop_exit = type { %struct.edge_def*, %struct.loop_exit*, %struct.loop_exit*, %struct.loop_exit* }
%struct.et_node = type opaque
%union.basic_block_il_dependent = type { %struct.gimple_bb_info* }
%struct.gimple_bb_info = type { %struct.gimple_seq_d*, %struct.gimple_seq_d* }
%struct.alloc_pool_def = type { i8*, i64, %struct.alloc_pool_list_def*, i8*, i64, i64, i64, i64, %struct.alloc_pool_list_def*, i64, i64 }
%struct.alloc_pool_list_def = type { %struct.alloc_pool_list_def* }
%struct.df_ref_info = type { %union.df_ref_d**, i32*, i32*, i32, i32, i32, i32 }
%union.df_ref_d = type { %struct.df_extract_ref }
%struct.df_extract_ref = type { %struct.df_regular_ref, i32, i32, i32 }
%struct.df_regular_ref = type { %struct.df_base_ref, %struct.rtx_def** }
%struct.df_base_ref = type { i32, %struct.rtx_def*, %struct.df_link*, %struct.df_insn_info*, %union.df_ref_d*, %union.df_ref_d*, i32, i32, i32 }
%struct.df_link = type { %union.df_ref_d*, %struct.df_link* }
%struct.df_insn_info = type { %struct.rtx_def*, %union.df_ref_d**, %union.df_ref_d**, %union.df_ref_d**, %struct.df_mw_hardreg**, i32 }
%struct.df_mw_hardreg = type { %struct.rtx_def*, i32, i32, i32, i32 }
%struct.df_reg_info = type { %union.df_ref_d*, i32 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.ddg = type { %struct.basic_block_def*, i32, i32, i32, i32, %struct.ddg_node*, %struct.ddg_node*, i32, i32, %struct.ddg_edge** }
%struct.ddg_node = type { i32, %struct.rtx_def*, %struct.rtx_def*, %struct.ddg_edge*, %struct.ddg_edge*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %union.anon.1 }
%struct.ddg_edge = type { %struct.ddg_node*, %struct.ddg_node*, i32, i32, i32, i32, %struct.ddg_edge*, %struct.ddg_edge*, %union.anon.0 }
%union.anon.0 = type { i8* }
%struct.simple_bitmap_def = type { i8*, i32, i32, [1 x i64] }
%union.anon.1 = type { i8* }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.deps = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def*, i32, %struct.deps_reg*, %struct.bitmap_head_def, %struct.bitmap_head_def, i32, i8 }
%struct.deps_reg = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, i32 }
%struct._sd_iterator = type { i32, %struct.rtx_def*, %struct._dep_link**, i8 }
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }
%struct.df_rd_bb_info = type { %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def* }
%struct.ddg_all_sccs = type { %struct.ddg_scc**, i32, %struct.ddg* }
%struct.ddg_scc = type { %struct.simple_bitmap_def*, %struct.ddg_edge**, i32, i32 }
%struct.sbitmap_iterator = type { i64*, i32, i32, i32, i64 }
%struct._deps_list = type { %struct._dep_link*, i32 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [6 x i8] c"ddg.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c" [%d -(%c,%d,%d)-> %d] \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Node num: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"OUT ARCS: \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"\0AIN ARCS: \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"graph: {\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"node: {title: \22%d_%d\22 info1: \22\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"\22}\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"backedge: {color: red \00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"edge: { \00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"sourcename: \22%d_%d\22 \00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"targetname: \22%d_%d\22 \00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"label: \22%d_%d\22}\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"\0A;; Number of SCC nodes - %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"SCC number: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"insn num %d\0A\00", align 1
@mem_ref_p = internal unnamed_addr global i1 false, align 1, !dbg !0
@sd_iterator_start.null_link = internal global %struct._dep_link* null, align 8, !dbg !1891
@flag_modulo_sched_allow_regmoves = external dso_local local_unnamed_addr global i32, align 4
@df = external dso_local local_unnamed_addr global %struct.df*, align 8
@rtx_format = external dso_local local_unnamed_addr constant [139 x i8*], align 16
@rtx_length = external dso_local local_unnamed_addr constant [139 x i8], align 16
@bitmap_zero_bits = external dso_local global %struct.bitmap_element_def, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1935 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1948, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1949, metadata !DIExpression()), !dbg !1950
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1951
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1952
  ret i32 %call, !dbg !1953
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1954 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1958
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1959
  ret i32 %call, !dbg !1960
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1961 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2016, metadata !DIExpression()), !dbg !2017
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2018
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2018
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2018
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2018
  %cmp = icmp uge i8* %0, %1, !dbg !2018
  %conv1 = zext i1 %cmp to i64, !dbg !2018
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2018
  %tobool = icmp eq i64 %expval, 0, !dbg !2018
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2018

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2018
  br label %cond.end, !dbg !2018

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2018
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2018
  %2 = load i8, i8* %0, align 1, !dbg !2018
  %conv3 = zext i8 %2 to i32, !dbg !2018
  br label %cond.end, !dbg !2018

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2018
  ret i32 %cond, !dbg !2019
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2020 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2022, metadata !DIExpression()), !dbg !2023
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2024
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2024
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2024
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2024
  %cmp = icmp uge i8* %0, %1, !dbg !2024
  %conv1 = zext i1 %cmp to i64, !dbg !2024
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2024
  %tobool = icmp eq i64 %expval, 0, !dbg !2024
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2024

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2024
  br label %cond.end, !dbg !2024

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2024
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2024
  %2 = load i8, i8* %0, align 1, !dbg !2024
  %conv3 = zext i8 %2 to i32, !dbg !2024
  br label %cond.end, !dbg !2024

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2024
  ret i32 %cond, !dbg !2025
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2026 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2027
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2027
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2027
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2027
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2027
  %cmp = icmp uge i8* %1, %2, !dbg !2027
  %conv1 = zext i1 %cmp to i64, !dbg !2027
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2027
  %tobool = icmp eq i64 %expval, 0, !dbg !2027
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2027

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2027
  br label %cond.end, !dbg !2027

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2027
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2027
  %3 = load i8, i8* %1, align 1, !dbg !2027
  %conv3 = zext i8 %3 to i32, !dbg !2027
  br label %cond.end, !dbg !2027

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2027
  ret i32 %cond, !dbg !2028
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2029 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2033, metadata !DIExpression()), !dbg !2034
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2035
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2036
  ret i32 %call, !dbg !2037
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2038 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2042, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2043, metadata !DIExpression()), !dbg !2044
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2045
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2045
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2045
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2045
  %cmp = icmp uge i8* %0, %1, !dbg !2045
  %conv1 = zext i1 %cmp to i64, !dbg !2045
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2045
  %tobool = icmp eq i64 %expval, 0, !dbg !2045
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2045

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2045
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2045
  br label %cond.end, !dbg !2045

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2045
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2045
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2045
  store i8 %conv2, i8* %0, align 1, !dbg !2045
  %conv6 = and i32 %__c, 255, !dbg !2045
  br label %cond.end, !dbg !2045

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2045
  ret i32 %cond, !dbg !2046
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2047 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2049, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2050, metadata !DIExpression()), !dbg !2051
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2052
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2052
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2052
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2052
  %cmp = icmp uge i8* %0, %1, !dbg !2052
  %conv1 = zext i1 %cmp to i64, !dbg !2052
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2052
  %tobool = icmp eq i64 %expval, 0, !dbg !2052
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2052

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2052
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2052
  br label %cond.end, !dbg !2052

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2052
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2052
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2052
  store i8 %conv2, i8* %0, align 1, !dbg !2052
  %conv6 = and i32 %__c, 255, !dbg !2052
  br label %cond.end, !dbg !2052

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2052
  ret i32 %cond, !dbg !2053
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2054 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2056, metadata !DIExpression()), !dbg !2057
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2058
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2058
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2058
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2058
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2058
  %cmp = icmp uge i8* %1, %2, !dbg !2058
  %conv1 = zext i1 %cmp to i64, !dbg !2058
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2058
  %tobool = icmp eq i64 %expval, 0, !dbg !2058
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2058

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2058
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2058
  br label %cond.end, !dbg !2058

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2058
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2058
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2058
  store i8 %conv4, i8* %1, align 1, !dbg !2058
  %conv6 = and i32 %__c, 255, !dbg !2058
  br label %cond.end, !dbg !2058

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2058
  ret i32 %cond, !dbg !2059
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2060 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2066, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2067, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2068, metadata !DIExpression()), !dbg !2069
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2070
  ret i64 %call, !dbg !2071
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2072 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2074, metadata !DIExpression()), !dbg !2075
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2076
  %0 = load i32, i32* %_flags, align 8, !dbg !2076
  %and = lshr i32 %0, 4, !dbg !2076
  %and.lobit = and i32 %and, 1, !dbg !2076
  ret i32 %and.lobit, !dbg !2077
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2078 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2080, metadata !DIExpression()), !dbg !2081
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2082
  %0 = load i32, i32* %_flags, align 8, !dbg !2082
  %and = lshr i32 %0, 5, !dbg !2082
  %and.lobit = and i32 %and, 1, !dbg !2082
  ret i32 %and.lobit, !dbg !2083
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2084 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2087, metadata !DIExpression()), !dbg !2088
  %__c.off = add i32 %__c, 128, !dbg !2089
  %0 = icmp ult i32 %__c.off, 384, !dbg !2089
  br i1 %0, label %cond.true, label %cond.end, !dbg !2089

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2090
  %1 = load i32*, i32** %call, align 8, !dbg !2091
  %idxprom = sext i32 %__c to i64, !dbg !2092
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2092
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2092
  br label %cond.end, !dbg !2093

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2093
  ret i32 %cond, !dbg !2094
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2095 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2097, metadata !DIExpression()), !dbg !2098
  %__c.off = add i32 %__c, 128, !dbg !2099
  %0 = icmp ult i32 %__c.off, 384, !dbg !2099
  br i1 %0, label %cond.true, label %cond.end, !dbg !2099

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2100
  %1 = load i32*, i32** %call, align 8, !dbg !2101
  %idxprom = sext i32 %__c to i64, !dbg !2102
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2102
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2102
  br label %cond.end, !dbg !2103

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2103
  ret i32 %cond, !dbg !2104
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2105 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2110, metadata !DIExpression()), !dbg !2111
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2112
  %conv = trunc i64 %call to i32, !dbg !2113
  ret i32 %conv, !dbg !2114
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2115 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2119, metadata !DIExpression()), !dbg !2120
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2121
  ret i64 %call, !dbg !2122
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2123 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2128, metadata !DIExpression()), !dbg !2129
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2130
  ret i64 %call, !dbg !2131
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2132 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2138, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2139, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2140, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2141, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2142, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i64 0, metadata !2143, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2144, metadata !DIExpression()), !dbg !2148
  br label %while.cond, !dbg !2149

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2150
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2148
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2144, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2143, metadata !DIExpression()), !dbg !2148
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2151
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2149

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2152
  %div = lshr i64 %add, 1, !dbg !2154
  call void @llvm.dbg.value(metadata i64 %div, metadata !2145, metadata !DIExpression()), !dbg !2148
  %mul = mul i64 %div, %__size, !dbg !2155
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2156
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2146, metadata !DIExpression()), !dbg !2148
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2157
  call void @llvm.dbg.value(metadata i32 %call, metadata !2147, metadata !DIExpression()), !dbg !2148
  %cmp1 = icmp slt i32 %call, 0, !dbg !2158
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2160

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2161
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2163

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2164
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2143, metadata !DIExpression()), !dbg !2148
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2148
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2148
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2144, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2143, metadata !DIExpression()), !dbg !2148
  br label %while.cond, !dbg !2149, !llvm.loop !2165

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2148
  ret i8* %retval.0, !dbg !2167
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2168 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2174, metadata !DIExpression()), !dbg !2175
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2176
  ret double %call, !dbg !2177
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2178 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2187, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2188, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i32 %base, metadata !2189, metadata !DIExpression()), !dbg !2190
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2191
  ret i64 %call, !dbg !2192
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2193 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2199, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2200, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i32 %base, metadata !2201, metadata !DIExpression()), !dbg !2202
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2203
  ret i64 %call, !dbg !2204
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2205 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2216, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2217, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i32 %base, metadata !2218, metadata !DIExpression()), !dbg !2219
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2220
  ret i64 %call, !dbg !2221
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2222 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2226, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2227, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i32 %base, metadata !2228, metadata !DIExpression()), !dbg !2229
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2230
  ret i64 %call, !dbg !2231
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2232 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2272, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2273, metadata !DIExpression()), !dbg !2274
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2275
  ret i32 %call, !dbg !2276
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2277 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2279, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2280, metadata !DIExpression()), !dbg !2281
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2282
  ret i32 %call, !dbg !2283
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2284 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2288, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2289, metadata !DIExpression()), !dbg !2290
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2291
  ret i32 %call, !dbg !2292
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2293 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2297, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2298, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2299, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2300, metadata !DIExpression()), !dbg !2301
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2302
  ret i32 %call, !dbg !2303
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2304 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2308, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2309, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2310, metadata !DIExpression()), !dbg !2311
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2310, metadata !DIExpression(DW_OP_deref)), !dbg !2311
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2312
  ret i32 %call, !dbg !2313
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2314 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2318, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2319, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2320, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2321, metadata !DIExpression()), !dbg !2322
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2321, metadata !DIExpression(DW_OP_deref)), !dbg !2322
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2323
  ret i32 %call, !dbg !2324
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2325 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2349, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2350, metadata !DIExpression()), !dbg !2351
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2352
  ret i32 %call, !dbg !2353
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2354 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2356, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2357, metadata !DIExpression()), !dbg !2358
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2359
  ret i32 %call, !dbg !2360
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2361 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2365, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2366, metadata !DIExpression()), !dbg !2367
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2368
  ret i32 %call, !dbg !2369
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2370 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2374, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2375, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2376, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2377, metadata !DIExpression()), !dbg !2378
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2379
  ret i32 %call, !dbg !2380
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.ddg* @create_ddg(%struct.basic_block_def* %bb, i32 %closing_branch_deps) local_unnamed_addr #5 !dbg !2381 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2385, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i32 %closing_branch_deps, metadata !2386, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i32 0, metadata !2391, metadata !DIExpression()), !dbg !2392
  %call = tail call i8* @xcalloc(i64 1, i64 56) #6, !dbg !2393
  call void @llvm.dbg.value(metadata %struct.ddg* %17, metadata !2387, metadata !DIExpression()), !dbg !2392
  %bb1 = bitcast i8* %call to %struct.basic_block_def**, !dbg !2394
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb1, align 8, !dbg !2395
  %closing_branch_deps2 = getelementptr inbounds i8, i8* %call, i64 40, !dbg !2396
  %0 = bitcast i8* %closing_branch_deps2 to i32*, !dbg !2396
  store i32 %closing_branch_deps, i32* %0, align 8, !dbg !2397
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, !dbg !2398
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !2398
  %1 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2398
  %head_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %1, i64 0, i32 0, !dbg !2398
  %num_loads = getelementptr inbounds i8, i8* %call, i64 12, !dbg !2400
  %2 = bitcast i8* %num_loads to i32*, !dbg !2400
  %num_stores = getelementptr inbounds i8, i8* %call, i64 16, !dbg !2406
  %3 = bitcast i8* %num_stores to i32*, !dbg !2406
  %num_debug = getelementptr inbounds i8, i8* %call, i64 20, !dbg !2408
  %4 = bitcast i8* %num_debug to i32*, !dbg !2408
  br label %for.cond, !dbg !2409

for.cond:                                         ; preds = %for.inc, %entry
  %.pre2 = phi %struct.rtl_bb_info* [ %1, %entry ], [ %.pre, %for.inc ]
  %5 = phi %struct.rtl_bb_info* [ %1, %entry ], [ %.pre, %for.inc ], !dbg !2410
  %insn.0.in = phi %struct.rtx_def** [ %head_, %entry ], [ %rt_rtx43, %for.inc ]
  %num_nodes.0 = phi i32 [ 0, %entry ], [ %num_nodes.1, %for.inc ], !dbg !2411
  %insn.0 = load %struct.rtx_def*, %struct.rtx_def** %insn.0.in, align 8, !dbg !2412
  call void @llvm.dbg.value(metadata i32 %num_nodes.0, metadata !2391, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.0, metadata !2388, metadata !DIExpression()), !dbg !2392
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %5, i64 0, i32 1, !dbg !2410
  %6 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !2410
  %7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2410
  %rt_rtx = bitcast %union.rtunion_def* %7 to %struct.rtx_def**, !dbg !2410
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2410
  %cmp = icmp eq %struct.rtx_def* %insn.0, %8, !dbg !2413
  br i1 %cmp, label %for.end, label %for.body, !dbg !2414

for.body:                                         ; preds = %for.cond
  %9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 0, !dbg !2415
  %bf.load = load i32, i32* %9, align 8, !dbg !2415
  %bf.clear = and i32 %bf.load, 65535, !dbg !2415
  %cmp5 = icmp eq i32 %bf.clear, 8, !dbg !2415
  br i1 %cmp5, label %lor.lhs.false17, label %lor.lhs.false, !dbg !2415

lor.lhs.false:                                    ; preds = %for.body
  %cmp8 = icmp eq i32 %bf.clear, 7, !dbg !2415
  br i1 %cmp8, label %lor.lhs.false17, label %lor.lhs.false9, !dbg !2415

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %cmp12 = icmp eq i32 %bf.clear, 9, !dbg !2415
  br i1 %cmp12, label %lor.lhs.false17, label %lor.lhs.false13, !dbg !2415

lor.lhs.false13:                                  ; preds = %lor.lhs.false9
  %cmp16 = icmp eq i32 %bf.clear, 10, !dbg !2415
  br i1 %cmp16, label %lor.lhs.false17, label %for.inc, !dbg !2417

lor.lhs.false17:                                  ; preds = %lor.lhs.false13, %lor.lhs.false9, %lor.lhs.false, %for.body
  %u18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, !dbg !2418
  %10 = getelementptr inbounds %union.u, %union.u* %u18, i64 1, i32 0, i32 0, i64 0, !dbg !2418
  %11 = bitcast %union.rtunion_def* %10 to i32**, !dbg !2418
  %12 = load i32*, i32** %11, align 8, !dbg !2418
  %bf.load22 = load i32, i32* %12, align 8, !dbg !2418
  %bf.clear23 = and i32 %bf.load22, 65535, !dbg !2418
  %cmp24 = icmp eq i32 %bf.clear23, 24, !dbg !2419
  br i1 %cmp24, label %for.inc, label %if.end, !dbg !2420

if.end:                                           ; preds = %lor.lhs.false17
  %cmp27 = icmp eq i32 %bf.clear, 7, !dbg !2421
  br i1 %cmp27, label %if.then28, label %if.else, !dbg !2422

if.then28:                                        ; preds = %if.end
  %13 = load i32, i32* %4, align 4, !dbg !2423
  %inc = add nsw i32 %13, 1, !dbg !2423
  store i32 %inc, i32* %4, align 4, !dbg !2423
  br label %if.end38, !dbg !2424

if.else:                                          ; preds = %if.end
  %call29 = tail call fastcc zeroext i8 @mem_read_insn_p(%struct.rtx_def* %insn.0) #7, !dbg !2425
  %tobool = icmp eq i8 %call29, 0, !dbg !2425
  br i1 %tobool, label %if.end32, label %if.then30, !dbg !2426

if.then30:                                        ; preds = %if.else
  %14 = load i32, i32* %2, align 4, !dbg !2427
  %inc31 = add nsw i32 %14, 1, !dbg !2427
  store i32 %inc31, i32* %2, align 4, !dbg !2427
  br label %if.end32, !dbg !2428

if.end32:                                         ; preds = %if.else, %if.then30
  %call33 = tail call fastcc zeroext i8 @mem_write_insn_p(%struct.rtx_def* %insn.0) #7, !dbg !2429
  %tobool34 = icmp eq i8 %call33, 0, !dbg !2429
  br i1 %tobool34, label %if.end38, label %if.then35, !dbg !2430

if.then35:                                        ; preds = %if.end32
  %15 = load i32, i32* %3, align 8, !dbg !2431
  %inc36 = add nsw i32 %15, 1, !dbg !2431
  store i32 %inc36, i32* %3, align 8, !dbg !2431
  br label %if.end38, !dbg !2432

if.end38:                                         ; preds = %if.end32, %if.then35, %if.then28
  %inc39 = add nsw i32 %num_nodes.0, 1, !dbg !2433
  call void @llvm.dbg.value(metadata i32 %inc39, metadata !2391, metadata !DIExpression()), !dbg !2392
  %.pre.pre = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2410
  br label %for.inc, !dbg !2434

for.inc:                                          ; preds = %lor.lhs.false13, %lor.lhs.false17, %if.end38
  %.pre = phi %struct.rtl_bb_info* [ %.pre.pre, %if.end38 ], [ %.pre2, %lor.lhs.false17 ], [ %.pre2, %lor.lhs.false13 ], !dbg !2410
  %num_nodes.1 = phi i32 [ %inc39, %if.end38 ], [ %num_nodes.0, %lor.lhs.false17 ], [ %num_nodes.0, %lor.lhs.false13 ], !dbg !2392
  call void @llvm.dbg.value(metadata i32 %num_nodes.1, metadata !2391, metadata !DIExpression()), !dbg !2392
  %16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.0, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2435
  %rt_rtx43 = bitcast %union.rtunion_def* %16 to %struct.rtx_def**, !dbg !2435
  br label %for.cond, !dbg !2436, !llvm.loop !2437

for.end:                                          ; preds = %for.cond
  %num_nodes.0.lcssa = phi i32 [ %num_nodes.0, %for.cond ], !dbg !2411
  call void @llvm.dbg.value(metadata i32 %num_nodes.0.lcssa, metadata !2391, metadata !DIExpression()), !dbg !2392
  %17 = bitcast i8* %call to %struct.ddg*, !dbg !2439
  call void @llvm.dbg.value(metadata i32 %num_nodes.0.lcssa, metadata !2391, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i32 %num_nodes.0.lcssa, metadata !2391, metadata !DIExpression()), !dbg !2392
  %cmp44 = icmp slt i32 %num_nodes.0.lcssa, 2, !dbg !2440
  br i1 %cmp44, label %if.then45, label %if.end46, !dbg !2442

if.then45:                                        ; preds = %for.end
  tail call void @free(i8* %call) #6, !dbg !2443
  br label %cleanup, !dbg !2445

if.end46:                                         ; preds = %for.end
  %num_nodes47 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !2446
  %18 = bitcast i8* %num_nodes47 to i32*, !dbg !2446
  store i32 %num_nodes.0.lcssa, i32* %18, align 8, !dbg !2447
  %conv = sext i32 %num_nodes.0.lcssa to i64, !dbg !2448
  %call48 = tail call i8* @xcalloc(i64 %conv, i64 64) #6, !dbg !2449
  %nodes = getelementptr inbounds i8, i8* %call, i64 24, !dbg !2450
  %19 = bitcast i8* %nodes to i8**, !dbg !2451
  store i8* %call48, i8** %19, align 8, !dbg !2451
  %closing_branch = getelementptr inbounds i8, i8* %call, i64 32, !dbg !2452
  %20 = bitcast i8* %closing_branch to %struct.ddg_node**, !dbg !2452
  store %struct.ddg_node* null, %struct.ddg_node** %20, align 8, !dbg !2453
  call void @llvm.dbg.value(metadata i32 0, metadata !2390, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !2389, metadata !DIExpression()), !dbg !2392
  %21 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2454
  %head_51 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %21, i64 0, i32 0, !dbg !2454
  %22 = bitcast i8* %nodes to %struct.ddg_node**, !dbg !2456
  br label %for.cond52, !dbg !2461

for.cond52:                                       ; preds = %for.inc155, %if.end46
  %.pre46 = phi %struct.rtl_bb_info* [ %21, %if.end46 ], [ %.pre4, %for.inc155 ]
  %23 = phi %struct.rtl_bb_info* [ %21, %if.end46 ], [ %.pre4, %for.inc155 ], !dbg !2462
  %first_note.0 = phi %struct.rtx_def* [ null, %if.end46 ], [ %first_note.3, %for.inc155 ], !dbg !2392
  %insn.1.in = phi %struct.rtx_def** [ %head_51, %if.end46 ], [ %rt_rtx159, %for.inc155 ]
  %i.0 = phi i32 [ 0, %if.end46 ], [ %i.1, %for.inc155 ], !dbg !2392
  %insn.1 = load %struct.rtx_def*, %struct.rtx_def** %insn.1.in, align 8, !dbg !2463
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2390, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn.1, metadata !2388, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata %struct.rtx_def* %first_note.0, metadata !2389, metadata !DIExpression()), !dbg !2392
  %end_55 = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %23, i64 0, i32 1, !dbg !2462
  %24 = load %struct.rtx_def*, %struct.rtx_def** %end_55, align 8, !dbg !2462
  %25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2462
  %rt_rtx59 = bitcast %union.rtunion_def* %25 to %struct.rtx_def**, !dbg !2462
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx59, align 8, !dbg !2462
  %cmp60 = icmp eq %struct.rtx_def* %insn.1, %26, !dbg !2464
  br i1 %cmp60, label %for.end160, label %for.body62, !dbg !2465

for.body62:                                       ; preds = %for.cond52
  %27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.1, i64 0, i32 0, !dbg !2466
  %bf.load63 = load i32, i32* %27, align 8, !dbg !2466
  %bf.clear64 = and i32 %bf.load63, 65535, !dbg !2466
  %cmp65 = icmp eq i32 %bf.clear64, 8, !dbg !2466
  br i1 %cmp65, label %if.end96, label %lor.lhs.false67, !dbg !2466

lor.lhs.false67:                                  ; preds = %for.body62
  %cmp70 = icmp eq i32 %bf.clear64, 7, !dbg !2466
  br i1 %cmp70, label %if.end96, label %lor.lhs.false72, !dbg !2466

lor.lhs.false72:                                  ; preds = %lor.lhs.false67
  %cmp75 = icmp eq i32 %bf.clear64, 9, !dbg !2466
  br i1 %cmp75, label %if.end96, label %lor.lhs.false77, !dbg !2466

lor.lhs.false77:                                  ; preds = %lor.lhs.false72
  %cmp80 = icmp eq i32 %bf.clear64, 10, !dbg !2466
  br i1 %cmp80, label %if.end96, label %if.then82, !dbg !2468

if.then82:                                        ; preds = %lor.lhs.false77
  %tobool83 = icmp eq %struct.rtx_def* %first_note.0, null, !dbg !2469
  br i1 %tobool83, label %land.lhs.true, label %for.inc155, !dbg !2472

land.lhs.true:                                    ; preds = %if.then82
  %cmp86 = icmp eq i32 %bf.clear64, 13, !dbg !2473
  br i1 %cmp86, label %land.lhs.true88, label %for.inc155, !dbg !2474

land.lhs.true88:                                  ; preds = %land.lhs.true
  %u89 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.1, i64 0, i32 1, !dbg !2475
  %28 = getelementptr inbounds %union.u, %union.u* %u89, i64 1, i32 0, i32 0, i64 0, !dbg !2475
  %rt_int = bitcast %union.rtunion_def* %28 to i32*, !dbg !2475
  %29 = load i32, i32* %rt_int, align 8, !dbg !2475
  %cmp92 = icmp eq i32 %29, 10, !dbg !2476
  %spec.select = select i1 %cmp92, %struct.rtx_def* null, %struct.rtx_def* %insn.1, !dbg !2477
  br label %for.inc155, !dbg !2477

if.end96:                                         ; preds = %lor.lhs.false77, %lor.lhs.false72, %lor.lhs.false67, %for.body62
  %cmp99 = icmp eq i32 %bf.clear64, 9, !dbg !2478
  br i1 %cmp99, label %if.then101, label %if.else107, !dbg !2479

if.then101:                                       ; preds = %if.end96
  %30 = load %struct.ddg_node*, %struct.ddg_node** %20, align 8, !dbg !2480
  %tobool103 = icmp eq %struct.ddg_node* %30, null, !dbg !2480
  br i1 %tobool103, label %cond.end, label %cond.true, !dbg !2480

cond.true:                                        ; preds = %if.then101
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 514, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2480
  br label %cond.end, !dbg !2480

cond.end:                                         ; preds = %if.then101, %cond.true
  %31 = load %struct.ddg_node*, %struct.ddg_node** %22, align 8, !dbg !2481
  %idxprom = sext i32 %i.0 to i64, !dbg !2482
  %arrayidx105 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %31, i64 %idxprom, !dbg !2482
  store %struct.ddg_node* %arrayidx105, %struct.ddg_node** %20, align 8, !dbg !2483
  br label %if.end121, !dbg !2484

if.else107:                                       ; preds = %if.end96
  %u108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.1, i64 0, i32 1, !dbg !2485
  %32 = getelementptr inbounds %union.u, %union.u* %u108, i64 1, i32 0, i32 0, i64 0, !dbg !2485
  %33 = bitcast %union.rtunion_def* %32 to i32**, !dbg !2485
  %34 = load i32*, i32** %33, align 8, !dbg !2485
  %bf.load112 = load i32, i32* %34, align 8, !dbg !2485
  %bf.clear113 = and i32 %bf.load112, 65535, !dbg !2485
  %cmp114 = icmp eq i32 %bf.clear113, 24, !dbg !2487
  br i1 %cmp114, label %if.then116, label %if.else107.if.end121_crit_edge, !dbg !2488

if.else107.if.end121_crit_edge:                   ; preds = %if.else107
  %.pre5 = load %struct.ddg_node*, %struct.ddg_node** %22, align 8, !dbg !2489
  %.pre8 = sext i32 %i.0 to i64, !dbg !2490
  br label %if.end121, !dbg !2488

if.then116:                                       ; preds = %if.else107
  %tobool117 = icmp eq %struct.rtx_def* %first_note.0, null, !dbg !2491
  %spec.select1 = select i1 %tobool117, %struct.rtx_def* %insn.1, %struct.rtx_def* %first_note.0, !dbg !2494
  call void @llvm.dbg.value(metadata %struct.rtx_def* %spec.select1, metadata !2389, metadata !DIExpression()), !dbg !2392
  br label %for.inc155, !dbg !2495

if.end121:                                        ; preds = %if.else107.if.end121_crit_edge, %cond.end
  %idxprom123.pre-phi = phi i64 [ %.pre8, %if.else107.if.end121_crit_edge ], [ %idxprom, %cond.end ], !dbg !2490
  %35 = phi %struct.ddg_node* [ %.pre5, %if.else107.if.end121_crit_edge ], [ %31, %cond.end ], !dbg !2489
  %cuid = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %35, i64 %idxprom123.pre-phi, i32 0, !dbg !2496
  store i32 %i.0, i32* %cuid, align 8, !dbg !2497
  %call125 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %num_nodes.0.lcssa) #6, !dbg !2498
  %36 = load %struct.ddg_node*, %struct.ddg_node** %22, align 8, !dbg !2499
  %successors = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %36, i64 %idxprom123.pre-phi, i32 5, !dbg !2500
  store %struct.simple_bitmap_def* %call125, %struct.simple_bitmap_def** %successors, align 8, !dbg !2501
  %37 = load %struct.ddg_node*, %struct.ddg_node** %22, align 8, !dbg !2502
  %successors132 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %37, i64 %idxprom123.pre-phi, i32 5, !dbg !2503
  %38 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %successors132, align 8, !dbg !2503
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %38) #6, !dbg !2504
  %call133 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %num_nodes.0.lcssa) #6, !dbg !2505
  %39 = load %struct.ddg_node*, %struct.ddg_node** %22, align 8, !dbg !2506
  %predecessors = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %39, i64 %idxprom123.pre-phi, i32 6, !dbg !2507
  store %struct.simple_bitmap_def* %call133, %struct.simple_bitmap_def** %predecessors, align 8, !dbg !2508
  %40 = load %struct.ddg_node*, %struct.ddg_node** %22, align 8, !dbg !2509
  %predecessors140 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %40, i64 %idxprom123.pre-phi, i32 6, !dbg !2510
  %41 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %predecessors140, align 8, !dbg !2510
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %41) #6, !dbg !2511
  %tobool141 = icmp eq %struct.rtx_def* %first_note.0, null, !dbg !2512
  %first_note.0.insn.1 = select i1 %tobool141, %struct.rtx_def* %insn.1, %struct.rtx_def* %first_note.0, !dbg !2512
  %42 = load %struct.ddg_node*, %struct.ddg_node** %22, align 8, !dbg !2513
  %first_note149 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %42, i64 %idxprom123.pre-phi, i32 2, !dbg !2514
  store %struct.rtx_def* %first_note.0.insn.1, %struct.rtx_def** %first_note149, align 8, !dbg !2515
  %43 = load %struct.ddg_node*, %struct.ddg_node** %22, align 8, !dbg !2516
  %inc151 = add nsw i32 %i.0, 1, !dbg !2517
  call void @llvm.dbg.value(metadata i32 %inc151, metadata !2390, metadata !DIExpression()), !dbg !2392
  %insn154 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %43, i64 %idxprom123.pre-phi, i32 1, !dbg !2518
  store %struct.rtx_def* %insn.1, %struct.rtx_def** %insn154, align 8, !dbg !2519
  call void @llvm.dbg.value(metadata %struct.rtx_def* null, metadata !2389, metadata !DIExpression()), !dbg !2392
  %.pre4.pre = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !2462
  br label %for.inc155, !dbg !2520

for.inc155:                                       ; preds = %if.then82, %land.lhs.true88, %land.lhs.true, %if.end121, %if.then116
  %.pre4 = phi %struct.rtl_bb_info* [ %.pre4.pre, %if.end121 ], [ %.pre46, %if.then116 ], [ %.pre46, %if.then82 ], [ %.pre46, %land.lhs.true ], [ %.pre46, %land.lhs.true88 ], !dbg !2462
  %first_note.3 = phi %struct.rtx_def* [ null, %if.end121 ], [ %spec.select1, %if.then116 ], [ %first_note.0, %if.then82 ], [ null, %land.lhs.true ], [ %spec.select, %land.lhs.true88 ], !dbg !2392
  %i.1 = phi i32 [ %inc151, %if.end121 ], [ %i.0, %if.then116 ], [ %i.0, %if.then82 ], [ %i.0, %land.lhs.true ], [ %i.0, %land.lhs.true88 ], !dbg !2392
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !2390, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata %struct.rtx_def* %first_note.3, metadata !2389, metadata !DIExpression()), !dbg !2392
  %44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn.1, i64 0, i32 1, i32 0, i32 0, i64 2, !dbg !2521
  %rt_rtx159 = bitcast %union.rtunion_def* %44 to %struct.rtx_def**, !dbg !2521
  br label %for.cond52, !dbg !2522, !llvm.loop !2523

for.end160:                                       ; preds = %for.cond52
  %45 = load %struct.ddg_node*, %struct.ddg_node** %20, align 8, !dbg !2525
  %tobool162 = icmp eq %struct.ddg_node* %45, null, !dbg !2525
  br i1 %tobool162, label %cond.true163, label %cond.end165, !dbg !2525

cond.true163:                                     ; preds = %for.end160
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 535, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2525
  br label %cond.end165, !dbg !2525

cond.end165:                                      ; preds = %for.end160, %cond.true163
  tail call fastcc void @build_intra_loop_deps(%struct.ddg* %17) #7, !dbg !2526
  tail call fastcc void @build_inter_loop_deps(%struct.ddg* %17) #7, !dbg !2527
  br label %cleanup, !dbg !2528

cleanup:                                          ; preds = %cond.end165, %if.then45
  %retval.0 = phi %struct.ddg* [ null, %if.then45 ], [ %17, %cond.end165 ], !dbg !2392
  ret %struct.ddg* %retval.0, !dbg !2529
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @mem_read_insn_p(%struct.rtx_def* %insn) unnamed_addr #5 !dbg !2530 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2534, metadata !DIExpression()), !dbg !2535
  store i1 false, i1* @mem_ref_p, align 1, !dbg !2536
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !2537
  %0 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !2537
  %rt_rtx = bitcast %union.rtunion_def* %0 to %struct.rtx_def**, !dbg !2537
  tail call void @note_uses(%struct.rtx_def** nonnull %rt_rtx, void (%struct.rtx_def**, i8*)* nonnull @mark_mem_use_1, i8* null) #6, !dbg !2538
  %.b = load i1, i1* @mem_ref_p, align 1, !dbg !2539
  %1 = zext i1 %.b to i8, !dbg !2539
  ret i8 %1, !dbg !2540
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @mem_write_insn_p(%struct.rtx_def* %insn) unnamed_addr #5 !dbg !2541 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !2543, metadata !DIExpression()), !dbg !2544
  store i1 false, i1* @mem_ref_p, align 1, !dbg !2545
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !2546
  %0 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !2546
  %rt_rtx = bitcast %union.rtunion_def* %0 to %struct.rtx_def**, !dbg !2546
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !2546
  tail call void @note_stores(%struct.rtx_def* %1, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* nonnull @mark_mem_store, i8* null) #6, !dbg !2547
  %.b = load i1, i1* @mem_ref_p, align 1, !dbg !2548
  %2 = zext i1 %.b to i8, !dbg !2548
  ret i8 %2, !dbg !2549
}

declare dso_local void @free(i8*) local_unnamed_addr #2

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local %struct.simple_bitmap_def* @sbitmap_alloc(i32) local_unnamed_addr #2

declare dso_local void @sbitmap_zero(%struct.simple_bitmap_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @build_intra_loop_deps(%struct.ddg* %g) unnamed_addr #5 !dbg !2550 {
entry:
  %tmp_deps = alloca %struct.deps, align 8
  %head = alloca %struct.rtx_def*, align 8
  %tail = alloca %struct.rtx_def*, align 8
  %sd_it = alloca %struct._sd_iterator, align 8
  %dep = alloca %struct._dep*, align 8
  %tmp = alloca %struct._sd_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.ddg* %g, metadata !2554, metadata !DIExpression()), !dbg !2611
  %0 = bitcast %struct.deps* %tmp_deps to i8*, !dbg !2612
  call void @llvm.lifetime.start.p0i8(i64 184, i8* nonnull %0) #8, !dbg !2612
  %1 = bitcast %struct.rtx_def** %head to i8*, !dbg !2613
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2613
  %2 = bitcast %struct.rtx_def** %tail to i8*, !dbg !2613
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2613
  tail call void @init_deps_global() #6, !dbg !2614
  call void @llvm.dbg.value(metadata %struct.deps* %tmp_deps, metadata !2556, metadata !DIExpression(DW_OP_deref)), !dbg !2611
  call void @init_deps(%struct.deps* nonnull %tmp_deps, i8 zeroext 0) #6, !dbg !2615
  %bb = getelementptr inbounds %struct.ddg, %struct.ddg* %g, i64 0, i32 0, !dbg !2616
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !2616
  call void @llvm.dbg.value(metadata %struct.rtx_def** %head, metadata !2589, metadata !DIExpression(DW_OP_deref)), !dbg !2611
  call void @llvm.dbg.value(metadata %struct.rtx_def** %tail, metadata !2590, metadata !DIExpression(DW_OP_deref)), !dbg !2611
  call void @get_ebb_head_tail(%struct.basic_block_def* %3, %struct.basic_block_def* %3, %struct.rtx_def** nonnull %head, %struct.rtx_def** nonnull %tail) #6, !dbg !2617
  %4 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8, !dbg !2618
  call void @llvm.dbg.value(metadata %struct.rtx_def* %4, metadata !2589, metadata !DIExpression()), !dbg !2611
  %5 = load %struct.rtx_def*, %struct.rtx_def** %tail, align 8, !dbg !2619
  call void @llvm.dbg.value(metadata %struct.rtx_def* %5, metadata !2590, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata %struct.deps* %tmp_deps, metadata !2556, metadata !DIExpression(DW_OP_deref)), !dbg !2611
  call void @sched_analyze(%struct.deps* nonnull %tmp_deps, %struct.rtx_def* %4, %struct.rtx_def* %5) #6, !dbg !2620
  call void @llvm.dbg.value(metadata i32 0, metadata !2555, metadata !DIExpression()), !dbg !2611
  %num_nodes = getelementptr inbounds %struct.ddg, %struct.ddg* %g, i64 0, i32 1, !dbg !2621
  %nodes = getelementptr inbounds %struct.ddg, %struct.ddg* %g, i64 0, i32 5, !dbg !2622
  %6 = bitcast %struct._sd_iterator* %sd_it to i8*, !dbg !2622
  %7 = bitcast %struct._dep** %dep to i8*, !dbg !2622
  %8 = bitcast %struct._sd_iterator* %tmp to i8*, !dbg !2623
  br label %for.cond, !dbg !2624

for.cond:                                         ; preds = %cleanup56, %entry
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %cleanup56 ], [ 0, %entry ], !dbg !2625
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %cleanup56 ], [ 1, %entry ], !dbg !2625
  call void @llvm.dbg.value(metadata i64 %indvars.iv7, metadata !2555, metadata !DIExpression()), !dbg !2611
  %9 = load i32, i32* %num_nodes, align 8, !dbg !2626
  %10 = sext i32 %9 to i64, !dbg !2627
  %cmp = icmp slt i64 %indvars.iv7, %10, !dbg !2627
  br i1 %cmp, label %for.body, label %for.end63, !dbg !2628

for.body:                                         ; preds = %for.cond
  %11 = load %struct.ddg_node*, %struct.ddg_node** %nodes, align 8, !dbg !2629
  %arrayidx = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %11, i64 %indvars.iv7, !dbg !2630
  call void @llvm.dbg.value(metadata %struct.ddg_node* %arrayidx, metadata !2591, metadata !DIExpression()), !dbg !2622
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #8, !dbg !2631
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #8, !dbg !2632
  %insn = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %11, i64 %indvars.iv7, i32 1, !dbg !2633
  %12 = bitcast %struct.rtx_def** %insn to i32**, !dbg !2633
  %13 = load i32*, i32** %12, align 8, !dbg !2633
  %bf.load = load i32, i32* %13, align 8, !dbg !2633
  %bf.clear = and i32 %bf.load, 65535, !dbg !2633
  %cmp2 = icmp eq i32 %bf.clear, 8, !dbg !2633
  %14 = bitcast i32* %13 to %struct.rtx_def*, !dbg !2633
  br i1 %cmp2, label %if.end, label %lor.lhs.false, !dbg !2633

lor.lhs.false:                                    ; preds = %for.body
  %cmp6 = icmp eq i32 %bf.clear, 7, !dbg !2633
  br i1 %cmp6, label %if.end, label %lor.lhs.false7, !dbg !2633

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %cmp11 = icmp eq i32 %bf.clear, 9, !dbg !2633
  br i1 %cmp11, label %if.end, label %lor.lhs.false12, !dbg !2633

lor.lhs.false12:                                  ; preds = %lor.lhs.false7
  %cmp16 = icmp eq i32 %bf.clear, 10, !dbg !2633
  br i1 %cmp16, label %if.end, label %cleanup56, !dbg !2635

if.end:                                           ; preds = %lor.lhs.false12, %lor.lhs.false7, %lor.lhs.false, %for.body
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #8, !dbg !2636
  call fastcc void @sd_iterator_start(%struct._sd_iterator* nonnull sret %tmp, %struct.rtx_def* %14, i32 3) #7, !dbg !2636
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* nonnull align 8 %8, i64 32, i1 false), !dbg !2636
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #8, !dbg !2636
  br label %for.cond18, !dbg !2636

for.cond18:                                       ; preds = %cleanup, %if.end
  call void @llvm.dbg.value(metadata %struct._sd_iterator* %sd_it, metadata !2595, metadata !DIExpression(DW_OP_deref)), !dbg !2622
  call void @llvm.dbg.value(metadata %struct._dep** %dep, metadata !2596, metadata !DIExpression(DW_OP_deref)), !dbg !2622
  %call = call fastcc zeroext i8 @sd_iterator_cond(%struct._sd_iterator* nonnull %sd_it, %struct._dep** nonnull %dep) #7, !dbg !2637
  %tobool = icmp eq i8 %call, 0, !dbg !2636
  br i1 %tobool, label %for.end, label %for.body19, !dbg !2636

for.body19:                                       ; preds = %for.cond18
  %15 = load %struct._dep*, %struct._dep** %dep, align 8, !dbg !2638
  call void @llvm.dbg.value(metadata %struct._dep* %15, metadata !2596, metadata !DIExpression()), !dbg !2622
  %pro = getelementptr inbounds %struct._dep, %struct._dep* %15, i64 0, i32 0, !dbg !2638
  %16 = load %struct.rtx_def*, %struct.rtx_def** %pro, align 8, !dbg !2638
  %call20 = call %struct.ddg_node* @get_node_of_insn(%struct.ddg* %g, %struct.rtx_def* %16) #7, !dbg !2639
  call void @llvm.dbg.value(metadata %struct.ddg_node* %call20, metadata !2600, metadata !DIExpression()), !dbg !2640
  %tobool21 = icmp eq %struct.ddg_node* %call20, null, !dbg !2641
  br i1 %tobool21, label %cleanup, label %if.end23, !dbg !2643

if.end23:                                         ; preds = %for.body19
  %17 = load %struct._dep*, %struct._dep** %dep, align 8, !dbg !2644
  call void @llvm.dbg.value(metadata %struct._dep* %17, metadata !2596, metadata !DIExpression()), !dbg !2622
  call fastcc void @create_ddg_dep_from_intra_loop_link(%struct.ddg* %g, %struct.ddg_node* nonnull %call20, %struct.ddg_node* %arrayidx, %struct._dep* %17) #7, !dbg !2645
  br label %cleanup, !dbg !2646

cleanup:                                          ; preds = %for.body19, %if.end23
  call void @llvm.dbg.value(metadata %struct._sd_iterator* %sd_it, metadata !2595, metadata !DIExpression(DW_OP_deref)), !dbg !2622
  call fastcc void @sd_iterator_next(%struct._sd_iterator* nonnull %sd_it) #7, !dbg !2637
  br label %for.cond18, !dbg !2637, !llvm.loop !2647

for.end:                                          ; preds = %for.cond18
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !2649
  %call25 = call fastcc zeroext i8 @mem_access_insn_p(%struct.rtx_def* %18) #7, !dbg !2650
  %tobool26 = icmp eq i8 %call25, 0, !dbg !2650
  br i1 %tobool26, label %cleanup56, label %for.cond28.preheader, !dbg !2651

for.cond28.preheader:                             ; preds = %for.end
  %successors = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %11, i64 %indvars.iv7, i32 5, !dbg !2652
  br label %for.cond28, !dbg !2655

for.cond28:                                       ; preds = %for.cond28.preheader, %cleanup50
  %indvars.iv = phi i64 [ 0, %for.cond28.preheader ], [ %indvars.iv.next, %cleanup50 ], !dbg !2656
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2604, metadata !DIExpression()), !dbg !2657
  %exitcond = icmp eq i64 %indvars.iv, %indvars.iv5, !dbg !2658
  br i1 %exitcond, label %cleanup56.loopexit, label %for.body30, !dbg !2655

for.body30:                                       ; preds = %for.cond28
  %19 = load %struct.ddg_node*, %struct.ddg_node** %nodes, align 8, !dbg !2659
  %arrayidx33 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %19, i64 %indvars.iv, !dbg !2660
  call void @llvm.dbg.value(metadata %struct.ddg_node* %arrayidx33, metadata !2607, metadata !DIExpression()), !dbg !2661
  %insn34 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %19, i64 %indvars.iv, i32 1, !dbg !2662
  %20 = bitcast %struct.rtx_def** %insn34 to i32**, !dbg !2662
  %21 = load i32*, i32** %20, align 8, !dbg !2662
  %bf.load35 = load i32, i32* %21, align 8, !dbg !2662
  %bf.clear36 = and i32 %bf.load35, 65535, !dbg !2662
  %cmp37 = icmp eq i32 %bf.clear36, 7, !dbg !2662
  br i1 %cmp37, label %cleanup50, label %if.end39, !dbg !2664

if.end39:                                         ; preds = %for.body30
  %22 = bitcast i32* %21 to %struct.rtx_def*, !dbg !2664
  %call41 = call fastcc zeroext i8 @mem_access_insn_p(%struct.rtx_def* %22) #7, !dbg !2665
  %tobool42 = icmp eq i8 %call41, 0, !dbg !2665
  br i1 %tobool42, label %cleanup50, label %if.then43, !dbg !2666

if.then43:                                        ; preds = %if.end39
  %23 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %successors, align 8, !dbg !2667
  %div = lshr i64 %indvars.iv, 6, !dbg !2667
  %idxprom44 = and i64 %div, 67108863, !dbg !2667
  %arrayidx45 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %23, i64 0, i32 3, i64 %idxprom44, !dbg !2667
  %24 = load i64, i64* %arrayidx45, align 8, !dbg !2667
  %rem = and i64 %indvars.iv, 63, !dbg !2667
  %25 = shl i64 1, %rem, !dbg !2667
  %26 = and i64 %24, %25, !dbg !2667
  %tobool46 = icmp eq i64 %26, 0, !dbg !2667
  br i1 %tobool46, label %if.then47, label %cleanup50, !dbg !2668

if.then47:                                        ; preds = %if.then43
  call fastcc void @add_inter_loop_mem_dep(%struct.ddg* %g, %struct.ddg_node* %arrayidx, %struct.ddg_node* %arrayidx33) #7, !dbg !2669
  br label %cleanup50, !dbg !2669

cleanup50:                                        ; preds = %if.then43, %if.end39, %if.then47, %for.body30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2670
  call void @llvm.dbg.value(metadata i32 undef, metadata !2604, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2657
  br label %for.cond28, !dbg !2671, !llvm.loop !2672

cleanup56.loopexit:                               ; preds = %for.cond28
  br label %cleanup56, !dbg !2674

cleanup56:                                        ; preds = %cleanup56.loopexit, %for.end, %lor.lhs.false12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #8, !dbg !2674
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #8, !dbg !2674
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1, !dbg !2675
  call void @llvm.dbg.value(metadata i32 undef, metadata !2555, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2611
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !2676
  br label %for.cond, !dbg !2676, !llvm.loop !2677

for.end63:                                        ; preds = %for.cond
  call void @finish_deps_global() #6, !dbg !2679
  call void @llvm.dbg.value(metadata %struct.deps* %tmp_deps, metadata !2556, metadata !DIExpression(DW_OP_deref)), !dbg !2611
  call void @free_deps(%struct.deps* nonnull %tmp_deps) #6, !dbg !2680
  %27 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8, !dbg !2681
  call void @llvm.dbg.value(metadata %struct.rtx_def* %27, metadata !2589, metadata !DIExpression()), !dbg !2611
  %28 = load %struct.rtx_def*, %struct.rtx_def** %tail, align 8, !dbg !2682
  call void @llvm.dbg.value(metadata %struct.rtx_def* %28, metadata !2590, metadata !DIExpression()), !dbg !2611
  call void @sched_free_deps(%struct.rtx_def* %27, %struct.rtx_def* %28, i8 zeroext 0) #6, !dbg !2683
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #8, !dbg !2684
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2684
  call void @llvm.lifetime.end.p0i8(i64 184, i8* nonnull %0) #8, !dbg !2684
  ret void, !dbg !2684
}

; Function Attrs: nounwind uwtable
define internal fastcc void @build_inter_loop_deps(%struct.ddg* %g) unnamed_addr #5 !dbg !2685 {
entry:
  %rd_num = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.ddg* %g, metadata !2687, metadata !DIExpression()), !dbg !2763
  %0 = bitcast i32* %rd_num to i8*, !dbg !2764
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !2764
  %1 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !2765
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !2765
  %bb = getelementptr inbounds %struct.ddg, %struct.ddg* %g, i64 0, i32 0, !dbg !2766
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !2766
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i64 0, i32 9, !dbg !2766
  %3 = load i32, i32* %index, align 8, !dbg !2766
  %call = tail call fastcc %struct.df_rd_bb_info* @df_rd_get_bb_info(i32 %3) #7, !dbg !2766
  call void @llvm.dbg.value(metadata %struct.df_rd_bb_info* %call, metadata !2689, metadata !DIExpression()), !dbg !2763
  %gen = getelementptr inbounds %struct.df_rd_bb_info, %struct.df_rd_bb_info* %call, i64 0, i32 2, !dbg !2767
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %gen, align 8, !dbg !2767
  call void @llvm.dbg.value(metadata i32* %rd_num, metadata !2688, metadata !DIExpression(DW_OP_deref)), !dbg !2763
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2690, metadata !DIExpression(DW_OP_deref)), !dbg !2763
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %4, i32 0, i32* nonnull %rd_num) #7, !dbg !2767
  br label %for.cond, !dbg !2767

for.cond:                                         ; preds = %for.body, %entry
  call void @llvm.dbg.value(metadata i32* %rd_num, metadata !2688, metadata !DIExpression(DW_OP_deref)), !dbg !2763
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2690, metadata !DIExpression(DW_OP_deref)), !dbg !2763
  %call1 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %rd_num) #7, !dbg !2768
  %tobool = icmp eq i8 %call1, 0, !dbg !2767
  br i1 %tobool, label %for.end, label %for.body, !dbg !2767

for.body:                                         ; preds = %for.cond
  %5 = load %struct.df*, %struct.df** @df, align 8, !dbg !2769
  %refs = getelementptr inbounds %struct.df, %struct.df* %5, i64 0, i32 3, i32 0, !dbg !2769
  %6 = load %union.df_ref_d**, %union.df_ref_d*** %refs, align 8, !dbg !2769
  %7 = load i32, i32* %rd_num, align 4, !dbg !2769
  call void @llvm.dbg.value(metadata i32 %7, metadata !2688, metadata !DIExpression()), !dbg !2763
  %idxprom = zext i32 %7 to i64, !dbg !2769
  %arrayidx = getelementptr inbounds %union.df_ref_d*, %union.df_ref_d** %6, i64 %idxprom, !dbg !2769
  %8 = load %union.df_ref_d*, %union.df_ref_d** %arrayidx, align 8, !dbg !2769
  call void @llvm.dbg.value(metadata %union.df_ref_d* %8, metadata !2698, metadata !DIExpression()), !dbg !2770
  call fastcc void @add_cross_iteration_register_deps(%struct.ddg* %g, %union.df_ref_d* %8) #7, !dbg !2771
  call void @llvm.dbg.value(metadata i32* %rd_num, metadata !2688, metadata !DIExpression(DW_OP_deref)), !dbg !2763
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2690, metadata !DIExpression(DW_OP_deref)), !dbg !2763
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %rd_num) #7, !dbg !2768
  br label %for.cond, !dbg !2768, !llvm.loop !2772

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !2774
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !2774
  ret void, !dbg !2774
}

; Function Attrs: nounwind uwtable
define dso_local void @free_ddg(%struct.ddg* %g) local_unnamed_addr #5 !dbg !2775 {
entry:
  call void @llvm.dbg.value(metadata %struct.ddg* %g, metadata !2777, metadata !DIExpression()), !dbg !2785
  %tobool = icmp eq %struct.ddg* %g, null, !dbg !2786
  br i1 %tobool, label %cleanup.cont, label %for.cond.preheader, !dbg !2788

for.cond.preheader:                               ; preds = %entry
  %num_nodes = getelementptr inbounds %struct.ddg, %struct.ddg* %g, i64 0, i32 1, !dbg !2789
  %nodes = getelementptr inbounds %struct.ddg, %struct.ddg* %g, i64 0, i32 5, !dbg !2790
  br label %for.cond, !dbg !2791

for.cond:                                         ; preds = %for.cond.preheader, %while.end
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %while.end ], !dbg !2792
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2778, metadata !DIExpression()), !dbg !2785
  %0 = load i32, i32* %num_nodes, align 8, !dbg !2793
  %1 = sext i32 %0 to i64, !dbg !2794
  %cmp = icmp slt i64 %indvars.iv, %1, !dbg !2794
  br i1 %cmp, label %for.body, label %for.end, !dbg !2791

for.body:                                         ; preds = %for.cond
  %2 = load %struct.ddg_node*, %struct.ddg_node** %nodes, align 8, !dbg !2795
  %out = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %2, i64 %indvars.iv, i32 4, !dbg !2796
  %3 = load %struct.ddg_edge*, %struct.ddg_edge** %out, align 8, !dbg !2796
  call void @llvm.dbg.value(metadata %struct.ddg_edge* %3, metadata !2779, metadata !DIExpression()), !dbg !2790
  br label %while.cond, !dbg !2797

while.cond:                                       ; preds = %while.body, %for.body
  %.in = phi %struct.ddg_edge* [ %3, %for.body ], [ %5, %while.body ]
  %e.0 = phi %struct.ddg_edge* [ %3, %for.body ], [ %5, %while.body ], !dbg !2790
  call void @llvm.dbg.value(metadata %struct.ddg_edge* %e.0, metadata !2779, metadata !DIExpression()), !dbg !2790
  %tobool1 = icmp eq %struct.ddg_edge* %e.0, null, !dbg !2797
  br i1 %tobool1, label %while.end, label %while.body, !dbg !2797

while.body:                                       ; preds = %while.cond
  %4 = bitcast %struct.ddg_edge* %.in to i8*, !dbg !2790
  %next_out = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %e.0, i64 0, i32 7, !dbg !2798
  %5 = load %struct.ddg_edge*, %struct.ddg_edge** %next_out, align 8, !dbg !2798
  call void @llvm.dbg.value(metadata %struct.ddg_edge* %5, metadata !2783, metadata !DIExpression()), !dbg !2799
  tail call void @free(i8* %4) #6, !dbg !2800
  call void @llvm.dbg.value(metadata %struct.ddg_edge* %5, metadata !2779, metadata !DIExpression()), !dbg !2790
  br label %while.cond, !dbg !2797, !llvm.loop !2801

while.end:                                        ; preds = %while.cond
  %6 = load %struct.ddg_node*, %struct.ddg_node** %nodes, align 8, !dbg !2803
  %successors = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %6, i64 %indvars.iv, i32 5, !dbg !2803
  %7 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %successors, align 8, !dbg !2803
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %7, i64 0, i32 0, !dbg !2803
  %8 = load i8*, i8** %popcount, align 8, !dbg !2803
  tail call void @free(i8* %8) #6, !dbg !2803
  %9 = load %struct.ddg_node*, %struct.ddg_node** %nodes, align 8, !dbg !2803
  %successors8 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %9, i64 %indvars.iv, i32 5, !dbg !2803
  %10 = bitcast %struct.simple_bitmap_def** %successors8 to i8**, !dbg !2803
  %11 = load i8*, i8** %10, align 8, !dbg !2803
  tail call void @free(i8* %11) #6, !dbg !2803
  %12 = load %struct.ddg_node*, %struct.ddg_node** %nodes, align 8, !dbg !2804
  %predecessors = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %12, i64 %indvars.iv, i32 6, !dbg !2804
  %13 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %predecessors, align 8, !dbg !2804
  %popcount12 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %13, i64 0, i32 0, !dbg !2804
  %14 = load i8*, i8** %popcount12, align 8, !dbg !2804
  tail call void @free(i8* %14) #6, !dbg !2804
  %15 = load %struct.ddg_node*, %struct.ddg_node** %nodes, align 8, !dbg !2804
  %predecessors16 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %15, i64 %indvars.iv, i32 6, !dbg !2804
  %16 = bitcast %struct.simple_bitmap_def** %predecessors16 to i8**, !dbg !2804
  %17 = load i8*, i8** %16, align 8, !dbg !2804
  tail call void @free(i8* %17) #6, !dbg !2804
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2805
  call void @llvm.dbg.value(metadata i32 undef, metadata !2778, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2785
  br label %for.cond, !dbg !2806, !llvm.loop !2807

for.end:                                          ; preds = %for.cond
  %num_backarcs = getelementptr inbounds %struct.ddg, %struct.ddg* %g, i64 0, i32 8, !dbg !2809
  %18 = load i32, i32* %num_backarcs, align 4, !dbg !2809
  %cmp17 = icmp sgt i32 %18, 0, !dbg !2811
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !2812

if.then18:                                        ; preds = %for.end
  %backarcs = getelementptr inbounds %struct.ddg, %struct.ddg* %g, i64 0, i32 9, !dbg !2813
  %19 = bitcast %struct.ddg_edge*** %backarcs to i8**, !dbg !2813
  %20 = load i8*, i8** %19, align 8, !dbg !2813
  tail call void @free(i8* %20) #6, !dbg !2814
  br label %if.end19, !dbg !2814

if.end19:                                         ; preds = %if.then18, %for.end
  %21 = bitcast %struct.ddg_node** %nodes to i8**, !dbg !2815
  %22 = load i8*, i8** %21, align 8, !dbg !2815
  tail call void @free(i8* %22) #6, !dbg !2816
  %23 = bitcast %struct.ddg* %g to i8*, !dbg !2817
  tail call void @free(i8* nonnull %23) #6, !dbg !2818
  br label %cleanup.cont, !dbg !2819

cleanup.cont:                                     ; preds = %entry, %if.end19
  ret void, !dbg !2819
}

; Function Attrs: nounwind uwtable
define dso_local void @print_ddg_edge(%struct._IO_FILE* %file, %struct.ddg_edge* %e) local_unnamed_addr #5 !dbg !2820 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2824, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.value(metadata %struct.ddg_edge* %e, metadata !2825, metadata !DIExpression()), !dbg !2827
  %type = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %e, i64 0, i32 2, !dbg !2828
  %0 = load i32, i32* %type, align 8, !dbg !2828
  %switch.selectcmp = icmp eq i32 %0, 2, !dbg !2829
  %switch.selectcmp1 = icmp eq i32 %0, 1, !dbg !2829
  %src = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %e, i64 0, i32 0, !dbg !2830
  %1 = load %struct.ddg_node*, %struct.ddg_node** %src, align 8, !dbg !2830
  %insn = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %1, i64 0, i32 1, !dbg !2830
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !2830
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2830
  %rt_int = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !2830
  %3 = load i32, i32* %rt_int, align 8, !dbg !2830
  %4 = select i1 %switch.selectcmp, i32 65, i32 84, !dbg !2831
  %conv = select i1 %switch.selectcmp1, i32 79, i32 %4, !dbg !2831
  %latency = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %e, i64 0, i32 4, !dbg !2832
  %5 = load i32, i32* %latency, align 8, !dbg !2832
  %distance = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %e, i64 0, i32 5, !dbg !2833
  %6 = load i32, i32* %distance, align 4, !dbg !2833
  %dest = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %e, i64 0, i32 1, !dbg !2834
  %7 = load %struct.ddg_node*, %struct.ddg_node** %dest, align 8, !dbg !2834
  %insn2 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %7, i64 0, i32 1, !dbg !2834
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn2, align 8, !dbg !2834
  %arrayidx5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2834
  %rt_int6 = bitcast %union.rtunion_def* %arrayidx5 to i32*, !dbg !2834
  %9 = load i32, i32* %rt_int6, align 8, !dbg !2834
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %3, i32 %conv, i32 %5, i32 %6, i32 %9) #6, !dbg !2835
  ret void, !dbg !2836
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @print_ddg(%struct._IO_FILE* %file, %struct.ddg* %g) local_unnamed_addr #5 !dbg !2837 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2841, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata %struct.ddg* %g, metadata !2842, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i32 0, metadata !2843, metadata !DIExpression()), !dbg !2848
  %num_nodes = getelementptr inbounds %struct.ddg, %struct.ddg* %g, i64 0, i32 1, !dbg !2849
  %nodes = getelementptr inbounds %struct.ddg, %struct.ddg* %g, i64 0, i32 5, !dbg !2850
  br label %for.cond, !dbg !2851

for.cond:                                         ; preds = %for.end19, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.end19 ], [ 0, %entry ], !dbg !2852
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2843, metadata !DIExpression()), !dbg !2848
  %0 = load i32, i32* %num_nodes, align 8, !dbg !2853
  %1 = sext i32 %0 to i64, !dbg !2854
  %cmp = icmp slt i64 %indvars.iv, %1, !dbg !2854
  br i1 %cmp, label %for.body, label %for.end22, !dbg !2855

for.body:                                         ; preds = %for.cond
  %2 = load %struct.ddg_node*, %struct.ddg_node** %nodes, align 8, !dbg !2856
  %cuid = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %2, i64 %indvars.iv, i32 0, !dbg !2857
  %3 = load i32, i32* %cuid, align 8, !dbg !2857
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %3) #6, !dbg !2858
  %4 = load %struct.ddg_node*, %struct.ddg_node** %nodes, align 8, !dbg !2859
  %insn = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %4, i64 %indvars.iv, i32 1, !dbg !2860
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !2860
  %call4 = tail call i32 @print_rtl_single(%struct._IO_FILE* %file, %struct.rtx_def* %5) #6, !dbg !2861
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2862
  %6 = load %struct.ddg_node*, %struct.ddg_node** %nodes, align 8, !dbg !2863
  %out = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %6, i64 %indvars.iv, i32 4, !dbg !2865
  br label %for.cond9, !dbg !2866

for.cond9:                                        ; preds = %for.body10, %for.body
  %e.0.in = phi %struct.ddg_edge** [ %out, %for.body ], [ %next_out, %for.body10 ]
  %e.0 = load %struct.ddg_edge*, %struct.ddg_edge** %e.0.in, align 8, !dbg !2867
  call void @llvm.dbg.value(metadata %struct.ddg_edge* %e.0, metadata !2844, metadata !DIExpression()), !dbg !2850
  %tobool = icmp eq %struct.ddg_edge* %e.0, null, !dbg !2868
  br i1 %tobool, label %for.end, label %for.body10, !dbg !2868

for.body10:                                       ; preds = %for.cond9
  tail call void @print_ddg_edge(%struct._IO_FILE* %file, %struct.ddg_edge* nonnull %e.0) #7, !dbg !2869
  %next_out = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %e.0, i64 0, i32 7, !dbg !2871
  br label %for.cond9, !dbg !2872, !llvm.loop !2873

for.end:                                          ; preds = %for.cond9
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2875
  %7 = load %struct.ddg_node*, %struct.ddg_node** %nodes, align 8, !dbg !2876
  %in = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %7, i64 %indvars.iv, i32 3, !dbg !2878
  br label %for.cond15, !dbg !2879

for.cond15:                                       ; preds = %for.body17, %for.end
  %e.1.in = phi %struct.ddg_edge** [ %in, %for.end ], [ %next_in, %for.body17 ]
  %e.1 = load %struct.ddg_edge*, %struct.ddg_edge** %e.1.in, align 8, !dbg !2880
  call void @llvm.dbg.value(metadata %struct.ddg_edge* %e.1, metadata !2844, metadata !DIExpression()), !dbg !2850
  %tobool16 = icmp eq %struct.ddg_edge* %e.1, null, !dbg !2881
  br i1 %tobool16, label %for.end19, label %for.body17, !dbg !2881

for.body17:                                       ; preds = %for.cond15
  tail call void @print_ddg_edge(%struct._IO_FILE* %file, %struct.ddg_edge* nonnull %e.1) #7, !dbg !2882
  %next_in = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %e.1, i64 0, i32 6, !dbg !2884
  br label %for.cond15, !dbg !2885, !llvm.loop !2886

for.end19:                                        ; preds = %for.cond15
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2888
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2889
  call void @llvm.dbg.value(metadata i32 undef, metadata !2843, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2848
  br label %for.cond, !dbg !2890, !llvm.loop !2891

for.end22:                                        ; preds = %for.cond
  ret void, !dbg !2893
}

declare dso_local i32 @print_rtl_single(%struct._IO_FILE*, %struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @vcg_print_ddg(%struct._IO_FILE* %file, %struct.ddg* %g) local_unnamed_addr #5 !dbg !2894 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2896, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata %struct.ddg* %g, metadata !2897, metadata !DIExpression()), !dbg !2909
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !2910
  call void @llvm.dbg.value(metadata i32 0, metadata !2898, metadata !DIExpression()), !dbg !2909
  %num_nodes = getelementptr inbounds %struct.ddg, %struct.ddg* %g, i64 0, i32 1, !dbg !2911
  %nodes = getelementptr inbounds %struct.ddg, %struct.ddg* %g, i64 0, i32 5, !dbg !2912
  br label %for.cond, !dbg !2913

for.cond:                                         ; preds = %for.inc27, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc27 ], [ 0, %entry ], !dbg !2914
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2898, metadata !DIExpression()), !dbg !2909
  %0 = load i32, i32* %num_nodes, align 8, !dbg !2915
  %1 = sext i32 %0 to i64, !dbg !2916
  %cmp = icmp slt i64 %indvars.iv, %1, !dbg !2916
  br i1 %cmp, label %for.body, label %for.end28, !dbg !2917

for.body:                                         ; preds = %for.cond
  %2 = load %struct.ddg_node*, %struct.ddg_node** %nodes, align 8, !dbg !2918
  %insn = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %2, i64 %indvars.iv, i32 1, !dbg !2918
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !2918
  %arrayidx1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2918
  %rt_int = bitcast %union.rtunion_def* %arrayidx1 to i32*, !dbg !2918
  %4 = load i32, i32* %rt_int, align 8, !dbg !2918
  call void @llvm.dbg.value(metadata i32 %4, metadata !2903, metadata !DIExpression()), !dbg !2912
  %5 = trunc i64 %indvars.iv to i32, !dbg !2919
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %5, i32 %4) #6, !dbg !2919
  %6 = load %struct.ddg_node*, %struct.ddg_node** %nodes, align 8, !dbg !2920
  %insn6 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %6, i64 %indvars.iv, i32 1, !dbg !2921
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn6, align 8, !dbg !2921
  %call7 = tail call i32 @print_rtl_single(%struct._IO_FILE* %file, %struct.rtx_def* %7) #6, !dbg !2922
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !2923
  %8 = load %struct.ddg_node*, %struct.ddg_node** %nodes, align 8, !dbg !2924
  %out = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %8, i64 %indvars.iv, i32 4, !dbg !2925
  br label %for.cond12, !dbg !2926

for.cond12:                                       ; preds = %if.end, %for.body
  %e.0.in = phi %struct.ddg_edge** [ %out, %for.body ], [ %next_out, %if.end ]
  %e.0 = load %struct.ddg_edge*, %struct.ddg_edge** %e.0.in, align 8, !dbg !2927
  call void @llvm.dbg.value(metadata %struct.ddg_edge* %e.0, metadata !2899, metadata !DIExpression()), !dbg !2912
  %tobool = icmp eq %struct.ddg_edge* %e.0, null, !dbg !2928
  br i1 %tobool, label %for.inc27, label %for.body13, !dbg !2928

for.body13:                                       ; preds = %for.cond12
  %dest = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %e.0, i64 0, i32 1, !dbg !2929
  %9 = load %struct.ddg_node*, %struct.ddg_node** %dest, align 8, !dbg !2929
  %insn14 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %9, i64 0, i32 1, !dbg !2929
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn14, align 8, !dbg !2929
  %arrayidx17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !2929
  %rt_int18 = bitcast %union.rtunion_def* %arrayidx17 to i32*, !dbg !2929
  %11 = load i32, i32* %rt_int18, align 8, !dbg !2929
  call void @llvm.dbg.value(metadata i32 %11, metadata !2904, metadata !DIExpression()), !dbg !2930
  %cuid = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %9, i64 0, i32 0, !dbg !2931
  %12 = load i32, i32* %cuid, align 8, !dbg !2931
  call void @llvm.dbg.value(metadata i32 %12, metadata !2908, metadata !DIExpression()), !dbg !2930
  %distance = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %e.0, i64 0, i32 5, !dbg !2932
  %13 = load i32, i32* %distance, align 4, !dbg !2932
  %cmp20 = icmp sgt i32 %13, 0, !dbg !2934
  br i1 %cmp20, label %if.then, label %if.else, !dbg !2935

if.then:                                          ; preds = %for.body13
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !2936
  br label %if.end, !dbg !2936

if.else:                                          ; preds = %for.body13
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0)) #6, !dbg !2937
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = trunc i64 %indvars.iv to i32, !dbg !2938
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %14, i32 %4) #6, !dbg !2938
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %12, i32 %11) #6, !dbg !2939
  %latency = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %e.0, i64 0, i32 4, !dbg !2940
  %15 = load i32, i32* %latency, align 8, !dbg !2940
  %16 = load i32, i32* %distance, align 4, !dbg !2941
  %call26 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 %15, i32 %16) #6, !dbg !2942
  %next_out = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %e.0, i64 0, i32 7, !dbg !2943
  br label %for.cond12, !dbg !2944, !llvm.loop !2945

for.inc27:                                        ; preds = %for.cond12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2947
  call void @llvm.dbg.value(metadata i32 undef, metadata !2898, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2909
  br label %for.cond, !dbg !2948, !llvm.loop !2949

for.end28:                                        ; preds = %for.cond
  %call29 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0)) #6, !dbg !2951
  ret void, !dbg !2952
}

; Function Attrs: nounwind uwtable
define dso_local void @print_sccs(%struct._IO_FILE* %file, %struct.ddg_all_sccs* %sccs, %struct.ddg* %g) local_unnamed_addr #5 !dbg !2953 {
entry:
  %u = alloca i32, align 4
  %sbi = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2957, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata %struct.ddg_all_sccs* %sccs, metadata !2958, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata %struct.ddg* %g, metadata !2959, metadata !DIExpression()), !dbg !2973
  %0 = bitcast i32* %u to i8*, !dbg !2974
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !2974
  call void @llvm.dbg.value(metadata i32 0, metadata !2960, metadata !DIExpression()), !dbg !2973
  store i32 0, i32* %u, align 4, !dbg !2975
  %1 = bitcast %struct.sbitmap_iterator* %sbi to i8*, !dbg !2976
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !2976
  %tobool = icmp eq %struct._IO_FILE* %file, null, !dbg !2977
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2979

if.end:                                           ; preds = %entry
  %num_sccs = getelementptr inbounds %struct.ddg_all_sccs, %struct.ddg_all_sccs* %sccs, i64 0, i32 1, !dbg !2980
  %2 = load i32, i32* %num_sccs, align 8, !dbg !2980
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %file, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i32 %2) #6, !dbg !2981
  call void @llvm.dbg.value(metadata i32 0, metadata !2972, metadata !DIExpression()), !dbg !2973
  %sccs3 = getelementptr inbounds %struct.ddg_all_sccs, %struct.ddg_all_sccs* %sccs, i64 0, i32 0, !dbg !2982
  %nodes9 = getelementptr inbounds %struct.ddg, %struct.ddg* %g, i64 0, i32 5, !dbg !2987
  br label %for.cond, !dbg !2990

for.cond:                                         ; preds = %for.inc13, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc13 ], [ 0, %if.end ], !dbg !2991
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2972, metadata !DIExpression()), !dbg !2973
  %3 = load i32, i32* %num_sccs, align 8, !dbg !2992
  %4 = sext i32 %3 to i64, !dbg !2993
  %cmp = icmp slt i64 %indvars.iv, %4, !dbg !2993
  br i1 %cmp, label %for.body, label %for.end14, !dbg !2994

for.body:                                         ; preds = %for.cond
  %5 = trunc i64 %indvars.iv to i32, !dbg !2995
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %file, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 %5) #6, !dbg !2995
  %6 = load %struct.ddg_scc**, %struct.ddg_scc*** %sccs3, align 8, !dbg !2996
  %arrayidx = getelementptr inbounds %struct.ddg_scc*, %struct.ddg_scc** %6, i64 %indvars.iv, !dbg !2996
  %7 = load %struct.ddg_scc*, %struct.ddg_scc** %arrayidx, align 8, !dbg !2996
  %nodes = getelementptr inbounds %struct.ddg_scc, %struct.ddg_scc* %7, i64 0, i32 0, !dbg !2996
  %8 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes, align 8, !dbg !2996
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !2961, metadata !DIExpression(DW_OP_deref)), !dbg !2973
  call fastcc void @sbitmap_iter_init(%struct.sbitmap_iterator* nonnull %sbi, %struct.simple_bitmap_def* %8, i32 0) #7, !dbg !2996
  br label %for.cond4, !dbg !2996

for.cond4:                                        ; preds = %for.body7, %for.body
  call void @llvm.dbg.value(metadata i32* %u, metadata !2960, metadata !DIExpression(DW_OP_deref)), !dbg !2973
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !2961, metadata !DIExpression(DW_OP_deref)), !dbg !2973
  %call5 = call fastcc zeroext i8 @sbitmap_iter_cond(%struct.sbitmap_iterator* nonnull %sbi, i32* nonnull %u) #7, !dbg !2997
  %tobool6 = icmp eq i8 %call5, 0, !dbg !2996
  br i1 %tobool6, label %for.inc13, label %for.body7, !dbg !2996

for.body7:                                        ; preds = %for.cond4
  %9 = load i32, i32* %u, align 4, !dbg !2998
  call void @llvm.dbg.value(metadata i32 %9, metadata !2960, metadata !DIExpression()), !dbg !2973
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %file, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32 %9) #6, !dbg !2999
  %10 = load %struct.ddg_node*, %struct.ddg_node** %nodes9, align 8, !dbg !3000
  %11 = load i32, i32* %u, align 4, !dbg !3001
  call void @llvm.dbg.value(metadata i32 %11, metadata !2960, metadata !DIExpression()), !dbg !2973
  %idxprom10 = zext i32 %11 to i64, !dbg !3002
  %insn = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %10, i64 %idxprom10, i32 1, !dbg !3003
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !3003
  %call12 = call i32 @print_rtl_single(%struct._IO_FILE* nonnull %file, %struct.rtx_def* %12) #6, !dbg !3004
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !2961, metadata !DIExpression(DW_OP_deref)), !dbg !2973
  call fastcc void @sbitmap_iter_next(%struct.sbitmap_iterator* nonnull %sbi) #7, !dbg !2997
  br label %for.cond4, !dbg !2997, !llvm.loop !3005

for.inc13:                                        ; preds = %for.cond4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3007
  call void @llvm.dbg.value(metadata i32 undef, metadata !2972, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2973
  br label %for.cond, !dbg !3008, !llvm.loop !3009

for.end14:                                        ; preds = %for.cond
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3011
  br label %cleanup, !dbg !3012

cleanup:                                          ; preds = %entry, %for.end14
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !3012
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3012
  ret void, !dbg !3012
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sbitmap_iter_init(%struct.sbitmap_iterator* %i, %struct.simple_bitmap_def* %bmp, i32 %min) unnamed_addr #0 !dbg !3013 {
entry:
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %i, metadata !3021, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %bmp, metadata !3022, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i32 0, metadata !3023, metadata !DIExpression()), !dbg !3024
  %word_num = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 2, !dbg !3025
  store i32 0, i32* %word_num, align 4, !dbg !3026
  %bit_num = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 3, !dbg !3027
  store i32 0, i32* %bit_num, align 8, !dbg !3028
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmp, i64 0, i32 2, !dbg !3029
  %0 = load i32, i32* %size, align 4, !dbg !3029
  %size1 = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 1, !dbg !3030
  store i32 %0, i32* %size1, align 8, !dbg !3031
  %arraydecay = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmp, i64 0, i32 3, i64 0, !dbg !3032
  %ptr = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 0, !dbg !3033
  store i64* %arraydecay, i64** %ptr, align 8, !dbg !3034
  %cmp = icmp eq i32 %0, 0, !dbg !3035
  br i1 %cmp, label %if.then, label %if.else, !dbg !3037

if.then:                                          ; preds = %entry
  %word = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 4, !dbg !3038
  store i64 0, i64* %word, align 8, !dbg !3039
  br label %if.end, !dbg !3040

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %arraydecay, align 8, !dbg !3041
  %word7 = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 4, !dbg !3042
  store i64 %1, i64* %word7, align 8, !dbg !3043
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3044
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @sbitmap_iter_cond(%struct.sbitmap_iterator* %i, i32* %n) unnamed_addr #0 !dbg !3045 {
entry:
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %i, metadata !3050, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i32* %n, metadata !3051, metadata !DIExpression()), !dbg !3052
  %word = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 4, !dbg !3053
  %word_num = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 2, !dbg !3056
  %size = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 1, !dbg !3058
  %bit_num = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 3, !dbg !3056
  %ptr = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 0, !dbg !3053
  %.pre = load i64, i64* %word, align 8, !dbg !3060
  br label %for.cond, !dbg !3061

for.cond:                                         ; preds = %if.end, %entry
  %0 = phi i64 [ %4, %if.end ], [ %.pre, %entry ], !dbg !3060
  %cmp = icmp eq i64 %0, 0, !dbg !3062
  br i1 %cmp, label %for.body, label %for.cond6.preheader, !dbg !3063

for.cond6.preheader:                              ; preds = %for.cond
  %.lcssa4 = phi i64 [ %0, %for.cond ], !dbg !3060
  %.pre1 = load i32, i32* %bit_num, align 8, !dbg !3052
  br label %for.cond6, !dbg !3064

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %word_num, align 4, !dbg !3066
  %inc = add i32 %1, 1, !dbg !3066
  store i32 %inc, i32* %word_num, align 4, !dbg !3066
  %2 = load i32, i32* %size, align 8, !dbg !3067
  %cmp2 = icmp ult i32 %inc, %2, !dbg !3068
  br i1 %cmp2, label %if.end, label %return.loopexit, !dbg !3069

if.end:                                           ; preds = %for.body
  %mul = shl i32 %inc, 6, !dbg !3070
  store i32 %mul, i32* %bit_num, align 8, !dbg !3071
  %3 = load i64*, i64** %ptr, align 8, !dbg !3072
  %idxprom = zext i32 %inc to i64, !dbg !3073
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %idxprom, !dbg !3073
  %4 = load i64, i64* %arrayidx, align 8, !dbg !3073
  store i64 %4, i64* %word, align 8, !dbg !3074
  br label %for.cond, !dbg !3075, !llvm.loop !3076

for.cond6:                                        ; preds = %for.cond6.preheader, %for.body9
  %5 = phi i32 [ %.pre1, %for.cond6.preheader ], [ %inc11, %for.body9 ], !dbg !3052
  %6 = phi i64 [ %.lcssa4, %for.cond6.preheader ], [ %shr, %for.body9 ], !dbg !3078
  %and = and i64 %6, 1, !dbg !3080
  %cmp8 = icmp eq i64 %and, 0, !dbg !3081
  br i1 %cmp8, label %for.body9, label %for.end14, !dbg !3064

for.body9:                                        ; preds = %for.cond6
  %inc11 = add i32 %5, 1, !dbg !3082
  store i32 %inc11, i32* %bit_num, align 8, !dbg !3082
  %shr = lshr i64 %6, 1, !dbg !3083
  store i64 %shr, i64* %word, align 8, !dbg !3083
  br label %for.cond6, !dbg !3084, !llvm.loop !3085

for.end14:                                        ; preds = %for.cond6
  %.lcssa = phi i32 [ %5, %for.cond6 ], !dbg !3052
  store i32 %.lcssa, i32* %n, align 4, !dbg !3087
  br label %return, !dbg !3088

return.loopexit:                                  ; preds = %for.body
  br label %return, !dbg !3089

return:                                           ; preds = %return.loopexit, %for.end14
  %retval.0 = phi i8 [ 1, %for.end14 ], [ 0, %return.loopexit ], !dbg !3052
  ret i8 %retval.0, !dbg !3089
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sbitmap_iter_next(%struct.sbitmap_iterator* %i) unnamed_addr #0 !dbg !3090 {
entry:
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %i, metadata !3094, metadata !DIExpression()), !dbg !3095
  %word = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 4, !dbg !3096
  %0 = load i64, i64* %word, align 8, !dbg !3097
  %shr = lshr i64 %0, 1, !dbg !3097
  store i64 %shr, i64* %word, align 8, !dbg !3097
  %bit_num = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 3, !dbg !3098
  %1 = load i32, i32* %bit_num, align 8, !dbg !3099
  %inc = add i32 %1, 1, !dbg !3099
  store i32 %inc, i32* %bit_num, align 8, !dbg !3099
  ret void, !dbg !3100
}

; Function Attrs: nounwind uwtable
define dso_local %struct.ddg_node* @get_node_of_insn(%struct.ddg* %g, %struct.rtx_def* %insn) local_unnamed_addr #5 !dbg !3101 {
entry:
  call void @llvm.dbg.value(metadata %struct.ddg* %g, metadata !3105, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3106, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i32 0, metadata !3107, metadata !DIExpression()), !dbg !3108
  %num_nodes = getelementptr inbounds %struct.ddg, %struct.ddg* %g, i64 0, i32 1, !dbg !3109
  %0 = load i32, i32* %num_nodes, align 8, !dbg !3109
  %nodes = getelementptr inbounds %struct.ddg, %struct.ddg* %g, i64 0, i32 5, !dbg !3112
  %1 = sext i32 %0 to i64, !dbg !3114
  br label %for.cond, !dbg !3114

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ], !dbg !3115
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3107, metadata !DIExpression()), !dbg !3108
  %cmp = icmp slt i64 %indvars.iv, %1, !dbg !3116
  br i1 %cmp, label %for.body, label %cleanup.loopexit, !dbg !3117

for.body:                                         ; preds = %for.cond
  %2 = load %struct.ddg_node*, %struct.ddg_node** %nodes, align 8, !dbg !3118
  %insn1 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %2, i64 %indvars.iv, i32 1, !dbg !3119
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn1, align 8, !dbg !3119
  %cmp2 = icmp eq %struct.rtx_def* %3, %insn, !dbg !3120
  br i1 %cmp2, label %if.then, label %for.inc, !dbg !3121

if.then:                                          ; preds = %for.body
  %.lcssa = phi %struct.ddg_node* [ %2, %for.body ], !dbg !3118
  %indvars.iv.lcssa2 = phi i64 [ %indvars.iv, %for.body ], !dbg !3115
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa2, metadata !3107, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64 %indvars.iv.lcssa2, metadata !3107, metadata !DIExpression()), !dbg !3108
  %arrayidx5 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %.lcssa, i64 %indvars.iv.lcssa2, !dbg !3122
  br label %cleanup, !dbg !3123

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3124
  call void @llvm.dbg.value(metadata i32 undef, metadata !3107, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3108
  br label %for.cond, !dbg !3125, !llvm.loop !3126

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup, !dbg !3128

cleanup:                                          ; preds = %cleanup.loopexit, %if.then
  %retval.0 = phi %struct.ddg_node* [ %arrayidx5, %if.then ], [ null, %cleanup.loopexit ], !dbg !3108
  ret %struct.ddg_node* %retval.0, !dbg !3128
}

; Function Attrs: nounwind uwtable
define dso_local void @find_successors(%struct.simple_bitmap_def* %succ, %struct.ddg* %g, %struct.simple_bitmap_def* %ops) local_unnamed_addr #5 !dbg !3129 {
entry:
  %i = alloca i32, align 4
  %sbi = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %succ, metadata !3133, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata %struct.ddg* %g, metadata !3134, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %ops, metadata !3135, metadata !DIExpression()), !dbg !3143
  %0 = bitcast i32* %i to i8*, !dbg !3144
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3144
  call void @llvm.dbg.value(metadata i32 0, metadata !3136, metadata !DIExpression()), !dbg !3143
  store i32 0, i32* %i, align 4, !dbg !3145
  %1 = bitcast %struct.sbitmap_iterator* %sbi to i8*, !dbg !3146
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !3146
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !3137, metadata !DIExpression(DW_OP_deref)), !dbg !3143
  call fastcc void @sbitmap_iter_init(%struct.sbitmap_iterator* nonnull %sbi, %struct.simple_bitmap_def* %ops, i32 0) #7, !dbg !3147
  %nodes = getelementptr inbounds %struct.ddg, %struct.ddg* %g, i64 0, i32 5, !dbg !3148
  br label %for.cond, !dbg !3147

for.cond:                                         ; preds = %for.body, %entry
  call void @llvm.dbg.value(metadata i32* %i, metadata !3136, metadata !DIExpression(DW_OP_deref)), !dbg !3143
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !3137, metadata !DIExpression(DW_OP_deref)), !dbg !3143
  %call = call fastcc zeroext i8 @sbitmap_iter_cond(%struct.sbitmap_iterator* nonnull %sbi, i32* nonnull %i) #7, !dbg !3149
  %tobool = icmp eq i8 %call, 0, !dbg !3147
  br i1 %tobool, label %for.end, label %for.body, !dbg !3147

for.body:                                         ; preds = %for.cond
  %2 = load %struct.ddg_node*, %struct.ddg_node** %nodes, align 8, !dbg !3150
  %3 = load i32, i32* %i, align 4, !dbg !3150
  call void @llvm.dbg.value(metadata i32 %3, metadata !3136, metadata !DIExpression()), !dbg !3143
  %idxprom = zext i32 %3 to i64, !dbg !3150
  %successors = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %2, i64 %idxprom, i32 5, !dbg !3150
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %successors, align 8, !dbg !3150
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %4, metadata !3138, metadata !DIExpression()), !dbg !3148
  call void @sbitmap_a_or_b(%struct.simple_bitmap_def* %succ, %struct.simple_bitmap_def* %succ, %struct.simple_bitmap_def* %4) #6, !dbg !3151
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !3137, metadata !DIExpression(DW_OP_deref)), !dbg !3143
  call fastcc void @sbitmap_iter_next(%struct.sbitmap_iterator* nonnull %sbi) #7, !dbg !3149
  br label %for.cond, !dbg !3149, !llvm.loop !3152

for.end:                                          ; preds = %for.cond
  call void @sbitmap_difference(%struct.simple_bitmap_def* %succ, %struct.simple_bitmap_def* %succ, %struct.simple_bitmap_def* %ops) #6, !dbg !3154
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !3155
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3155
  ret void, !dbg !3155
}

declare dso_local void @sbitmap_a_or_b(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) local_unnamed_addr #2

declare dso_local void @sbitmap_difference(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @find_predecessors(%struct.simple_bitmap_def* %preds, %struct.ddg* %g, %struct.simple_bitmap_def* %ops) local_unnamed_addr #5 !dbg !3156 {
entry:
  %i = alloca i32, align 4
  %sbi = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %preds, metadata !3158, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata %struct.ddg* %g, metadata !3159, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %ops, metadata !3160, metadata !DIExpression()), !dbg !3167
  %0 = bitcast i32* %i to i8*, !dbg !3168
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3168
  call void @llvm.dbg.value(metadata i32 0, metadata !3161, metadata !DIExpression()), !dbg !3167
  store i32 0, i32* %i, align 4, !dbg !3169
  %1 = bitcast %struct.sbitmap_iterator* %sbi to i8*, !dbg !3170
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !3170
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !3162, metadata !DIExpression(DW_OP_deref)), !dbg !3167
  call fastcc void @sbitmap_iter_init(%struct.sbitmap_iterator* nonnull %sbi, %struct.simple_bitmap_def* %ops, i32 0) #7, !dbg !3171
  %nodes = getelementptr inbounds %struct.ddg, %struct.ddg* %g, i64 0, i32 5, !dbg !3172
  br label %for.cond, !dbg !3171

for.cond:                                         ; preds = %for.body, %entry
  call void @llvm.dbg.value(metadata i32* %i, metadata !3161, metadata !DIExpression(DW_OP_deref)), !dbg !3167
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !3162, metadata !DIExpression(DW_OP_deref)), !dbg !3167
  %call = call fastcc zeroext i8 @sbitmap_iter_cond(%struct.sbitmap_iterator* nonnull %sbi, i32* nonnull %i) #7, !dbg !3173
  %tobool = icmp eq i8 %call, 0, !dbg !3171
  br i1 %tobool, label %for.end, label %for.body, !dbg !3171

for.body:                                         ; preds = %for.cond
  %2 = load %struct.ddg_node*, %struct.ddg_node** %nodes, align 8, !dbg !3174
  %3 = load i32, i32* %i, align 4, !dbg !3174
  call void @llvm.dbg.value(metadata i32 %3, metadata !3161, metadata !DIExpression()), !dbg !3167
  %idxprom = zext i32 %3 to i64, !dbg !3174
  %predecessors = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %2, i64 %idxprom, i32 6, !dbg !3174
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %predecessors, align 8, !dbg !3174
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %4, metadata !3163, metadata !DIExpression()), !dbg !3172
  call void @sbitmap_a_or_b(%struct.simple_bitmap_def* %preds, %struct.simple_bitmap_def* %preds, %struct.simple_bitmap_def* %4) #6, !dbg !3175
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !3162, metadata !DIExpression(DW_OP_deref)), !dbg !3167
  call fastcc void @sbitmap_iter_next(%struct.sbitmap_iterator* nonnull %sbi) #7, !dbg !3173
  br label %for.cond, !dbg !3173, !llvm.loop !3176

for.end:                                          ; preds = %for.cond
  call void @sbitmap_difference(%struct.simple_bitmap_def* %preds, %struct.simple_bitmap_def* %preds, %struct.simple_bitmap_def* %ops) #6, !dbg !3178
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !3179
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3179
  ret void, !dbg !3179
}

; Function Attrs: nounwind uwtable
define dso_local %struct.ddg_all_sccs* @create_ddg_all_sccs(%struct.ddg* %g) local_unnamed_addr #5 !dbg !3180 {
entry:
  call void @llvm.dbg.value(metadata %struct.ddg* %g, metadata !3184, metadata !DIExpression()), !dbg !3198
  %num_nodes1 = getelementptr inbounds %struct.ddg, %struct.ddg* %g, i64 0, i32 1, !dbg !3199
  %0 = load i32, i32* %num_nodes1, align 8, !dbg !3199
  call void @llvm.dbg.value(metadata i32 %0, metadata !3186, metadata !DIExpression()), !dbg !3198
  %call = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %0) #6, !dbg !3200
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call, metadata !3187, metadata !DIExpression()), !dbg !3198
  %call2 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %0) #6, !dbg !3201
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call2, metadata !3188, metadata !DIExpression()), !dbg !3198
  %call3 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %0) #6, !dbg !3202
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call3, metadata !3189, metadata !DIExpression()), !dbg !3198
  %call4 = tail call i8* @xmalloc(i64 24) #6, !dbg !3203
  %1 = bitcast i8* %call4 to %struct.ddg_all_sccs*, !dbg !3204
  call void @llvm.dbg.value(metadata %struct.ddg_all_sccs* %1, metadata !3190, metadata !DIExpression()), !dbg !3198
  %ddg = getelementptr inbounds i8, i8* %call4, i64 16, !dbg !3205
  %2 = bitcast i8* %ddg to %struct.ddg**, !dbg !3205
  store %struct.ddg* %g, %struct.ddg** %2, align 8, !dbg !3206
  %sccs5 = bitcast i8* %call4 to %struct.ddg_scc***, !dbg !3207
  store %struct.ddg_scc** null, %struct.ddg_scc*** %sccs5, align 8, !dbg !3208
  %num_sccs = getelementptr inbounds i8, i8* %call4, i64 8, !dbg !3209
  %3 = bitcast i8* %num_sccs to i32*, !dbg !3209
  store i32 0, i32* %3, align 8, !dbg !3210
  call void @llvm.dbg.value(metadata i32 0, metadata !3185, metadata !DIExpression()), !dbg !3198
  %num_backarcs = getelementptr inbounds %struct.ddg, %struct.ddg* %g, i64 0, i32 8, !dbg !3211
  %backarcs = getelementptr inbounds %struct.ddg, %struct.ddg* %g, i64 0, i32 9, !dbg !3212
  br label %for.cond, !dbg !3213

for.cond:                                         ; preds = %cleanup, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %cleanup ], [ 0, %entry ], !dbg !3214
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3185, metadata !DIExpression()), !dbg !3198
  %4 = load i32, i32* %num_backarcs, align 4, !dbg !3215
  %5 = sext i32 %4 to i64, !dbg !3216
  %cmp = icmp slt i64 %indvars.iv, %5, !dbg !3216
  br i1 %cmp, label %for.body, label %for.end, !dbg !3217

for.body:                                         ; preds = %for.cond
  %6 = load %struct.ddg_edge**, %struct.ddg_edge*** %backarcs, align 8, !dbg !3218
  %arrayidx = getelementptr inbounds %struct.ddg_edge*, %struct.ddg_edge** %6, i64 %indvars.iv, !dbg !3219
  %7 = load %struct.ddg_edge*, %struct.ddg_edge** %arrayidx, align 8, !dbg !3219
  call void @llvm.dbg.value(metadata %struct.ddg_edge* %7, metadata !3195, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata %struct.ddg_node* undef, metadata !3196, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata %struct.ddg_node* undef, metadata !3197, metadata !DIExpression()), !dbg !3212
  %aux = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %7, i64 0, i32 8, !dbg !3220
  %count = bitcast %union.anon.0* %aux to i32*, !dbg !3222
  %8 = load i32, i32* %count, align 8, !dbg !3222
  %cmp8 = icmp eq i32 %8, 1, !dbg !3223
  br i1 %cmp8, label %cleanup, label %if.end, !dbg !3224

if.end:                                           ; preds = %for.body
  %dest7 = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %7, i64 0, i32 1, !dbg !3225
  %9 = load %struct.ddg_node*, %struct.ddg_node** %dest7, align 8, !dbg !3225
  call void @llvm.dbg.value(metadata %struct.ddg_node* %9, metadata !3197, metadata !DIExpression()), !dbg !3212
  %src6 = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %7, i64 0, i32 0, !dbg !3226
  %10 = load %struct.ddg_node*, %struct.ddg_node** %src6, align 8, !dbg !3226
  call void @llvm.dbg.value(metadata %struct.ddg_node* %10, metadata !3196, metadata !DIExpression()), !dbg !3212
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call3) #6, !dbg !3227
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call) #6, !dbg !3228
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call2) #6, !dbg !3229
  %cuid = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %9, i64 0, i32 0, !dbg !3230
  %11 = load i32, i32* %cuid, align 8, !dbg !3230
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call, i32 %11) #7, !dbg !3231
  %cuid9 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %10, i64 0, i32 0, !dbg !3232
  %12 = load i32, i32* %cuid9, align 8, !dbg !3232
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call2, i32 %12) #7, !dbg !3233
  %call10 = tail call i32 @find_nodes_on_paths(%struct.simple_bitmap_def* %call3, %struct.ddg* %g, %struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %call2) #7, !dbg !3234
  %tobool = icmp eq i32 %call10, 0, !dbg !3234
  br i1 %tobool, label %cleanup, label %if.then11, !dbg !3236

if.then11:                                        ; preds = %if.end
  %call12 = tail call fastcc %struct.ddg_scc* @create_scc(%struct.ddg* %g, %struct.simple_bitmap_def* %call3) #7, !dbg !3237
  call void @llvm.dbg.value(metadata %struct.ddg_scc* %call12, metadata !3191, metadata !DIExpression()), !dbg !3212
  tail call fastcc void @add_scc_to_ddg(%struct.ddg_all_sccs* %1, %struct.ddg_scc* %call12) #7, !dbg !3239
  br label %cleanup, !dbg !3240

cleanup:                                          ; preds = %if.end, %if.then11, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3241
  call void @llvm.dbg.value(metadata i32 undef, metadata !3185, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3198
  br label %for.cond, !dbg !3242, !llvm.loop !3243

for.end:                                          ; preds = %for.cond
  tail call fastcc void @order_sccs(%struct.ddg_all_sccs* %1) #7, !dbg !3245
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call, i64 0, i32 0, !dbg !3246
  %13 = load i8*, i8** %popcount, align 8, !dbg !3246
  tail call void @free(i8* %13) #6, !dbg !3246
  %14 = bitcast %struct.simple_bitmap_def* %call to i8*, !dbg !3246
  tail call void @free(i8* %14) #6, !dbg !3246
  %popcount17 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call2, i64 0, i32 0, !dbg !3247
  %15 = load i8*, i8** %popcount17, align 8, !dbg !3247
  tail call void @free(i8* %15) #6, !dbg !3247
  %16 = bitcast %struct.simple_bitmap_def* %call2 to i8*, !dbg !3247
  tail call void @free(i8* %16) #6, !dbg !3247
  %popcount18 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call3, i64 0, i32 0, !dbg !3248
  %17 = load i8*, i8** %popcount18, align 8, !dbg !3248
  tail call void @free(i8* %17) #6, !dbg !3248
  %18 = bitcast %struct.simple_bitmap_def* %call3 to i8*, !dbg !3248
  tail call void @free(i8* %18) #6, !dbg !3248
  ret %struct.ddg_all_sccs* %1, !dbg !3249
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @SET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !3250 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !3254, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !3255, metadata !DIExpression()), !dbg !3259
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !3260
  %0 = load i8*, i8** %popcount, align 8, !dbg !3260
  %tobool = icmp eq i8* %0, null, !dbg !3261
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !3262

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !3263
  %.pre2 = zext i32 %.pre to i64, !dbg !3264
  %.pre3 = shl i64 1, %.pre2, !dbg !3264
  %.pre4 = lshr i32 %bitno, 6, !dbg !3265
  %.pre5 = zext i32 %.pre4 to i64, !dbg !3266
  br label %if.end7, !dbg !3262

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !3267
  %idxprom = zext i32 %div to i64, !dbg !3267
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !3267
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3267
  %rem = and i32 %bitno, 63, !dbg !3267
  %sh_prom = zext i32 %rem to i64, !dbg !3267
  %2 = shl i64 1, %sh_prom, !dbg !3268
  %3 = and i64 %1, %2, !dbg !3268
  %tobool1 = icmp eq i64 %3, 0, !dbg !3268
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !3270

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !3271
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !3272
  %inc = add i8 %4, 1, !dbg !3272
  store i8 %inc, i8* %arrayidx6, align 1, !dbg !3272
  br label %if.end7, !dbg !3271

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !3266
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !3264
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !3266
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !3273
  %or = or i64 %5, %shl.pre-phi, !dbg !3273
  store i64 %or, i64* %arrayidx13, align 8, !dbg !3273
  ret void, !dbg !3274
}

; Function Attrs: nounwind uwtable
define dso_local i32 @find_nodes_on_paths(%struct.simple_bitmap_def* %result, %struct.ddg* %g, %struct.simple_bitmap_def* %from, %struct.simple_bitmap_def* %to) local_unnamed_addr #5 !dbg !3275 {
entry:
  %u = alloca i32, align 4
  %sbi = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %result, metadata !3279, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata %struct.ddg* %g, metadata !3280, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %from, metadata !3281, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %to, metadata !3282, metadata !DIExpression()), !dbg !3314
  %0 = bitcast i32* %u to i8*, !dbg !3315
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3315
  call void @llvm.dbg.value(metadata i32 0, metadata !3285, metadata !DIExpression()), !dbg !3314
  store i32 0, i32* %u, align 4, !dbg !3316
  %num_nodes1 = getelementptr inbounds %struct.ddg, %struct.ddg* %g, i64 0, i32 1, !dbg !3317
  %1 = load i32, i32* %num_nodes1, align 8, !dbg !3317
  call void @llvm.dbg.value(metadata i32 %1, metadata !3286, metadata !DIExpression()), !dbg !3314
  %2 = bitcast %struct.sbitmap_iterator* %sbi to i8*, !dbg !3318
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #8, !dbg !3318
  %call = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %1) #6, !dbg !3319
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call, metadata !3288, metadata !DIExpression()), !dbg !3314
  %call2 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %1) #6, !dbg !3320
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call2, metadata !3289, metadata !DIExpression()), !dbg !3314
  %call3 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %1) #6, !dbg !3321
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call3, metadata !3290, metadata !DIExpression()), !dbg !3314
  %call4 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %1) #6, !dbg !3322
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call4, metadata !3291, metadata !DIExpression()), !dbg !3314
  tail call void @sbitmap_copy(%struct.simple_bitmap_def* %call2, %struct.simple_bitmap_def* %from) #6, !dbg !3323
  tail call void @sbitmap_copy(%struct.simple_bitmap_def* %call4, %struct.simple_bitmap_def* %from) #6, !dbg !3324
  call void @llvm.dbg.value(metadata i32 1, metadata !3284, metadata !DIExpression()), !dbg !3314
  %nodes = getelementptr inbounds %struct.ddg, %struct.ddg* %g, i64 0, i32 5, !dbg !3325
  br label %while.cond, !dbg !3326

while.cond.loopexit:                              ; preds = %for.cond
  %change.1.lcssa = phi i32 [ %change.1, %for.cond ], !dbg !3327
  call void @llvm.dbg.value(metadata i32 %change.1.lcssa, metadata !3284, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i32 %change.1.lcssa, metadata !3284, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i32 %change.1.lcssa, metadata !3284, metadata !DIExpression()), !dbg !3314
  br label %while.cond, !dbg !3326

while.cond:                                       ; preds = %while.cond.loopexit, %entry
  %change.0 = phi i32 [ 1, %entry ], [ %change.1.lcssa, %while.cond.loopexit ], !dbg !3314
  call void @llvm.dbg.value(metadata i32 %change.0, metadata !3284, metadata !DIExpression()), !dbg !3314
  %tobool = icmp eq i32 %change.0, 0, !dbg !3326
  br i1 %tobool, label %while.end, label %while.body, !dbg !3326

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.value(metadata i32 0, metadata !3284, metadata !DIExpression()), !dbg !3314
  call void @sbitmap_copy(%struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %call4) #6, !dbg !3328
  call void @sbitmap_zero(%struct.simple_bitmap_def* %call4) #6, !dbg !3329
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !3287, metadata !DIExpression(DW_OP_deref)), !dbg !3314
  call fastcc void @sbitmap_iter_init(%struct.sbitmap_iterator* nonnull %sbi, %struct.simple_bitmap_def* %call, i32 0) #7, !dbg !3330
  br label %for.cond, !dbg !3330

for.cond:                                         ; preds = %for.inc12, %while.body
  %change.1 = phi i32 [ 0, %while.body ], [ %change.2.lcssa, %for.inc12 ], !dbg !3327
  call void @llvm.dbg.value(metadata i32 %change.1, metadata !3284, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i32* %u, metadata !3285, metadata !DIExpression(DW_OP_deref)), !dbg !3314
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !3287, metadata !DIExpression(DW_OP_deref)), !dbg !3314
  %call5 = call fastcc zeroext i8 @sbitmap_iter_cond(%struct.sbitmap_iterator* nonnull %sbi, i32* nonnull %u) #7, !dbg !3331
  %tobool6 = icmp eq i8 %call5, 0, !dbg !3330
  br i1 %tobool6, label %while.cond.loopexit, label %for.body, !dbg !3330, !llvm.loop !3332

for.body:                                         ; preds = %for.cond
  %3 = load %struct.ddg_node*, %struct.ddg_node** %nodes, align 8, !dbg !3334
  %4 = load i32, i32* %u, align 4, !dbg !3335
  call void @llvm.dbg.value(metadata i32 %4, metadata !3285, metadata !DIExpression()), !dbg !3314
  %idxprom = zext i32 %4 to i64, !dbg !3336
  call void @llvm.dbg.value(metadata %struct.ddg_node* undef, metadata !3297, metadata !DIExpression()), !dbg !3325
  %out = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %3, i64 %idxprom, i32 4, !dbg !3337
  br label %for.cond7, !dbg !3338

for.cond7:                                        ; preds = %for.inc, %for.body
  %change.2 = phi i32 [ %change.1, %for.body ], [ %change.3, %for.inc ], !dbg !3327
  %e.0.in = phi %struct.ddg_edge** [ %out, %for.body ], [ %next_out, %for.inc ]
  %e.0 = load %struct.ddg_edge*, %struct.ddg_edge** %e.0.in, align 8, !dbg !3339
  call void @llvm.dbg.value(metadata %struct.ddg_edge* %e.0, metadata !3292, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i32 %change.2, metadata !3284, metadata !DIExpression()), !dbg !3314
  %cmp = icmp eq %struct.ddg_edge* %e.0, null, !dbg !3340
  br i1 %cmp, label %for.inc12, label %for.body8, !dbg !3341

for.body8:                                        ; preds = %for.cond7
  %dest = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %e.0, i64 0, i32 1, !dbg !3342
  %5 = load %struct.ddg_node*, %struct.ddg_node** %dest, align 8, !dbg !3342
  call void @llvm.dbg.value(metadata %struct.ddg_node* %5, metadata !3298, metadata !DIExpression()), !dbg !3343
  %cuid = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %5, i64 0, i32 0, !dbg !3344
  %6 = load i32, i32* %cuid, align 8, !dbg !3344
  call void @llvm.dbg.value(metadata i32 %6, metadata !3302, metadata !DIExpression()), !dbg !3343
  %div = lshr i32 %6, 6, !dbg !3345
  %idxprom9 = zext i32 %div to i64, !dbg !3345
  %arrayidx10 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call2, i64 0, i32 3, i64 %idxprom9, !dbg !3345
  %7 = load i64, i64* %arrayidx10, align 8, !dbg !3345
  %rem = and i32 %6, 63, !dbg !3345
  %sh_prom = zext i32 %rem to i64, !dbg !3345
  %8 = shl i64 1, %sh_prom, !dbg !3345
  %9 = and i64 %7, %8, !dbg !3345
  %tobool11 = icmp eq i64 %9, 0, !dbg !3345
  br i1 %tobool11, label %if.then, label %for.inc, !dbg !3347

if.then:                                          ; preds = %for.body8
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call2, i32 %6) #7, !dbg !3348
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call4, i32 %6) #7, !dbg !3350
  call void @llvm.dbg.value(metadata i32 1, metadata !3284, metadata !DIExpression()), !dbg !3314
  br label %for.inc, !dbg !3351

for.inc:                                          ; preds = %for.body8, %if.then
  %change.3 = phi i32 [ %change.2, %for.body8 ], [ 1, %if.then ], !dbg !3352
  call void @llvm.dbg.value(metadata i32 %change.3, metadata !3284, metadata !DIExpression()), !dbg !3314
  %next_out = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %e.0, i64 0, i32 7, !dbg !3353
  br label %for.cond7, !dbg !3354, !llvm.loop !3355

for.inc12:                                        ; preds = %for.cond7
  %change.2.lcssa = phi i32 [ %change.2, %for.cond7 ], !dbg !3327
  call void @llvm.dbg.value(metadata i32 %change.2.lcssa, metadata !3284, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i32 %change.2.lcssa, metadata !3284, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i32 %change.2.lcssa, metadata !3284, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !3287, metadata !DIExpression(DW_OP_deref)), !dbg !3314
  call fastcc void @sbitmap_iter_next(%struct.sbitmap_iterator* nonnull %sbi) #7, !dbg !3331
  br label %for.cond, !dbg !3331, !llvm.loop !3357

while.end:                                        ; preds = %while.cond
  call void @sbitmap_copy(%struct.simple_bitmap_def* %call3, %struct.simple_bitmap_def* %to) #6, !dbg !3359
  call void @sbitmap_copy(%struct.simple_bitmap_def* %call4, %struct.simple_bitmap_def* %to) #6, !dbg !3360
  call void @llvm.dbg.value(metadata i32 1, metadata !3284, metadata !DIExpression()), !dbg !3314
  br label %while.cond14, !dbg !3361

while.cond14.loopexit:                            ; preds = %for.cond17
  %change.5.lcssa = phi i32 [ %change.5, %for.cond17 ], !dbg !3362
  call void @llvm.dbg.value(metadata i32 %change.5.lcssa, metadata !3284, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i32 %change.5.lcssa, metadata !3284, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i32 %change.5.lcssa, metadata !3284, metadata !DIExpression()), !dbg !3314
  br label %while.cond14, !dbg !3361

while.cond14:                                     ; preds = %while.cond14.loopexit, %while.end
  %change.4 = phi i32 [ 1, %while.end ], [ %change.5.lcssa, %while.cond14.loopexit ], !dbg !3314
  call void @llvm.dbg.value(metadata i32 %change.4, metadata !3284, metadata !DIExpression()), !dbg !3314
  %tobool15 = icmp eq i32 %change.4, 0, !dbg !3361
  br i1 %tobool15, label %while.end47, label %while.body16, !dbg !3361

while.body16:                                     ; preds = %while.cond14
  call void @llvm.dbg.value(metadata i32 0, metadata !3284, metadata !DIExpression()), !dbg !3314
  call void @sbitmap_copy(%struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %call4) #6, !dbg !3363
  call void @sbitmap_zero(%struct.simple_bitmap_def* %call4) #6, !dbg !3364
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !3287, metadata !DIExpression(DW_OP_deref)), !dbg !3314
  call fastcc void @sbitmap_iter_init(%struct.sbitmap_iterator* nonnull %sbi, %struct.simple_bitmap_def* %call, i32 0) #7, !dbg !3365
  br label %for.cond17, !dbg !3365

for.cond17:                                       ; preds = %for.inc45, %while.body16
  %change.5 = phi i32 [ 0, %while.body16 ], [ %change.6.lcssa, %for.inc45 ], !dbg !3362
  call void @llvm.dbg.value(metadata i32 %change.5, metadata !3284, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i32* %u, metadata !3285, metadata !DIExpression(DW_OP_deref)), !dbg !3314
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !3287, metadata !DIExpression(DW_OP_deref)), !dbg !3314
  %call18 = call fastcc zeroext i8 @sbitmap_iter_cond(%struct.sbitmap_iterator* nonnull %sbi, i32* nonnull %u) #7, !dbg !3366
  %tobool19 = icmp eq i8 %call18, 0, !dbg !3365
  br i1 %tobool19, label %while.cond14.loopexit, label %for.body20, !dbg !3365, !llvm.loop !3367

for.body20:                                       ; preds = %for.cond17
  %10 = load %struct.ddg_node*, %struct.ddg_node** %nodes, align 8, !dbg !3369
  %11 = load i32, i32* %u, align 4, !dbg !3370
  call void @llvm.dbg.value(metadata i32 %11, metadata !3285, metadata !DIExpression()), !dbg !3314
  %idxprom24 = zext i32 %11 to i64, !dbg !3371
  call void @llvm.dbg.value(metadata %struct.ddg_node* undef, metadata !3308, metadata !DIExpression()), !dbg !3372
  %in = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %10, i64 %idxprom24, i32 3, !dbg !3373
  br label %for.cond26, !dbg !3374

for.cond26:                                       ; preds = %for.inc43, %for.body20
  %change.6 = phi i32 [ %change.5, %for.body20 ], [ %change.7, %for.inc43 ], !dbg !3362
  %e21.0.in = phi %struct.ddg_edge** [ %in, %for.body20 ], [ %next_in, %for.inc43 ]
  %e21.0 = load %struct.ddg_edge*, %struct.ddg_edge** %e21.0.in, align 8, !dbg !3375
  call void @llvm.dbg.value(metadata %struct.ddg_edge* %e21.0, metadata !3303, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i32 %change.6, metadata !3284, metadata !DIExpression()), !dbg !3314
  %cmp27 = icmp eq %struct.ddg_edge* %e21.0, null, !dbg !3376
  br i1 %cmp27, label %for.inc45, label %for.body28, !dbg !3377

for.body28:                                       ; preds = %for.cond26
  %src = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %e21.0, i64 0, i32 0, !dbg !3378
  %12 = load %struct.ddg_node*, %struct.ddg_node** %src, align 8, !dbg !3378
  call void @llvm.dbg.value(metadata %struct.ddg_node* %12, metadata !3309, metadata !DIExpression()), !dbg !3379
  %cuid31 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %12, i64 0, i32 0, !dbg !3380
  %13 = load i32, i32* %cuid31, align 8, !dbg !3380
  call void @llvm.dbg.value(metadata i32 %13, metadata !3313, metadata !DIExpression()), !dbg !3379
  %div33 = lshr i32 %13, 6, !dbg !3381
  %idxprom34 = zext i32 %div33 to i64, !dbg !3381
  %arrayidx35 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call3, i64 0, i32 3, i64 %idxprom34, !dbg !3381
  %14 = load i64, i64* %arrayidx35, align 8, !dbg !3381
  %rem36 = and i32 %13, 63, !dbg !3381
  %sh_prom37 = zext i32 %rem36 to i64, !dbg !3381
  %15 = shl i64 1, %sh_prom37, !dbg !3381
  %16 = and i64 %14, %15, !dbg !3381
  %tobool40 = icmp eq i64 %16, 0, !dbg !3381
  br i1 %tobool40, label %if.then41, label %for.inc43, !dbg !3383

if.then41:                                        ; preds = %for.body28
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call3, i32 %13) #7, !dbg !3384
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call4, i32 %13) #7, !dbg !3386
  call void @llvm.dbg.value(metadata i32 1, metadata !3284, metadata !DIExpression()), !dbg !3314
  br label %for.inc43, !dbg !3387

for.inc43:                                        ; preds = %for.body28, %if.then41
  %change.7 = phi i32 [ %change.6, %for.body28 ], [ 1, %if.then41 ], !dbg !3388
  call void @llvm.dbg.value(metadata i32 %change.7, metadata !3284, metadata !DIExpression()), !dbg !3314
  %next_in = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %e21.0, i64 0, i32 6, !dbg !3389
  br label %for.cond26, !dbg !3390, !llvm.loop !3391

for.inc45:                                        ; preds = %for.cond26
  %change.6.lcssa = phi i32 [ %change.6, %for.cond26 ], !dbg !3362
  call void @llvm.dbg.value(metadata i32 %change.6.lcssa, metadata !3284, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i32 %change.6.lcssa, metadata !3284, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i32 %change.6.lcssa, metadata !3284, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !3287, metadata !DIExpression(DW_OP_deref)), !dbg !3314
  call fastcc void @sbitmap_iter_next(%struct.sbitmap_iterator* nonnull %sbi) #7, !dbg !3366
  br label %for.cond17, !dbg !3366, !llvm.loop !3393

while.end47:                                      ; preds = %while.cond14
  %call48 = call zeroext i8 @sbitmap_a_and_b_cg(%struct.simple_bitmap_def* %result, %struct.simple_bitmap_def* %call2, %struct.simple_bitmap_def* %call3) #6, !dbg !3395
  %conv = zext i8 %call48 to i32, !dbg !3395
  call void @llvm.dbg.value(metadata i32 %conv, metadata !3283, metadata !DIExpression()), !dbg !3314
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call, i64 0, i32 0, !dbg !3396
  %17 = load i8*, i8** %popcount, align 8, !dbg !3396
  call void @free(i8* %17) #6, !dbg !3396
  %18 = bitcast %struct.simple_bitmap_def* %call to i8*, !dbg !3396
  call void @free(i8* %18) #6, !dbg !3396
  %popcount49 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call2, i64 0, i32 0, !dbg !3397
  %19 = load i8*, i8** %popcount49, align 8, !dbg !3397
  call void @free(i8* %19) #6, !dbg !3397
  %20 = bitcast %struct.simple_bitmap_def* %call2 to i8*, !dbg !3397
  call void @free(i8* %20) #6, !dbg !3397
  %popcount50 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call3, i64 0, i32 0, !dbg !3398
  %21 = load i8*, i8** %popcount50, align 8, !dbg !3398
  call void @free(i8* %21) #6, !dbg !3398
  %22 = bitcast %struct.simple_bitmap_def* %call3 to i8*, !dbg !3398
  call void @free(i8* %22) #6, !dbg !3398
  %popcount51 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call4, i64 0, i32 0, !dbg !3399
  %23 = load i8*, i8** %popcount51, align 8, !dbg !3399
  call void @free(i8* %23) #6, !dbg !3399
  %24 = bitcast %struct.simple_bitmap_def* %call4 to i8*, !dbg !3399
  call void @free(i8* %24) #6, !dbg !3399
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #8, !dbg !3400
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3400
  ret i32 %conv, !dbg !3401
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.ddg_scc* @create_scc(%struct.ddg* %g, %struct.simple_bitmap_def* %nodes) unnamed_addr #5 !dbg !3402 {
entry:
  %u = alloca i32, align 4
  %sbi = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.ddg* %g, metadata !3406, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %nodes, metadata !3407, metadata !DIExpression()), !dbg !3416
  %0 = bitcast i32* %u to i8*, !dbg !3417
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3417
  call void @llvm.dbg.value(metadata i32 0, metadata !3409, metadata !DIExpression()), !dbg !3416
  store i32 0, i32* %u, align 4, !dbg !3418
  %1 = bitcast %struct.sbitmap_iterator* %sbi to i8*, !dbg !3419
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !3419
  %call = tail call i8* @xmalloc(i64 24) #6, !dbg !3420
  %2 = bitcast i8* %call to %struct.ddg_scc*, !dbg !3421
  call void @llvm.dbg.value(metadata %struct.ddg_scc* %2, metadata !3408, metadata !DIExpression()), !dbg !3416
  %backarcs = getelementptr inbounds i8, i8* %call, i64 8, !dbg !3422
  %3 = bitcast i8* %backarcs to %struct.ddg_edge***, !dbg !3422
  store %struct.ddg_edge** null, %struct.ddg_edge*** %3, align 8, !dbg !3423
  %num_backarcs = getelementptr inbounds i8, i8* %call, i64 16, !dbg !3424
  %4 = bitcast i8* %num_backarcs to i32*, !dbg !3424
  store i32 0, i32* %4, align 8, !dbg !3425
  %num_nodes = getelementptr inbounds %struct.ddg, %struct.ddg* %g, i64 0, i32 1, !dbg !3426
  %5 = load i32, i32* %num_nodes, align 8, !dbg !3426
  %call1 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %5) #6, !dbg !3427
  %nodes2 = bitcast i8* %call to %struct.simple_bitmap_def**, !dbg !3428
  store %struct.simple_bitmap_def* %call1, %struct.simple_bitmap_def** %nodes2, align 8, !dbg !3429
  tail call void @sbitmap_copy(%struct.simple_bitmap_def* %call1, %struct.simple_bitmap_def* %nodes) #6, !dbg !3430
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !3410, metadata !DIExpression(DW_OP_deref)), !dbg !3416
  call fastcc void @sbitmap_iter_init(%struct.sbitmap_iterator* nonnull %sbi, %struct.simple_bitmap_def* %nodes, i32 0) #7, !dbg !3431
  %nodes5 = getelementptr inbounds %struct.ddg, %struct.ddg* %g, i64 0, i32 5, !dbg !3432
  br label %for.cond, !dbg !3431

for.cond:                                         ; preds = %for.inc16, %entry
  call void @llvm.dbg.value(metadata i32* %u, metadata !3409, metadata !DIExpression(DW_OP_deref)), !dbg !3416
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !3410, metadata !DIExpression(DW_OP_deref)), !dbg !3416
  %call4 = call fastcc zeroext i8 @sbitmap_iter_cond(%struct.sbitmap_iterator* nonnull %sbi, i32* nonnull %u) #7, !dbg !3433
  %tobool = icmp eq i8 %call4, 0, !dbg !3431
  br i1 %tobool, label %for.end17, label %for.body, !dbg !3431

for.body:                                         ; preds = %for.cond
  %6 = load %struct.ddg_node*, %struct.ddg_node** %nodes5, align 8, !dbg !3434
  %7 = load i32, i32* %u, align 4, !dbg !3435
  call void @llvm.dbg.value(metadata i32 %7, metadata !3409, metadata !DIExpression()), !dbg !3416
  %idxprom = zext i32 %7 to i64, !dbg !3436
  call void @llvm.dbg.value(metadata %struct.ddg_node* undef, metadata !3415, metadata !DIExpression()), !dbg !3432
  %out = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %6, i64 %idxprom, i32 4, !dbg !3437
  br label %for.cond6, !dbg !3439

for.cond6:                                        ; preds = %for.inc, %for.body
  %e.0.in = phi %struct.ddg_edge** [ %out, %for.body ], [ %next_out, %for.inc ]
  %e.0 = load %struct.ddg_edge*, %struct.ddg_edge** %e.0.in, align 8, !dbg !3440
  call void @llvm.dbg.value(metadata %struct.ddg_edge* %e.0, metadata !3411, metadata !DIExpression()), !dbg !3432
  %tobool7 = icmp eq %struct.ddg_edge* %e.0, null, !dbg !3441
  br i1 %tobool7, label %for.inc16, label %for.body8, !dbg !3441

for.body8:                                        ; preds = %for.cond6
  %dest = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %e.0, i64 0, i32 1, !dbg !3442
  %8 = load %struct.ddg_node*, %struct.ddg_node** %dest, align 8, !dbg !3442
  %cuid = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %8, i64 0, i32 0, !dbg !3442
  %9 = load i32, i32* %cuid, align 8, !dbg !3442
  %div = lshr i32 %9, 6, !dbg !3442
  %idxprom9 = zext i32 %div to i64, !dbg !3442
  %arrayidx10 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %nodes, i64 0, i32 3, i64 %idxprom9, !dbg !3442
  %10 = load i64, i64* %arrayidx10, align 8, !dbg !3442
  %rem = and i32 %9, 63, !dbg !3442
  %sh_prom = zext i32 %rem to i64, !dbg !3442
  %11 = shl i64 1, %sh_prom, !dbg !3442
  %12 = and i64 %10, %11, !dbg !3442
  %tobool13 = icmp eq i64 %12, 0, !dbg !3442
  br i1 %tobool13, label %for.inc, label %if.then, !dbg !3445

if.then:                                          ; preds = %for.body8
  %aux = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %e.0, i64 0, i32 8, !dbg !3446
  %count = bitcast %union.anon.0* %aux to i32*, !dbg !3448
  store i32 1, i32* %count, align 8, !dbg !3449
  %distance = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %e.0, i64 0, i32 5, !dbg !3450
  %13 = load i32, i32* %distance, align 4, !dbg !3450
  %cmp = icmp sgt i32 %13, 0, !dbg !3452
  br i1 %cmp, label %if.then14, label %for.inc, !dbg !3453

if.then14:                                        ; preds = %if.then
  call fastcc void @add_backarc_to_scc(%struct.ddg_scc* %2, %struct.ddg_edge* nonnull %e.0) #7, !dbg !3454
  br label %for.inc, !dbg !3454

for.inc:                                          ; preds = %for.body8, %if.then14, %if.then
  %next_out = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %e.0, i64 0, i32 7, !dbg !3455
  br label %for.cond6, !dbg !3456, !llvm.loop !3457

for.inc16:                                        ; preds = %for.cond6
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !3410, metadata !DIExpression(DW_OP_deref)), !dbg !3416
  call fastcc void @sbitmap_iter_next(%struct.sbitmap_iterator* nonnull %sbi) #7, !dbg !3433
  br label %for.cond, !dbg !3433, !llvm.loop !3459

for.end17:                                        ; preds = %for.cond
  call fastcc void @set_recurrence_length(%struct.ddg_scc* %2, %struct.ddg* %g) #7, !dbg !3461
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !3462
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3462
  ret %struct.ddg_scc* %2, !dbg !3463
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_scc_to_ddg(%struct.ddg_all_sccs* %g, %struct.ddg_scc* %scc) unnamed_addr #5 !dbg !3464 {
entry:
  call void @llvm.dbg.value(metadata %struct.ddg_all_sccs* %g, metadata !3468, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata %struct.ddg_scc* %scc, metadata !3469, metadata !DIExpression()), !dbg !3471
  %num_sccs = getelementptr inbounds %struct.ddg_all_sccs, %struct.ddg_all_sccs* %g, i64 0, i32 1, !dbg !3472
  %0 = load i32, i32* %num_sccs, align 8, !dbg !3472
  %add = shl i32 %0, 3, !dbg !3473
  %mul = add i32 %add, 8, !dbg !3473
  call void @llvm.dbg.value(metadata i32 %mul, metadata !3470, metadata !DIExpression()), !dbg !3471
  %1 = bitcast %struct.ddg_all_sccs* %g to i8**, !dbg !3474
  %2 = load i8*, i8** %1, align 8, !dbg !3474
  %conv2 = sext i32 %mul to i64, !dbg !3475
  %call = tail call i8* @xrealloc(i8* %2, i64 %conv2) #6, !dbg !3476
  store i8* %call, i8** %1, align 8, !dbg !3477
  %.cast = bitcast i8* %call to %struct.ddg_scc**, !dbg !3478
  %3 = load i32, i32* %num_sccs, align 8, !dbg !3479
  %inc = add nsw i32 %3, 1, !dbg !3479
  store i32 %inc, i32* %num_sccs, align 8, !dbg !3479
  %idxprom = sext i32 %3 to i64, !dbg !3480
  %arrayidx = getelementptr inbounds %struct.ddg_scc*, %struct.ddg_scc** %.cast, i64 %idxprom, !dbg !3480
  store %struct.ddg_scc* %scc, %struct.ddg_scc** %arrayidx, align 8, !dbg !3481
  ret void, !dbg !3482
}

; Function Attrs: nounwind uwtable
define internal fastcc void @order_sccs(%struct.ddg_all_sccs* %g) unnamed_addr #5 !dbg !3483 {
entry:
  call void @llvm.dbg.value(metadata %struct.ddg_all_sccs* %g, metadata !3487, metadata !DIExpression()), !dbg !3488
  %0 = bitcast %struct.ddg_all_sccs* %g to i8**, !dbg !3489
  %1 = load i8*, i8** %0, align 8, !dbg !3489
  %num_sccs = getelementptr inbounds %struct.ddg_all_sccs, %struct.ddg_all_sccs* %g, i64 0, i32 1, !dbg !3490
  %2 = load i32, i32* %num_sccs, align 8, !dbg !3490
  %conv = sext i32 %2 to i64, !dbg !3491
  tail call void @spec_qsort(i8* %1, i64 %conv, i64 8, i32 (i8*, i8*)* nonnull @compare_sccs) #6, !dbg !3492
  ret void, !dbg !3493
}

; Function Attrs: nounwind uwtable
define dso_local void @free_ddg_all_sccs(%struct.ddg_all_sccs* %all_sccs) local_unnamed_addr #5 !dbg !3494 {
entry:
  call void @llvm.dbg.value(metadata %struct.ddg_all_sccs* %all_sccs, metadata !3496, metadata !DIExpression()), !dbg !3498
  %tobool = icmp eq %struct.ddg_all_sccs* %all_sccs, null, !dbg !3499
  br i1 %tobool, label %cleanup.cont, label %for.cond.preheader, !dbg !3501

for.cond.preheader:                               ; preds = %entry
  %num_sccs = getelementptr inbounds %struct.ddg_all_sccs, %struct.ddg_all_sccs* %all_sccs, i64 0, i32 1, !dbg !3502
  %sccs = getelementptr inbounds %struct.ddg_all_sccs, %struct.ddg_all_sccs* %all_sccs, i64 0, i32 0, !dbg !3502
  br label %for.cond, !dbg !3505

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.body ], !dbg !3506
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3497, metadata !DIExpression()), !dbg !3498
  %0 = load i32, i32* %num_sccs, align 8, !dbg !3507
  %1 = sext i32 %0 to i64, !dbg !3508
  %cmp = icmp slt i64 %indvars.iv, %1, !dbg !3508
  br i1 %cmp, label %for.body, label %for.end, !dbg !3505

for.body:                                         ; preds = %for.cond
  %2 = load %struct.ddg_scc**, %struct.ddg_scc*** %sccs, align 8, !dbg !3509
  %arrayidx = getelementptr inbounds %struct.ddg_scc*, %struct.ddg_scc** %2, i64 %indvars.iv, !dbg !3510
  %3 = load %struct.ddg_scc*, %struct.ddg_scc** %arrayidx, align 8, !dbg !3510
  tail call fastcc void @free_scc(%struct.ddg_scc* %3) #7, !dbg !3511
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3512
  call void @llvm.dbg.value(metadata i32 undef, metadata !3497, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3498
  br label %for.cond, !dbg !3513, !llvm.loop !3514

for.end:                                          ; preds = %for.cond
  %4 = bitcast %struct.ddg_all_sccs* %all_sccs to i8*, !dbg !3516
  tail call void @free(i8* nonnull %4) #6, !dbg !3517
  br label %cleanup.cont, !dbg !3518

cleanup.cont:                                     ; preds = %entry, %for.end
  ret void, !dbg !3518
}

; Function Attrs: nounwind uwtable
define internal fastcc void @free_scc(%struct.ddg_scc* %scc) unnamed_addr #5 !dbg !3519 {
entry:
  call void @llvm.dbg.value(metadata %struct.ddg_scc* %scc, metadata !3523, metadata !DIExpression()), !dbg !3524
  %tobool = icmp eq %struct.ddg_scc* %scc, null, !dbg !3525
  br i1 %tobool, label %return, label %if.end, !dbg !3527

if.end:                                           ; preds = %entry
  %nodes = getelementptr inbounds %struct.ddg_scc, %struct.ddg_scc* %scc, i64 0, i32 0, !dbg !3528
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes, align 8, !dbg !3528
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %0, i64 0, i32 0, !dbg !3528
  %1 = load i8*, i8** %popcount, align 8, !dbg !3528
  tail call void @free(i8* %1) #6, !dbg !3528
  %2 = bitcast %struct.ddg_scc* %scc to i8**, !dbg !3528
  %3 = load i8*, i8** %2, align 8, !dbg !3528
  tail call void @free(i8* %3) #6, !dbg !3528
  %num_backarcs = getelementptr inbounds %struct.ddg_scc, %struct.ddg_scc* %scc, i64 0, i32 2, !dbg !3529
  %4 = load i32, i32* %num_backarcs, align 8, !dbg !3529
  %cmp = icmp sgt i32 %4, 0, !dbg !3531
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3532

if.then2:                                         ; preds = %if.end
  %backarcs = getelementptr inbounds %struct.ddg_scc, %struct.ddg_scc* %scc, i64 0, i32 1, !dbg !3533
  %5 = bitcast %struct.ddg_edge*** %backarcs to i8**, !dbg !3533
  %6 = load i8*, i8** %5, align 8, !dbg !3533
  tail call void @free(i8* %6) #6, !dbg !3534
  br label %if.end3, !dbg !3534

if.end3:                                          ; preds = %if.then2, %if.end
  %7 = bitcast %struct.ddg_scc* %scc to i8*, !dbg !3535
  tail call void @free(i8* nonnull %7) #6, !dbg !3536
  br label %return, !dbg !3537

return:                                           ; preds = %entry, %if.end3
  ret void, !dbg !3537
}

declare dso_local void @sbitmap_copy(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*) local_unnamed_addr #2

declare dso_local zeroext i8 @sbitmap_a_and_b_cg(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @longest_simple_path(%struct.ddg* %g, i32 %src, i32 %dest, %struct.simple_bitmap_def* %nodes) local_unnamed_addr #5 !dbg !3538 {
entry:
  %u = alloca i32, align 4
  %sbi = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.ddg* %g, metadata !3542, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i32 %src, metadata !3543, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i32 %dest, metadata !3544, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %nodes, metadata !3545, metadata !DIExpression()), !dbg !3559
  %0 = bitcast i32* %u to i8*, !dbg !3560
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3560
  call void @llvm.dbg.value(metadata i32 0, metadata !3547, metadata !DIExpression()), !dbg !3559
  store i32 0, i32* %u, align 4, !dbg !3561
  call void @llvm.dbg.value(metadata i32 1, metadata !3548, metadata !DIExpression()), !dbg !3559
  %num_nodes1 = getelementptr inbounds %struct.ddg, %struct.ddg* %g, i64 0, i32 1, !dbg !3562
  %1 = load i32, i32* %num_nodes1, align 8, !dbg !3562
  call void @llvm.dbg.value(metadata i32 %1, metadata !3550, metadata !DIExpression()), !dbg !3559
  %call = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %1) #6, !dbg !3563
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call, metadata !3551, metadata !DIExpression()), !dbg !3559
  %call2 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %1) #6, !dbg !3564
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call2, metadata !3552, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i32 0, metadata !3546, metadata !DIExpression()), !dbg !3559
  %nodes4 = getelementptr inbounds %struct.ddg, %struct.ddg* %g, i64 0, i32 5, !dbg !3559
  br label %for.cond, !dbg !3565

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !3567
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3546, metadata !DIExpression()), !dbg !3559
  %2 = load i32, i32* %num_nodes1, align 8, !dbg !3568
  %3 = sext i32 %2 to i64, !dbg !3570
  %cmp = icmp slt i64 %indvars.iv, %3, !dbg !3570
  %4 = load %struct.ddg_node*, %struct.ddg_node** %nodes4, align 8, !dbg !3559
  br i1 %cmp, label %for.body, label %for.end, !dbg !3571

for.body:                                         ; preds = %for.cond
  %aux = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %4, i64 %indvars.iv, i32 7, !dbg !3572
  %count = bitcast %union.anon.1* %aux to i32*, !dbg !3573
  store i32 -1, i32* %count, align 8, !dbg !3574
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3575
  call void @llvm.dbg.value(metadata i32 undef, metadata !3546, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3559
  br label %for.cond, !dbg !3576, !llvm.loop !3577

for.end:                                          ; preds = %for.cond
  %.lcssa = phi %struct.ddg_node* [ %4, %for.cond ], !dbg !3559
  %idxprom6 = sext i32 %src to i64, !dbg !3579
  %aux8 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %.lcssa, i64 %idxprom6, i32 7, !dbg !3580
  %count9 = bitcast %union.anon.1* %aux8 to i32*, !dbg !3581
  store i32 0, i32* %count9, align 8, !dbg !3582
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call2) #6, !dbg !3583
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %call2, i32 %src) #7, !dbg !3584
  %5 = bitcast %struct.sbitmap_iterator* %sbi to i8*, !dbg !3585
  br label %while.cond, !dbg !3586

while.cond:                                       ; preds = %for.end19, %for.end
  %change.0 = phi i32 [ 1, %for.end ], [ %change.1.lcssa, %for.end19 ], !dbg !3559
  call void @llvm.dbg.value(metadata i32 %change.0, metadata !3548, metadata !DIExpression()), !dbg !3559
  %tobool = icmp eq i32 %change.0, 0, !dbg !3586
  br i1 %tobool, label %while.end, label %while.body, !dbg !3586

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #8, !dbg !3587
  call void @llvm.dbg.value(metadata i32 0, metadata !3548, metadata !DIExpression()), !dbg !3559
  call void @sbitmap_copy(%struct.simple_bitmap_def* %call, %struct.simple_bitmap_def* %call2) #6, !dbg !3588
  call void @sbitmap_zero(%struct.simple_bitmap_def* %call2) #6, !dbg !3589
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !3553, metadata !DIExpression(DW_OP_deref)), !dbg !3585
  call fastcc void @sbitmap_iter_init(%struct.sbitmap_iterator* nonnull %sbi, %struct.simple_bitmap_def* %call, i32 0) #7, !dbg !3590
  br label %for.cond10, !dbg !3590

for.cond10:                                       ; preds = %for.body13, %while.body
  %change.1 = phi i32 [ 0, %while.body ], [ %or, %for.body13 ], !dbg !3585
  call void @llvm.dbg.value(metadata i32 %change.1, metadata !3548, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i32* %u, metadata !3547, metadata !DIExpression(DW_OP_deref)), !dbg !3559
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !3553, metadata !DIExpression(DW_OP_deref)), !dbg !3585
  %call11 = call fastcc zeroext i8 @sbitmap_iter_cond(%struct.sbitmap_iterator* nonnull %sbi, i32* nonnull %u) #7, !dbg !3591
  %tobool12 = icmp eq i8 %call11, 0, !dbg !3590
  br i1 %tobool12, label %for.end19, label %for.body13, !dbg !3590

for.body13:                                       ; preds = %for.cond10
  %6 = load %struct.ddg_node*, %struct.ddg_node** %nodes4, align 8, !dbg !3592
  %7 = load i32, i32* %u, align 4, !dbg !3593
  call void @llvm.dbg.value(metadata i32 %7, metadata !3547, metadata !DIExpression()), !dbg !3559
  %idxprom15 = zext i32 %7 to i64, !dbg !3594
  %arrayidx16 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %6, i64 %idxprom15, !dbg !3594
  call void @llvm.dbg.value(metadata %struct.ddg_node* %arrayidx16, metadata !3555, metadata !DIExpression()), !dbg !3595
  %call17 = call fastcc i32 @update_dist_to_successors(%struct.ddg_node* %arrayidx16, %struct.simple_bitmap_def* %nodes, %struct.simple_bitmap_def* %call2) #7, !dbg !3596
  %or = or i32 %change.1, %call17, !dbg !3597
  call void @llvm.dbg.value(metadata i32 %or, metadata !3548, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !3553, metadata !DIExpression(DW_OP_deref)), !dbg !3585
  call fastcc void @sbitmap_iter_next(%struct.sbitmap_iterator* nonnull %sbi) #7, !dbg !3591
  br label %for.cond10, !dbg !3591, !llvm.loop !3598

for.end19:                                        ; preds = %for.cond10
  %change.1.lcssa = phi i32 [ %change.1, %for.cond10 ], !dbg !3585
  call void @llvm.dbg.value(metadata i32 %change.1.lcssa, metadata !3548, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i32 %change.1.lcssa, metadata !3548, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i32 %change.1.lcssa, metadata !3548, metadata !DIExpression()), !dbg !3559
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #8, !dbg !3600
  br label %while.cond, !dbg !3586, !llvm.loop !3601

while.end:                                        ; preds = %while.cond
  %8 = load %struct.ddg_node*, %struct.ddg_node** %nodes4, align 8, !dbg !3602
  %idxprom21 = sext i32 %dest to i64, !dbg !3603
  %aux23 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %8, i64 %idxprom21, i32 7, !dbg !3604
  %count24 = bitcast %union.anon.1* %aux23 to i32*, !dbg !3605
  %9 = load i32, i32* %count24, align 8, !dbg !3605
  call void @llvm.dbg.value(metadata i32 %9, metadata !3549, metadata !DIExpression()), !dbg !3559
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call, i64 0, i32 0, !dbg !3606
  %10 = load i8*, i8** %popcount, align 8, !dbg !3606
  call void @free(i8* %10) #6, !dbg !3606
  %11 = bitcast %struct.simple_bitmap_def* %call to i8*, !dbg !3606
  call void @free(i8* %11) #6, !dbg !3606
  %popcount25 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call2, i64 0, i32 0, !dbg !3607
  %12 = load i8*, i8** %popcount25, align 8, !dbg !3607
  call void @free(i8* %12) #6, !dbg !3607
  %13 = bitcast %struct.simple_bitmap_def* %call2 to i8*, !dbg !3607
  call void @free(i8* %13) #6, !dbg !3607
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3608
  ret i32 %9, !dbg !3609
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @update_dist_to_successors(%struct.ddg_node* %u_node, %struct.simple_bitmap_def* %nodes, %struct.simple_bitmap_def* %tmp) unnamed_addr #5 !dbg !3610 {
entry:
  call void @llvm.dbg.value(metadata %struct.ddg_node* %u_node, metadata !3614, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %nodes, metadata !3615, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %tmp, metadata !3616, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i32 0, metadata !3618, metadata !DIExpression()), !dbg !3624
  %out = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %u_node, i64 0, i32 4, !dbg !3625
  %aux3 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %u_node, i64 0, i32 7, !dbg !3626
  %count4 = bitcast %union.anon.1* %aux3 to i32*, !dbg !3626
  br label %for.cond, !dbg !3628

for.cond:                                         ; preds = %for.inc, %entry
  %e.0.in = phi %struct.ddg_edge** [ %out, %entry ], [ %next_out, %for.inc ]
  %result.0 = phi i32 [ 0, %entry ], [ %result.1, %for.inc ], !dbg !3624
  %e.0 = load %struct.ddg_edge*, %struct.ddg_edge** %e.0.in, align 8, !dbg !3629
  call void @llvm.dbg.value(metadata i32 %result.0, metadata !3618, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata %struct.ddg_edge* %e.0, metadata !3617, metadata !DIExpression()), !dbg !3624
  %tobool = icmp eq %struct.ddg_edge* %e.0, null, !dbg !3630
  br i1 %tobool, label %for.end, label %for.body, !dbg !3630

for.body:                                         ; preds = %for.cond
  %dest = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %e.0, i64 0, i32 1, !dbg !3631
  %0 = load %struct.ddg_node*, %struct.ddg_node** %dest, align 8, !dbg !3631
  call void @llvm.dbg.value(metadata %struct.ddg_node* %0, metadata !3619, metadata !DIExpression()), !dbg !3632
  %cuid = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %0, i64 0, i32 0, !dbg !3633
  %1 = load i32, i32* %cuid, align 8, !dbg !3633
  call void @llvm.dbg.value(metadata i32 %1, metadata !3623, metadata !DIExpression()), !dbg !3632
  %div = lshr i32 %1, 6, !dbg !3634
  %idxprom = zext i32 %div to i64, !dbg !3634
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %nodes, i64 0, i32 3, i64 %idxprom, !dbg !3634
  %2 = load i64, i64* %arrayidx, align 8, !dbg !3634
  %rem = and i32 %1, 63, !dbg !3634
  %sh_prom = zext i32 %rem to i64, !dbg !3634
  %3 = shl i64 1, %sh_prom, !dbg !3634
  %4 = and i64 %2, %3, !dbg !3634
  %tobool1 = icmp eq i64 %4, 0, !dbg !3634
  br i1 %tobool1, label %for.inc, label %land.lhs.true, !dbg !3635

land.lhs.true:                                    ; preds = %for.body
  %distance = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %e.0, i64 0, i32 5, !dbg !3636
  %5 = load i32, i32* %distance, align 4, !dbg !3636
  %cmp = icmp eq i32 %5, 0, !dbg !3637
  br i1 %cmp, label %land.lhs.true2, label %for.inc, !dbg !3638

land.lhs.true2:                                   ; preds = %land.lhs.true
  %aux = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %0, i64 0, i32 7, !dbg !3639
  %count = bitcast %union.anon.1* %aux to i32*, !dbg !3640
  %6 = load i32, i32* %count, align 8, !dbg !3640
  %7 = load i32, i32* %count4, align 8, !dbg !3641
  %latency = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %e.0, i64 0, i32 4, !dbg !3642
  %8 = load i32, i32* %latency, align 8, !dbg !3642
  %add = add nsw i32 %7, %8, !dbg !3643
  %cmp5 = icmp slt i32 %6, %add, !dbg !3644
  br i1 %cmp5, label %if.then, label %for.inc, !dbg !3645

if.then:                                          ; preds = %land.lhs.true2
  store i32 %add, i32* %count, align 8, !dbg !3646
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %tmp, i32 %1) #7, !dbg !3648
  call void @llvm.dbg.value(metadata i32 1, metadata !3618, metadata !DIExpression()), !dbg !3624
  br label %for.inc, !dbg !3649

for.inc:                                          ; preds = %for.body, %land.lhs.true, %land.lhs.true2, %if.then
  %result.1 = phi i32 [ 1, %if.then ], [ %result.0, %land.lhs.true2 ], [ %result.0, %land.lhs.true ], [ %result.0, %for.body ], !dbg !3624
  call void @llvm.dbg.value(metadata i32 %result.1, metadata !3618, metadata !DIExpression()), !dbg !3624
  %next_out = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %e.0, i64 0, i32 7, !dbg !3650
  br label %for.cond, !dbg !3651, !llvm.loop !3652

for.end:                                          ; preds = %for.cond
  %result.0.lcssa = phi i32 [ %result.0, %for.cond ], !dbg !3624
  call void @llvm.dbg.value(metadata i32 %result.0.lcssa, metadata !3618, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i32 %result.0.lcssa, metadata !3618, metadata !DIExpression()), !dbg !3624
  call void @llvm.dbg.value(metadata i32 %result.0.lcssa, metadata !3618, metadata !DIExpression()), !dbg !3624
  ret i32 %result.0.lcssa, !dbg !3654
}

declare dso_local void @note_uses(%struct.rtx_def**, void (%struct.rtx_def**, i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @mark_mem_use_1(%struct.rtx_def** %x, i8* %data) #5 !dbg !3655 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def** %x, metadata !3659, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i8* %data, metadata !3660, metadata !DIExpression()), !dbg !3661
  %call = tail call i32 @for_each_rtx(%struct.rtx_def** %x, i32 (%struct.rtx_def**, i8*)* nonnull @mark_mem_use, i8* %data) #6, !dbg !3662
  ret void, !dbg !3663
}

declare dso_local i32 @for_each_rtx(%struct.rtx_def**, i32 (%struct.rtx_def**, i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @mark_mem_use(%struct.rtx_def** %x, i8* %data) #5 !dbg !3664 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def** %x, metadata !3668, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i8* %data, metadata !3669, metadata !DIExpression()), !dbg !3670
  %0 = bitcast %struct.rtx_def** %x to i32**, !dbg !3671
  %1 = load i32*, i32** %0, align 8, !dbg !3671
  %bf.load = load i32, i32* %1, align 8, !dbg !3671
  %bf.clear = and i32 %bf.load, 65535, !dbg !3671
  %cmp = icmp eq i32 %bf.clear, 43, !dbg !3671
  br i1 %cmp, label %if.then, label %if.end, !dbg !3673

if.then:                                          ; preds = %entry
  store i1 true, i1* @mem_ref_p, align 1, !dbg !3674
  br label %if.end, !dbg !3675

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !3676
}

declare dso_local void @note_stores(%struct.rtx_def*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @mark_mem_store(%struct.rtx_def* %loc, %struct.rtx_def* %setter, i8* %data) #5 !dbg !3677 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %loc, metadata !3684, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata %struct.rtx_def* %setter, metadata !3685, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i8* %data, metadata !3686, metadata !DIExpression()), !dbg !3687
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %loc, i64 0, i32 0, !dbg !3688
  %bf.load = load i32, i32* %0, align 8, !dbg !3688
  %bf.clear = and i32 %bf.load, 65535, !dbg !3688
  %cmp = icmp eq i32 %bf.clear, 43, !dbg !3688
  br i1 %cmp, label %if.then, label %if.end, !dbg !3690

if.then:                                          ; preds = %entry
  store i1 true, i1* @mem_ref_p, align 1, !dbg !3691
  br label %if.end, !dbg !3692

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3693
}

declare dso_local void @init_deps_global() local_unnamed_addr #2

declare dso_local void @init_deps(%struct.deps*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @get_ebb_head_tail(%struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def**, %struct.rtx_def**) local_unnamed_addr #2

declare dso_local void @sched_analyze(%struct.deps*, %struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sd_iterator_start(%struct._sd_iterator* noalias sret %agg.result, %struct.rtx_def* %insn, i32 %types) unnamed_addr #0 !dbg !1893 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !1928, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i32 3, metadata !1929, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.declare(metadata %struct._sd_iterator* %agg.result, metadata !1930, metadata !DIExpression()), !dbg !3695
  %types1 = getelementptr inbounds %struct._sd_iterator, %struct._sd_iterator* %agg.result, i64 0, i32 0, !dbg !3696
  store i32 3, i32* %types1, align 8, !dbg !3697
  %insn2 = getelementptr inbounds %struct._sd_iterator, %struct._sd_iterator* %agg.result, i64 0, i32 1, !dbg !3698
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn2, align 8, !dbg !3699
  %linkp = getelementptr inbounds %struct._sd_iterator, %struct._sd_iterator* %agg.result, i64 0, i32 2, !dbg !3700
  store %struct._dep_link** @sd_iterator_start.null_link, %struct._dep_link*** %linkp, align 8, !dbg !3701
  %resolved_p = getelementptr inbounds %struct._sd_iterator, %struct._sd_iterator* %agg.result, i64 0, i32 3, !dbg !3702
  store i8 0, i8* %resolved_p, align 8, !dbg !3703
  ret void, !dbg !3704
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @sd_iterator_cond(%struct._sd_iterator* %it_ptr, %struct._dep** %dep_ptr) unnamed_addr #0 !dbg !3705 {
entry:
  %list = alloca %struct._deps_list*, align 8
  call void @llvm.dbg.value(metadata %struct._sd_iterator* %it_ptr, metadata !3711, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata %struct._dep** %dep_ptr, metadata !3712, metadata !DIExpression()), !dbg !3726
  %linkp = getelementptr inbounds %struct._sd_iterator, %struct._sd_iterator* %it_ptr, i64 0, i32 2, !dbg !3727
  %0 = load %struct._dep_link**, %struct._dep_link*** %linkp, align 8, !dbg !3727
  %1 = load %struct._dep_link*, %struct._dep_link** %0, align 8, !dbg !3728
  call void @llvm.dbg.value(metadata %struct._dep_link* %1, metadata !3713, metadata !DIExpression()), !dbg !3726
  %cmp = icmp eq %struct._dep_link* %1, null, !dbg !3729
  br i1 %cmp, label %if.else, label %if.then, !dbg !3730

if.then:                                          ; preds = %entry
  %node = getelementptr inbounds %struct._dep_link, %struct._dep_link* %1, i64 0, i32 0, !dbg !3731
  %2 = load %struct._dep_node*, %struct._dep_node** %node, align 8, !dbg !3731
  %dep = getelementptr inbounds %struct._dep_node, %struct._dep_node* %2, i64 0, i32 1, !dbg !3731
  store %struct._dep* %dep, %struct._dep** %dep_ptr, align 8, !dbg !3733
  br label %cleanup9, !dbg !3734

if.else:                                          ; preds = %entry
  %types1 = getelementptr inbounds %struct._sd_iterator, %struct._sd_iterator* %it_ptr, i64 0, i32 0, !dbg !3735
  %3 = load i32, i32* %types1, align 8, !dbg !3735
  call void @llvm.dbg.value(metadata i32 %3, metadata !3714, metadata !DIExpression()), !dbg !3736
  %cmp2 = icmp eq i32 %3, 0, !dbg !3737
  br i1 %cmp2, label %if.end7, label %if.then3, !dbg !3738

if.then3:                                         ; preds = %if.else
  %4 = bitcast %struct._deps_list** %list to i8*, !dbg !3739
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8, !dbg !3739
  %insn = getelementptr inbounds %struct._sd_iterator, %struct._sd_iterator* %it_ptr, i64 0, i32 1, !dbg !3740
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !3740
  %resolved_p = getelementptr inbounds %struct._sd_iterator, %struct._sd_iterator* %it_ptr, i64 0, i32 3, !dbg !3741
  call void @llvm.dbg.value(metadata %struct._deps_list** %list, metadata !3717, metadata !DIExpression(DW_OP_deref)), !dbg !3742
  call void @sd_next_list(%struct.rtx_def* %5, i32* %types1, %struct._deps_list** nonnull %list, i8* nonnull %resolved_p) #6, !dbg !3743
  %6 = load %struct._deps_list*, %struct._deps_list** %list, align 8, !dbg !3744
  call void @llvm.dbg.value(metadata %struct._deps_list* %6, metadata !3717, metadata !DIExpression()), !dbg !3742
  %first = getelementptr inbounds %struct._deps_list, %struct._deps_list* %6, i64 0, i32 0, !dbg !3744
  store %struct._dep_link** %first, %struct._dep_link*** %linkp, align 8, !dbg !3745
  call void @llvm.dbg.value(metadata %struct._deps_list* %6, metadata !3717, metadata !DIExpression()), !dbg !3742
  %tobool = icmp eq %struct._deps_list* %6, null, !dbg !3746
  br i1 %tobool, label %cleanup, label %if.then6, !dbg !3748

if.then6:                                         ; preds = %if.then3
  %call = call fastcc zeroext i8 @sd_iterator_cond(%struct._sd_iterator* %it_ptr, %struct._dep** %dep_ptr) #7, !dbg !3749
  br label %cleanup, !dbg !3750

cleanup:                                          ; preds = %if.then3, %if.then6
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then6 ], [ true, %if.then3 ]
  %retval.0 = phi i8 [ %call, %if.then6 ], [ undef, %if.then3 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8, !dbg !3751
  br i1 %cleanup.dest.slot.0, label %if.end7, label %cleanup9

if.end7:                                          ; preds = %if.else, %cleanup
  store %struct._dep* null, %struct._dep** %dep_ptr, align 8, !dbg !3752
  br label %cleanup9, !dbg !3753

cleanup9:                                         ; preds = %if.end7, %cleanup, %if.then
  %retval.2 = phi i8 [ 1, %if.then ], [ %retval.0, %cleanup ], [ 0, %if.end7 ], !dbg !3754
  ret i8 %retval.2, !dbg !3755
}

; Function Attrs: nounwind uwtable
define internal fastcc void @create_ddg_dep_from_intra_loop_link(%struct.ddg* %g, %struct.ddg_node* %src_node, %struct.ddg_node* %dest_node, %struct._dep* %link) unnamed_addr #5 !dbg !3756 {
entry:
  call void @llvm.dbg.value(metadata %struct.ddg* %g, metadata !3760, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata %struct.ddg_node* %src_node, metadata !3761, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata %struct.ddg_node* %dest_node, metadata !3762, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata %struct._dep* %link, metadata !3763, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata i32 0, metadata !3766, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata i32 0, metadata !3767, metadata !DIExpression()), !dbg !3777
  %insn = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %src_node, i64 0, i32 1, !dbg !3778
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !3778
  %call = tail call fastcc zeroext i8 @mem_access_insn_p(%struct.rtx_def* %0) #7, !dbg !3779
  %tobool = icmp eq i8 %call, 0, !dbg !3779
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !3780

land.rhs:                                         ; preds = %entry
  %insn1 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %dest_node, i64 0, i32 1, !dbg !3781
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn1, align 8, !dbg !3781
  %call2 = tail call fastcc zeroext i8 @mem_access_insn_p(%struct.rtx_def* %1) #7, !dbg !3782
  %tobool4 = icmp eq i8 %call2, 0, !dbg !3780
  %phitmp = select i1 %tobool4, i32 1, i32 2
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %2 = phi i32 [ 1, %entry ], [ %phitmp, %land.rhs ]
  call void @llvm.dbg.value(metadata i32 %2, metadata !3768, metadata !DIExpression()), !dbg !3777
  %cuid = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %src_node, i64 0, i32 0, !dbg !3783
  %3 = load i32, i32* %cuid, align 8, !dbg !3783
  %cuid5 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %dest_node, i64 0, i32 0, !dbg !3783
  %4 = load i32, i32* %cuid5, align 8, !dbg !3783
  %cmp = icmp slt i32 %3, %4, !dbg !3783
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3783

cond.true:                                        ; preds = %land.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 160, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3783
  br label %cond.end, !dbg !3783

cond.end:                                         ; preds = %land.end, %cond.true
  %tobool8 = icmp eq %struct._dep* %link, null, !dbg !3784
  br i1 %tobool8, label %cond.true9, label %cond.end11, !dbg !3784

cond.true9:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 161, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3784
  br label %cond.end11, !dbg !3784

cond.end11:                                       ; preds = %cond.end, %cond.true9
  %type = getelementptr inbounds %struct._dep, %struct._dep* %link, i64 0, i32 2, !dbg !3785
  %5 = load i32, i32* %type, align 8, !dbg !3785
  %cmp13 = icmp eq i32 %5, 12, !dbg !3787
  br i1 %cmp13, label %if.end19, label %if.else, !dbg !3788

if.else:                                          ; preds = %cond.end11
  %cmp16 = icmp eq i32 %5, 11, !dbg !3789
  %spec.select = zext i1 %cmp16 to i32, !dbg !3791
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3767, metadata !DIExpression()), !dbg !3777
  br label %if.end19

if.end19:                                         ; preds = %cond.end11, %if.else
  %t.1 = phi i32 [ %spec.select, %if.else ], [ 2, %cond.end11 ], !dbg !3792
  call void @llvm.dbg.value(metadata i32 %t.1, metadata !3767, metadata !DIExpression()), !dbg !3777
  %insn20 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %dest_node, i64 0, i32 1, !dbg !3793
  %6 = bitcast %struct.rtx_def** %insn20 to i32**, !dbg !3793
  %7 = load i32*, i32** %6, align 8, !dbg !3793
  %bf.load = load i32, i32* %7, align 8, !dbg !3793
  %bf.clear = and i32 %bf.load, 65535, !dbg !3793
  %cmp21 = icmp ne i32 %bf.clear, 7, !dbg !3793
  %cmp23 = icmp eq i32 %t.1, 2, !dbg !3793
  %or.cond = or i1 %cmp21, %cmp23, !dbg !3793
  br i1 %or.cond, label %cond.end27, label %cond.true25, !dbg !3793

cond.true25:                                      ; preds = %if.end19
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 169, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3793
  br label %cond.end27, !dbg !3793

cond.end27:                                       ; preds = %if.end19, %cond.true25
  %8 = bitcast %struct.rtx_def** %insn to i32**, !dbg !3794
  %9 = load i32*, i32** %8, align 8, !dbg !3794
  %bf.load30 = load i32, i32* %9, align 8, !dbg !3794
  %bf.clear31 = and i32 %bf.load30, 65535, !dbg !3794
  %cmp32 = icmp ne i32 %bf.clear31, 7, !dbg !3794
  %or.cond3 = or i1 %cmp32, %cmp23, !dbg !3794
  br i1 %or.cond3, label %cond.end39, label %cond.true37, !dbg !3794

cond.true37:                                      ; preds = %cond.end27
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 170, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3794
  br label %cond.end39, !dbg !3794

cond.end39:                                       ; preds = %cond.end27, %cond.true37
  %10 = load i32, i32* @flag_modulo_sched_allow_regmoves, align 4, !dbg !3795
  %tobool41 = icmp ne i32 %10, 0, !dbg !3795
  %or.cond4 = and i1 %tobool41, %cmp23, !dbg !3796
  %cmp45 = icmp eq i32 %2, 1, !dbg !3797
  %or.cond5 = and i1 %or.cond4, %cmp45, !dbg !3796
  br i1 %or.cond5, label %if.then47, label %if.end130, !dbg !3796

if.then47:                                        ; preds = %cond.end39
  %11 = load i32*, i32** %6, align 8, !dbg !3798
  %bf.load49 = load i32, i32* %11, align 8, !dbg !3798
  %bf.clear50 = and i32 %bf.load49, 65535, !dbg !3798
  %cmp51 = icmp eq i32 %bf.clear50, 8, !dbg !3798
  %12 = bitcast i32* %11 to %struct.rtx_def*, !dbg !3798
  br i1 %cmp51, label %cond.true71, label %lor.lhs.false53, !dbg !3798

lor.lhs.false53:                                  ; preds = %if.then47
  %cmp57 = icmp eq i32 %bf.clear50, 7, !dbg !3798
  br i1 %cmp57, label %cond.true71, label %lor.lhs.false59, !dbg !3798

lor.lhs.false59:                                  ; preds = %lor.lhs.false53
  %cmp63 = icmp eq i32 %bf.clear50, 9, !dbg !3798
  br i1 %cmp63, label %cond.true71, label %lor.lhs.false65, !dbg !3798

lor.lhs.false65:                                  ; preds = %lor.lhs.false59
  %cmp69 = icmp eq i32 %bf.clear50, 10, !dbg !3798
  br i1 %cmp69, label %cond.true71, label %cond.end94, !dbg !3798

cond.true71:                                      ; preds = %lor.lhs.false65, %lor.lhs.false59, %lor.lhs.false53, %if.then47
  %13 = getelementptr inbounds i32, i32* %11, i64 12, !dbg !3798
  %14 = bitcast i32* %13 to i32**, !dbg !3798
  %15 = load i32*, i32** %14, align 8, !dbg !3798
  %bf.load73 = load i32, i32* %15, align 8, !dbg !3798
  %bf.clear74 = and i32 %bf.load73, 65535, !dbg !3798
  %cmp75 = icmp eq i32 %bf.clear74, 23, !dbg !3798
  %16 = bitcast i32* %15 to %struct.rtx_def*, !dbg !3798
  br i1 %cmp75, label %cond.true77, label %cond.false83, !dbg !3798

cond.true77:                                      ; preds = %cond.true71
  br label %cond.end94, !dbg !3798

cond.false83:                                     ; preds = %cond.true71
  %call90 = tail call %struct.rtx_def* @single_set_2(%struct.rtx_def* %12, %struct.rtx_def* %16) #6, !dbg !3798
  br label %cond.end94, !dbg !3798

cond.end94:                                       ; preds = %lor.lhs.false65, %cond.true77, %cond.false83
  %cond95 = phi %struct.rtx_def* [ %16, %cond.true77 ], [ %call90, %cond.false83 ], [ null, %lor.lhs.false65 ], !dbg !3798
  call void @llvm.dbg.value(metadata %struct.rtx_def* %cond95, metadata !3769, metadata !DIExpression()), !dbg !3799
  %tobool96 = icmp eq %struct.rtx_def* %cond95, null, !dbg !3800
  br i1 %tobool96, label %if.end126, label %land.lhs.true97, !dbg !3801

land.lhs.true97:                                  ; preds = %cond.end94
  %arrayidx100 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond95, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3802
  %17 = bitcast %union.rtunion_def* %arrayidx100 to i32**, !dbg !3802
  %18 = load i32*, i32** %17, align 8, !dbg !3802
  %bf.load102 = load i32, i32* %18, align 8, !dbg !3802
  %bf.clear103 = and i32 %bf.load102, 65535, !dbg !3802
  %cmp104 = icmp eq i32 %bf.clear103, 37, !dbg !3802
  br i1 %cmp104, label %if.then106, label %if.end126, !dbg !3803

if.then106:                                       ; preds = %land.lhs.true97
  %19 = bitcast i32* %18 to %struct.rtx_def*, !dbg !3803
  %call111 = tail call fastcc i32 @rhs_regno(%struct.rtx_def* %19) #7, !dbg !3804
  call void @llvm.dbg.value(metadata i32 %call111, metadata !3772, metadata !DIExpression()), !dbg !3805
  %bb = getelementptr inbounds %struct.ddg, %struct.ddg* %g, i64 0, i32 0, !dbg !3806
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3806
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i64 0, i32 9, !dbg !3806
  %21 = load i32, i32* %index, align 8, !dbg !3806
  %call112 = tail call fastcc %struct.df_rd_bb_info* @df_rd_get_bb_info(i32 %21) #7, !dbg !3806
  call void @llvm.dbg.value(metadata %struct.df_rd_bb_info* %call112, metadata !3776, metadata !DIExpression()), !dbg !3805
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !3807
  %call114 = tail call %union.df_ref_d* @df_bb_regno_first_def_find(%struct.basic_block_def* %22, i32 %call111) #6, !dbg !3808
  call void @llvm.dbg.value(metadata %union.df_ref_d* %call114, metadata !3775, metadata !DIExpression()), !dbg !3805
  %tobool115 = icmp eq %union.df_ref_d* %call114, null, !dbg !3809
  br i1 %tobool115, label %cond.true116, label %cond.end118, !dbg !3809

cond.true116:                                     ; preds = %if.then106
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 193, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3809
  br label %cond.end118, !dbg !3809

cond.end118:                                      ; preds = %if.then106, %cond.true116
  %gen = getelementptr inbounds %struct.df_rd_bb_info, %struct.df_rd_bb_info* %call112, i64 0, i32 2, !dbg !3810
  %23 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %gen, align 8, !dbg !3810
  %id = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %call114, i64 0, i32 0, i32 0, i32 0, i32 7, !dbg !3812
  %24 = load i32, i32* %id, align 4, !dbg !3812
  %call120 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %23, i32 %24) #6, !dbg !3813
  %tobool121 = icmp ne i32 %call120, 0, !dbg !3813
  %. = zext i1 %tobool121 to i32, !dbg !3814
  br i1 %tobool121, label %cleanup127, label %if.end126

if.end126:                                        ; preds = %cond.end118, %cond.end94, %land.lhs.true97
  br label %cleanup127, !dbg !3815

cleanup127:                                       ; preds = %cond.end118, %if.end126
  %cleanup.dest.slot.1 = phi i32 [ %., %cond.end118 ], [ 0, %if.end126 ]
  %cond1 = icmp eq i32 %cleanup.dest.slot.1, 0
  br i1 %cond1, label %if.end130, label %cleanup.cont139

if.end130:                                        ; preds = %cleanup127, %cond.end39
  %call131 = tail call i32 @dep_cost(%struct._dep* %link) #6, !dbg !3816
  call void @llvm.dbg.value(metadata i32 %call131, metadata !3765, metadata !DIExpression()), !dbg !3777
  %call132 = tail call fastcc %struct.ddg_edge* @create_ddg_edge(%struct.ddg_node* %src_node, %struct.ddg_node* %dest_node, i32 %t.1, i32 %2, i32 %call131, i32 0) #7, !dbg !3817
  call void @llvm.dbg.value(metadata %struct.ddg_edge* %call132, metadata !3764, metadata !DIExpression()), !dbg !3777
  tail call fastcc void @add_edge_to_ddg(%struct.ddg* %g, %struct.ddg_edge* %call132) #7, !dbg !3818
  br label %cleanup.cont139, !dbg !3819

cleanup.cont139:                                  ; preds = %if.end130, %cleanup127
  ret void, !dbg !3819
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sd_iterator_next(%struct._sd_iterator* %it_ptr) unnamed_addr #0 !dbg !3820 {
entry:
  call void @llvm.dbg.value(metadata %struct._sd_iterator* %it_ptr, metadata !3824, metadata !DIExpression()), !dbg !3825
  %linkp = getelementptr inbounds %struct._sd_iterator, %struct._sd_iterator* %it_ptr, i64 0, i32 2, !dbg !3826
  %0 = load %struct._dep_link**, %struct._dep_link*** %linkp, align 8, !dbg !3826
  %1 = load %struct._dep_link*, %struct._dep_link** %0, align 8, !dbg !3826
  %next = getelementptr inbounds %struct._dep_link, %struct._dep_link* %1, i64 0, i32 1, !dbg !3826
  store %struct._dep_link** %next, %struct._dep_link*** %linkp, align 8, !dbg !3827
  ret void, !dbg !3828
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @mem_access_insn_p(%struct.rtx_def* %insn) unnamed_addr #5 !dbg !3829 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !3831, metadata !DIExpression()), !dbg !3832
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !3833
  %0 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !3833
  %rt_rtx = bitcast %union.rtunion_def* %0 to %struct.rtx_def**, !dbg !3833
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !3833
  %call = tail call fastcc zeroext i8 @rtx_mem_access_p(%struct.rtx_def* %1) #7, !dbg !3834
  ret i8 %call, !dbg !3835
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_inter_loop_mem_dep(%struct.ddg* %g, %struct.ddg_node* %from, %struct.ddg_node* %to) unnamed_addr #5 !dbg !3836 {
entry:
  call void @llvm.dbg.value(metadata %struct.ddg* %g, metadata !3840, metadata !DIExpression()), !dbg !3843
  call void @llvm.dbg.value(metadata %struct.ddg_node* %from, metadata !3841, metadata !DIExpression()), !dbg !3843
  call void @llvm.dbg.value(metadata %struct.ddg_node* %to, metadata !3842, metadata !DIExpression()), !dbg !3843
  %insn = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %from, i64 0, i32 1, !dbg !3844
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !3844
  %insn1 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %to, i64 0, i32 1, !dbg !3846
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn1, align 8, !dbg !3846
  %call = tail call zeroext i8 @insn_alias_sets_conflict_p(%struct.rtx_def* %0, %struct.rtx_def* %1) #6, !dbg !3847
  %tobool = icmp eq i8 %call, 0, !dbg !3847
  br i1 %tobool, label %if.end44, label %if.end, !dbg !3848

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !3849
  %call3 = tail call fastcc zeroext i8 @mem_write_insn_p(%struct.rtx_def* %2) #7, !dbg !3851
  %tobool4 = icmp eq i8 %call3, 0, !dbg !3851
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn1, align 8, !dbg !3852
  %call7 = tail call fastcc zeroext i8 @mem_read_insn_p(%struct.rtx_def* %3) #7, !dbg !3852
  %tobool8 = icmp ne i8 %call7, 0, !dbg !3852
  br i1 %tobool4, label %if.else21, label %if.then5, !dbg !3853

if.then5:                                         ; preds = %if.end
  br i1 %tobool8, label %if.then9, label %if.else, !dbg !3854

if.then9:                                         ; preds = %if.then5
  %4 = bitcast %struct.rtx_def** %insn1 to i32**, !dbg !3856
  %5 = load i32*, i32** %4, align 8, !dbg !3856
  %bf.load = load i32, i32* %5, align 8, !dbg !3856
  %bf.clear = and i32 %bf.load, 65535, !dbg !3856
  %cmp = icmp eq i32 %bf.clear, 7, !dbg !3856
  %cond = select i1 %cmp, i32 2, i32 0, !dbg !3856
  tail call fastcc void @create_ddg_dep_no_link(%struct.ddg* %g, %struct.ddg_node* %from, %struct.ddg_node* %to, i32 %cond, i32 2, i32 1) #7, !dbg !3858
  br label %if.end44, !dbg !3858

if.else:                                          ; preds = %if.then5
  %cuid = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %from, i64 0, i32 0, !dbg !3859
  %6 = load i32, i32* %cuid, align 8, !dbg !3859
  %cuid11 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %to, i64 0, i32 0, !dbg !3861
  %7 = load i32, i32* %cuid11, align 8, !dbg !3861
  %cmp12 = icmp eq i32 %6, %7, !dbg !3862
  br i1 %cmp12, label %if.end44, label %if.then13, !dbg !3863

if.then13:                                        ; preds = %if.else
  %8 = bitcast %struct.rtx_def** %insn1 to i32**, !dbg !3864
  %9 = load i32*, i32** %8, align 8, !dbg !3864
  %bf.load15 = load i32, i32* %9, align 8, !dbg !3864
  %bf.clear16 = and i32 %bf.load15, 65535, !dbg !3864
  %cmp17 = icmp eq i32 %bf.clear16, 7, !dbg !3864
  %cond18 = select i1 %cmp17, i32 2, i32 1, !dbg !3864
  tail call fastcc void @create_ddg_dep_no_link(%struct.ddg* %g, %struct.ddg_node* %from, %struct.ddg_node* %to, i32 %cond18, i32 2, i32 1) #7, !dbg !3865
  br label %if.end44, !dbg !3865

if.else21:                                        ; preds = %if.end
  br i1 %tobool8, label %if.end44, label %if.else26, !dbg !3866

if.else26:                                        ; preds = %if.else21
  %cuid27 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %from, i64 0, i32 0, !dbg !3868
  %10 = load i32, i32* %cuid27, align 8, !dbg !3868
  %cuid28 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %to, i64 0, i32 0, !dbg !3871
  %11 = load i32, i32* %cuid28, align 8, !dbg !3871
  %cmp29 = icmp eq i32 %10, %11, !dbg !3872
  br i1 %cmp29, label %if.end44, label %if.then30, !dbg !3873

if.then30:                                        ; preds = %if.else26
  tail call fastcc void @create_ddg_dep_no_link(%struct.ddg* %g, %struct.ddg_node* %from, %struct.ddg_node* %to, i32 2, i32 2, i32 1) #7, !dbg !3874
  %12 = bitcast %struct.rtx_def** %insn to i32**, !dbg !3876
  %13 = load i32*, i32** %12, align 8, !dbg !3876
  %bf.load32 = load i32, i32* %13, align 8, !dbg !3876
  %bf.clear33 = and i32 %bf.load32, 65535, !dbg !3876
  %cmp34 = icmp eq i32 %bf.clear33, 7, !dbg !3876
  br i1 %cmp34, label %if.then39, label %lor.lhs.false, !dbg !3878

lor.lhs.false:                                    ; preds = %if.then30
  %14 = bitcast %struct.rtx_def** %insn1 to i32**, !dbg !3879
  %15 = load i32*, i32** %14, align 8, !dbg !3879
  %bf.load36 = load i32, i32* %15, align 8, !dbg !3879
  %bf.clear37 = and i32 %bf.load36, 65535, !dbg !3879
  %cmp38 = icmp eq i32 %bf.clear37, 7, !dbg !3879
  br i1 %cmp38, label %if.then39, label %if.else40, !dbg !3880

if.then39:                                        ; preds = %lor.lhs.false, %if.then30
  tail call fastcc void @create_ddg_dep_no_link(%struct.ddg* %g, %struct.ddg_node* %to, %struct.ddg_node* %from, i32 2, i32 2, i32 1) #7, !dbg !3881
  br label %if.end44, !dbg !3881

if.else40:                                        ; preds = %lor.lhs.false
  tail call fastcc void @create_ddg_dep_no_link(%struct.ddg* %g, %struct.ddg_node* %to, %struct.ddg_node* %from, i32 0, i32 2, i32 1) #7, !dbg !3882
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.else26, %entry, %if.then39, %if.else40, %if.else21, %if.then9, %if.then13
  ret void, !dbg !3883
}

declare dso_local void @finish_deps_global() local_unnamed_addr #2

declare dso_local void @free_deps(%struct.deps*) local_unnamed_addr #2

declare dso_local void @sched_free_deps(%struct.rtx_def*, %struct.rtx_def*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @sd_next_list(%struct.rtx_def*, i32*, %struct._deps_list**, i8*) local_unnamed_addr #2

declare dso_local %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @rhs_regno(%struct.rtx_def* %x) unnamed_addr #0 !dbg !3884 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3888, metadata !DIExpression()), !dbg !3889
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !3890
  %rt_uint = bitcast %union.rtunion_def* %arrayidx to i32*, !dbg !3890
  %0 = load i32, i32* %rt_uint, align 8, !dbg !3890
  ret i32 %0, !dbg !3891
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.df_rd_bb_info* @df_rd_get_bb_info(i32 %index) unnamed_addr #0 !dbg !3892 {
entry:
  call void @llvm.dbg.value(metadata i32 %index, metadata !3896, metadata !DIExpression()), !dbg !3897
  %0 = load %struct.df*, %struct.df** @df, align 8, !dbg !3898
  %arrayidx = getelementptr inbounds %struct.df, %struct.df* %0, i64 0, i32 1, i64 3, !dbg !3898
  %1 = load %struct.dataflow*, %struct.dataflow** %arrayidx, align 8, !dbg !3898
  %block_info_size = getelementptr inbounds %struct.dataflow, %struct.dataflow* %1, i64 0, i32 2, !dbg !3900
  %2 = load i32, i32* %block_info_size, align 8, !dbg !3900
  %cmp = icmp ugt i32 %2, %index, !dbg !3901
  br i1 %cmp, label %if.then, label %return, !dbg !3902

if.then:                                          ; preds = %entry
  %block_info = getelementptr inbounds %struct.dataflow, %struct.dataflow* %1, i64 0, i32 1, !dbg !3903
  %3 = load i8**, i8*** %block_info, align 8, !dbg !3903
  %idxprom = zext i32 %index to i64, !dbg !3904
  %arrayidx3 = getelementptr inbounds i8*, i8** %3, i64 %idxprom, !dbg !3904
  %4 = bitcast i8** %arrayidx3 to %struct.df_rd_bb_info**, !dbg !3904
  %5 = load %struct.df_rd_bb_info*, %struct.df_rd_bb_info** %4, align 8, !dbg !3904
  br label %return, !dbg !3905

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %struct.df_rd_bb_info* [ %5, %if.then ], [ null, %entry ], !dbg !3906
  ret %struct.df_rd_bb_info* %retval.0, !dbg !3907
}

declare dso_local %union.df_ref_d* @df_bb_regno_first_def_find(%struct.basic_block_def*, i32) local_unnamed_addr #2

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

declare dso_local i32 @dep_cost(%struct._dep*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc %struct.ddg_edge* @create_ddg_edge(%struct.ddg_node* %src, %struct.ddg_node* %dest, i32 %t, i32 %dt, i32 %l, i32 %d) unnamed_addr #5 !dbg !3908 {
entry:
  call void @llvm.dbg.value(metadata %struct.ddg_node* %src, metadata !3912, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata %struct.ddg_node* %dest, metadata !3913, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata i32 %t, metadata !3914, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata i32 %dt, metadata !3915, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata i32 %l, metadata !3916, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.value(metadata i32 %d, metadata !3917, metadata !DIExpression()), !dbg !3919
  %call = tail call i8* @xmalloc(i64 56) #6, !dbg !3920
  %0 = bitcast i8* %call to %struct.ddg_edge*, !dbg !3921
  call void @llvm.dbg.value(metadata %struct.ddg_edge* %0, metadata !3918, metadata !DIExpression()), !dbg !3919
  %src1 = bitcast i8* %call to %struct.ddg_node**, !dbg !3922
  store %struct.ddg_node* %src, %struct.ddg_node** %src1, align 8, !dbg !3923
  %dest2 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !3924
  %1 = bitcast i8* %dest2 to %struct.ddg_node**, !dbg !3924
  store %struct.ddg_node* %dest, %struct.ddg_node** %1, align 8, !dbg !3925
  %type = getelementptr inbounds i8, i8* %call, i64 16, !dbg !3926
  %2 = bitcast i8* %type to i32*, !dbg !3926
  store i32 %t, i32* %2, align 8, !dbg !3927
  %data_type = getelementptr inbounds i8, i8* %call, i64 20, !dbg !3928
  %3 = bitcast i8* %data_type to i32*, !dbg !3928
  store i32 %dt, i32* %3, align 4, !dbg !3929
  %latency = getelementptr inbounds i8, i8* %call, i64 24, !dbg !3930
  %4 = bitcast i8* %latency to i32*, !dbg !3930
  store i32 %l, i32* %4, align 8, !dbg !3931
  %distance = getelementptr inbounds i8, i8* %call, i64 28, !dbg !3932
  %5 = bitcast i8* %distance to i32*, !dbg !3932
  store i32 %d, i32* %5, align 4, !dbg !3933
  %next_out = getelementptr inbounds i8, i8* %call, i64 40, !dbg !3934
  %6 = bitcast i8* %next_out to %struct.ddg_edge**, !dbg !3934
  store %struct.ddg_edge* null, %struct.ddg_edge** %6, align 8, !dbg !3935
  %next_in = getelementptr inbounds i8, i8* %call, i64 32, !dbg !3936
  %7 = bitcast i8* %next_in to %struct.ddg_edge**, !dbg !3936
  store %struct.ddg_edge* null, %struct.ddg_edge** %7, align 8, !dbg !3937
  %aux = getelementptr inbounds i8, i8* %call, i64 48, !dbg !3938
  %info = bitcast i8* %aux to i8**, !dbg !3939
  store i8* null, i8** %info, align 8, !dbg !3940
  ret %struct.ddg_edge* %0, !dbg !3941
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_edge_to_ddg(%struct.ddg* %g, %struct.ddg_edge* %e) unnamed_addr #5 !dbg !3942 {
entry:
  call void @llvm.dbg.value(metadata %struct.ddg* %g, metadata !3946, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata %struct.ddg_edge* %e, metadata !3947, metadata !DIExpression()), !dbg !3950
  %src1 = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %e, i64 0, i32 0, !dbg !3951
  %0 = load %struct.ddg_node*, %struct.ddg_node** %src1, align 8, !dbg !3951
  call void @llvm.dbg.value(metadata %struct.ddg_node* %0, metadata !3948, metadata !DIExpression()), !dbg !3950
  %dest2 = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %e, i64 0, i32 1, !dbg !3952
  %1 = load %struct.ddg_node*, %struct.ddg_node** %dest2, align 8, !dbg !3952
  call void @llvm.dbg.value(metadata %struct.ddg_node* %1, metadata !3949, metadata !DIExpression()), !dbg !3950
  %successors = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %0, i64 0, i32 5, !dbg !3953
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %successors, align 8, !dbg !3953
  %tobool = icmp eq %struct.simple_bitmap_def* %2, null, !dbg !3953
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !3953

land.lhs.true:                                    ; preds = %entry
  %predecessors = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %1, i64 0, i32 6, !dbg !3953
  %3 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %predecessors, align 8, !dbg !3953
  %tobool3 = icmp eq %struct.simple_bitmap_def* %3, null, !dbg !3953
  br i1 %tobool3, label %cond.true, label %cond.end, !dbg !3953

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 702, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3953
  %.pre = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %successors, align 8, !dbg !3954
  br label %cond.end, !dbg !3953

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %4 = phi %struct.simple_bitmap_def* [ %2, %land.lhs.true ], [ %.pre, %cond.true ], !dbg !3954
  %cuid = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %1, i64 0, i32 0, !dbg !3955
  %5 = load i32, i32* %cuid, align 8, !dbg !3955
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %4, i32 %5) #7, !dbg !3956
  %predecessors5 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %1, i64 0, i32 6, !dbg !3957
  %6 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %predecessors5, align 8, !dbg !3957
  %cuid6 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %0, i64 0, i32 0, !dbg !3958
  %7 = load i32, i32* %cuid6, align 8, !dbg !3958
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %6, i32 %7) #7, !dbg !3959
  %in = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %1, i64 0, i32 3, !dbg !3960
  %8 = bitcast %struct.ddg_edge** %in to i64*, !dbg !3960
  %9 = load i64, i64* %8, align 8, !dbg !3960
  %next_in = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %e, i64 0, i32 6, !dbg !3961
  %10 = bitcast %struct.ddg_edge** %next_in to i64*, !dbg !3962
  store i64 %9, i64* %10, align 8, !dbg !3962
  store %struct.ddg_edge* %e, %struct.ddg_edge** %in, align 8, !dbg !3963
  %out = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %0, i64 0, i32 4, !dbg !3964
  %11 = bitcast %struct.ddg_edge** %out to i64*, !dbg !3964
  %12 = load i64, i64* %11, align 8, !dbg !3964
  %next_out = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %e, i64 0, i32 7, !dbg !3965
  %13 = bitcast %struct.ddg_edge** %next_out to i64*, !dbg !3966
  store i64 %12, i64* %13, align 8, !dbg !3966
  store %struct.ddg_edge* %e, %struct.ddg_edge** %out, align 8, !dbg !3967
  ret void, !dbg !3968
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @rtx_mem_access_p(%struct.rtx_def* %x) unnamed_addr #5 !dbg !3969 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %x, metadata !3971, metadata !DIExpression()), !dbg !3976
  %cmp = icmp eq %struct.rtx_def* %x, null, !dbg !3977
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3979

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 0, !dbg !3980
  %bf.load = load i32, i32* %0, align 8, !dbg !3980
  %bf.clear = and i32 %bf.load, 65535, !dbg !3980
  %cmp1 = icmp eq i32 %bf.clear, 43, !dbg !3980
  br i1 %cmp1, label %cleanup, label %if.end3, !dbg !3982

if.end3:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 %bf.clear, metadata !3975, metadata !DIExpression()), !dbg !3976
  %idxprom = zext i32 %bf.clear to i64, !dbg !3983
  %arrayidx = getelementptr inbounds [139 x i8*], [139 x i8*]* @rtx_format, i64 0, i64 %idxprom, !dbg !3983
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !3983
  call void @llvm.dbg.value(metadata i8* %1, metadata !3974, metadata !DIExpression()), !dbg !3976
  %arrayidx7 = getelementptr inbounds [139 x i8], [139 x i8]* @rtx_length, i64 0, i64 %idxprom, !dbg !3984
  %2 = load i8, i8* %arrayidx7, align 1, !dbg !3984
  call void @llvm.dbg.value(metadata i8 %2, metadata !3972, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3976
  %u27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %x, i64 0, i32 1, !dbg !3986
  %fld28 = bitcast %union.u* %u27 to [1 x %union.rtunion_def]*, !dbg !3986
  %3 = zext i8 %2 to i64, !dbg !3993
  br label %for.cond, !dbg !3993

for.cond:                                         ; preds = %for.inc47, %if.end3
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.inc47 ], [ %3, %if.end3 ]
  %indvars.iv.next3 = add nsw i64 %indvars.iv2, -1, !dbg !3994
  call void @llvm.dbg.value(metadata i32 undef, metadata !3972, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3976
  %cmp8 = icmp sgt i64 %indvars.iv2, 0, !dbg !3995
  br i1 %cmp8, label %for.body, label %cleanup.loopexit1, !dbg !3996

for.body:                                         ; preds = %for.cond
  %arrayidx11 = getelementptr inbounds i8, i8* %1, i64 %indvars.iv.next3, !dbg !3997
  %4 = load i8, i8* %arrayidx11, align 1, !dbg !3997
  %cmp13 = icmp eq i8 %4, 101, !dbg !3998
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !3999

if.then15:                                        ; preds = %for.body
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i64 0, i64 %indvars.iv.next3, !dbg !4000
  %rt_rtx = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**, !dbg !4000
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !4000
  %call = tail call fastcc zeroext i8 @rtx_mem_access_p(%struct.rtx_def* %5) #7, !dbg !4003
  %tobool = icmp eq i8 %call, 0, !dbg !4003
  br i1 %tobool, label %for.inc47, label %cleanup.loopexit1, !dbg !4004

if.else:                                          ; preds = %for.body
  %cmp23 = icmp eq i8 %4, 69, !dbg !4005
  br i1 %cmp23, label %for.cond26.preheader, label %for.inc47, !dbg !4006

for.cond26.preheader:                             ; preds = %if.else
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i64 0, i64 %indvars.iv.next3, !dbg !3986
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtvec_def**, !dbg !3986
  br label %for.cond26, !dbg !4007

for.cond26:                                       ; preds = %for.cond26.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond26.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !4008
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3973, metadata !DIExpression()), !dbg !3976
  %6 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !4009
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %6, i64 0, i32 0, !dbg !4009
  %7 = load i32, i32* %num_elem, align 8, !dbg !4009
  %8 = sext i32 %7 to i64, !dbg !4010
  %cmp31 = icmp slt i64 %indvars.iv, %8, !dbg !4010
  br i1 %cmp31, label %for.body33, label %for.inc47.loopexit, !dbg !4007

for.body33:                                       ; preds = %for.cond26
  %arrayidx40 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %6, i64 0, i32 1, i64 %indvars.iv, !dbg !4011
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx40, align 8, !dbg !4011
  %call41 = tail call fastcc zeroext i8 @rtx_mem_access_p(%struct.rtx_def* %9) #7, !dbg !4014
  %tobool42 = icmp eq i8 %call41, 0, !dbg !4014
  br i1 %tobool42, label %for.inc, label %cleanup.loopexit, !dbg !4015

for.inc:                                          ; preds = %for.body33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4016
  call void @llvm.dbg.value(metadata i32 undef, metadata !3973, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3976
  br label %for.cond26, !dbg !4017, !llvm.loop !4018

for.inc47.loopexit:                               ; preds = %for.cond26
  br label %for.inc47, !dbg !4020

for.inc47:                                        ; preds = %for.inc47.loopexit, %if.then15, %if.else
  call void @llvm.dbg.value(metadata i32 undef, metadata !3972, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3976
  br label %for.cond, !dbg !4020, !llvm.loop !4021

cleanup.loopexit:                                 ; preds = %for.body33
  br label %cleanup, !dbg !4023

cleanup.loopexit1:                                ; preds = %for.cond, %if.then15
  %retval.0.ph = phi i8 [ 0, %for.cond ], [ 1, %if.then15 ]
  br label %cleanup, !dbg !4023

cleanup:                                          ; preds = %cleanup.loopexit1, %cleanup.loopexit, %if.end, %entry
  %retval.0 = phi i8 [ 0, %entry ], [ 1, %if.end ], [ 1, %cleanup.loopexit ], [ %retval.0.ph, %cleanup.loopexit1 ], !dbg !3976
  ret i8 %retval.0, !dbg !4023
}

declare dso_local zeroext i8 @insn_alias_sets_conflict_p(%struct.rtx_def*, %struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @create_ddg_dep_no_link(%struct.ddg* %g, %struct.ddg_node* %from, %struct.ddg_node* %to, i32 %d_t, i32 %d_dt, i32 %distance) unnamed_addr #5 !dbg !4024 {
entry:
  %_dep = alloca %struct._dep, align 8
  call void @llvm.dbg.value(metadata %struct.ddg* %g, metadata !4028, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata %struct.ddg_node* %from, metadata !4029, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata %struct.ddg_node* %to, metadata !4030, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 %d_t, metadata !4031, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 %d_dt, metadata !4032, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i32 1, metadata !4033, metadata !DIExpression()), !dbg !4040
  %0 = bitcast %struct._dep* %_dep to i8*, !dbg !4041
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !4041
  call void @llvm.dbg.value(metadata %struct._dep* %_dep, metadata !4038, metadata !DIExpression()), !dbg !4040
  %insn = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %to, i64 0, i32 1, !dbg !4042
  %1 = bitcast %struct.rtx_def** %insn to i32**, !dbg !4042
  %2 = load i32*, i32** %1, align 8, !dbg !4042
  %bf.load = load i32, i32* %2, align 8, !dbg !4042
  %bf.clear = and i32 %bf.load, 65535, !dbg !4042
  %cmp = icmp ne i32 %bf.clear, 7, !dbg !4042
  %cmp1 = icmp eq i32 %d_t, 2, !dbg !4042
  %or.cond = or i1 %cmp, %cmp1, !dbg !4042
  br i1 %or.cond, label %cond.end, label %cond.true, !dbg !4042

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 215, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4042
  br label %cond.end, !dbg !4042

cond.end:                                         ; preds = %entry, %cond.true
  %insn2 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %from, i64 0, i32 1, !dbg !4043
  %3 = bitcast %struct.rtx_def** %insn2 to i32**, !dbg !4043
  %4 = load i32*, i32** %3, align 8, !dbg !4043
  %bf.load3 = load i32, i32* %4, align 8, !dbg !4043
  %bf.clear4 = and i32 %bf.load3, 65535, !dbg !4043
  %cmp5 = icmp ne i32 %bf.clear4, 7, !dbg !4043
  %or.cond1 = or i1 %cmp5, %cmp1, !dbg !4043
  br i1 %or.cond1, label %cond.end10, label %cond.true8, !dbg !4043

cond.true8:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 216, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4043
  br label %cond.end10, !dbg !4043

cond.end10:                                       ; preds = %cond.end, %cond.true8
  switch i32 %d_t, label %cond.true17 [
    i32 2, label %if.end21
    i32 1, label %if.end
    i32 0, label %cond.end19
  ], !dbg !4044

cond.true17:                                      ; preds = %cond.end10
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 224, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4045
  br label %cond.end19, !dbg !4045

cond.end19:                                       ; preds = %cond.end10, %cond.true17
  call void @llvm.dbg.value(metadata i32 0, metadata !4036, metadata !DIExpression()), !dbg !4040
  br label %if.end

if.end:                                           ; preds = %cond.end10, %cond.end19
  %dep_kind.0 = phi i32 [ 0, %cond.end19 ], [ 11, %cond.end10 ], !dbg !4049
  call void @llvm.dbg.value(metadata i32 %dep_kind.0, metadata !4036, metadata !DIExpression()), !dbg !4040
  br label %if.end21

if.end21:                                         ; preds = %cond.end10, %if.end
  %dep_kind.1 = phi i32 [ %dep_kind.0, %if.end ], [ 12, %cond.end10 ], !dbg !4050
  call void @llvm.dbg.value(metadata i32 %dep_kind.1, metadata !4036, metadata !DIExpression()), !dbg !4040
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn2, align 8, !dbg !4051
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !4052
  call void @llvm.dbg.value(metadata %struct._dep* %_dep, metadata !4037, metadata !DIExpression(DW_OP_deref)), !dbg !4040
  call void @init_dep(%struct._dep* nonnull %_dep, %struct.rtx_def* %5, %struct.rtx_def* %6, i32 %dep_kind.1) #6, !dbg !4053
  call void @llvm.dbg.value(metadata %struct._dep* %_dep, metadata !4037, metadata !DIExpression(DW_OP_deref)), !dbg !4040
  %call = call i32 @dep_cost(%struct._dep* nonnull %_dep) #6, !dbg !4054
  call void @llvm.dbg.value(metadata i32 %call, metadata !4035, metadata !DIExpression()), !dbg !4040
  %call24 = call fastcc %struct.ddg_edge* @create_ddg_edge(%struct.ddg_node* %from, %struct.ddg_node* %to, i32 %d_t, i32 %d_dt, i32 %call, i32 1) #7, !dbg !4055
  call void @llvm.dbg.value(metadata %struct.ddg_edge* %call24, metadata !4034, metadata !DIExpression()), !dbg !4040
  call fastcc void @add_backarc_to_ddg(%struct.ddg* %g, %struct.ddg_edge* %call24) #7, !dbg !4056
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !4058
  ret void, !dbg !4058
}

declare dso_local void @init_dep(%struct._dep*, %struct.rtx_def*, %struct.rtx_def*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @add_backarc_to_ddg(%struct.ddg* %g, %struct.ddg_edge* %e) unnamed_addr #5 !dbg !4059 {
entry:
  call void @llvm.dbg.value(metadata %struct.ddg* %g, metadata !4061, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.value(metadata %struct.ddg_edge* %e, metadata !4062, metadata !DIExpression()), !dbg !4064
  %num_backarcs = getelementptr inbounds %struct.ddg, %struct.ddg* %g, i64 0, i32 8, !dbg !4065
  %0 = load i32, i32* %num_backarcs, align 4, !dbg !4065
  %add = shl i32 %0, 3, !dbg !4066
  %mul = add i32 %add, 8, !dbg !4066
  call void @llvm.dbg.value(metadata i32 %mul, metadata !4063, metadata !DIExpression()), !dbg !4064
  tail call fastcc void @add_edge_to_ddg(%struct.ddg* %g, %struct.ddg_edge* %e) #7, !dbg !4067
  %backarcs = getelementptr inbounds %struct.ddg, %struct.ddg* %g, i64 0, i32 9, !dbg !4068
  %1 = bitcast %struct.ddg_edge*** %backarcs to i8**, !dbg !4068
  %2 = load i8*, i8** %1, align 8, !dbg !4068
  %conv2 = sext i32 %mul to i64, !dbg !4069
  %call = tail call i8* @xrealloc(i8* %2, i64 %conv2) #6, !dbg !4070
  store i8* %call, i8** %1, align 8, !dbg !4071
  %.cast = bitcast i8* %call to %struct.ddg_edge**, !dbg !4072
  %3 = load i32, i32* %num_backarcs, align 4, !dbg !4073
  %inc = add nsw i32 %3, 1, !dbg !4073
  store i32 %inc, i32* %num_backarcs, align 4, !dbg !4073
  %idxprom = sext i32 %3 to i64, !dbg !4074
  %arrayidx = getelementptr inbounds %struct.ddg_edge*, %struct.ddg_edge** %.cast, i64 %idxprom, !dbg !4074
  store %struct.ddg_edge* %e, %struct.ddg_edge** %arrayidx, align 8, !dbg !4075
  ret void, !dbg !4076
}

declare dso_local i8* @xrealloc(i8*, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* %bi, %struct.bitmap_head_def* %map, i32 %start_bit, i32* %bit_no) unnamed_addr #0 !dbg !4077 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4085, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map, metadata !4086, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i32 0, metadata !4087, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !4088, metadata !DIExpression()), !dbg !4089
  %0 = bitcast %struct.bitmap_head_def* %map to i64*, !dbg !4090
  %1 = load i64, i64* %0, align 8, !dbg !4090
  %2 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !4091
  store i64 %1, i64* %2, align 8, !dbg !4091
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !4092
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elt2, align 8, !dbg !4093
  %elt11 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !4094
  %3 = inttoptr i64 %1 to %struct.bitmap_element_def*, !dbg !4097
  br label %while.body, !dbg !4097

while.body:                                       ; preds = %entry, %if.end5
  %tobool = icmp eq i64 %1, 0, !dbg !4098
  br i1 %tobool, label %if.then, label %if.end, !dbg !4099

if.then:                                          ; preds = %while.body
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt11, align 8, !dbg !4100
  br label %while.end, !dbg !4102

if.end:                                           ; preds = %while.body
  br i1 false, label %if.end5, label %while.end.loopexit, !dbg !4103

if.end5:                                          ; preds = %if.end
  br label %while.body, !dbg !4097, !llvm.loop !4104

while.end.loopexit:                               ; preds = %if.end
  br label %while.end, !dbg !4106

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %4 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %5 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %6 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ], !dbg !4106
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %6, i64 0, i32 2, !dbg !4108
  %7 = load i32, i32* %indx9, align 8, !dbg !4108
  %cmp11 = icmp eq i32 %7, 0, !dbg !4109
  br i1 %cmp11, label %if.end15, label %if.then12, !dbg !4110

if.then12:                                        ; preds = %while.end
  %indx14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i64 0, i32 2, !dbg !4111
  %8 = load i32, i32* %indx14, align 8, !dbg !4111
  %mul = shl i32 %8, 7, !dbg !4112
  call void @llvm.dbg.value(metadata i32 %mul, metadata !4087, metadata !DIExpression()), !dbg !4089
  br label %if.end15, !dbg !4113

if.end15:                                         ; preds = %while.end, %if.then12
  %start_bit.addr.0 = phi i32 [ %mul, %if.then12 ], [ 0, %while.end ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.0, metadata !4087, metadata !DIExpression()), !dbg !4089
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !4114
  store i32 0, i32* %word_no, align 8, !dbg !4115
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %4, i64 0, i32 3, i64 0, !dbg !4116
  %9 = load i64, i64* %arrayidx, align 8, !dbg !4116
  %bits21 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !4117
  store i64 %9, i64* %bits21, align 8, !dbg !4118
  %tobool23 = icmp eq i64 %9, 0, !dbg !4119
  %lnot.ext = zext i1 %tobool23 to i32, !dbg !4119
  %add = or i32 %start_bit.addr.0, %lnot.ext, !dbg !4120
  call void @llvm.dbg.value(metadata i32 %add, metadata !4087, metadata !DIExpression()), !dbg !4089
  store i32 %add, i32* %bit_no, align 4, !dbg !4121
  ret void, !dbg !4122
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !4123 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4127, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !4128, metadata !DIExpression()), !dbg !4132
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !4133
  %0 = load i64, i64* %bits, align 8, !dbg !4133
  %tobool = icmp eq i64 %0, 0, !dbg !4134
  br i1 %tobool, label %if.end, label %next_bit, !dbg !4135

next_bit.loopexit:                                ; preds = %while.body9
  %.lcssa6 = phi i64 [ %10, %while.body9 ], !dbg !4136
  br label %next_bit, !dbg !4139

next_bit:                                         ; preds = %next_bit.loopexit, %entry
  %1 = phi i64 [ %.lcssa6, %next_bit.loopexit ], [ %0, %entry ]
  call void @llvm.dbg.label(metadata !4129), !dbg !4140
  br label %while.cond, !dbg !4139

while.cond:                                       ; preds = %while.body, %next_bit
  %2 = phi i64 [ %.pre, %while.body ], [ %1, %next_bit ], !dbg !4141
  %and = and i64 %2, 1, !dbg !4142
  %tobool2 = icmp eq i64 %and, 0, !dbg !4143
  br i1 %tobool2, label %while.body, label %return.loopexit, !dbg !4139

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %2, 1, !dbg !4144
  store i64 %shr, i64* %bits, align 8, !dbg !4144
  %3 = load i32, i32* %bit_no, align 4, !dbg !4146
  %add = add i32 %3, 1, !dbg !4146
  store i32 %add, i32* %bit_no, align 4, !dbg !4146
  %.pre = load i64, i64* %bits, align 8, !dbg !4141
  br label %while.cond, !dbg !4139, !llvm.loop !4147

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bit_no, align 4, !dbg !4149
  %sub = add i32 %4, 63, !dbg !4150
  %div = and i32 %sub, -64, !dbg !4151
  store i32 %div, i32* %bit_no, align 4, !dbg !4152
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !4153
  %5 = load i32, i32* %word_no, align 8, !dbg !4154
  %inc = add i32 %5, 1, !dbg !4154
  store i32 %inc, i32* %word_no, align 8, !dbg !4154
  %elt1 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !4155
  %6 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !4155
  br label %while.body6, !dbg !4156

while.body6:                                      ; preds = %if.end, %if.end26
  %7 = phi i32 [ %inc, %if.end ], [ 0, %if.end26 ]
  br label %while.cond7, !dbg !4157

while.cond7:                                      ; preds = %if.end16, %while.body6
  %8 = phi i32 [ %inc19, %if.end16 ], [ %7, %while.body6 ], !dbg !4158
  %cmp = icmp eq i32 %8, 2, !dbg !4159
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt1, align 8, !dbg !4155
  br i1 %cmp, label %while.end20, label %while.body9, !dbg !4157

while.body9:                                      ; preds = %while.cond7
  %idxprom = zext i32 %8 to i64, !dbg !4136
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i64 0, i32 3, i64 %idxprom, !dbg !4136
  %10 = load i64, i64* %arrayidx, align 8, !dbg !4136
  store i64 %10, i64* %bits, align 8, !dbg !4160
  %tobool14 = icmp eq i64 %10, 0, !dbg !4161
  br i1 %tobool14, label %if.end16, label %next_bit.loopexit, !dbg !4163

if.end16:                                         ; preds = %while.body9
  %11 = load i32, i32* %bit_no, align 4, !dbg !4164
  %add17 = add i32 %11, 64, !dbg !4164
  store i32 %add17, i32* %bit_no, align 4, !dbg !4164
  %12 = load i32, i32* %word_no, align 8, !dbg !4165
  %inc19 = add i32 %12, 1, !dbg !4165
  store i32 %inc19, i32* %word_no, align 8, !dbg !4165
  br label %while.cond7, !dbg !4157, !llvm.loop !4166

while.end20:                                      ; preds = %while.cond7
  %.lcssa = phi %struct.bitmap_element_def* [ %9, %while.cond7 ], !dbg !4155
  %13 = bitcast %struct.bitmap_element_def* %.lcssa to i64*, !dbg !4168
  %14 = load i64, i64* %13, align 8, !dbg !4168
  store i64 %14, i64* %6, align 8, !dbg !4169
  %tobool24 = icmp eq i64 %14, 0, !dbg !4170
  br i1 %tobool24, label %return.loopexit1, label %if.end26, !dbg !4172

if.end26:                                         ; preds = %while.end20
  %15 = inttoptr i64 %14 to %struct.bitmap_element_def*, !dbg !4172
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !4173
  %16 = load i32, i32* %indx, align 8, !dbg !4173
  %mul28 = shl i32 %16, 7, !dbg !4174
  store i32 %mul28, i32* %bit_no, align 4, !dbg !4175
  store i32 0, i32* %word_no, align 8, !dbg !4176
  br label %while.body6, !dbg !4156, !llvm.loop !4177

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !4179

return.loopexit1:                                 ; preds = %while.end20
  br label %return, !dbg !4179

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i8 [ 1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !4132
  ret i8 %retval.0, !dbg !4179
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_cross_iteration_register_deps(%struct.ddg* %g, %union.df_ref_d* %last_def) unnamed_addr #5 !dbg !4180 {
entry:
  call void @llvm.dbg.value(metadata %struct.ddg* %g, metadata !4184, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata %union.df_ref_d* %last_def, metadata !4185, metadata !DIExpression()), !dbg !4204
  %regno1 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %last_def, i64 0, i32 0, i32 0, i32 0, i32 6, !dbg !4205
  %0 = load i32, i32* %regno1, align 8, !dbg !4205
  call void @llvm.dbg.value(metadata i32 %0, metadata !4186, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata i32 0, metadata !4188, metadata !DIExpression()), !dbg !4204
  %insn_info = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %last_def, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !4206
  %1 = load %struct.df_insn_info*, %struct.df_insn_info** %insn_info, align 8, !dbg !4206
  %insn = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %1, i64 0, i32 0, !dbg !4206
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8, !dbg !4206
  call void @llvm.dbg.value(metadata %struct.rtx_def* %2, metadata !4189, metadata !DIExpression()), !dbg !4204
  %call = tail call %struct.ddg_node* @get_node_of_insn(%struct.ddg* %g, %struct.rtx_def* %2) #7, !dbg !4207
  call void @llvm.dbg.value(metadata %struct.ddg_node* %call, metadata !4190, metadata !DIExpression()), !dbg !4204
  %bb = getelementptr inbounds %struct.ddg, %struct.ddg* %g, i64 0, i32 0, !dbg !4208
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !4208
  %call3 = tail call %union.df_ref_d* @df_bb_regno_first_def_find(%struct.basic_block_def* %3, i32 %0) #6, !dbg !4209
  call void @llvm.dbg.value(metadata %union.df_ref_d* %call3, metadata !4192, metadata !DIExpression()), !dbg !4204
  %tobool = icmp eq %struct.ddg_node* %call, null, !dbg !4210
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4210

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 261, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4210
  br label %cond.end, !dbg !4210

cond.end:                                         ; preds = %entry, %cond.true
  %tobool4 = icmp eq %union.df_ref_d* %call3, null, !dbg !4211
  br i1 %tobool4, label %cond.true5, label %cond.end7, !dbg !4211

cond.true5:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 262, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4211
  br label %cond.end7, !dbg !4211

cond.end7:                                        ; preds = %cond.end, %cond.true5
  %chain = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %last_def, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !4212
  %cuid21 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %call, i64 0, i32 0, !dbg !4213
  %insn_info31 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %call3, i64 0, i32 0, i32 0, i32 0, i32 3, !dbg !4214
  %id = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %last_def, i64 0, i32 0, i32 0, i32 0, i32 7, !dbg !4215
  %id41 = getelementptr inbounds %union.df_ref_d, %union.df_ref_d* %call3, i64 0, i32 0, i32 0, i32 0, i32 7, !dbg !4215
  br label %for.cond, !dbg !4217

for.cond:                                         ; preds = %cleanup, %cond.end7
  %r_use.0.in = phi %struct.df_link** [ %chain, %cond.end7 ], [ %next, %cleanup ]
  %has_use_in_bb_p.0 = phi i32 [ 0, %cond.end7 ], [ %has_use_in_bb_p.1, %cleanup ], !dbg !4218
  %r_use.0 = load %struct.df_link*, %struct.df_link** %r_use.0.in, align 8, !dbg !4219
  call void @llvm.dbg.value(metadata i32 %has_use_in_bb_p.0, metadata !4188, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata %struct.df_link* %r_use.0, metadata !4187, metadata !DIExpression()), !dbg !4204
  %cmp = icmp eq %struct.df_link* %r_use.0, null, !dbg !4220
  br i1 %cmp, label %for.end, label %for.body, !dbg !4221

for.body:                                         ; preds = %for.cond
  %4 = bitcast %struct.df_link* %r_use.0 to %struct.df_base_ref**, !dbg !4222
  %5 = load %struct.df_base_ref*, %struct.df_base_ref** %4, align 8, !dbg !4222
  %insn_info11 = getelementptr inbounds %struct.df_base_ref, %struct.df_base_ref* %5, i64 0, i32 3, !dbg !4222
  %6 = load %struct.df_insn_info*, %struct.df_insn_info** %insn_info11, align 8, !dbg !4222
  %insn12 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %6, i64 0, i32 0, !dbg !4222
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn12, align 8, !dbg !4222
  call void @llvm.dbg.value(metadata %struct.rtx_def* %7, metadata !4193, metadata !DIExpression()), !dbg !4223
  %arrayidx = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i64 0, i32 1, i32 0, i32 1, !dbg !4224
  %rt_bb = bitcast %struct.object_block** %arrayidx to %struct.basic_block_def**, !dbg !4224
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %rt_bb, align 8, !dbg !4224
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !4226
  %cmp14 = icmp eq %struct.basic_block_def* %8, %9, !dbg !4227
  br i1 %cmp14, label %if.end, label %cleanup, !dbg !4228

if.end:                                           ; preds = %for.body
  %call15 = tail call %struct.ddg_node* @get_node_of_insn(%struct.ddg* %g, %struct.rtx_def* %7) #7, !dbg !4229
  call void @llvm.dbg.value(metadata %struct.ddg_node* %call15, metadata !4191, metadata !DIExpression()), !dbg !4204
  %tobool16 = icmp eq %struct.ddg_node* %call15, null, !dbg !4230
  br i1 %tobool16, label %cond.true17, label %cond.end19, !dbg !4230

cond.true17:                                      ; preds = %if.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 279, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4230
  br label %cond.end19, !dbg !4230

cond.end19:                                       ; preds = %if.end, %cond.true17
  call void @llvm.dbg.value(metadata i32 1, metadata !4188, metadata !DIExpression()), !dbg !4204
  %cuid = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %call15, i64 0, i32 0, !dbg !4231
  %10 = load i32, i32* %cuid, align 8, !dbg !4231
  %11 = load i32, i32* %cuid21, align 8, !dbg !4232
  %cmp22 = icmp sgt i32 %10, %11, !dbg !4233
  %12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i64 0, i32 0, !dbg !4213
  %bf.load = load i32, i32* %12, align 8, !dbg !4213
  %bf.clear = and i32 %bf.load, 65535, !dbg !4213
  %cmp24 = icmp eq i32 %bf.clear, 7, !dbg !4213
  br i1 %cmp22, label %if.else, label %if.then23, !dbg !4234

if.then23:                                        ; preds = %cond.end19
  %cond25 = select i1 %cmp24, i32 2, i32 0, !dbg !4235
  tail call fastcc void @create_ddg_dep_no_link(%struct.ddg* %g, %struct.ddg_node* %call, %struct.ddg_node* %call15, i32 %cond25, i32 1, i32 1) #7, !dbg !4237
  br label %cleanup, !dbg !4238

if.else:                                          ; preds = %cond.end19
  br i1 %cmp24, label %cleanup, label %if.then29, !dbg !4239

if.then29:                                        ; preds = %if.else
  %13 = load %struct.df_insn_info*, %struct.df_insn_info** %insn_info31, align 8, !dbg !4240
  %insn32 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %13, i64 0, i32 0, !dbg !4240
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn32, align 8, !dbg !4240
  %call33 = tail call %struct.ddg_node* @get_node_of_insn(%struct.ddg* %g, %struct.rtx_def* %14) #7, !dbg !4241
  call void @llvm.dbg.value(metadata %struct.ddg_node* %call33, metadata !4197, metadata !DIExpression()), !dbg !4214
  %tobool34 = icmp eq %struct.ddg_node* %call33, null, !dbg !4242
  br i1 %tobool34, label %cond.true35, label %cond.end37, !dbg !4242

cond.true35:                                      ; preds = %if.then29
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 301, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4242
  br label %cond.end37, !dbg !4242

cond.end37:                                       ; preds = %if.then29, %cond.true35
  %15 = load i32, i32* %id, align 4, !dbg !4243
  %16 = load i32, i32* %id41, align 4, !dbg !4244
  %cmp42 = icmp eq i32 %15, %16, !dbg !4245
  %17 = load i32, i32* @flag_modulo_sched_allow_regmoves, align 4, !dbg !4246
  %tobool43 = icmp ne i32 %17, 0, !dbg !4246
  %or.cond = and i1 %cmp42, %tobool43, !dbg !4247
  br i1 %or.cond, label %cleanup, label %if.then44, !dbg !4247

if.then44:                                        ; preds = %cond.end37
  tail call fastcc void @create_ddg_dep_no_link(%struct.ddg* %g, %struct.ddg_node* %call15, %struct.ddg_node* %call33, i32 2, i32 1, i32 1) #7, !dbg !4248
  br label %cleanup, !dbg !4248

cleanup:                                          ; preds = %for.body, %if.then23, %if.then44, %cond.end37, %if.else
  %has_use_in_bb_p.1 = phi i32 [ %has_use_in_bb_p.0, %for.body ], [ 1, %if.else ], [ 1, %cond.end37 ], [ 1, %if.then44 ], [ 1, %if.then23 ], !dbg !4204
  call void @llvm.dbg.value(metadata i32 %has_use_in_bb_p.1, metadata !4188, metadata !DIExpression()), !dbg !4204
  %next = getelementptr inbounds %struct.df_link, %struct.df_link* %r_use.0, i64 0, i32 1, !dbg !4249
  br label %for.cond, !dbg !4250, !llvm.loop !4251

for.end:                                          ; preds = %for.cond
  %has_use_in_bb_p.0.lcssa = phi i32 [ %has_use_in_bb_p.0, %for.cond ], !dbg !4218
  call void @llvm.dbg.value(metadata i32 %has_use_in_bb_p.0.lcssa, metadata !4188, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata i32 %has_use_in_bb_p.0.lcssa, metadata !4188, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.value(metadata i32 %has_use_in_bb_p.0.lcssa, metadata !4188, metadata !DIExpression()), !dbg !4204
  %tobool48 = icmp eq i32 %has_use_in_bb_p.0.lcssa, 0, !dbg !4253
  br i1 %tobool48, label %if.then49, label %cleanup.cont78, !dbg !4254

if.then49:                                        ; preds = %for.end
  %18 = load i32, i32* %id, align 4, !dbg !4255
  %19 = load i32, i32* %id41, align 4, !dbg !4257
  %cmp54 = icmp eq i32 %18, %19, !dbg !4258
  br i1 %cmp54, label %cleanup66, label %if.end56, !dbg !4259

if.end56:                                         ; preds = %if.then49
  %20 = load %struct.df_insn_info*, %struct.df_insn_info** %insn_info31, align 8, !dbg !4260
  %insn59 = getelementptr inbounds %struct.df_insn_info, %struct.df_insn_info* %20, i64 0, i32 0, !dbg !4260
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn59, align 8, !dbg !4260
  %call60 = tail call %struct.ddg_node* @get_node_of_insn(%struct.ddg* %g, %struct.rtx_def* %21) #7, !dbg !4261
  call void @llvm.dbg.value(metadata %struct.ddg_node* %call60, metadata !4201, metadata !DIExpression()), !dbg !4262
  %tobool61 = icmp eq %struct.ddg_node* %call60, null, !dbg !4263
  br i1 %tobool61, label %cond.true62, label %cond.end64, !dbg !4263

cond.true62:                                      ; preds = %if.end56
  tail call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 325, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4263
  br label %cond.end64, !dbg !4263

cond.end64:                                       ; preds = %if.end56, %cond.true62
  tail call fastcc void @create_ddg_dep_no_link(%struct.ddg* %g, %struct.ddg_node* %call, %struct.ddg_node* %call60, i32 1, i32 1, i32 1) #7, !dbg !4264
  br label %cleanup66, !dbg !4265

cleanup66:                                        ; preds = %if.then49, %cond.end64
  ret void

cleanup.cont78:                                   ; preds = %for.end
  ret void, !dbg !4266
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_next(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !4267 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !4271, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !4272, metadata !DIExpression()), !dbg !4273
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !4274
  %0 = load i64, i64* %bits, align 8, !dbg !4275
  %shr = lshr i64 %0, 1, !dbg !4275
  store i64 %shr, i64* %bits, align 8, !dbg !4275
  %1 = load i32, i32* %bit_no, align 4, !dbg !4276
  %add = add i32 %1, 1, !dbg !4276
  store i32 %add, i32* %bit_no, align 4, !dbg !4276
  ret void, !dbg !4277
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @add_backarc_to_scc(%struct.ddg_scc* %scc, %struct.ddg_edge* %e) unnamed_addr #5 !dbg !4278 {
entry:
  call void @llvm.dbg.value(metadata %struct.ddg_scc* %scc, metadata !4282, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata %struct.ddg_edge* %e, metadata !4283, metadata !DIExpression()), !dbg !4285
  %num_backarcs = getelementptr inbounds %struct.ddg_scc, %struct.ddg_scc* %scc, i64 0, i32 2, !dbg !4286
  %0 = load i32, i32* %num_backarcs, align 8, !dbg !4286
  %add = shl i32 %0, 3, !dbg !4287
  %mul = add i32 %add, 8, !dbg !4287
  call void @llvm.dbg.value(metadata i32 %mul, metadata !4284, metadata !DIExpression()), !dbg !4285
  %backarcs = getelementptr inbounds %struct.ddg_scc, %struct.ddg_scc* %scc, i64 0, i32 1, !dbg !4288
  %1 = bitcast %struct.ddg_edge*** %backarcs to i8**, !dbg !4288
  %2 = load i8*, i8** %1, align 8, !dbg !4288
  %conv2 = sext i32 %mul to i64, !dbg !4289
  %call = tail call i8* @xrealloc(i8* %2, i64 %conv2) #6, !dbg !4290
  store i8* %call, i8** %1, align 8, !dbg !4291
  %.cast = bitcast i8* %call to %struct.ddg_edge**, !dbg !4292
  %3 = load i32, i32* %num_backarcs, align 8, !dbg !4293
  %inc = add nsw i32 %3, 1, !dbg !4293
  store i32 %inc, i32* %num_backarcs, align 8, !dbg !4293
  %idxprom = sext i32 %3 to i64, !dbg !4294
  %arrayidx = getelementptr inbounds %struct.ddg_edge*, %struct.ddg_edge** %.cast, i64 %idxprom, !dbg !4294
  store %struct.ddg_edge* %e, %struct.ddg_edge** %arrayidx, align 8, !dbg !4295
  ret void, !dbg !4296
}

; Function Attrs: nounwind uwtable
define internal fastcc void @set_recurrence_length(%struct.ddg_scc* %scc, %struct.ddg* %g) unnamed_addr #5 !dbg !4297 {
entry:
  call void @llvm.dbg.value(metadata %struct.ddg_scc* %scc, metadata !4301, metadata !DIExpression()), !dbg !4313
  call void @llvm.dbg.value(metadata %struct.ddg* %g, metadata !4302, metadata !DIExpression()), !dbg !4313
  call void @llvm.dbg.value(metadata i32 -1, metadata !4304, metadata !DIExpression()), !dbg !4313
  call void @llvm.dbg.value(metadata i32 0, metadata !4303, metadata !DIExpression()), !dbg !4313
  %num_backarcs = getelementptr inbounds %struct.ddg_scc, %struct.ddg_scc* %scc, i64 0, i32 2, !dbg !4314
  %backarcs = getelementptr inbounds %struct.ddg_scc, %struct.ddg_scc* %scc, i64 0, i32 1, !dbg !4315
  %nodes = getelementptr inbounds %struct.ddg_scc, %struct.ddg_scc* %scc, i64 0, i32 0, !dbg !4315
  br label %for.cond, !dbg !4316

for.cond:                                         ; preds = %cleanup, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %cleanup ], [ 0, %entry ], !dbg !4317
  %result.0 = phi i32 [ %result.1, %cleanup ], [ -1, %entry ], !dbg !4317
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4303, metadata !DIExpression()), !dbg !4313
  call void @llvm.dbg.value(metadata i32 %result.0, metadata !4304, metadata !DIExpression()), !dbg !4313
  %0 = load i32, i32* %num_backarcs, align 8, !dbg !4318
  %1 = sext i32 %0 to i64, !dbg !4319
  %cmp = icmp slt i64 %indvars.iv, %1, !dbg !4319
  br i1 %cmp, label %for.body, label %for.end, !dbg !4320

for.body:                                         ; preds = %for.cond
  %2 = load %struct.ddg_edge**, %struct.ddg_edge*** %backarcs, align 8, !dbg !4321
  %arrayidx = getelementptr inbounds %struct.ddg_edge*, %struct.ddg_edge** %2, i64 %indvars.iv, !dbg !4322
  %3 = load %struct.ddg_edge*, %struct.ddg_edge** %arrayidx, align 8, !dbg !4322
  call void @llvm.dbg.value(metadata %struct.ddg_edge* %3, metadata !4305, metadata !DIExpression()), !dbg !4315
  %distance1 = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %3, i64 0, i32 5, !dbg !4323
  %4 = load i32, i32* %distance1, align 4, !dbg !4323
  call void @llvm.dbg.value(metadata i32 %4, metadata !4310, metadata !DIExpression()), !dbg !4315
  %dest = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %3, i64 0, i32 1, !dbg !4324
  %5 = load %struct.ddg_node*, %struct.ddg_node** %dest, align 8, !dbg !4324
  call void @llvm.dbg.value(metadata %struct.ddg_node* %5, metadata !4311, metadata !DIExpression()), !dbg !4315
  %src3 = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %3, i64 0, i32 0, !dbg !4325
  %6 = load %struct.ddg_node*, %struct.ddg_node** %src3, align 8, !dbg !4325
  call void @llvm.dbg.value(metadata %struct.ddg_node* %6, metadata !4312, metadata !DIExpression()), !dbg !4315
  %cuid = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %5, i64 0, i32 0, !dbg !4326
  %7 = load i32, i32* %cuid, align 8, !dbg !4326
  %cuid4 = getelementptr inbounds %struct.ddg_node, %struct.ddg_node* %6, i64 0, i32 0, !dbg !4327
  %8 = load i32, i32* %cuid4, align 8, !dbg !4327
  %9 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes, align 8, !dbg !4328
  %call = tail call i32 @longest_simple_path(%struct.ddg* %g, i32 %7, i32 %8, %struct.simple_bitmap_def* %9) #7, !dbg !4329
  call void @llvm.dbg.value(metadata i32 %call, metadata !4309, metadata !DIExpression()), !dbg !4315
  %cmp5 = icmp slt i32 %call, 0, !dbg !4330
  br i1 %cmp5, label %cleanup, label %if.end, !dbg !4332

if.end:                                           ; preds = %for.body
  %latency = getelementptr inbounds %struct.ddg_edge, %struct.ddg_edge* %3, i64 0, i32 4, !dbg !4333
  %10 = load i32, i32* %latency, align 8, !dbg !4333
  %add = add nsw i32 %call, %10, !dbg !4334
  call void @llvm.dbg.value(metadata i32 %add, metadata !4309, metadata !DIExpression()), !dbg !4315
  %div = sdiv i32 %add, %4, !dbg !4335
  %cmp6 = icmp sgt i32 %result.0, %div, !dbg !4335
  %cond = select i1 %cmp6, i32 %result.0, i32 %div, !dbg !4335
  br label %cleanup, !dbg !4335

cleanup:                                          ; preds = %if.end, %for.body
  %result.1 = phi i32 [ %result.0, %for.body ], [ %cond, %if.end ], !dbg !4313
  call void @llvm.dbg.value(metadata i32 %result.1, metadata !4304, metadata !DIExpression()), !dbg !4313
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4336
  call void @llvm.dbg.value(metadata i32 undef, metadata !4303, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4313
  br label %for.cond, !dbg !4337, !llvm.loop !4338

for.end:                                          ; preds = %for.cond
  %result.0.lcssa = phi i32 [ %result.0, %for.cond ], !dbg !4317
  call void @llvm.dbg.value(metadata i32 %result.0.lcssa, metadata !4304, metadata !DIExpression()), !dbg !4313
  call void @llvm.dbg.value(metadata i32 %result.0.lcssa, metadata !4304, metadata !DIExpression()), !dbg !4313
  call void @llvm.dbg.value(metadata i32 %result.0.lcssa, metadata !4304, metadata !DIExpression()), !dbg !4313
  %recurrence_length = getelementptr inbounds %struct.ddg_scc, %struct.ddg_scc* %scc, i64 0, i32 3, !dbg !4340
  store i32 %result.0.lcssa, i32* %recurrence_length, align 4, !dbg !4341
  ret void, !dbg !4342
}

declare dso_local void @spec_qsort(i8*, i64, i64, i32 (i8*, i8*)*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @compare_sccs(i8* %s1, i8* %s2) #5 !dbg !4343 {
entry:
  call void @llvm.dbg.value(metadata i8* %s1, metadata !4345, metadata !DIExpression()), !dbg !4350
  call void @llvm.dbg.value(metadata i8* %s2, metadata !4346, metadata !DIExpression()), !dbg !4350
  %0 = bitcast i8* %s1 to %struct.ddg_scc**, !dbg !4351
  %1 = load %struct.ddg_scc*, %struct.ddg_scc** %0, align 8, !dbg !4352
  %recurrence_length = getelementptr inbounds %struct.ddg_scc, %struct.ddg_scc* %1, i64 0, i32 3, !dbg !4353
  %2 = load i32, i32* %recurrence_length, align 4, !dbg !4353
  call void @llvm.dbg.value(metadata i32 %2, metadata !4347, metadata !DIExpression()), !dbg !4350
  %3 = bitcast i8* %s2 to %struct.ddg_scc**, !dbg !4354
  %4 = load %struct.ddg_scc*, %struct.ddg_scc** %3, align 8, !dbg !4355
  %recurrence_length1 = getelementptr inbounds %struct.ddg_scc, %struct.ddg_scc* %4, i64 0, i32 3, !dbg !4356
  %5 = load i32, i32* %recurrence_length1, align 4, !dbg !4356
  call void @llvm.dbg.value(metadata i32 %5, metadata !4349, metadata !DIExpression()), !dbg !4350
  %cmp = icmp sgt i32 %5, %2, !dbg !4357
  %conv = zext i1 %cmp to i32, !dbg !4357
  %cmp2 = icmp slt i32 %5, %2, !dbg !4358
  %conv3 = zext i1 %cmp2 to i32, !dbg !4358
  %sub = sub nsw i32 %conv, %conv3, !dbg !4359
  ret i32 %sub, !dbg !4360
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
attributes #7 = { nobuiltin }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1931, !1932, !1933}
!llvm.ident = !{!1934}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "mem_ref_p", scope: !2, file: !3, line: 65, type: !599, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !597, globals: !1889, nameTableKind: None)
!3 = !DIFile(filename: "ddg.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !141, !147, !152, !161, !165, !170, !189, !196, !203, !397, !403, !409, !552, !558, !563}
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
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "eh_region_type", file: !135, line: 30, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./except.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "ERT_CLEANUP", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "ERT_TRY", value: 1, isUnsigned: true)
!139 = !DIEnumerator(name: "ERT_ALLOWED_EXCEPTIONS", value: 2, isUnsigned: true)
!140 = !DIEnumerator(name: "ERT_MUST_NOT_THROW", value: 3, isUnsigned: true)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !142, line: 363, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!145 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!146 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !142, line: 355, baseType: !7, size: 32, elements: !148)
!148 = !{!149, !150, !151}
!149 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!150 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!151 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lpt_dec", file: !153, line: 31, baseType: !7, size: 32, elements: !154)
!153 = !DIFile(filename: "./cfgloop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!154 = !{!155, !156, !157, !158, !159, !160}
!155 = !DIEnumerator(name: "LPT_NONE", value: 0, isUnsigned: true)
!156 = !DIEnumerator(name: "LPT_PEEL_COMPLETELY", value: 1, isUnsigned: true)
!157 = !DIEnumerator(name: "LPT_PEEL_SIMPLE", value: 2, isUnsigned: true)
!158 = !DIEnumerator(name: "LPT_UNROLL_CONSTANT", value: 3, isUnsigned: true)
!159 = !DIEnumerator(name: "LPT_UNROLL_RUNTIME", value: 4, isUnsigned: true)
!160 = !DIEnumerator(name: "LPT_UNROLL_STUPID", value: 5, isUnsigned: true)
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "loop_estimation", file: !153, line: 91, baseType: !7, size: 32, elements: !162)
!162 = !{!163, !164}
!163 = !DIEnumerator(name: "EST_NOT_COMPUTED", value: 0, isUnsigned: true)
!164 = !DIEnumerator(name: "EST_AVAILABLE", value: 1, isUnsigned: true)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !166, line: 474, baseType: !7, size: 32, elements: !167)
!166 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!167 = !{!168, !169}
!168 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!169 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !171, line: 280, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!172 = !{!173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188}
!173 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!174 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!175 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!176 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!177 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!178 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!179 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!180 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!181 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!182 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!183 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!184 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!185 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!186 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!187 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!188 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !171, line: 1817, baseType: !7, size: 32, elements: !190)
!190 = !{!191, !192, !193, !194, !195}
!191 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!192 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!193 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!194 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!195 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !171, line: 1805, baseType: !7, size: 32, elements: !197)
!197 = !{!198, !199, !200, !201, !202}
!198 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!199 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!200 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!201 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!202 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!203 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !171, line: 39, baseType: !7, size: 32, elements: !204)
!204 = !{!205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396}
!205 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!206 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!207 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!208 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!209 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!210 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!211 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!212 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!213 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!214 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!215 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!216 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!217 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!218 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!219 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!220 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!221 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!222 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!223 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!224 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!225 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!226 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!227 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!228 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!229 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!230 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!231 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!232 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!233 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!234 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!235 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!236 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!237 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!238 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!239 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!240 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!241 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!242 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!243 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!244 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!245 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!246 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!247 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!248 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!249 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!250 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!251 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!252 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!253 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!254 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!255 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!256 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!257 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!258 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!259 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!260 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!261 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!262 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!263 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!264 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!265 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!266 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!267 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!268 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!269 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!270 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!271 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!272 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!273 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!274 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!275 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!276 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!277 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!278 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!279 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!280 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!281 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!282 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!283 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!284 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!285 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!286 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!287 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!288 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!289 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!290 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!291 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!292 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!293 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!294 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!295 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!296 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!297 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!298 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!299 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!300 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!301 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!302 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!303 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!304 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!305 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!306 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!307 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!308 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!309 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!310 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!311 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!312 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!313 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!314 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!315 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!316 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!317 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!318 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!319 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!320 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!321 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!322 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!323 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!324 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!325 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!326 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!327 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!328 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!329 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!330 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!331 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!332 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!333 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!334 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!335 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!336 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!337 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!338 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!339 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!340 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!341 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!342 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!343 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!344 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!345 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!346 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!347 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!348 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!349 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!350 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!351 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!352 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!353 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!354 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!355 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!356 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!357 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!358 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!359 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!360 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!361 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!362 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!363 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!364 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!365 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!366 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!367 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!368 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!369 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!370 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!371 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!372 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!373 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!374 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!375 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!376 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!377 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!378 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!379 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!380 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!381 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!382 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!383 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!384 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!385 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!386 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!387 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!388 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!389 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!390 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!391 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!392 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!393 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!394 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!395 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!396 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!397 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !398, line: 37, baseType: !7, size: 32, elements: !399)
!398 = !DIFile(filename: "./ddg.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!399 = !{!400, !401, !402}
!400 = !DIEnumerator(name: "TRUE_DEP", value: 0, isUnsigned: true)
!401 = !DIEnumerator(name: "OUTPUT_DEP", value: 1, isUnsigned: true)
!402 = !DIEnumerator(name: "ANTI_DEP", value: 2, isUnsigned: true)
!403 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !398, line: 38, baseType: !7, size: 32, elements: !404)
!404 = !{!405, !406, !407, !408}
!405 = !DIEnumerator(name: "REG_OR_MEM_DEP", value: 0, isUnsigned: true)
!406 = !DIEnumerator(name: "REG_DEP", value: 1, isUnsigned: true)
!407 = !DIEnumerator(name: "MEM_DEP", value: 2, isUnsigned: true)
!408 = !DIEnumerator(name: "REG_AND_MEM_DEP", value: 3, isUnsigned: true)
!409 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !410, line: 45, baseType: !7, size: 32, elements: !411)
!410 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!411 = !{!412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551}
!412 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!413 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!414 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!415 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!416 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!417 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!418 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!419 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!420 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!421 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!422 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!423 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!424 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!425 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!426 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!427 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!428 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!429 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!430 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!431 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!432 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!433 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!434 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!435 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!436 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!437 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!438 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!439 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!440 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!441 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!442 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!443 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!444 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!445 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!446 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!447 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!448 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!449 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!450 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!451 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!452 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!453 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!454 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!455 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!456 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!457 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!458 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!459 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!460 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!461 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!462 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!463 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!464 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!465 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!466 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!467 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!468 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!469 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!470 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!471 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!472 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!473 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!474 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!475 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!476 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!477 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!478 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!479 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!480 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!481 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!482 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!483 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!484 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!485 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!486 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!487 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!488 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!489 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!490 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!491 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!492 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!493 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!494 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!495 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!496 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!497 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!498 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!499 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!500 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!501 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!502 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!503 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!504 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!505 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!506 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!507 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!508 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!509 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!510 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!511 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!512 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!513 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!514 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!515 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!516 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!517 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!518 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!519 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!520 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!521 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!522 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!523 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!524 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!525 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!526 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!527 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!528 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!529 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!530 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!531 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!532 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!533 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!534 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!535 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!536 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!537 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!538 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!539 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!540 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!541 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!542 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!543 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!544 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!545 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!546 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!547 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!548 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!549 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!550 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!551 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!552 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "post_call_group", file: !553, line: 432, baseType: !7, size: 32, elements: !554)
!553 = !DIFile(filename: "./sched-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!554 = !{!555, !556, !557}
!555 = !DIEnumerator(name: "not_post_call", value: 0, isUnsigned: true)
!556 = !DIEnumerator(name: "post_call", value: 1, isUnsigned: true)
!557 = !DIEnumerator(name: "post_call_initial", value: 2, isUnsigned: true)
!558 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reg_pending_barrier_mode", file: !553, line: 424, baseType: !7, size: 32, elements: !559)
!559 = !{!560, !561, !562}
!560 = !DIEnumerator(name: "NOT_A_BARRIER", value: 0, isUnsigned: true)
!561 = !DIEnumerator(name: "MOVE_BARRIER", value: 1, isUnsigned: true)
!562 = !DIEnumerator(name: "TRUE_BARRIER", value: 2, isUnsigned: true)
!563 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reg_note", file: !410, line: 836, baseType: !7, size: 32, elements: !564)
!564 = !{!565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596}
!565 = !DIEnumerator(name: "REG_DEP_TRUE", value: 0, isUnsigned: true)
!566 = !DIEnumerator(name: "REG_DEAD", value: 1, isUnsigned: true)
!567 = !DIEnumerator(name: "REG_INC", value: 2, isUnsigned: true)
!568 = !DIEnumerator(name: "REG_EQUIV", value: 3, isUnsigned: true)
!569 = !DIEnumerator(name: "REG_EQUAL", value: 4, isUnsigned: true)
!570 = !DIEnumerator(name: "REG_NONNEG", value: 5, isUnsigned: true)
!571 = !DIEnumerator(name: "REG_UNUSED", value: 6, isUnsigned: true)
!572 = !DIEnumerator(name: "REG_CC_SETTER", value: 7, isUnsigned: true)
!573 = !DIEnumerator(name: "REG_CC_USER", value: 8, isUnsigned: true)
!574 = !DIEnumerator(name: "REG_LABEL_TARGET", value: 9, isUnsigned: true)
!575 = !DIEnumerator(name: "REG_LABEL_OPERAND", value: 10, isUnsigned: true)
!576 = !DIEnumerator(name: "REG_DEP_OUTPUT", value: 11, isUnsigned: true)
!577 = !DIEnumerator(name: "REG_DEP_ANTI", value: 12, isUnsigned: true)
!578 = !DIEnumerator(name: "REG_BR_PROB", value: 13, isUnsigned: true)
!579 = !DIEnumerator(name: "REG_VALUE_PROFILE", value: 14, isUnsigned: true)
!580 = !DIEnumerator(name: "REG_NOALIAS", value: 15, isUnsigned: true)
!581 = !DIEnumerator(name: "REG_BR_PRED", value: 16, isUnsigned: true)
!582 = !DIEnumerator(name: "REG_FRAME_RELATED_EXPR", value: 17, isUnsigned: true)
!583 = !DIEnumerator(name: "REG_CFA_DEF_CFA", value: 18, isUnsigned: true)
!584 = !DIEnumerator(name: "REG_CFA_ADJUST_CFA", value: 19, isUnsigned: true)
!585 = !DIEnumerator(name: "REG_CFA_OFFSET", value: 20, isUnsigned: true)
!586 = !DIEnumerator(name: "REG_CFA_REGISTER", value: 21, isUnsigned: true)
!587 = !DIEnumerator(name: "REG_CFA_RESTORE", value: 22, isUnsigned: true)
!588 = !DIEnumerator(name: "REG_CFA_SET_VDRAP", value: 23, isUnsigned: true)
!589 = !DIEnumerator(name: "REG_EH_CONTEXT", value: 24, isUnsigned: true)
!590 = !DIEnumerator(name: "REG_EH_REGION", value: 25, isUnsigned: true)
!591 = !DIEnumerator(name: "REG_SAVE_NOTE", value: 26, isUnsigned: true)
!592 = !DIEnumerator(name: "REG_NORETURN", value: 27, isUnsigned: true)
!593 = !DIEnumerator(name: "REG_NON_LOCAL_GOTO", value: 28, isUnsigned: true)
!594 = !DIEnumerator(name: "REG_CROSSING_JUMP", value: 29, isUnsigned: true)
!595 = !DIEnumerator(name: "REG_SETJMP", value: 30, isUnsigned: true)
!596 = !DIEnumerator(name: "REG_NOTE_MAX", value: 31, isUnsigned: true)
!597 = !{!598, !599, !600, !601, !604, !605, !607, !409, !1811, !644, !1861, !1819, !7, !1877, !1860, !713, !1867, !1866, !1104, !1887}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!600 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !603)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "ddg_ptr", file: !398, line: 33, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ddg", file: !398, line: 112, size: 448, elements: !610)
!610 = !{!611, !1806, !1807, !1808, !1809, !1810, !1856, !1857, !1858, !1859}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !609, file: !398, line: 115, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !613, line: 111, baseType: !614)
!613 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !142, line: 217, size: 832, elements: !616)
!616 = !{!617, !1773, !1774, !1775, !1776, !1780, !1781, !1782, !1800, !1801, !1802, !1803, !1804, !1805}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !615, file: !142, line: 219, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !142, line: 151, baseType: !620)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !142, line: 151, size: 128, elements: !621)
!621 = !{!622}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !620, file: !142, line: 151, baseType: !623, size: 128)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !142, line: 150, baseType: !624)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !142, line: 150, size: 128, elements: !625)
!625 = !{!626, !627, !628}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !624, file: !142, line: 150, baseType: !7, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !624, file: !142, line: 150, baseType: !7, size: 32, offset: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !624, file: !142, line: 150, baseType: !629, size: 64, offset: 64)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 64, elements: !678)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !613, line: 108, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !142, line: 122, size: 512, elements: !633)
!633 = !{!634, !635, !636, !1765, !1766, !1767, !1768, !1769, !1770, !1771}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !632, file: !142, line: 124, baseType: !614, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !632, file: !142, line: 125, baseType: !614, size: 64, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !632, file: !142, line: 131, baseType: !637, size: 64, offset: 128)
!637 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !142, line: 128, size: 64, elements: !638)
!638 = !{!639, !643}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !637, file: !142, line: 129, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !613, line: 66, baseType: !641)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !613, line: 65, flags: DIFlagFwdDecl)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !637, file: !142, line: 130, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !613, line: 50, baseType: !645)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !410, line: 240, size: 384, elements: !647)
!647 = !{!648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !646, file: !410, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !646, file: !410, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !646, file: !410, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !646, file: !410, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !646, file: !410, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !646, file: !410, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !646, file: !410, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !646, file: !410, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !646, file: !410, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !646, file: !410, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !646, file: !410, line: 321, baseType: !659, size: 320, offset: 64)
!659 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !410, line: 315, size: 320, elements: !660)
!660 = !{!661, !1732, !1734, !1763, !1764}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !659, file: !410, line: 316, baseType: !662, size: 64)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !663, size: 64, elements: !678)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !410, line: 183, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !410, line: 166, size: 64, elements: !665)
!665 = !{!666, !667, !668, !669, !670, !680, !681, !693, !696, !758, !1710, !1711, !1722, !1729}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !664, file: !410, line: 168, baseType: !600, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !664, file: !410, line: 169, baseType: !7, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !664, file: !410, line: 170, baseType: !605, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !664, file: !410, line: 171, baseType: !644, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !664, file: !410, line: 172, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !613, line: 53, baseType: !672)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !410, line: 359, size: 128, elements: !674)
!674 = !{!675, !676}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !673, file: !410, line: 360, baseType: !600, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !673, file: !410, line: 361, baseType: !677, size: 64, offset: 64)
!677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 64, elements: !678)
!678 = !{!679}
!679 = !DISubrange(count: 1)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !664, file: !410, line: 173, baseType: !5, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !664, file: !410, line: 174, baseType: !682, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !410, line: 133, baseType: !683)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !410, line: 115, size: 32, elements: !684)
!684 = !{!685, !686, !687, !688, !689, !690, !691, !692}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !683, file: !410, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !683, file: !410, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !683, file: !410, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !683, file: !410, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !683, file: !410, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !683, file: !410, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !683, file: !410, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !683, file: !410, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !664, file: !410, line: 175, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !410, line: 175, flags: DIFlagFwdDecl)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !664, file: !410, line: 176, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !699, line: 75, size: 256, elements: !700)
!699 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!700 = !{!701, !716, !717, !718}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !698, file: !699, line: 76, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !699, line: 68, baseType: !704)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !699, line: 63, size: 320, elements: !705)
!705 = !{!706, !708, !709, !710}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !704, file: !699, line: 64, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !704, file: !699, line: 65, baseType: !707, size: 64, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !704, file: !699, line: 66, baseType: !7, size: 32, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !704, file: !699, line: 67, baseType: !711, size: 128, offset: 192)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !712, size: 128, elements: !714)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !699, line: 29, baseType: !713)
!713 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!714 = !{!715}
!715 = !DISubrange(count: 2)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !698, file: !699, line: 77, baseType: !702, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !698, file: !699, line: 78, baseType: !7, size: 32, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !698, file: !699, line: 79, baseType: !719, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !699, line: 49, baseType: !721)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !699, line: 45, size: 832, elements: !722)
!722 = !{!723, !724, !725}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !721, file: !699, line: 46, baseType: !707, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !721, file: !699, line: 47, baseType: !697, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !721, file: !699, line: 48, baseType: !726, size: 704, offset: 128)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !727, line: 164, size: 704, elements: !728)
!727 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!728 = !{!729, !731, !741, !742, !743, !744, !745, !746, !750, !754, !755, !756, !757}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !726, file: !727, line: 166, baseType: !730, size: 64)
!730 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !726, file: !727, line: 167, baseType: !732, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !727, line: 157, size: 192, elements: !734)
!734 = !{!735, !736, !737}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !733, file: !727, line: 159, baseType: !602, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !733, file: !727, line: 160, baseType: !732, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !733, file: !727, line: 161, baseType: !738, size: 32, offset: 128)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !603, size: 32, elements: !739)
!739 = !{!740}
!740 = !DISubrange(count: 4)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !726, file: !727, line: 168, baseType: !602, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !726, file: !727, line: 169, baseType: !602, size: 64, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !726, file: !727, line: 170, baseType: !602, size: 64, offset: 256)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !726, file: !727, line: 171, baseType: !730, size: 64, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !726, file: !727, line: 172, baseType: !600, size: 32, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !726, file: !727, line: 176, baseType: !747, size: 64, offset: 448)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!732, !604, !730}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !726, file: !727, line: 177, baseType: !751, size: 64, offset: 512)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{null, !604, !732}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !726, file: !727, line: 178, baseType: !604, size: 64, offset: 576)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !726, file: !727, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !726, file: !727, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !726, file: !727, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !664, file: !410, line: 177, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !613, line: 56, baseType: !760)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !171, line: 3371, size: 1792, elements: !762)
!762 = !{!763, !796, !802, !813, !832, !843, !848, !855, !861, !874, !886, !924, !929, !957, !965, !966, !971, !980, !986, !991, !995, !999, !1349, !1398, !1404, !1410, !1417, !1440, !1454, !1471, !1483, !1505, !1520, !1692}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !761, file: !171, line: 3372, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !171, line: 360, size: 64, elements: !765)
!765 = !{!766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !764, file: !171, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !764, file: !171, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !764, file: !171, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !764, file: !171, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !764, file: !171, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !764, file: !171, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !764, file: !171, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !764, file: !171, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !764, file: !171, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !764, file: !171, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !764, file: !171, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !764, file: !171, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !764, file: !171, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !764, file: !171, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !764, file: !171, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !764, file: !171, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !764, file: !171, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !764, file: !171, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !764, file: !171, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !764, file: !171, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !764, file: !171, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !764, file: !171, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !764, file: !171, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !764, file: !171, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !764, file: !171, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !764, file: !171, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !764, file: !171, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !764, file: !171, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !764, file: !171, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !764, file: !171, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !761, file: !171, line: 3373, baseType: !797, size: 192)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !171, line: 402, size: 192, elements: !798)
!798 = !{!799, !800, !801}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !797, file: !171, line: 403, baseType: !764, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !797, file: !171, line: 404, baseType: !759, size: 64, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !797, file: !171, line: 405, baseType: !759, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !761, file: !171, line: 3374, baseType: !803, size: 320)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !171, line: 1384, size: 320, elements: !804)
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !803, file: !171, line: 1385, baseType: !797, size: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !803, file: !171, line: 1386, baseType: !807, size: 128, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !808, line: 58, baseType: !809)
!808 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !808, line: 54, size: 128, elements: !810)
!810 = !{!811, !812}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !809, file: !808, line: 56, baseType: !713, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !809, file: !808, line: 57, baseType: !730, size: 64, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !761, file: !171, line: 3375, baseType: !814, size: 256)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !171, line: 1397, size: 256, elements: !815)
!815 = !{!816, !817}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !814, file: !171, line: 1398, baseType: !797, size: 192)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !814, file: !171, line: 1399, baseType: !818, size: 64, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !820, line: 52, size: 256, elements: !821)
!820 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!821 = !{!822, !823, !824, !825, !826, !827, !828}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !819, file: !820, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !819, file: !820, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !819, file: !820, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !819, file: !820, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !819, file: !820, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !819, file: !820, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !819, file: !820, line: 62, baseType: !829, size: 192, offset: 64)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !713, size: 192, elements: !830)
!830 = !{!831}
!831 = !DISubrange(count: 3)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !761, file: !171, line: 3376, baseType: !833, size: 256)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !171, line: 1408, size: 256, elements: !834)
!834 = !{!835, !836}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !833, file: !171, line: 1409, baseType: !797, size: 192)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !833, file: !171, line: 1410, baseType: !837, size: 64, offset: 192)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !839, line: 27, size: 192, elements: !840)
!839 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!840 = !{!841, !842}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !838, file: !839, line: 29, baseType: !807, size: 128)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !838, file: !839, line: 30, baseType: !5, size: 32, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !761, file: !171, line: 3377, baseType: !844, size: 256)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !171, line: 1437, size: 256, elements: !845)
!845 = !{!846, !847}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !844, file: !171, line: 1438, baseType: !797, size: 192)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !844, file: !171, line: 1439, baseType: !759, size: 64, offset: 192)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !761, file: !171, line: 3378, baseType: !849, size: 256)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !171, line: 1418, size: 256, elements: !850)
!850 = !{!851, !852, !853}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !849, file: !171, line: 1419, baseType: !797, size: 192)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !849, file: !171, line: 1420, baseType: !600, size: 32, offset: 192)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !849, file: !171, line: 1421, baseType: !854, size: 8, offset: 224)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !603, size: 8, elements: !678)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !761, file: !171, line: 3379, baseType: !856, size: 320)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !171, line: 1428, size: 320, elements: !857)
!857 = !{!858, !859, !860}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !856, file: !171, line: 1429, baseType: !797, size: 192)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !856, file: !171, line: 1430, baseType: !759, size: 64, offset: 192)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !856, file: !171, line: 1431, baseType: !759, size: 64, offset: 256)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !761, file: !171, line: 3380, baseType: !862, size: 320)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !171, line: 1460, size: 320, elements: !863)
!863 = !{!864, !865}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !862, file: !171, line: 1461, baseType: !797, size: 192)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !862, file: !171, line: 1462, baseType: !866, size: 128, offset: 192)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !867, line: 31, size: 128, elements: !868)
!867 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!868 = !{!869, !872, !873}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !866, file: !867, line: 32, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !866, file: !867, line: 33, baseType: !7, size: 32, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !866, file: !867, line: 34, baseType: !7, size: 32, offset: 96)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !761, file: !171, line: 3381, baseType: !875, size: 384)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !171, line: 2507, size: 384, elements: !876)
!876 = !{!877, !878, !883, !884, !885}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !875, file: !171, line: 2508, baseType: !797, size: 192)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !875, file: !171, line: 2509, baseType: !879, size: 32, offset: 192)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !880, line: 58, baseType: !881)
!880 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !882, line: 44, baseType: !7)
!882 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!883 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !875, file: !171, line: 2510, baseType: !7, size: 32, offset: 224)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !875, file: !171, line: 2511, baseType: !759, size: 64, offset: 256)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !875, file: !171, line: 2512, baseType: !759, size: 64, offset: 320)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !761, file: !171, line: 3382, baseType: !887, size: 896)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !171, line: 2652, size: 896, elements: !888)
!888 = !{!889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !887, file: !171, line: 2653, baseType: !875, size: 384)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !887, file: !171, line: 2654, baseType: !759, size: 64, offset: 384)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !887, file: !171, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !887, file: !171, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !887, file: !171, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !887, file: !171, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !887, file: !171, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !887, file: !171, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !887, file: !171, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !887, file: !171, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !887, file: !171, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !887, file: !171, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !887, file: !171, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !887, file: !171, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !887, file: !171, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !887, file: !171, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !887, file: !171, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !887, file: !171, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !887, file: !171, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !887, file: !171, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !887, file: !171, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !887, file: !171, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !887, file: !171, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !887, file: !171, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !887, file: !171, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !887, file: !171, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !887, file: !171, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !887, file: !171, line: 2703, baseType: !7, size: 32, offset: 512)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !887, file: !171, line: 2705, baseType: !759, size: 64, offset: 576)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !887, file: !171, line: 2706, baseType: !759, size: 64, offset: 640)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !887, file: !171, line: 2707, baseType: !759, size: 64, offset: 704)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !887, file: !171, line: 2708, baseType: !759, size: 64, offset: 768)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !887, file: !171, line: 2711, baseType: !922, size: 64, offset: 832)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !171, line: 2711, flags: DIFlagFwdDecl)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !761, file: !171, line: 3383, baseType: !925, size: 960)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !171, line: 2756, size: 960, elements: !926)
!926 = !{!927, !928}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !925, file: !171, line: 2757, baseType: !887, size: 896)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !925, file: !171, line: 2758, baseType: !644, size: 64, offset: 896)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !761, file: !171, line: 3384, baseType: !930, size: 1472)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !171, line: 3114, size: 1472, elements: !931)
!931 = !{!932, !953, !954, !955, !956}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !930, file: !171, line: 3115, baseType: !933, size: 1216)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !171, line: 2984, size: 1216, elements: !934)
!934 = !{!935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !933, file: !171, line: 2985, baseType: !925, size: 960)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !933, file: !171, line: 2986, baseType: !759, size: 64, offset: 960)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !933, file: !171, line: 2987, baseType: !759, size: 64, offset: 1024)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !933, file: !171, line: 2988, baseType: !759, size: 64, offset: 1088)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !933, file: !171, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !933, file: !171, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !933, file: !171, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !933, file: !171, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !933, file: !171, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !933, file: !171, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !933, file: !171, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !933, file: !171, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !933, file: !171, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !933, file: !171, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !933, file: !171, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !933, file: !171, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !933, file: !171, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !933, file: !171, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !930, file: !171, line: 3117, baseType: !759, size: 64, offset: 1216)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !930, file: !171, line: 3119, baseType: !759, size: 64, offset: 1280)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !930, file: !171, line: 3121, baseType: !759, size: 64, offset: 1344)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !930, file: !171, line: 3123, baseType: !759, size: 64, offset: 1408)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !761, file: !171, line: 3385, baseType: !958, size: 1088)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !171, line: 2874, size: 1088, elements: !959)
!959 = !{!960, !961, !962}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !958, file: !171, line: 2875, baseType: !925, size: 960)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !958, file: !171, line: 2876, baseType: !644, size: 64, offset: 960)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !958, file: !171, line: 2877, baseType: !963, size: 64, offset: 1024)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !171, line: 2856, flags: DIFlagFwdDecl)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !761, file: !171, line: 3386, baseType: !933, size: 1216)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !761, file: !171, line: 3387, baseType: !967, size: 1280)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !171, line: 3093, size: 1280, elements: !968)
!968 = !{!969, !970}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !967, file: !171, line: 3094, baseType: !933, size: 1216)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !967, file: !171, line: 3095, baseType: !963, size: 64, offset: 1216)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !761, file: !171, line: 3388, baseType: !972, size: 1216)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !171, line: 2824, size: 1216, elements: !973)
!973 = !{!974, !975, !976, !977, !978, !979}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !972, file: !171, line: 2825, baseType: !887, size: 896)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !972, file: !171, line: 2827, baseType: !759, size: 64, offset: 896)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !972, file: !171, line: 2828, baseType: !759, size: 64, offset: 960)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !972, file: !171, line: 2829, baseType: !759, size: 64, offset: 1024)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !972, file: !171, line: 2830, baseType: !759, size: 64, offset: 1088)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !972, file: !171, line: 2831, baseType: !759, size: 64, offset: 1152)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !761, file: !171, line: 3389, baseType: !981, size: 1024)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !171, line: 2850, size: 1024, elements: !982)
!982 = !{!983, !984, !985}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !981, file: !171, line: 2851, baseType: !925, size: 960)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !981, file: !171, line: 2852, baseType: !600, size: 32, offset: 960)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !981, file: !171, line: 2853, baseType: !600, size: 32, offset: 992)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !761, file: !171, line: 3390, baseType: !987, size: 1024)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !171, line: 2857, size: 1024, elements: !988)
!988 = !{!989, !990}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !987, file: !171, line: 2858, baseType: !925, size: 960)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !987, file: !171, line: 2859, baseType: !963, size: 64, offset: 960)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !761, file: !171, line: 3391, baseType: !992, size: 960)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !171, line: 2862, size: 960, elements: !993)
!993 = !{!994}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !992, file: !171, line: 2863, baseType: !925, size: 960)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !761, file: !171, line: 3392, baseType: !996, size: 1472)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !171, line: 3304, size: 1472, elements: !997)
!997 = !{!998}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !996, file: !171, line: 3305, baseType: !930, size: 1472)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !761, file: !171, line: 3393, baseType: !1000, size: 1792)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !171, line: 3248, size: 1792, elements: !1001)
!1001 = !{!1002, !1003, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1000, file: !171, line: 3249, baseType: !930, size: 1472)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1000, file: !171, line: 3251, baseType: !1004, size: 64, offset: 1472)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1006, line: 463, size: 1152, elements: !1007)
!1006 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1007 = !{!1008, !1172, !1202, !1203, !1206, !1272, !1273, !1274, !1275, !1276, !1277, !1301, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1005, file: !1006, line: 464, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !135, line: 194, size: 384, elements: !1011)
!1011 = !{!1012, !1061, !1074, !1088, !1140, !1153}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "region_tree", scope: !1010, file: !135, line: 197, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_region", file: !135, line: 182, baseType: !1014)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_d", file: !135, line: 116, size: 704, elements: !1016)
!1016 = !{!1017, !1018, !1019, !1020, !1021, !1022, !1049, !1058, !1059, !1060}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "outer", scope: !1015, file: !135, line: 119, baseType: !1014, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1015, file: !135, line: 122, baseType: !1014, size: 64, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "next_peer", scope: !1015, file: !135, line: 123, baseType: !1014, size: 64, offset: 128)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1015, file: !135, line: 126, baseType: !600, size: 32, offset: 192)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1015, file: !135, line: 129, baseType: !134, size: 32, offset: 224)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1015, file: !135, line: 165, baseType: !1023, size: 192, offset: 256)
!1023 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_region_u", file: !135, line: 132, size: 192, elements: !1024)
!1024 = !{!1025, !1038, !1044}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "eh_try", scope: !1023, file: !135, line: 137, baseType: !1026, size: 128)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_try", file: !135, line: 133, size: 128, elements: !1027)
!1027 = !{!1028, !1037}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "first_catch", scope: !1026, file: !135, line: 135, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_catch_d", file: !135, line: 93, size: 320, elements: !1031)
!1031 = !{!1032, !1033, !1034, !1035, !1036}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "next_catch", scope: !1030, file: !135, line: 96, baseType: !1029, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "prev_catch", scope: !1030, file: !135, line: 97, baseType: !1029, size: 64, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1030, file: !135, line: 101, baseType: !759, size: 64, offset: 128)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "filter_list", scope: !1030, file: !135, line: 106, baseType: !759, size: 64, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1030, file: !135, line: 111, baseType: !759, size: 64, offset: 256)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "last_catch", scope: !1026, file: !135, line: 136, baseType: !1029, size: 64, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "allowed", scope: !1023, file: !135, line: 151, baseType: !1039, size: 192)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_allowed", file: !135, line: 139, size: 192, elements: !1040)
!1040 = !{!1041, !1042, !1043}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "type_list", scope: !1039, file: !135, line: 141, baseType: !759, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1039, file: !135, line: 145, baseType: !759, size: 64, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1039, file: !135, line: 150, baseType: !600, size: 32, offset: 128)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "must_not_throw", scope: !1023, file: !135, line: 164, baseType: !1045, size: 128)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_region_u_must_not_throw", file: !135, line: 153, size: 128, elements: !1046)
!1046 = !{!1047, !1048}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "failure_decl", scope: !1045, file: !135, line: 161, baseType: !759, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "failure_loc", scope: !1045, file: !135, line: 163, baseType: !879, size: 32, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pads", scope: !1015, file: !135, line: 168, baseType: !1050, size: 64, offset: 448)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "eh_landing_pad_d", file: !135, line: 67, size: 320, elements: !1052)
!1052 = !{!1053, !1054, !1055, !1056, !1057}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "next_lp", scope: !1051, file: !135, line: 70, baseType: !1050, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1051, file: !135, line: 73, baseType: !1014, size: 64, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "post_landing_pad", scope: !1051, file: !135, line: 78, baseType: !759, size: 64, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "landing_pad", scope: !1051, file: !135, line: 85, baseType: !644, size: 64, offset: 192)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1051, file: !135, line: 88, baseType: !600, size: 32, offset: 256)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "exc_ptr_reg", scope: !1015, file: !135, line: 173, baseType: !644, size: 64, offset: 512)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "filter_reg", scope: !1015, file: !135, line: 173, baseType: !644, size: 64, offset: 576)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "use_cxa_end_cleanup", scope: !1015, file: !135, line: 177, baseType: !599, size: 8, offset: 640)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "region_array", scope: !1010, file: !135, line: 200, baseType: !1062, size: 64, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_gc", file: !135, line: 185, baseType: !1064)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_gc", file: !135, line: 185, size: 128, elements: !1065)
!1065 = !{!1066}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1064, file: !135, line: 185, baseType: !1067, size: 128)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_region_base", file: !135, line: 184, baseType: !1068)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_region_base", file: !135, line: 184, size: 128, elements: !1069)
!1069 = !{!1070, !1071, !1072}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1068, file: !135, line: 184, baseType: !7, size: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1068, file: !135, line: 184, baseType: !7, size: 32, offset: 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1068, file: !135, line: 184, baseType: !1073, size: 64, offset: 64)
!1073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1013, size: 64, elements: !678)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "lp_array", scope: !1010, file: !135, line: 203, baseType: !1075, size: 64, offset: 128)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_gc", file: !135, line: 189, baseType: !1077)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_gc", file: !135, line: 189, size: 128, elements: !1078)
!1078 = !{!1079}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1077, file: !135, line: 189, baseType: !1080, size: 128)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_eh_landing_pad_base", file: !135, line: 188, baseType: !1081)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_eh_landing_pad_base", file: !135, line: 188, size: 128, elements: !1082)
!1082 = !{!1083, !1084, !1085}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1081, file: !135, line: 188, baseType: !7, size: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1081, file: !135, line: 188, baseType: !7, size: 32, offset: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1081, file: !135, line: 188, baseType: !1086, size: 64, offset: 64)
!1086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1087, size: 64, elements: !678)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "eh_landing_pad", file: !135, line: 180, baseType: !1050)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "throw_stmt_table", scope: !1010, file: !135, line: 207, baseType: !1089, size: 64, offset: 192)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1090, line: 144, baseType: !1091)
!1090 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1090, line: 100, size: 896, elements: !1093)
!1093 = !{!1094, !1102, !1107, !1112, !1114, !1117, !1118, !1119, !1120, !1121, !1126, !1128, !1129, !1134, !1139}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1092, file: !1090, line: 102, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1090, line: 52, baseType: !1096)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!1099, !1100}
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1090, line: 47, baseType: !7)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1092, file: !1090, line: 105, baseType: !1103, size: 64, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1090, line: 59, baseType: !1104)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!600, !1100, !1100}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1092, file: !1090, line: 108, baseType: !1108, size: 64, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1090, line: 63, baseType: !1109)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{null, !604}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1092, file: !1090, line: 111, baseType: !1113, size: 64, offset: 192)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1092, file: !1090, line: 114, baseType: !1115, size: 64, offset: 256)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1116, line: 46, baseType: !713)
!1116 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1092, file: !1090, line: 117, baseType: !1115, size: 64, offset: 320)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1092, file: !1090, line: 120, baseType: !1115, size: 64, offset: 384)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1092, file: !1090, line: 124, baseType: !7, size: 32, offset: 448)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1092, file: !1090, line: 128, baseType: !7, size: 32, offset: 480)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1092, file: !1090, line: 131, baseType: !1122, size: 64, offset: 512)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1090, line: 75, baseType: !1123)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!604, !1115, !1115}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1092, file: !1090, line: 132, baseType: !1127, size: 64, offset: 576)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1090, line: 78, baseType: !1109)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1092, file: !1090, line: 135, baseType: !604, size: 64, offset: 640)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1092, file: !1090, line: 136, baseType: !1130, size: 64, offset: 704)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1090, line: 82, baseType: !1131)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!604, !604, !1115, !1115}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1092, file: !1090, line: 137, baseType: !1135, size: 64, offset: 768)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1090, line: 83, baseType: !1136)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{null, !604, !604}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1092, file: !1090, line: 141, baseType: !7, size: 32, offset: 832)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "ttype_data", scope: !1010, file: !135, line: 211, baseType: !1141, size: 64, offset: 256)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !171, line: 183, baseType: !1143)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !171, line: 183, size: 128, elements: !1144)
!1144 = !{!1145}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1143, file: !171, line: 183, baseType: !1146, size: 128)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !171, line: 182, baseType: !1147)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !171, line: 182, size: 128, elements: !1148)
!1148 = !{!1149, !1150, !1151}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1147, file: !171, line: 182, baseType: !7, size: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1147, file: !171, line: 182, baseType: !7, size: 32, offset: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1147, file: !171, line: 182, baseType: !1152, size: 64, offset: 64)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !759, size: 64, elements: !678)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "ehspec_data", scope: !1010, file: !135, line: 220, baseType: !1154, size: 64, offset: 320)
!1154 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "eh_status_u", file: !135, line: 217, size: 64, elements: !1155)
!1155 = !{!1156, !1157}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "arm_eabi", scope: !1154, file: !135, line: 218, baseType: !1141, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !1154, file: !135, line: 219, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_gc", file: !1160, line: 29, baseType: !1161)
!1160 = !DIFile(filename: "./vecprim.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_gc", file: !1160, line: 29, size: 96, elements: !1162)
!1162 = !{!1163}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1161, file: !1160, line: 29, baseType: !1164, size: 96)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_uchar_base", file: !1160, line: 27, baseType: !1165)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_uchar_base", file: !1160, line: 27, size: 96, elements: !1166)
!1166 = !{!1167, !1168, !1169}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1165, file: !1160, line: 27, baseType: !7, size: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1165, file: !1160, line: 27, baseType: !7, size: 32, offset: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1165, file: !1160, line: 27, baseType: !1170, size: 8, offset: 64)
!1170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1171, size: 8, elements: !678)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar", file: !1160, line: 26, baseType: !599)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1005, file: !1006, line: 467, baseType: !1173, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !142, line: 374, size: 640, elements: !1175)
!1175 = !{!1176, !1177, !1178, !1191, !1192, !1193, !1194, !1195, !1196, !1198, !1200, !1201}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1174, file: !142, line: 377, baseType: !612, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1174, file: !142, line: 378, baseType: !612, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1174, file: !142, line: 381, baseType: !1179, size: 64, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !142, line: 282, baseType: !1181)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !142, line: 282, size: 128, elements: !1182)
!1182 = !{!1183}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1181, file: !142, line: 282, baseType: !1184, size: 128)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !142, line: 281, baseType: !1185)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !142, line: 281, size: 128, elements: !1186)
!1186 = !{!1187, !1188, !1189}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1185, file: !142, line: 281, baseType: !7, size: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1185, file: !142, line: 281, baseType: !7, size: 32, offset: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1185, file: !142, line: 281, baseType: !1190, size: 64, offset: 64)
!1190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 64, elements: !678)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1174, file: !142, line: 384, baseType: !600, size: 32, offset: 192)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1174, file: !142, line: 387, baseType: !600, size: 32, offset: 224)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1174, file: !142, line: 390, baseType: !600, size: 32, offset: 256)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1174, file: !142, line: 394, baseType: !1179, size: 64, offset: 320)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1174, file: !142, line: 396, baseType: !141, size: 32, offset: 384)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1174, file: !142, line: 399, baseType: !1197, size: 64, offset: 416)
!1197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 64, elements: !714)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1174, file: !142, line: 402, baseType: !1199, size: 64, offset: 480)
!1199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !714)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1174, file: !142, line: 406, baseType: !600, size: 32, offset: 544)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1174, file: !142, line: 409, baseType: !600, size: 32, offset: 576)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1005, file: !1006, line: 470, baseType: !641, size: 64, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1005, file: !1006, line: 473, baseType: !1204, size: 64, offset: 192)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1006, line: 166, flags: DIFlagFwdDecl)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1005, file: !1006, line: 476, baseType: !1207, size: 64, offset: 256)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !153, line: 187, size: 256, elements: !1209)
!1209 = !{!1210, !1211, !1270, !1271}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1208, file: !153, line: 189, baseType: !600, size: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1208, file: !153, line: 192, baseType: !1212, size: 64, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !153, line: 87, baseType: !1214)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !153, line: 87, size: 128, elements: !1215)
!1215 = !{!1216}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1214, file: !153, line: 87, baseType: !1217, size: 128)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !153, line: 85, baseType: !1218)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !153, line: 85, size: 128, elements: !1219)
!1219 = !{!1220, !1221, !1222}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1218, file: !153, line: 85, baseType: !7, size: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1218, file: !153, line: 85, baseType: !7, size: 32, offset: 32)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1218, file: !153, line: 85, baseType: !1223, size: 64, offset: 64)
!1223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1224, size: 64, elements: !678)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !153, line: 84, baseType: !1225)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !153, line: 100, size: 1216, elements: !1227)
!1227 = !{!1228, !1229, !1230, !1231, !1232, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1260, !1268, !1269}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1226, file: !153, line: 102, baseType: !600, size: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !1226, file: !153, line: 105, baseType: !7, size: 32, offset: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1226, file: !153, line: 108, baseType: !614, size: 64, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !1226, file: !153, line: 111, baseType: !614, size: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !1226, file: !153, line: 114, baseType: !1233, size: 64, offset: 192)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !153, line: 41, size: 64, elements: !1234)
!1234 = !{!1235, !1236}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !1233, file: !153, line: 42, baseType: !152, size: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !1233, file: !153, line: 43, baseType: !7, size: 32, offset: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !1226, file: !153, line: 117, baseType: !7, size: 32, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !1226, file: !153, line: 120, baseType: !7, size: 32, offset: 288)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !1226, file: !153, line: 123, baseType: !1212, size: 64, offset: 320)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1226, file: !153, line: 126, baseType: !1225, size: 64, offset: 384)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1226, file: !153, line: 129, baseType: !1225, size: 64, offset: 448)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1226, file: !153, line: 132, baseType: !604, size: 64, offset: 512)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !1226, file: !153, line: 139, baseType: !759, size: 64, offset: 576)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !1226, file: !153, line: 143, baseType: !807, size: 128, offset: 640)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !1226, file: !153, line: 146, baseType: !807, size: 128, offset: 768)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !1226, file: !153, line: 148, baseType: !599, size: 8, offset: 896)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !1226, file: !153, line: 149, baseType: !599, size: 8, offset: 904)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !1226, file: !153, line: 153, baseType: !161, size: 32, offset: 928)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !1226, file: !153, line: 156, baseType: !1250, size: 64, offset: 960)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !153, line: 48, size: 320, elements: !1252)
!1252 = !{!1253, !1257, !1258, !1259}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1251, file: !153, line: 50, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !613, line: 58, baseType: !1255)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !613, line: 57, flags: DIFlagFwdDecl)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1251, file: !153, line: 59, baseType: !807, size: 128, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1251, file: !153, line: 64, baseType: !599, size: 8, offset: 192)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1251, file: !153, line: 67, baseType: !1250, size: 64, offset: 256)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1226, file: !153, line: 159, baseType: !1261, size: 64, offset: 1024)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !153, line: 72, size: 256, elements: !1263)
!1263 = !{!1264, !1265, !1266, !1267}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1262, file: !153, line: 74, baseType: !631, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1262, file: !153, line: 77, baseType: !1261, size: 64, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1262, file: !153, line: 78, baseType: !1261, size: 64, offset: 128)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1262, file: !153, line: 81, baseType: !1261, size: 64, offset: 192)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !1226, file: !153, line: 162, baseType: !599, size: 8, offset: 1088)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !1226, file: !153, line: 166, baseType: !759, size: 64, offset: 1152)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1208, file: !153, line: 197, baseType: !1089, size: 64, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1208, file: !153, line: 200, baseType: !1225, size: 64, offset: 192)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1005, file: !1006, line: 479, baseType: !1089, size: 64, offset: 320)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1005, file: !1006, line: 484, baseType: !759, size: 64, offset: 384)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1005, file: !1006, line: 488, baseType: !759, size: 64, offset: 448)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1005, file: !1006, line: 493, baseType: !759, size: 64, offset: 512)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1005, file: !1006, line: 496, baseType: !759, size: 64, offset: 576)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1005, file: !1006, line: 501, baseType: !1278, size: 64, offset: 640)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !166, line: 2355, size: 576, elements: !1280)
!1280 = !{!1281, !1284, !1285, !1286, !1287, !1289, !1290, !1295, !1296, !1297, !1298, !1299, !1300}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1279, file: !166, line: 2356, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !166, line: 2356, flags: DIFlagFwdDecl)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1279, file: !166, line: 2357, baseType: !605, size: 64, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1279, file: !166, line: 2358, baseType: !600, size: 32, offset: 128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1279, file: !166, line: 2359, baseType: !600, size: 32, offset: 160)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1279, file: !166, line: 2360, baseType: !1288, size: 128, offset: 192)
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, size: 128, elements: !739)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1279, file: !166, line: 2364, baseType: !600, size: 32, offset: 320)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1279, file: !166, line: 2367, baseType: !1291, size: 128, offset: 384)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !166, line: 2349, size: 128, elements: !1292)
!1292 = !{!1293, !1294}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1291, file: !166, line: 2351, baseType: !644, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1291, file: !166, line: 2352, baseType: !730, size: 64, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1279, file: !166, line: 2371, baseType: !165, size: 32, offset: 512)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1279, file: !166, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1279, file: !166, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1279, file: !166, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1279, file: !166, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1279, file: !166, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1005, file: !1006, line: 504, baseType: !1302, size: 64, offset: 704)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1006, line: 504, flags: DIFlagFwdDecl)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1005, file: !1006, line: 507, baseType: !1089, size: 64, offset: 768)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1005, file: !1006, line: 510, baseType: !600, size: 32, offset: 832)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1005, file: !1006, line: 513, baseType: !600, size: 32, offset: 864)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1005, file: !1006, line: 516, baseType: !879, size: 32, offset: 896)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1005, file: !1006, line: 519, baseType: !879, size: 32, offset: 928)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1005, file: !1006, line: 522, baseType: !7, size: 32, offset: 960)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1005, file: !1006, line: 523, baseType: !7, size: 32, offset: 992)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1005, file: !1006, line: 528, baseType: !605, size: 64, offset: 1024)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1005, file: !1006, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1005, file: !1006, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1005, file: !1006, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1005, file: !1006, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1005, file: !1006, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1005, file: !1006, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1005, file: !1006, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1005, file: !1006, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1005, file: !1006, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1005, file: !1006, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1005, file: !1006, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1005, file: !1006, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1005, file: !1006, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1005, file: !1006, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1005, file: !1006, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1005, file: !1006, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1000, file: !171, line: 3254, baseType: !759, size: 64, offset: 1536)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1000, file: !171, line: 3257, baseType: !759, size: 64, offset: 1600)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1000, file: !171, line: 3258, baseType: !759, size: 64, offset: 1664)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1000, file: !171, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1000, file: !171, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1000, file: !171, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1000, file: !171, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1000, file: !171, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1000, file: !171, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1000, file: !171, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1000, file: !171, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1000, file: !171, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1000, file: !171, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1000, file: !171, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1000, file: !171, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1000, file: !171, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1000, file: !171, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1000, file: !171, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1000, file: !171, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1000, file: !171, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1000, file: !171, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !761, file: !171, line: 3394, baseType: !1350, size: 1344)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !171, line: 2279, size: 1344, elements: !1351)
!1351 = !{!1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1377, !1378, !1379, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1350, file: !171, line: 2280, baseType: !797, size: 192)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1350, file: !171, line: 2281, baseType: !759, size: 64, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1350, file: !171, line: 2282, baseType: !759, size: 64, offset: 256)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1350, file: !171, line: 2283, baseType: !759, size: 64, offset: 320)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1350, file: !171, line: 2284, baseType: !759, size: 64, offset: 384)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1350, file: !171, line: 2285, baseType: !7, size: 32, offset: 448)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1350, file: !171, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1350, file: !171, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1350, file: !171, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1350, file: !171, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1350, file: !171, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1350, file: !171, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1350, file: !171, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1350, file: !171, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1350, file: !171, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1350, file: !171, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1350, file: !171, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1350, file: !171, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1350, file: !171, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1350, file: !171, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1350, file: !171, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1350, file: !171, line: 2305, baseType: !7, size: 32, offset: 512)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1350, file: !171, line: 2306, baseType: !1375, size: 32, offset: 544)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1376, line: 31, baseType: !600)
!1376 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1350, file: !171, line: 2307, baseType: !759, size: 64, offset: 576)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1350, file: !171, line: 2308, baseType: !759, size: 64, offset: 640)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1350, file: !171, line: 2314, baseType: !1380, size: 64, offset: 704)
!1380 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !171, line: 2309, size: 64, elements: !1381)
!1381 = !{!1382, !1383, !1384}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1380, file: !171, line: 2310, baseType: !600, size: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1380, file: !171, line: 2311, baseType: !605, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1380, file: !171, line: 2312, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !171, line: 2277, flags: DIFlagFwdDecl)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1350, file: !171, line: 2315, baseType: !759, size: 64, offset: 768)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1350, file: !171, line: 2316, baseType: !759, size: 64, offset: 832)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1350, file: !171, line: 2317, baseType: !759, size: 64, offset: 896)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1350, file: !171, line: 2318, baseType: !759, size: 64, offset: 960)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1350, file: !171, line: 2319, baseType: !759, size: 64, offset: 1024)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1350, file: !171, line: 2320, baseType: !759, size: 64, offset: 1088)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1350, file: !171, line: 2321, baseType: !759, size: 64, offset: 1152)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1350, file: !171, line: 2322, baseType: !759, size: 64, offset: 1216)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1350, file: !171, line: 2324, baseType: !1396, size: 64, offset: 1280)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !171, line: 2324, flags: DIFlagFwdDecl)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !761, file: !171, line: 3395, baseType: !1399, size: 320)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !171, line: 1469, size: 320, elements: !1400)
!1400 = !{!1401, !1402, !1403}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1399, file: !171, line: 1470, baseType: !797, size: 192)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1399, file: !171, line: 1471, baseType: !759, size: 64, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1399, file: !171, line: 1472, baseType: !759, size: 64, offset: 256)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !761, file: !171, line: 3396, baseType: !1405, size: 320)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !171, line: 1482, size: 320, elements: !1406)
!1406 = !{!1407, !1408, !1409}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1405, file: !171, line: 1483, baseType: !797, size: 192)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1405, file: !171, line: 1484, baseType: !600, size: 32, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1405, file: !171, line: 1485, baseType: !1152, size: 64, offset: 256)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !761, file: !171, line: 3397, baseType: !1411, size: 384)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !171, line: 1829, size: 384, elements: !1412)
!1412 = !{!1413, !1414, !1415, !1416}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1411, file: !171, line: 1830, baseType: !797, size: 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1411, file: !171, line: 1831, baseType: !879, size: 32, offset: 192)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1411, file: !171, line: 1832, baseType: !759, size: 64, offset: 256)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1411, file: !171, line: 1835, baseType: !1152, size: 64, offset: 320)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !761, file: !171, line: 3398, baseType: !1418, size: 704)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !171, line: 1898, size: 704, elements: !1419)
!1419 = !{!1420, !1421, !1422, !1423, !1424, !1427}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1418, file: !171, line: 1899, baseType: !797, size: 192)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1418, file: !171, line: 1902, baseType: !759, size: 64, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1418, file: !171, line: 1905, baseType: !1254, size: 64, offset: 256)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1418, file: !171, line: 1908, baseType: !7, size: 32, offset: 320)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1418, file: !171, line: 1911, baseType: !1425, size: 64, offset: 384)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !171, line: 1876, flags: DIFlagFwdDecl)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1418, file: !171, line: 1914, baseType: !1428, size: 256, offset: 448)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !171, line: 1883, size: 256, elements: !1429)
!1429 = !{!1430, !1432, !1433, !1438}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1428, file: !171, line: 1884, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1428, file: !171, line: 1885, baseType: !1431, size: 64, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1428, file: !171, line: 1891, baseType: !1434, size: 64, offset: 128)
!1434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1428, file: !171, line: 1891, size: 64, elements: !1435)
!1435 = !{!1436, !1437}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1434, file: !171, line: 1891, baseType: !1254, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1434, file: !171, line: 1891, baseType: !759, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1428, file: !171, line: 1892, baseType: !1439, size: 64, offset: 192)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !761, file: !171, line: 3399, baseType: !1441, size: 704)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !171, line: 2008, size: 704, elements: !1442)
!1442 = !{!1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1441, file: !171, line: 2009, baseType: !797, size: 192)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1441, file: !171, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1441, file: !171, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1441, file: !171, line: 2014, baseType: !879, size: 32, offset: 224)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1441, file: !171, line: 2016, baseType: !759, size: 64, offset: 256)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1441, file: !171, line: 2017, baseType: !1141, size: 64, offset: 320)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1441, file: !171, line: 2019, baseType: !759, size: 64, offset: 384)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1441, file: !171, line: 2020, baseType: !759, size: 64, offset: 448)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1441, file: !171, line: 2021, baseType: !759, size: 64, offset: 512)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1441, file: !171, line: 2022, baseType: !759, size: 64, offset: 576)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1441, file: !171, line: 2023, baseType: !759, size: 64, offset: 640)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !761, file: !171, line: 3400, baseType: !1455, size: 832)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !171, line: 2430, size: 832, elements: !1456)
!1456 = !{!1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1455, file: !171, line: 2431, baseType: !797, size: 192)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1455, file: !171, line: 2433, baseType: !759, size: 64, offset: 192)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1455, file: !171, line: 2434, baseType: !759, size: 64, offset: 256)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1455, file: !171, line: 2435, baseType: !759, size: 64, offset: 320)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1455, file: !171, line: 2436, baseType: !759, size: 64, offset: 384)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1455, file: !171, line: 2437, baseType: !1141, size: 64, offset: 448)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1455, file: !171, line: 2438, baseType: !759, size: 64, offset: 512)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1455, file: !171, line: 2440, baseType: !759, size: 64, offset: 576)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1455, file: !171, line: 2441, baseType: !759, size: 64, offset: 640)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1455, file: !171, line: 2443, baseType: !1467, size: 128, offset: 704)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !171, line: 182, baseType: !1468)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !171, line: 182, size: 128, elements: !1469)
!1469 = !{!1470}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1468, file: !171, line: 182, baseType: !1146, size: 128)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !761, file: !171, line: 3401, baseType: !1472, size: 320)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !171, line: 3327, size: 320, elements: !1473)
!1473 = !{!1474, !1475, !1482}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1472, file: !171, line: 3329, baseType: !797, size: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1472, file: !171, line: 3330, baseType: !1476, size: 64, offset: 192)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !171, line: 3320, size: 192, elements: !1478)
!1478 = !{!1479, !1480, !1481}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1477, file: !171, line: 3322, baseType: !1476, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1477, file: !171, line: 3323, baseType: !1476, size: 64, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1477, file: !171, line: 3324, baseType: !759, size: 64, offset: 128)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1472, file: !171, line: 3331, baseType: !1476, size: 64, offset: 256)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !761, file: !171, line: 3402, baseType: !1484, size: 256)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !171, line: 1540, size: 256, elements: !1485)
!1485 = !{!1486, !1487}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1484, file: !171, line: 1541, baseType: !797, size: 192)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1484, file: !171, line: 1542, baseType: !1488, size: 64, offset: 192)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !171, line: 1538, baseType: !1490)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !171, line: 1538, size: 192, elements: !1491)
!1491 = !{!1492}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1490, file: !171, line: 1538, baseType: !1493, size: 192)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !171, line: 1537, baseType: !1494)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !171, line: 1537, size: 192, elements: !1495)
!1495 = !{!1496, !1497, !1498}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1494, file: !171, line: 1537, baseType: !7, size: 32)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1494, file: !171, line: 1537, baseType: !7, size: 32, offset: 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1494, file: !171, line: 1537, baseType: !1499, size: 128, offset: 64)
!1499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1500, size: 128, elements: !678)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !171, line: 1535, baseType: !1501)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !171, line: 1532, size: 128, elements: !1502)
!1502 = !{!1503, !1504}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1501, file: !171, line: 1533, baseType: !759, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1501, file: !171, line: 1534, baseType: !759, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !761, file: !171, line: 3403, baseType: !1506, size: 512)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !171, line: 1938, size: 512, elements: !1507)
!1507 = !{!1508, !1509, !1510, !1511, !1517, !1518, !1519}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1506, file: !171, line: 1939, baseType: !797, size: 192)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1506, file: !171, line: 1940, baseType: !879, size: 32, offset: 192)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1506, file: !171, line: 1941, baseType: !170, size: 32, offset: 224)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1506, file: !171, line: 1946, baseType: !1512, size: 32, offset: 256)
!1512 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !171, line: 1942, size: 32, elements: !1513)
!1513 = !{!1514, !1515, !1516}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1512, file: !171, line: 1943, baseType: !189, size: 32)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1512, file: !171, line: 1944, baseType: !196, size: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1512, file: !171, line: 1945, baseType: !203, size: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1506, file: !171, line: 1950, baseType: !640, size: 64, offset: 320)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1506, file: !171, line: 1951, baseType: !640, size: 64, offset: 384)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1506, file: !171, line: 1953, baseType: !1152, size: 64, offset: 448)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !761, file: !171, line: 3404, baseType: !1521, size: 1664)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !171, line: 3337, size: 1664, elements: !1522)
!1522 = !{!1523, !1524}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1521, file: !171, line: 3338, baseType: !797, size: 192)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1521, file: !171, line: 3341, baseType: !1525, size: 1472, offset: 192)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1526, line: 410, size: 1472, elements: !1527)
!1526 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1527 = !{!1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1525, file: !1526, line: 412, baseType: !600, size: 32)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1525, file: !1526, line: 413, baseType: !600, size: 32, offset: 32)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1525, file: !1526, line: 414, baseType: !600, size: 32, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1525, file: !1526, line: 415, baseType: !600, size: 32, offset: 96)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1525, file: !1526, line: 416, baseType: !600, size: 32, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1525, file: !1526, line: 417, baseType: !600, size: 32, offset: 160)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1525, file: !1526, line: 418, baseType: !599, size: 8, offset: 192)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1525, file: !1526, line: 419, baseType: !599, size: 8, offset: 200)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1525, file: !1526, line: 420, baseType: !1537, size: 8, offset: 208)
!1537 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1525, file: !1526, line: 421, baseType: !1537, size: 8, offset: 216)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1525, file: !1526, line: 422, baseType: !1537, size: 8, offset: 224)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1525, file: !1526, line: 423, baseType: !1537, size: 8, offset: 232)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1525, file: !1526, line: 424, baseType: !1537, size: 8, offset: 240)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1525, file: !1526, line: 425, baseType: !1537, size: 8, offset: 248)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1525, file: !1526, line: 426, baseType: !1537, size: 8, offset: 256)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1525, file: !1526, line: 427, baseType: !1537, size: 8, offset: 264)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1525, file: !1526, line: 428, baseType: !1537, size: 8, offset: 272)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1525, file: !1526, line: 429, baseType: !1537, size: 8, offset: 280)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1525, file: !1526, line: 430, baseType: !1537, size: 8, offset: 288)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1525, file: !1526, line: 431, baseType: !1537, size: 8, offset: 296)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1525, file: !1526, line: 432, baseType: !1537, size: 8, offset: 304)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1525, file: !1526, line: 433, baseType: !1537, size: 8, offset: 312)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1525, file: !1526, line: 434, baseType: !1537, size: 8, offset: 320)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1525, file: !1526, line: 435, baseType: !1537, size: 8, offset: 328)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1525, file: !1526, line: 436, baseType: !1537, size: 8, offset: 336)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1525, file: !1526, line: 437, baseType: !1537, size: 8, offset: 344)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1525, file: !1526, line: 438, baseType: !1537, size: 8, offset: 352)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1525, file: !1526, line: 439, baseType: !1537, size: 8, offset: 360)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1525, file: !1526, line: 440, baseType: !1537, size: 8, offset: 368)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1525, file: !1526, line: 441, baseType: !1537, size: 8, offset: 376)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1525, file: !1526, line: 442, baseType: !1537, size: 8, offset: 384)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1525, file: !1526, line: 443, baseType: !1537, size: 8, offset: 392)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1525, file: !1526, line: 444, baseType: !1537, size: 8, offset: 400)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1525, file: !1526, line: 445, baseType: !1537, size: 8, offset: 408)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1525, file: !1526, line: 446, baseType: !1537, size: 8, offset: 416)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1525, file: !1526, line: 447, baseType: !1537, size: 8, offset: 424)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1525, file: !1526, line: 448, baseType: !1537, size: 8, offset: 432)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1525, file: !1526, line: 449, baseType: !1537, size: 8, offset: 440)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1525, file: !1526, line: 450, baseType: !1537, size: 8, offset: 448)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1525, file: !1526, line: 451, baseType: !1537, size: 8, offset: 456)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1525, file: !1526, line: 452, baseType: !1537, size: 8, offset: 464)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1525, file: !1526, line: 453, baseType: !1537, size: 8, offset: 472)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1525, file: !1526, line: 454, baseType: !1537, size: 8, offset: 480)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1525, file: !1526, line: 455, baseType: !1537, size: 8, offset: 488)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1525, file: !1526, line: 456, baseType: !1537, size: 8, offset: 496)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1525, file: !1526, line: 457, baseType: !1537, size: 8, offset: 504)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1525, file: !1526, line: 458, baseType: !1537, size: 8, offset: 512)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1525, file: !1526, line: 459, baseType: !1537, size: 8, offset: 520)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1525, file: !1526, line: 460, baseType: !1537, size: 8, offset: 528)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1525, file: !1526, line: 461, baseType: !1537, size: 8, offset: 536)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1525, file: !1526, line: 462, baseType: !1537, size: 8, offset: 544)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1525, file: !1526, line: 463, baseType: !1537, size: 8, offset: 552)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1525, file: !1526, line: 464, baseType: !1537, size: 8, offset: 560)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1525, file: !1526, line: 465, baseType: !1537, size: 8, offset: 568)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1525, file: !1526, line: 466, baseType: !1537, size: 8, offset: 576)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1525, file: !1526, line: 467, baseType: !1537, size: 8, offset: 584)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1525, file: !1526, line: 468, baseType: !1537, size: 8, offset: 592)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1525, file: !1526, line: 469, baseType: !1537, size: 8, offset: 600)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1525, file: !1526, line: 470, baseType: !1537, size: 8, offset: 608)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1525, file: !1526, line: 471, baseType: !1537, size: 8, offset: 616)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1525, file: !1526, line: 472, baseType: !1537, size: 8, offset: 624)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1525, file: !1526, line: 473, baseType: !1537, size: 8, offset: 632)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1525, file: !1526, line: 474, baseType: !1537, size: 8, offset: 640)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1525, file: !1526, line: 475, baseType: !1537, size: 8, offset: 648)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1525, file: !1526, line: 476, baseType: !1537, size: 8, offset: 656)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1525, file: !1526, line: 477, baseType: !1537, size: 8, offset: 664)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1525, file: !1526, line: 478, baseType: !1537, size: 8, offset: 672)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1525, file: !1526, line: 479, baseType: !1537, size: 8, offset: 680)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1525, file: !1526, line: 480, baseType: !1537, size: 8, offset: 688)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1525, file: !1526, line: 481, baseType: !1537, size: 8, offset: 696)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1525, file: !1526, line: 482, baseType: !1537, size: 8, offset: 704)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1525, file: !1526, line: 483, baseType: !1537, size: 8, offset: 712)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1525, file: !1526, line: 484, baseType: !1537, size: 8, offset: 720)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1525, file: !1526, line: 485, baseType: !1537, size: 8, offset: 728)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1525, file: !1526, line: 486, baseType: !1537, size: 8, offset: 736)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1525, file: !1526, line: 487, baseType: !1537, size: 8, offset: 744)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1525, file: !1526, line: 488, baseType: !1537, size: 8, offset: 752)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1525, file: !1526, line: 489, baseType: !1537, size: 8, offset: 760)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1525, file: !1526, line: 490, baseType: !1537, size: 8, offset: 768)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1525, file: !1526, line: 491, baseType: !1537, size: 8, offset: 776)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1525, file: !1526, line: 492, baseType: !1537, size: 8, offset: 784)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1525, file: !1526, line: 493, baseType: !1537, size: 8, offset: 792)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1525, file: !1526, line: 494, baseType: !1537, size: 8, offset: 800)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1525, file: !1526, line: 495, baseType: !1537, size: 8, offset: 808)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1525, file: !1526, line: 496, baseType: !1537, size: 8, offset: 816)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1525, file: !1526, line: 497, baseType: !1537, size: 8, offset: 824)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1525, file: !1526, line: 498, baseType: !1537, size: 8, offset: 832)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1525, file: !1526, line: 499, baseType: !1537, size: 8, offset: 840)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1525, file: !1526, line: 500, baseType: !1537, size: 8, offset: 848)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1525, file: !1526, line: 501, baseType: !1537, size: 8, offset: 856)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1525, file: !1526, line: 502, baseType: !1537, size: 8, offset: 864)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1525, file: !1526, line: 503, baseType: !1537, size: 8, offset: 872)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1525, file: !1526, line: 504, baseType: !1537, size: 8, offset: 880)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1525, file: !1526, line: 505, baseType: !1537, size: 8, offset: 888)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1525, file: !1526, line: 506, baseType: !1537, size: 8, offset: 896)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1525, file: !1526, line: 507, baseType: !1537, size: 8, offset: 904)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1525, file: !1526, line: 508, baseType: !1537, size: 8, offset: 912)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1525, file: !1526, line: 509, baseType: !1537, size: 8, offset: 920)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1525, file: !1526, line: 510, baseType: !1537, size: 8, offset: 928)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1525, file: !1526, line: 511, baseType: !1537, size: 8, offset: 936)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1525, file: !1526, line: 512, baseType: !1537, size: 8, offset: 944)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1525, file: !1526, line: 513, baseType: !1537, size: 8, offset: 952)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1525, file: !1526, line: 514, baseType: !1537, size: 8, offset: 960)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1525, file: !1526, line: 515, baseType: !1537, size: 8, offset: 968)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1525, file: !1526, line: 516, baseType: !1537, size: 8, offset: 976)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1525, file: !1526, line: 517, baseType: !1537, size: 8, offset: 984)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1525, file: !1526, line: 518, baseType: !1537, size: 8, offset: 992)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1525, file: !1526, line: 519, baseType: !1537, size: 8, offset: 1000)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1525, file: !1526, line: 520, baseType: !1537, size: 8, offset: 1008)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1525, file: !1526, line: 521, baseType: !1537, size: 8, offset: 1016)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1525, file: !1526, line: 522, baseType: !1537, size: 8, offset: 1024)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1525, file: !1526, line: 523, baseType: !1537, size: 8, offset: 1032)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1525, file: !1526, line: 524, baseType: !1537, size: 8, offset: 1040)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1525, file: !1526, line: 525, baseType: !1537, size: 8, offset: 1048)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1525, file: !1526, line: 526, baseType: !1537, size: 8, offset: 1056)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1525, file: !1526, line: 527, baseType: !1537, size: 8, offset: 1064)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1525, file: !1526, line: 528, baseType: !1537, size: 8, offset: 1072)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1525, file: !1526, line: 529, baseType: !1537, size: 8, offset: 1080)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1525, file: !1526, line: 530, baseType: !1537, size: 8, offset: 1088)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1525, file: !1526, line: 531, baseType: !1537, size: 8, offset: 1096)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1525, file: !1526, line: 532, baseType: !1537, size: 8, offset: 1104)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1525, file: !1526, line: 533, baseType: !1537, size: 8, offset: 1112)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1525, file: !1526, line: 534, baseType: !1537, size: 8, offset: 1120)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1525, file: !1526, line: 535, baseType: !1537, size: 8, offset: 1128)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1525, file: !1526, line: 536, baseType: !1537, size: 8, offset: 1136)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1525, file: !1526, line: 537, baseType: !1537, size: 8, offset: 1144)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1525, file: !1526, line: 538, baseType: !1537, size: 8, offset: 1152)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1525, file: !1526, line: 539, baseType: !1537, size: 8, offset: 1160)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1525, file: !1526, line: 540, baseType: !1537, size: 8, offset: 1168)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1525, file: !1526, line: 541, baseType: !1537, size: 8, offset: 1176)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1525, file: !1526, line: 542, baseType: !1537, size: 8, offset: 1184)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1525, file: !1526, line: 543, baseType: !1537, size: 8, offset: 1192)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1525, file: !1526, line: 544, baseType: !1537, size: 8, offset: 1200)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1525, file: !1526, line: 545, baseType: !1537, size: 8, offset: 1208)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1525, file: !1526, line: 546, baseType: !1537, size: 8, offset: 1216)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1525, file: !1526, line: 547, baseType: !1537, size: 8, offset: 1224)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1525, file: !1526, line: 548, baseType: !1537, size: 8, offset: 1232)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1525, file: !1526, line: 549, baseType: !1537, size: 8, offset: 1240)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1525, file: !1526, line: 550, baseType: !1537, size: 8, offset: 1248)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1525, file: !1526, line: 551, baseType: !1537, size: 8, offset: 1256)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1525, file: !1526, line: 552, baseType: !1537, size: 8, offset: 1264)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1525, file: !1526, line: 553, baseType: !1537, size: 8, offset: 1272)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1525, file: !1526, line: 554, baseType: !1537, size: 8, offset: 1280)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1525, file: !1526, line: 555, baseType: !1537, size: 8, offset: 1288)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1525, file: !1526, line: 556, baseType: !1537, size: 8, offset: 1296)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1525, file: !1526, line: 557, baseType: !1537, size: 8, offset: 1304)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1525, file: !1526, line: 558, baseType: !1537, size: 8, offset: 1312)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1525, file: !1526, line: 559, baseType: !1537, size: 8, offset: 1320)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1525, file: !1526, line: 560, baseType: !1537, size: 8, offset: 1328)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1525, file: !1526, line: 561, baseType: !1537, size: 8, offset: 1336)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1525, file: !1526, line: 562, baseType: !1537, size: 8, offset: 1344)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1525, file: !1526, line: 563, baseType: !1537, size: 8, offset: 1352)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1525, file: !1526, line: 564, baseType: !1537, size: 8, offset: 1360)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1525, file: !1526, line: 565, baseType: !1537, size: 8, offset: 1368)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1525, file: !1526, line: 566, baseType: !1537, size: 8, offset: 1376)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1525, file: !1526, line: 567, baseType: !1537, size: 8, offset: 1384)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1525, file: !1526, line: 568, baseType: !1537, size: 8, offset: 1392)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1525, file: !1526, line: 569, baseType: !1537, size: 8, offset: 1400)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1525, file: !1526, line: 570, baseType: !1537, size: 8, offset: 1408)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1525, file: !1526, line: 571, baseType: !1537, size: 8, offset: 1416)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1525, file: !1526, line: 572, baseType: !1537, size: 8, offset: 1424)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1525, file: !1526, line: 573, baseType: !1537, size: 8, offset: 1432)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1525, file: !1526, line: 574, baseType: !1537, size: 8, offset: 1440)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !761, file: !171, line: 3405, baseType: !1693, size: 384)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !171, line: 3352, size: 384, elements: !1694)
!1694 = !{!1695, !1696}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1693, file: !171, line: 3353, baseType: !797, size: 192)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1693, file: !171, line: 3356, baseType: !1697, size: 192, offset: 192)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1526, line: 578, size: 192, elements: !1698)
!1698 = !{!1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1697, file: !1526, line: 580, baseType: !600, size: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1697, file: !1526, line: 581, baseType: !600, size: 32, offset: 32)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1697, file: !1526, line: 582, baseType: !600, size: 32, offset: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1697, file: !1526, line: 583, baseType: !600, size: 32, offset: 96)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1697, file: !1526, line: 584, baseType: !599, size: 8, offset: 128)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1697, file: !1526, line: 585, baseType: !599, size: 8, offset: 136)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1697, file: !1526, line: 586, baseType: !599, size: 8, offset: 144)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1697, file: !1526, line: 587, baseType: !599, size: 8, offset: 152)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1697, file: !1526, line: 588, baseType: !599, size: 8, offset: 160)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1697, file: !1526, line: 589, baseType: !599, size: 8, offset: 168)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1697, file: !1526, line: 590, baseType: !599, size: 8, offset: 176)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !664, file: !410, line: 178, baseType: !614, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !664, file: !410, line: 179, baseType: !1712, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !410, line: 150, baseType: !1714)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !410, line: 142, size: 320, elements: !1715)
!1715 = !{!1716, !1717, !1718, !1719, !1720, !1721}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1714, file: !410, line: 144, baseType: !759, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1714, file: !410, line: 145, baseType: !644, size: 64, offset: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1714, file: !410, line: 146, baseType: !644, size: 64, offset: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1714, file: !410, line: 147, baseType: !1375, size: 32, offset: 192)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1714, file: !410, line: 148, baseType: !7, size: 32, offset: 224)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1714, file: !410, line: 149, baseType: !599, size: 8, offset: 256)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !664, file: !410, line: 180, baseType: !1723, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !410, line: 162, baseType: !1725)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !410, line: 159, size: 128, elements: !1726)
!1726 = !{!1727, !1728}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1725, file: !410, line: 160, baseType: !759, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1725, file: !410, line: 161, baseType: !730, size: 64, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !664, file: !410, line: 181, baseType: !1730, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !410, line: 181, flags: DIFlagFwdDecl)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !659, file: !410, line: 317, baseType: !1733, size: 64)
!1733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !730, size: 64, elements: !678)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !659, file: !410, line: 318, baseType: !1735, size: 320)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !410, line: 188, size: 320, elements: !1736)
!1736 = !{!1737, !1739, !1762}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1735, file: !410, line: 190, baseType: !1738, size: 192)
!1738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !663, size: 192, elements: !830)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1735, file: !410, line: 193, baseType: !1740, size: 64, offset: 192)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !410, line: 206, size: 320, elements: !1742)
!1742 = !{!1743, !1747, !1748, !1749, !1761}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1741, file: !410, line: 208, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !613, line: 62, baseType: !1746)
!1746 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !613, line: 61, flags: DIFlagFwdDecl)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1741, file: !410, line: 211, baseType: !7, size: 32, offset: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1741, file: !410, line: 214, baseType: !730, size: 64, offset: 128)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1741, file: !410, line: 224, baseType: !1750, size: 64, offset: 192)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !410, line: 202, baseType: !1752)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !410, line: 202, size: 128, elements: !1753)
!1753 = !{!1754}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1752, file: !410, line: 202, baseType: !1755, size: 128)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !410, line: 200, baseType: !1756)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !410, line: 200, size: 128, elements: !1757)
!1757 = !{!1758, !1759, !1760}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1756, file: !410, line: 200, baseType: !7, size: 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1756, file: !410, line: 200, baseType: !7, size: 32, offset: 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1756, file: !410, line: 200, baseType: !677, size: 64, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1741, file: !410, line: 234, baseType: !1750, size: 64, offset: 256)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1735, file: !410, line: 197, baseType: !730, size: 64, offset: 256)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !659, file: !410, line: 319, baseType: !819, size: 256)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !659, file: !410, line: 320, baseType: !838, size: 192)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !632, file: !142, line: 134, baseType: !604, size: 64, offset: 192)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !632, file: !142, line: 137, baseType: !759, size: 64, offset: 256)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !632, file: !142, line: 138, baseType: !879, size: 32, offset: 320)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !632, file: !142, line: 142, baseType: !7, size: 32, offset: 352)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !632, file: !142, line: 144, baseType: !600, size: 32, offset: 384)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !632, file: !142, line: 145, baseType: !600, size: 32, offset: 416)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !632, file: !142, line: 146, baseType: !1772, size: 64, offset: 448)
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !142, line: 119, baseType: !730)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !615, file: !142, line: 220, baseType: !618, size: 64, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !615, file: !142, line: 223, baseType: !604, size: 64, offset: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !615, file: !142, line: 226, baseType: !1225, size: 64, offset: 192)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !615, file: !142, line: 229, baseType: !1777, size: 128, offset: 256)
!1777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1778, size: 128, elements: !714)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !142, line: 229, flags: DIFlagFwdDecl)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !615, file: !142, line: 232, baseType: !614, size: 64, offset: 384)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !615, file: !142, line: 233, baseType: !614, size: 64, offset: 448)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !615, file: !142, line: 238, baseType: !1783, size: 64, offset: 512)
!1783 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !142, line: 235, size: 64, elements: !1784)
!1784 = !{!1785, !1791}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1783, file: !142, line: 236, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !142, line: 273, size: 128, elements: !1788)
!1788 = !{!1789, !1790}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1787, file: !142, line: 275, baseType: !640, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1787, file: !142, line: 278, baseType: !640, size: 64, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1783, file: !142, line: 237, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !142, line: 259, size: 320, elements: !1794)
!1794 = !{!1795, !1796, !1797, !1798, !1799}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1793, file: !142, line: 261, baseType: !644, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1793, file: !142, line: 262, baseType: !644, size: 64, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1793, file: !142, line: 266, baseType: !644, size: 64, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1793, file: !142, line: 267, baseType: !644, size: 64, offset: 192)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1793, file: !142, line: 270, baseType: !600, size: 32, offset: 256)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !615, file: !142, line: 241, baseType: !1772, size: 64, offset: 576)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !615, file: !142, line: 244, baseType: !600, size: 32, offset: 640)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !615, file: !142, line: 247, baseType: !600, size: 32, offset: 672)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !615, file: !142, line: 250, baseType: !600, size: 32, offset: 704)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !615, file: !142, line: 253, baseType: !600, size: 32, offset: 736)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !615, file: !142, line: 256, baseType: !600, size: 32, offset: 768)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !609, file: !398, line: 118, baseType: !600, size: 32, offset: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "num_loads", scope: !609, file: !398, line: 121, baseType: !600, size: 32, offset: 96)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "num_stores", scope: !609, file: !398, line: 122, baseType: !600, size: 32, offset: 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "num_debug", scope: !609, file: !398, line: 125, baseType: !600, size: 32, offset: 160)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !609, file: !398, line: 129, baseType: !1811, size: 64, offset: 192)
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "ddg_node_ptr", file: !398, line: 31, baseType: !1812)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ddg_node", file: !398, line: 48, size: 512, elements: !1814)
!1814 = !{!1815, !1816, !1817, !1818, !1838, !1839, !1850, !1851}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "cuid", scope: !1813, file: !398, line: 53, baseType: !600, size: 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1813, file: !398, line: 56, baseType: !644, size: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "first_note", scope: !1813, file: !398, line: 62, baseType: !644, size: 64, offset: 128)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !1813, file: !398, line: 65, baseType: !1819, size: 64, offset: 192)
!1819 = !DIDerivedType(tag: DW_TAG_typedef, name: "ddg_edge_ptr", file: !398, line: 32, baseType: !1820)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ddg_edge", file: !398, line: 81, size: 448, elements: !1822)
!1822 = !{!1823, !1824, !1825, !1827, !1829, !1830, !1831, !1832, !1833}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1821, file: !398, line: 84, baseType: !1811, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !1821, file: !398, line: 85, baseType: !1811, size: 64, offset: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1821, file: !398, line: 88, baseType: !1826, size: 32, offset: 128)
!1826 = !DIDerivedType(tag: DW_TAG_typedef, name: "dep_type", file: !398, line: 37, baseType: !397)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !1821, file: !398, line: 91, baseType: !1828, size: 32, offset: 160)
!1828 = !DIDerivedType(tag: DW_TAG_typedef, name: "dep_data_type", file: !398, line: 39, baseType: !403)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1821, file: !398, line: 94, baseType: !600, size: 32, offset: 192)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "distance", scope: !1821, file: !398, line: 97, baseType: !600, size: 32, offset: 224)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !1821, file: !398, line: 101, baseType: !1819, size: 64, offset: 256)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !1821, file: !398, line: 102, baseType: !1819, size: 64, offset: 320)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1821, file: !398, line: 108, baseType: !1834, size: 64, offset: 384)
!1834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1821, file: !398, line: 105, size: 64, elements: !1835)
!1835 = !{!1836, !1837}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1834, file: !398, line: 106, baseType: !600, size: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1834, file: !398, line: 107, baseType: !604, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !1813, file: !398, line: 66, baseType: !1819, size: 64, offset: 256)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "successors", scope: !1813, file: !398, line: 70, baseType: !1840, size: 64, offset: 320)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap", file: !1841, line: 45, baseType: !1842)
!1841 = !DIFile(filename: "./sbitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_bitmap_def", file: !1841, line: 39, size: 192, elements: !1844)
!1844 = !{!1845, !1846, !1847, !1848}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "popcount", scope: !1843, file: !1841, line: 41, baseType: !598, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "n_bits", scope: !1843, file: !1841, line: 42, baseType: !7, size: 32, offset: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1843, file: !1841, line: 43, baseType: !7, size: 32, offset: 96)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !1843, file: !1841, line: 44, baseType: !1849, size: 64, offset: 128)
!1849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !713, size: 64, elements: !678)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "predecessors", scope: !1813, file: !398, line: 71, baseType: !1840, size: 64, offset: 384)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1813, file: !398, line: 77, baseType: !1852, size: 64, offset: 448)
!1852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1813, file: !398, line: 74, size: 64, elements: !1853)
!1853 = !{!1854, !1855}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1852, file: !398, line: 75, baseType: !600, size: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1852, file: !398, line: 76, baseType: !604, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "closing_branch", scope: !609, file: !398, line: 132, baseType: !1811, size: 64, offset: 256)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "closing_branch_deps", scope: !609, file: !398, line: 137, baseType: !600, size: 32, offset: 320)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "num_backarcs", scope: !609, file: !398, line: 140, baseType: !600, size: 32, offset: 352)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "backarcs", scope: !609, file: !398, line: 141, baseType: !1860, size: 64, offset: 384)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_typedef, name: "ddg_all_sccs_ptr", file: !398, line: 35, baseType: !1862)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ddg_all_sccs", file: !398, line: 160, size: 192, elements: !1864)
!1864 = !{!1865, !1875, !1876}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "sccs", scope: !1863, file: !398, line: 163, baseType: !1866, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_typedef, name: "ddg_scc_ptr", file: !398, line: 34, baseType: !1868)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ddg_scc", file: !398, line: 146, size: 192, elements: !1870)
!1870 = !{!1871, !1872, !1873, !1874}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "nodes", scope: !1869, file: !398, line: 149, baseType: !1840, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "backarcs", scope: !1869, file: !398, line: 152, baseType: !1860, size: 64, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "num_backarcs", scope: !1869, file: !398, line: 153, baseType: !600, size: 32, offset: 128)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "recurrence_length", scope: !1869, file: !398, line: 156, baseType: !600, size: 32, offset: 160)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "num_sccs", scope: !1863, file: !398, line: 164, baseType: !600, size: 32, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "ddg", scope: !1863, file: !398, line: 166, baseType: !607, size: 64, offset: 128)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_rd_bb_info", file: !1879, line: 794, size: 320, elements: !1880)
!1879 = !DIFile(filename: "./df.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1880 = !{!1881, !1883, !1884, !1885, !1886}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !1878, file: !1879, line: 797, baseType: !1882, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !613, line: 47, baseType: !697)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "sparse_kill", scope: !1878, file: !1879, line: 798, baseType: !1882, size: 64, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "gen", scope: !1878, file: !1879, line: 799, baseType: !1882, size: 64, offset: 128)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !1878, file: !1879, line: 802, baseType: !1882, size: 64, offset: 192)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !1878, file: !1879, line: 803, baseType: !1882, size: 64, offset: 256)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1867)
!1889 = !{!1890, !1891}
!1890 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1891 = !DIGlobalVariableExpression(var: !1892, expr: !DIExpression())
!1892 = distinct !DIGlobalVariable(name: "null_link", scope: !1893, file: !553, line: 1430, type: !1904, isLocal: true, isDefinition: true)
!1893 = distinct !DISubprogram(name: "sd_iterator_start", scope: !553, file: !553, line: 1427, type: !1894, scopeLine: 1428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1927)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!1896, !644, !1900}
!1896 = !DIDerivedType(tag: DW_TAG_typedef, name: "sd_iterator_def", file: !553, line: 1414, baseType: !1897)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sd_iterator", file: !553, line: 1395, size: 256, elements: !1898)
!1898 = !{!1899, !1901, !1902, !1926}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1897, file: !553, line: 1398, baseType: !1900, size: 32)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "sd_list_types_def", file: !553, line: 1390, baseType: !600)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1897, file: !553, line: 1401, baseType: !644, size: 64, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "linkp", scope: !1897, file: !553, line: 1408, baseType: !1903, size: 64, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "dep_link_t", file: !553, line: 280, baseType: !1905)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dep_link", file: !553, line: 265, size: 192, elements: !1907)
!1907 = !{!1908, !1923, !1924}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1906, file: !553, line: 268, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "dep_node_t", file: !553, line: 261, baseType: !1910)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dep_node", file: !553, line: 405, size: 576, elements: !1912)
!1912 = !{!1913, !1914, !1922}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1911, file: !553, line: 408, baseType: !1906, size: 192)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "dep", scope: !1911, file: !553, line: 411, baseType: !1915, size: 192, offset: 192)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dep", file: !553, line: 227, size: 192, elements: !1916)
!1916 = !{!1917, !1918, !1919, !1920}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "pro", scope: !1915, file: !553, line: 230, baseType: !644, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "con", scope: !1915, file: !553, line: 233, baseType: !644, size: 64, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1915, file: !553, line: 237, baseType: !563, size: 32, offset: 128)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1915, file: !553, line: 241, baseType: !1921, size: 32, offset: 160)
!1921 = !DIDerivedType(tag: DW_TAG_typedef, name: "ds_t", file: !553, line: 218, baseType: !600)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "forw", scope: !1911, file: !553, line: 414, baseType: !1906, size: 192, offset: 384)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1906, file: !553, line: 271, baseType: !1905, size: 64, offset: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "prev_nextp", scope: !1906, file: !553, line: 278, baseType: !1925, size: 64, offset: 128)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "resolved_p", scope: !1897, file: !553, line: 1411, baseType: !599, size: 8, offset: 192)
!1927 = !{!1928, !1929, !1930}
!1928 = !DILocalVariable(name: "insn", arg: 1, scope: !1893, file: !553, line: 1427, type: !644)
!1929 = !DILocalVariable(name: "types", arg: 2, scope: !1893, file: !553, line: 1427, type: !1900)
!1930 = !DILocalVariable(name: "i", scope: !1893, file: !553, line: 1432, type: !1896)
!1931 = !{i32 2, !"Dwarf Version", i32 4}
!1932 = !{i32 2, !"Debug Info Version", i32 3}
!1933 = !{i32 1, !"wchar_size", i32 4}
!1934 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1935 = distinct !DISubprogram(name: "vprintf", scope: !1936, file: !1936, line: 39, type: !1937, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1947)
!1936 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!600, !1939, !1940}
!1939 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !605)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1942)
!1942 = !{!1943, !1944, !1945, !1946}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1941, file: !3, baseType: !7, size: 32)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1941, file: !3, baseType: !7, size: 32, offset: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1941, file: !3, baseType: !604, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1941, file: !3, baseType: !604, size: 64, offset: 128)
!1947 = !{!1948, !1949}
!1948 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1935, file: !1936, line: 39, type: !1939)
!1949 = !DILocalVariable(name: "__arg", arg: 2, scope: !1935, file: !1936, line: 39, type: !1940)
!1950 = !DILocation(line: 0, scope: !1935)
!1951 = !DILocation(line: 41, column: 20, scope: !1935)
!1952 = !DILocation(line: 41, column: 10, scope: !1935)
!1953 = !DILocation(line: 41, column: 3, scope: !1935)
!1954 = distinct !DISubprogram(name: "getchar", scope: !1936, file: !1936, line: 47, type: !1955, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1957)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!600}
!1957 = !{}
!1958 = !DILocation(line: 49, column: 16, scope: !1954)
!1959 = !DILocation(line: 49, column: 10, scope: !1954)
!1960 = !DILocation(line: 49, column: 3, scope: !1954)
!1961 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1936, file: !1936, line: 56, type: !1962, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2015)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!600, !1964}
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1966, line: 7, baseType: !1967)
!1966 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1968, line: 49, size: 1728, elements: !1969)
!1968 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1969 = !{!1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1985, !1987, !1988, !1989, !1992, !1994, !1995, !1996, !1999, !2001, !2004, !2007, !2008, !2009, !2010, !2011}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1967, file: !1968, line: 51, baseType: !600, size: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1967, file: !1968, line: 54, baseType: !602, size: 64, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1967, file: !1968, line: 55, baseType: !602, size: 64, offset: 128)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1967, file: !1968, line: 56, baseType: !602, size: 64, offset: 192)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1967, file: !1968, line: 57, baseType: !602, size: 64, offset: 256)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1967, file: !1968, line: 58, baseType: !602, size: 64, offset: 320)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1967, file: !1968, line: 59, baseType: !602, size: 64, offset: 384)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1967, file: !1968, line: 60, baseType: !602, size: 64, offset: 448)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1967, file: !1968, line: 61, baseType: !602, size: 64, offset: 512)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1967, file: !1968, line: 64, baseType: !602, size: 64, offset: 576)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1967, file: !1968, line: 65, baseType: !602, size: 64, offset: 640)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1967, file: !1968, line: 66, baseType: !602, size: 64, offset: 704)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1967, file: !1968, line: 68, baseType: !1983, size: 64, offset: 768)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1968, line: 36, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1967, file: !1968, line: 70, baseType: !1986, size: 64, offset: 832)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1967, file: !1968, line: 72, baseType: !600, size: 32, offset: 896)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1967, file: !1968, line: 73, baseType: !600, size: 32, offset: 928)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1967, file: !1968, line: 74, baseType: !1990, size: 64, offset: 960)
!1990 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1991, line: 152, baseType: !730)
!1991 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1967, file: !1968, line: 77, baseType: !1993, size: 16, offset: 1024)
!1993 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1967, file: !1968, line: 78, baseType: !1537, size: 8, offset: 1040)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1967, file: !1968, line: 79, baseType: !854, size: 8, offset: 1048)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1967, file: !1968, line: 81, baseType: !1997, size: 64, offset: 1088)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1968, line: 43, baseType: null)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1967, file: !1968, line: 89, baseType: !2000, size: 64, offset: 1152)
!2000 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1991, line: 153, baseType: !730)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1967, file: !1968, line: 91, baseType: !2002, size: 64, offset: 1216)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1968, line: 37, flags: DIFlagFwdDecl)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1967, file: !1968, line: 92, baseType: !2005, size: 64, offset: 1280)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1968, line: 38, flags: DIFlagFwdDecl)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1967, file: !1968, line: 93, baseType: !1986, size: 64, offset: 1344)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1967, file: !1968, line: 94, baseType: !604, size: 64, offset: 1408)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1967, file: !1968, line: 95, baseType: !1115, size: 64, offset: 1472)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1967, file: !1968, line: 96, baseType: !600, size: 32, offset: 1536)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1967, file: !1968, line: 98, baseType: !2012, size: 160, offset: 1568)
!2012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !603, size: 160, elements: !2013)
!2013 = !{!2014}
!2014 = !DISubrange(count: 20)
!2015 = !{!2016}
!2016 = !DILocalVariable(name: "__fp", arg: 1, scope: !1961, file: !1936, line: 56, type: !1964)
!2017 = !DILocation(line: 0, scope: !1961)
!2018 = !DILocation(line: 58, column: 10, scope: !1961)
!2019 = !DILocation(line: 58, column: 3, scope: !1961)
!2020 = distinct !DISubprogram(name: "getc_unlocked", scope: !1936, file: !1936, line: 66, type: !1962, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2021)
!2021 = !{!2022}
!2022 = !DILocalVariable(name: "__fp", arg: 1, scope: !2020, file: !1936, line: 66, type: !1964)
!2023 = !DILocation(line: 0, scope: !2020)
!2024 = !DILocation(line: 68, column: 10, scope: !2020)
!2025 = !DILocation(line: 68, column: 3, scope: !2020)
!2026 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1936, file: !1936, line: 73, type: !1955, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1957)
!2027 = !DILocation(line: 75, column: 10, scope: !2026)
!2028 = !DILocation(line: 75, column: 3, scope: !2026)
!2029 = distinct !DISubprogram(name: "putchar", scope: !1936, file: !1936, line: 82, type: !2030, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2032)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!600, !600}
!2032 = !{!2033}
!2033 = !DILocalVariable(name: "__c", arg: 1, scope: !2029, file: !1936, line: 82, type: !600)
!2034 = !DILocation(line: 0, scope: !2029)
!2035 = !DILocation(line: 84, column: 21, scope: !2029)
!2036 = !DILocation(line: 84, column: 10, scope: !2029)
!2037 = !DILocation(line: 84, column: 3, scope: !2029)
!2038 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1936, file: !1936, line: 91, type: !2039, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2041)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!600, !600, !1964}
!2041 = !{!2042, !2043}
!2042 = !DILocalVariable(name: "__c", arg: 1, scope: !2038, file: !1936, line: 91, type: !600)
!2043 = !DILocalVariable(name: "__stream", arg: 2, scope: !2038, file: !1936, line: 91, type: !1964)
!2044 = !DILocation(line: 0, scope: !2038)
!2045 = !DILocation(line: 93, column: 10, scope: !2038)
!2046 = !DILocation(line: 93, column: 3, scope: !2038)
!2047 = distinct !DISubprogram(name: "putc_unlocked", scope: !1936, file: !1936, line: 101, type: !2039, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2048)
!2048 = !{!2049, !2050}
!2049 = !DILocalVariable(name: "__c", arg: 1, scope: !2047, file: !1936, line: 101, type: !600)
!2050 = !DILocalVariable(name: "__stream", arg: 2, scope: !2047, file: !1936, line: 101, type: !1964)
!2051 = !DILocation(line: 0, scope: !2047)
!2052 = !DILocation(line: 103, column: 10, scope: !2047)
!2053 = !DILocation(line: 103, column: 3, scope: !2047)
!2054 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1936, file: !1936, line: 108, type: !2030, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2055)
!2055 = !{!2056}
!2056 = !DILocalVariable(name: "__c", arg: 1, scope: !2054, file: !1936, line: 108, type: !600)
!2057 = !DILocation(line: 0, scope: !2054)
!2058 = !DILocation(line: 110, column: 10, scope: !2054)
!2059 = !DILocation(line: 110, column: 3, scope: !2054)
!2060 = distinct !DISubprogram(name: "getline", scope: !1936, file: !1936, line: 118, type: !2061, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2065)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!2063, !601, !2064, !1964}
!2063 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1991, line: 193, baseType: !730)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!2065 = !{!2066, !2067, !2068}
!2066 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2060, file: !1936, line: 118, type: !601)
!2067 = !DILocalVariable(name: "__n", arg: 2, scope: !2060, file: !1936, line: 118, type: !2064)
!2068 = !DILocalVariable(name: "__stream", arg: 3, scope: !2060, file: !1936, line: 118, type: !1964)
!2069 = !DILocation(line: 0, scope: !2060)
!2070 = !DILocation(line: 120, column: 10, scope: !2060)
!2071 = !DILocation(line: 120, column: 3, scope: !2060)
!2072 = distinct !DISubprogram(name: "feof_unlocked", scope: !1936, file: !1936, line: 128, type: !1962, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2073)
!2073 = !{!2074}
!2074 = !DILocalVariable(name: "__stream", arg: 1, scope: !2072, file: !1936, line: 128, type: !1964)
!2075 = !DILocation(line: 0, scope: !2072)
!2076 = !DILocation(line: 130, column: 10, scope: !2072)
!2077 = !DILocation(line: 130, column: 3, scope: !2072)
!2078 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1936, file: !1936, line: 135, type: !1962, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2079)
!2079 = !{!2080}
!2080 = !DILocalVariable(name: "__stream", arg: 1, scope: !2078, file: !1936, line: 135, type: !1964)
!2081 = !DILocation(line: 0, scope: !2078)
!2082 = !DILocation(line: 137, column: 10, scope: !2078)
!2083 = !DILocation(line: 137, column: 3, scope: !2078)
!2084 = distinct !DISubprogram(name: "tolower", scope: !2085, file: !2085, line: 207, type: !2030, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2086)
!2085 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2086 = !{!2087}
!2087 = !DILocalVariable(name: "__c", arg: 1, scope: !2084, file: !2085, line: 207, type: !600)
!2088 = !DILocation(line: 0, scope: !2084)
!2089 = !DILocation(line: 209, column: 22, scope: !2084)
!2090 = !DILocation(line: 209, column: 39, scope: !2084)
!2091 = !DILocation(line: 209, column: 38, scope: !2084)
!2092 = !DILocation(line: 209, column: 37, scope: !2084)
!2093 = !DILocation(line: 209, column: 10, scope: !2084)
!2094 = !DILocation(line: 209, column: 3, scope: !2084)
!2095 = distinct !DISubprogram(name: "toupper", scope: !2085, file: !2085, line: 213, type: !2030, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2096)
!2096 = !{!2097}
!2097 = !DILocalVariable(name: "__c", arg: 1, scope: !2095, file: !2085, line: 213, type: !600)
!2098 = !DILocation(line: 0, scope: !2095)
!2099 = !DILocation(line: 215, column: 22, scope: !2095)
!2100 = !DILocation(line: 215, column: 39, scope: !2095)
!2101 = !DILocation(line: 215, column: 38, scope: !2095)
!2102 = !DILocation(line: 215, column: 37, scope: !2095)
!2103 = !DILocation(line: 215, column: 10, scope: !2095)
!2104 = !DILocation(line: 215, column: 3, scope: !2095)
!2105 = distinct !DISubprogram(name: "atoi", scope: !2106, file: !2106, line: 361, type: !2107, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2109)
!2106 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!600, !605}
!2109 = !{!2110}
!2110 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2105, file: !2106, line: 361, type: !605)
!2111 = !DILocation(line: 0, scope: !2105)
!2112 = !DILocation(line: 363, column: 16, scope: !2105)
!2113 = !DILocation(line: 363, column: 10, scope: !2105)
!2114 = !DILocation(line: 363, column: 3, scope: !2105)
!2115 = distinct !DISubprogram(name: "atol", scope: !2106, file: !2106, line: 366, type: !2116, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2118)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!730, !605}
!2118 = !{!2119}
!2119 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2115, file: !2106, line: 366, type: !605)
!2120 = !DILocation(line: 0, scope: !2115)
!2121 = !DILocation(line: 368, column: 10, scope: !2115)
!2122 = !DILocation(line: 368, column: 3, scope: !2115)
!2123 = distinct !DISubprogram(name: "atoll", scope: !2106, file: !2106, line: 373, type: !2124, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2127)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!2126, !605}
!2126 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2127 = !{!2128}
!2128 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2123, file: !2106, line: 373, type: !605)
!2129 = !DILocation(line: 0, scope: !2123)
!2130 = !DILocation(line: 375, column: 10, scope: !2123)
!2131 = !DILocation(line: 375, column: 3, scope: !2123)
!2132 = distinct !DISubprogram(name: "bsearch", scope: !2133, file: !2133, line: 20, type: !2134, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2137)
!2133 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!604, !1100, !1100, !1115, !1115, !2136}
!2136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2106, line: 808, baseType: !1104)
!2137 = !{!2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147}
!2138 = !DILocalVariable(name: "__key", arg: 1, scope: !2132, file: !2133, line: 20, type: !1100)
!2139 = !DILocalVariable(name: "__base", arg: 2, scope: !2132, file: !2133, line: 20, type: !1100)
!2140 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2132, file: !2133, line: 20, type: !1115)
!2141 = !DILocalVariable(name: "__size", arg: 4, scope: !2132, file: !2133, line: 20, type: !1115)
!2142 = !DILocalVariable(name: "__compar", arg: 5, scope: !2132, file: !2133, line: 21, type: !2136)
!2143 = !DILocalVariable(name: "__l", scope: !2132, file: !2133, line: 23, type: !1115)
!2144 = !DILocalVariable(name: "__u", scope: !2132, file: !2133, line: 23, type: !1115)
!2145 = !DILocalVariable(name: "__idx", scope: !2132, file: !2133, line: 23, type: !1115)
!2146 = !DILocalVariable(name: "__p", scope: !2132, file: !2133, line: 24, type: !1100)
!2147 = !DILocalVariable(name: "__comparison", scope: !2132, file: !2133, line: 25, type: !600)
!2148 = !DILocation(line: 0, scope: !2132)
!2149 = !DILocation(line: 29, column: 3, scope: !2132)
!2150 = !DILocation(line: 27, column: 7, scope: !2132)
!2151 = !DILocation(line: 29, column: 14, scope: !2132)
!2152 = !DILocation(line: 31, column: 20, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2132, file: !2133, line: 30, column: 5)
!2154 = !DILocation(line: 31, column: 27, scope: !2153)
!2155 = !DILocation(line: 32, column: 56, scope: !2153)
!2156 = !DILocation(line: 32, column: 47, scope: !2153)
!2157 = !DILocation(line: 33, column: 22, scope: !2153)
!2158 = !DILocation(line: 34, column: 24, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2153, file: !2133, line: 34, column: 11)
!2160 = !DILocation(line: 34, column: 11, scope: !2153)
!2161 = !DILocation(line: 36, column: 29, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2159, file: !2133, line: 36, column: 16)
!2163 = !DILocation(line: 36, column: 16, scope: !2159)
!2164 = !DILocation(line: 37, column: 14, scope: !2162)
!2165 = distinct !{!2165, !2149, !2166}
!2166 = !DILocation(line: 40, column: 5, scope: !2132)
!2167 = !DILocation(line: 43, column: 1, scope: !2132)
!2168 = distinct !DISubprogram(name: "atof", scope: !2169, file: !2169, line: 25, type: !2170, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2173)
!2169 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!2172, !605}
!2172 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2173 = !{!2174}
!2174 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2168, file: !2169, line: 25, type: !605)
!2175 = !DILocation(line: 0, scope: !2168)
!2176 = !DILocation(line: 27, column: 10, scope: !2168)
!2177 = !DILocation(line: 27, column: 3, scope: !2168)
!2178 = distinct !DISubprogram(name: "strtoimax", scope: !2179, file: !2179, line: 324, type: !2180, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2186)
!2179 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!2182, !1939, !2185, !600}
!2182 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2183, line: 101, baseType: !2184)
!2183 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1991, line: 72, baseType: !730)
!2185 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !601)
!2186 = !{!2187, !2188, !2189}
!2187 = !DILocalVariable(name: "nptr", arg: 1, scope: !2178, file: !2179, line: 324, type: !1939)
!2188 = !DILocalVariable(name: "endptr", arg: 2, scope: !2178, file: !2179, line: 324, type: !2185)
!2189 = !DILocalVariable(name: "base", arg: 3, scope: !2178, file: !2179, line: 324, type: !600)
!2190 = !DILocation(line: 0, scope: !2178)
!2191 = !DILocation(line: 327, column: 10, scope: !2178)
!2192 = !DILocation(line: 327, column: 3, scope: !2178)
!2193 = distinct !DISubprogram(name: "strtoumax", scope: !2179, file: !2179, line: 336, type: !2194, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2198)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!2196, !1939, !2185, !600}
!2196 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2183, line: 102, baseType: !2197)
!2197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1991, line: 73, baseType: !713)
!2198 = !{!2199, !2200, !2201}
!2199 = !DILocalVariable(name: "nptr", arg: 1, scope: !2193, file: !2179, line: 336, type: !1939)
!2200 = !DILocalVariable(name: "endptr", arg: 2, scope: !2193, file: !2179, line: 336, type: !2185)
!2201 = !DILocalVariable(name: "base", arg: 3, scope: !2193, file: !2179, line: 336, type: !600)
!2202 = !DILocation(line: 0, scope: !2193)
!2203 = !DILocation(line: 339, column: 10, scope: !2193)
!2204 = !DILocation(line: 339, column: 3, scope: !2193)
!2205 = distinct !DISubprogram(name: "wcstoimax", scope: !2179, file: !2179, line: 348, type: !2206, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2215)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!2182, !2208, !2212, !600}
!2208 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2209)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2211)
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2179, line: 34, baseType: !600)
!2212 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2213)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2215 = !{!2216, !2217, !2218}
!2216 = !DILocalVariable(name: "nptr", arg: 1, scope: !2205, file: !2179, line: 348, type: !2208)
!2217 = !DILocalVariable(name: "endptr", arg: 2, scope: !2205, file: !2179, line: 348, type: !2212)
!2218 = !DILocalVariable(name: "base", arg: 3, scope: !2205, file: !2179, line: 348, type: !600)
!2219 = !DILocation(line: 0, scope: !2205)
!2220 = !DILocation(line: 351, column: 10, scope: !2205)
!2221 = !DILocation(line: 351, column: 3, scope: !2205)
!2222 = distinct !DISubprogram(name: "wcstoumax", scope: !2179, file: !2179, line: 362, type: !2223, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2225)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!2196, !2208, !2212, !600}
!2225 = !{!2226, !2227, !2228}
!2226 = !DILocalVariable(name: "nptr", arg: 1, scope: !2222, file: !2179, line: 362, type: !2208)
!2227 = !DILocalVariable(name: "endptr", arg: 2, scope: !2222, file: !2179, line: 362, type: !2212)
!2228 = !DILocalVariable(name: "base", arg: 3, scope: !2222, file: !2179, line: 362, type: !600)
!2229 = !DILocation(line: 0, scope: !2222)
!2230 = !DILocation(line: 365, column: 10, scope: !2222)
!2231 = !DILocation(line: 365, column: 3, scope: !2222)
!2232 = distinct !DISubprogram(name: "stat", scope: !2233, file: !2233, line: 453, type: !2234, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2271)
!2233 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!600, !605, !2236}
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2238, line: 46, size: 1152, elements: !2239)
!2238 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2239 = !{!2240, !2242, !2244, !2246, !2248, !2250, !2252, !2253, !2254, !2255, !2257, !2259, !2267, !2268, !2269}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2237, file: !2238, line: 48, baseType: !2241, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1991, line: 145, baseType: !713)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2237, file: !2238, line: 53, baseType: !2243, size: 64, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1991, line: 148, baseType: !713)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2237, file: !2238, line: 61, baseType: !2245, size: 64, offset: 128)
!2245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1991, line: 151, baseType: !713)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2237, file: !2238, line: 62, baseType: !2247, size: 32, offset: 192)
!2247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1991, line: 150, baseType: !7)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2237, file: !2238, line: 64, baseType: !2249, size: 32, offset: 224)
!2249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1991, line: 146, baseType: !7)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2237, file: !2238, line: 65, baseType: !2251, size: 32, offset: 256)
!2251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1991, line: 147, baseType: !7)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2237, file: !2238, line: 67, baseType: !600, size: 32, offset: 288)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2237, file: !2238, line: 69, baseType: !2241, size: 64, offset: 320)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2237, file: !2238, line: 74, baseType: !1990, size: 64, offset: 384)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2237, file: !2238, line: 78, baseType: !2256, size: 64, offset: 448)
!2256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1991, line: 174, baseType: !730)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2237, file: !2238, line: 80, baseType: !2258, size: 64, offset: 512)
!2258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1991, line: 179, baseType: !730)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2237, file: !2238, line: 91, baseType: !2260, size: 128, offset: 576)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2261, line: 10, size: 128, elements: !2262)
!2261 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2262 = !{!2263, !2265}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2260, file: !2261, line: 12, baseType: !2264, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1991, line: 160, baseType: !730)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2260, file: !2261, line: 16, baseType: !2266, size: 64, offset: 64)
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1991, line: 196, baseType: !730)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2237, file: !2238, line: 92, baseType: !2260, size: 128, offset: 704)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2237, file: !2238, line: 93, baseType: !2260, size: 128, offset: 832)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2237, file: !2238, line: 106, baseType: !2270, size: 192, offset: 960)
!2270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2266, size: 192, elements: !830)
!2271 = !{!2272, !2273}
!2272 = !DILocalVariable(name: "__path", arg: 1, scope: !2232, file: !2233, line: 453, type: !605)
!2273 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2232, file: !2233, line: 453, type: !2236)
!2274 = !DILocation(line: 0, scope: !2232)
!2275 = !DILocation(line: 455, column: 10, scope: !2232)
!2276 = !DILocation(line: 455, column: 3, scope: !2232)
!2277 = distinct !DISubprogram(name: "lstat", scope: !2233, file: !2233, line: 460, type: !2234, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2278)
!2278 = !{!2279, !2280}
!2279 = !DILocalVariable(name: "__path", arg: 1, scope: !2277, file: !2233, line: 460, type: !605)
!2280 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2277, file: !2233, line: 460, type: !2236)
!2281 = !DILocation(line: 0, scope: !2277)
!2282 = !DILocation(line: 462, column: 10, scope: !2277)
!2283 = !DILocation(line: 462, column: 3, scope: !2277)
!2284 = distinct !DISubprogram(name: "fstat", scope: !2233, file: !2233, line: 467, type: !2285, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2287)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!600, !600, !2236}
!2287 = !{!2288, !2289}
!2288 = !DILocalVariable(name: "__fd", arg: 1, scope: !2284, file: !2233, line: 467, type: !600)
!2289 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2284, file: !2233, line: 467, type: !2236)
!2290 = !DILocation(line: 0, scope: !2284)
!2291 = !DILocation(line: 469, column: 10, scope: !2284)
!2292 = !DILocation(line: 469, column: 3, scope: !2284)
!2293 = distinct !DISubprogram(name: "fstatat", scope: !2233, file: !2233, line: 474, type: !2294, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2296)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!600, !600, !605, !2236, !600}
!2296 = !{!2297, !2298, !2299, !2300}
!2297 = !DILocalVariable(name: "__fd", arg: 1, scope: !2293, file: !2233, line: 474, type: !600)
!2298 = !DILocalVariable(name: "__filename", arg: 2, scope: !2293, file: !2233, line: 474, type: !605)
!2299 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2293, file: !2233, line: 474, type: !2236)
!2300 = !DILocalVariable(name: "__flag", arg: 4, scope: !2293, file: !2233, line: 474, type: !600)
!2301 = !DILocation(line: 0, scope: !2293)
!2302 = !DILocation(line: 477, column: 10, scope: !2293)
!2303 = !DILocation(line: 477, column: 3, scope: !2293)
!2304 = distinct !DISubprogram(name: "mknod", scope: !2233, file: !2233, line: 483, type: !2305, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2307)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!600, !605, !2247, !2241}
!2307 = !{!2308, !2309, !2310}
!2308 = !DILocalVariable(name: "__path", arg: 1, scope: !2304, file: !2233, line: 483, type: !605)
!2309 = !DILocalVariable(name: "__mode", arg: 2, scope: !2304, file: !2233, line: 483, type: !2247)
!2310 = !DILocalVariable(name: "__dev", arg: 3, scope: !2304, file: !2233, line: 483, type: !2241)
!2311 = !DILocation(line: 0, scope: !2304)
!2312 = !DILocation(line: 485, column: 10, scope: !2304)
!2313 = !DILocation(line: 485, column: 3, scope: !2304)
!2314 = distinct !DISubprogram(name: "mknodat", scope: !2233, file: !2233, line: 491, type: !2315, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2317)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!600, !600, !605, !2247, !2241}
!2317 = !{!2318, !2319, !2320, !2321}
!2318 = !DILocalVariable(name: "__fd", arg: 1, scope: !2314, file: !2233, line: 491, type: !600)
!2319 = !DILocalVariable(name: "__path", arg: 2, scope: !2314, file: !2233, line: 491, type: !605)
!2320 = !DILocalVariable(name: "__mode", arg: 3, scope: !2314, file: !2233, line: 491, type: !2247)
!2321 = !DILocalVariable(name: "__dev", arg: 4, scope: !2314, file: !2233, line: 491, type: !2241)
!2322 = !DILocation(line: 0, scope: !2314)
!2323 = !DILocation(line: 494, column: 10, scope: !2314)
!2324 = !DILocation(line: 494, column: 3, scope: !2314)
!2325 = distinct !DISubprogram(name: "stat64", scope: !2233, file: !2233, line: 502, type: !2326, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2348)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!600, !605, !2328}
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2238, line: 119, size: 1152, elements: !2330)
!2330 = !{!2331, !2332, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2344, !2345, !2346, !2347}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2329, file: !2238, line: 121, baseType: !2241, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2329, file: !2238, line: 123, baseType: !2333, size: 64, offset: 64)
!2333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1991, line: 149, baseType: !713)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2329, file: !2238, line: 124, baseType: !2245, size: 64, offset: 128)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2329, file: !2238, line: 125, baseType: !2247, size: 32, offset: 192)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2329, file: !2238, line: 132, baseType: !2249, size: 32, offset: 224)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2329, file: !2238, line: 133, baseType: !2251, size: 32, offset: 256)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2329, file: !2238, line: 135, baseType: !600, size: 32, offset: 288)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2329, file: !2238, line: 136, baseType: !2241, size: 64, offset: 320)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2329, file: !2238, line: 137, baseType: !1990, size: 64, offset: 384)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2329, file: !2238, line: 143, baseType: !2256, size: 64, offset: 448)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2329, file: !2238, line: 144, baseType: !2343, size: 64, offset: 512)
!2343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1991, line: 180, baseType: !730)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2329, file: !2238, line: 152, baseType: !2260, size: 128, offset: 576)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2329, file: !2238, line: 153, baseType: !2260, size: 128, offset: 704)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2329, file: !2238, line: 154, baseType: !2260, size: 128, offset: 832)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2329, file: !2238, line: 164, baseType: !2270, size: 192, offset: 960)
!2348 = !{!2349, !2350}
!2349 = !DILocalVariable(name: "__path", arg: 1, scope: !2325, file: !2233, line: 502, type: !605)
!2350 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2325, file: !2233, line: 502, type: !2328)
!2351 = !DILocation(line: 0, scope: !2325)
!2352 = !DILocation(line: 504, column: 10, scope: !2325)
!2353 = !DILocation(line: 504, column: 3, scope: !2325)
!2354 = distinct !DISubprogram(name: "lstat64", scope: !2233, file: !2233, line: 509, type: !2326, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2355)
!2355 = !{!2356, !2357}
!2356 = !DILocalVariable(name: "__path", arg: 1, scope: !2354, file: !2233, line: 509, type: !605)
!2357 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2354, file: !2233, line: 509, type: !2328)
!2358 = !DILocation(line: 0, scope: !2354)
!2359 = !DILocation(line: 511, column: 10, scope: !2354)
!2360 = !DILocation(line: 511, column: 3, scope: !2354)
!2361 = distinct !DISubprogram(name: "fstat64", scope: !2233, file: !2233, line: 516, type: !2362, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2364)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!600, !600, !2328}
!2364 = !{!2365, !2366}
!2365 = !DILocalVariable(name: "__fd", arg: 1, scope: !2361, file: !2233, line: 516, type: !600)
!2366 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2361, file: !2233, line: 516, type: !2328)
!2367 = !DILocation(line: 0, scope: !2361)
!2368 = !DILocation(line: 518, column: 10, scope: !2361)
!2369 = !DILocation(line: 518, column: 3, scope: !2361)
!2370 = distinct !DISubprogram(name: "fstatat64", scope: !2233, file: !2233, line: 523, type: !2371, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2373)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!600, !600, !605, !2328, !600}
!2373 = !{!2374, !2375, !2376, !2377}
!2374 = !DILocalVariable(name: "__fd", arg: 1, scope: !2370, file: !2233, line: 523, type: !600)
!2375 = !DILocalVariable(name: "__filename", arg: 2, scope: !2370, file: !2233, line: 523, type: !605)
!2376 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2370, file: !2233, line: 523, type: !2328)
!2377 = !DILocalVariable(name: "__flag", arg: 4, scope: !2370, file: !2233, line: 523, type: !600)
!2378 = !DILocation(line: 0, scope: !2370)
!2379 = !DILocation(line: 526, column: 10, scope: !2370)
!2380 = !DILocation(line: 526, column: 3, scope: !2370)
!2381 = distinct !DISubprogram(name: "create_ddg", scope: !3, file: !3, line: 458, type: !2382, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2384)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!607, !612, !600}
!2384 = !{!2385, !2386, !2387, !2388, !2389, !2390, !2391}
!2385 = !DILocalVariable(name: "bb", arg: 1, scope: !2381, file: !3, line: 458, type: !612)
!2386 = !DILocalVariable(name: "closing_branch_deps", arg: 2, scope: !2381, file: !3, line: 458, type: !600)
!2387 = !DILocalVariable(name: "g", scope: !2381, file: !3, line: 460, type: !607)
!2388 = !DILocalVariable(name: "insn", scope: !2381, file: !3, line: 461, type: !644)
!2389 = !DILocalVariable(name: "first_note", scope: !2381, file: !3, line: 461, type: !644)
!2390 = !DILocalVariable(name: "i", scope: !2381, file: !3, line: 462, type: !600)
!2391 = !DILocalVariable(name: "num_nodes", scope: !2381, file: !3, line: 463, type: !600)
!2392 = !DILocation(line: 0, scope: !2381)
!2393 = !DILocation(line: 465, column: 17, scope: !2381)
!2394 = !DILocation(line: 467, column: 6, scope: !2381)
!2395 = !DILocation(line: 467, column: 9, scope: !2381)
!2396 = !DILocation(line: 468, column: 6, scope: !2381)
!2397 = !DILocation(line: 468, column: 26, scope: !2381)
!2398 = !DILocation(line: 471, column: 15, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 471, column: 3)
!2400 = !DILocation(line: 0, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 481, column: 8)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 480, column: 2)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !3, line: 477, column: 11)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !3, line: 473, column: 5)
!2405 = distinct !DILexicalBlock(scope: !2399, file: !3, line: 471, column: 3)
!2406 = !DILocation(line: 0, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 483, column: 8)
!2408 = !DILocation(line: 0, scope: !2403)
!2409 = !DILocation(line: 471, column: 8, scope: !2399)
!2410 = !DILocation(line: 471, column: 37, scope: !2405)
!2411 = !DILocation(line: 463, column: 7, scope: !2381)
!2412 = !DILocation(line: 0, scope: !2399)
!2413 = !DILocation(line: 471, column: 34, scope: !2405)
!2414 = !DILocation(line: 471, column: 3, scope: !2399)
!2415 = !DILocation(line: 474, column: 13, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2404, file: !3, line: 474, column: 11)
!2417 = !DILocation(line: 474, column: 27, scope: !2416)
!2418 = !DILocation(line: 474, column: 30, scope: !2416)
!2419 = !DILocation(line: 474, column: 56, scope: !2416)
!2420 = !DILocation(line: 474, column: 11, scope: !2404)
!2421 = !DILocation(line: 477, column: 11, scope: !2403)
!2422 = !DILocation(line: 477, column: 11, scope: !2404)
!2423 = !DILocation(line: 478, column: 14, scope: !2403)
!2424 = !DILocation(line: 478, column: 2, scope: !2403)
!2425 = !DILocation(line: 481, column: 8, scope: !2401)
!2426 = !DILocation(line: 481, column: 8, scope: !2402)
!2427 = !DILocation(line: 482, column: 18, scope: !2401)
!2428 = !DILocation(line: 482, column: 6, scope: !2401)
!2429 = !DILocation(line: 483, column: 8, scope: !2407)
!2430 = !DILocation(line: 483, column: 8, scope: !2402)
!2431 = !DILocation(line: 484, column: 19, scope: !2407)
!2432 = !DILocation(line: 484, column: 6, scope: !2407)
!2433 = !DILocation(line: 486, column: 16, scope: !2404)
!2434 = !DILocation(line: 487, column: 5, scope: !2404)
!2435 = !DILocation(line: 472, column: 15, scope: !2405)
!2436 = !DILocation(line: 471, column: 3, scope: !2405)
!2437 = distinct !{!2437, !2414, !2438}
!2438 = !DILocation(line: 487, column: 5, scope: !2399)
!2439 = !DILocation(line: 465, column: 7, scope: !2381)
!2440 = !DILocation(line: 490, column: 17, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 490, column: 7)
!2442 = !DILocation(line: 490, column: 7, scope: !2381)
!2443 = !DILocation(line: 492, column: 7, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 491, column: 5)
!2445 = !DILocation(line: 493, column: 7, scope: !2444)
!2446 = !DILocation(line: 497, column: 6, scope: !2381)
!2447 = !DILocation(line: 497, column: 16, scope: !2381)
!2448 = !DILocation(line: 498, column: 38, scope: !2381)
!2449 = !DILocation(line: 498, column: 29, scope: !2381)
!2450 = !DILocation(line: 498, column: 6, scope: !2381)
!2451 = !DILocation(line: 498, column: 12, scope: !2381)
!2452 = !DILocation(line: 499, column: 6, scope: !2381)
!2453 = !DILocation(line: 499, column: 21, scope: !2381)
!2454 = !DILocation(line: 502, column: 15, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 502, column: 3)
!2456 = !DILocation(line: 0, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 513, column: 2)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 512, column: 11)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 504, column: 5)
!2460 = distinct !DILexicalBlock(scope: !2455, file: !3, line: 502, column: 3)
!2461 = !DILocation(line: 502, column: 8, scope: !2455)
!2462 = !DILocation(line: 502, column: 37, scope: !2460)
!2463 = !DILocation(line: 0, scope: !2455)
!2464 = !DILocation(line: 502, column: 34, scope: !2460)
!2465 = !DILocation(line: 502, column: 3, scope: !2455)
!2466 = !DILocation(line: 505, column: 13, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 505, column: 11)
!2468 = !DILocation(line: 505, column: 11, scope: !2459)
!2469 = !DILocation(line: 507, column: 10, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 507, column: 8)
!2471 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 506, column: 2)
!2472 = !DILocation(line: 507, column: 21, scope: !2470)
!2473 = !DILocation(line: 507, column: 24, scope: !2470)
!2474 = !DILocation(line: 508, column: 8, scope: !2470)
!2475 = !DILocation(line: 508, column: 11, scope: !2470)
!2476 = !DILocation(line: 508, column: 28, scope: !2470)
!2477 = !DILocation(line: 507, column: 8, scope: !2471)
!2478 = !DILocation(line: 512, column: 11, scope: !2458)
!2479 = !DILocation(line: 512, column: 11, scope: !2459)
!2480 = !DILocation(line: 514, column: 4, scope: !2457)
!2481 = !DILocation(line: 515, column: 28, scope: !2457)
!2482 = !DILocation(line: 515, column: 25, scope: !2457)
!2483 = !DILocation(line: 515, column: 22, scope: !2457)
!2484 = !DILocation(line: 516, column: 2, scope: !2457)
!2485 = !DILocation(line: 517, column: 16, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 517, column: 16)
!2487 = !DILocation(line: 517, column: 42, scope: !2486)
!2488 = !DILocation(line: 517, column: 16, scope: !2458)
!2489 = !DILocation(line: 524, column: 10, scope: !2459)
!2490 = !DILocation(line: 524, column: 7, scope: !2459)
!2491 = !DILocation(line: 519, column: 10, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 519, column: 8)
!2493 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 518, column: 2)
!2494 = !DILocation(line: 519, column: 8, scope: !2493)
!2495 = !DILocation(line: 521, column: 4, scope: !2493)
!2496 = !DILocation(line: 524, column: 19, scope: !2459)
!2497 = !DILocation(line: 524, column: 24, scope: !2459)
!2498 = !DILocation(line: 525, column: 32, scope: !2459)
!2499 = !DILocation(line: 525, column: 10, scope: !2459)
!2500 = !DILocation(line: 525, column: 19, scope: !2459)
!2501 = !DILocation(line: 525, column: 30, scope: !2459)
!2502 = !DILocation(line: 526, column: 24, scope: !2459)
!2503 = !DILocation(line: 526, column: 33, scope: !2459)
!2504 = !DILocation(line: 526, column: 7, scope: !2459)
!2505 = !DILocation(line: 527, column: 34, scope: !2459)
!2506 = !DILocation(line: 527, column: 10, scope: !2459)
!2507 = !DILocation(line: 527, column: 19, scope: !2459)
!2508 = !DILocation(line: 527, column: 32, scope: !2459)
!2509 = !DILocation(line: 528, column: 24, scope: !2459)
!2510 = !DILocation(line: 528, column: 33, scope: !2459)
!2511 = !DILocation(line: 528, column: 7, scope: !2459)
!2512 = !DILocation(line: 529, column: 33, scope: !2459)
!2513 = !DILocation(line: 529, column: 10, scope: !2459)
!2514 = !DILocation(line: 529, column: 19, scope: !2459)
!2515 = !DILocation(line: 529, column: 30, scope: !2459)
!2516 = !DILocation(line: 530, column: 10, scope: !2459)
!2517 = !DILocation(line: 530, column: 17, scope: !2459)
!2518 = !DILocation(line: 530, column: 21, scope: !2459)
!2519 = !DILocation(line: 530, column: 26, scope: !2459)
!2520 = !DILocation(line: 532, column: 5, scope: !2459)
!2521 = !DILocation(line: 503, column: 15, scope: !2460)
!2522 = !DILocation(line: 502, column: 3, scope: !2460)
!2523 = distinct !{!2523, !2465, !2524}
!2524 = !DILocation(line: 532, column: 5, scope: !2455)
!2525 = !DILocation(line: 535, column: 3, scope: !2381)
!2526 = !DILocation(line: 539, column: 3, scope: !2381)
!2527 = !DILocation(line: 540, column: 3, scope: !2381)
!2528 = !DILocation(line: 541, column: 3, scope: !2381)
!2529 = !DILocation(line: 542, column: 1, scope: !2381)
!2530 = distinct !DISubprogram(name: "mem_read_insn_p", scope: !3, file: !3, line: 85, type: !2531, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2533)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!599, !644}
!2533 = !{!2534}
!2534 = !DILocalVariable(name: "insn", arg: 1, scope: !2530, file: !3, line: 85, type: !644)
!2535 = !DILocation(line: 0, scope: !2530)
!2536 = !DILocation(line: 87, column: 13, scope: !2530)
!2537 = !DILocation(line: 88, column: 15, scope: !2530)
!2538 = !DILocation(line: 88, column: 3, scope: !2530)
!2539 = !DILocation(line: 89, column: 10, scope: !2530)
!2540 = !DILocation(line: 89, column: 3, scope: !2530)
!2541 = distinct !DISubprogram(name: "mem_write_insn_p", scope: !3, file: !3, line: 101, type: !2531, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2542)
!2542 = !{!2543}
!2543 = !DILocalVariable(name: "insn", arg: 1, scope: !2541, file: !3, line: 101, type: !644)
!2544 = !DILocation(line: 0, scope: !2541)
!2545 = !DILocation(line: 103, column: 13, scope: !2541)
!2546 = !DILocation(line: 104, column: 16, scope: !2541)
!2547 = !DILocation(line: 104, column: 3, scope: !2541)
!2548 = !DILocation(line: 105, column: 10, scope: !2541)
!2549 = !DILocation(line: 105, column: 3, scope: !2541)
!2550 = distinct !DISubprogram(name: "build_intra_loop_deps", scope: !3, file: !3, line: 389, type: !2551, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2553)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{null, !607}
!2553 = !{!2554, !2555, !2556, !2589, !2590, !2591, !2595, !2596, !2600, !2604, !2607}
!2554 = !DILocalVariable(name: "g", arg: 1, scope: !2550, file: !3, line: 389, type: !607)
!2555 = !DILocalVariable(name: "i", scope: !2550, file: !3, line: 391, type: !600)
!2556 = !DILocalVariable(name: "tmp_deps", scope: !2550, file: !3, line: 393, type: !2557)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deps", file: !553, line: 451, size: 1472, elements: !2558)
!2558 = !{!2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2583, !2586, !2587, !2588}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "pending_read_insns", scope: !2557, file: !553, line: 463, baseType: !644, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "pending_read_mems", scope: !2557, file: !553, line: 466, baseType: !644, size: 64, offset: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "pending_write_insns", scope: !2557, file: !553, line: 469, baseType: !644, size: 64, offset: 128)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "pending_write_mems", scope: !2557, file: !553, line: 472, baseType: !644, size: 64, offset: 192)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "pending_read_list_length", scope: !2557, file: !553, line: 480, baseType: !600, size: 32, offset: 256)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "pending_write_list_length", scope: !2557, file: !553, line: 483, baseType: !600, size: 32, offset: 288)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "pending_flush_length", scope: !2557, file: !553, line: 487, baseType: !600, size: 32, offset: 320)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "last_pending_memory_flush", scope: !2557, file: !553, line: 498, baseType: !644, size: 64, offset: 384)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "last_function_call", scope: !2557, file: !553, line: 503, baseType: !644, size: 64, offset: 448)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "last_function_call_may_noreturn", scope: !2557, file: !553, line: 509, baseType: !644, size: 64, offset: 512)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "sched_before_next_call", scope: !2557, file: !553, line: 515, baseType: !644, size: 64, offset: 576)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "in_post_call_group_p", scope: !2557, file: !553, line: 519, baseType: !552, size: 32, offset: 640)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "last_debug_insn", scope: !2557, file: !553, line: 522, baseType: !644, size: 64, offset: 704)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "max_reg", scope: !2557, file: !553, line: 526, baseType: !600, size: 32, offset: 768)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "reg_last", scope: !2557, file: !553, line: 532, baseType: !2574, size: 64, offset: 832)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "deps_reg", file: !553, line: 440, size: 320, elements: !2576)
!2576 = !{!2577, !2578, !2579, !2580, !2581, !2582}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !2575, file: !553, line: 442, baseType: !644, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "sets", scope: !2575, file: !553, line: 443, baseType: !644, size: 64, offset: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_sets", scope: !2575, file: !553, line: 444, baseType: !644, size: 64, offset: 128)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "clobbers", scope: !2575, file: !553, line: 445, baseType: !644, size: 64, offset: 192)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "uses_length", scope: !2575, file: !553, line: 446, baseType: !600, size: 32, offset: 256)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "clobbers_length", scope: !2575, file: !553, line: 447, baseType: !600, size: 32, offset: 288)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "reg_last_in_use", scope: !2557, file: !553, line: 536, baseType: !2584, size: 256, offset: 896)
!2584 = !DIDerivedType(tag: DW_TAG_typedef, name: "regset_head", file: !142, line: 34, baseType: !2585)
!2585 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_head", file: !699, line: 84, baseType: !698)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "reg_conditional_sets", scope: !2557, file: !553, line: 539, baseType: !2584, size: 256, offset: 1152)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "last_reg_pending_barrier", scope: !2557, file: !553, line: 542, baseType: !558, size: 32, offset: 1408)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !2557, file: !553, line: 546, baseType: !7, size: 1, offset: 1440, flags: DIFlagBitField, extraData: i64 1440)
!2589 = !DILocalVariable(name: "head", scope: !2550, file: !3, line: 394, type: !644)
!2590 = !DILocalVariable(name: "tail", scope: !2550, file: !3, line: 394, type: !644)
!2591 = !DILocalVariable(name: "dest_node", scope: !2592, file: !3, line: 408, type: !1811)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !3, line: 407, column: 5)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 406, column: 3)
!2594 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 406, column: 3)
!2595 = !DILocalVariable(name: "sd_it", scope: !2592, file: !3, line: 409, type: !1896)
!2596 = !DILocalVariable(name: "dep", scope: !2592, file: !3, line: 410, type: !2597)
!2597 = !DIDerivedType(tag: DW_TAG_typedef, name: "dep_t", file: !553, line: 245, baseType: !2598)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DIDerivedType(tag: DW_TAG_typedef, name: "dep_def", file: !553, line: 244, baseType: !1915)
!2600 = !DILocalVariable(name: "src_node", scope: !2601, file: !3, line: 417, type: !1811)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 416, column: 2)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 415, column: 7)
!2603 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 415, column: 7)
!2604 = !DILocalVariable(name: "j", scope: !2605, file: !3, line: 429, type: !600)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 428, column: 2)
!2606 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 427, column: 11)
!2607 = !DILocalVariable(name: "j_node", scope: !2608, file: !3, line: 433, type: !1811)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 432, column: 6)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !3, line: 431, column: 4)
!2610 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 431, column: 4)
!2611 = !DILocation(line: 0, scope: !2550)
!2612 = !DILocation(line: 393, column: 3, scope: !2550)
!2613 = !DILocation(line: 394, column: 3, scope: !2550)
!2614 = !DILocation(line: 397, column: 3, scope: !2550)
!2615 = !DILocation(line: 398, column: 3, scope: !2550)
!2616 = !DILocation(line: 401, column: 25, scope: !2550)
!2617 = !DILocation(line: 401, column: 3, scope: !2550)
!2618 = !DILocation(line: 402, column: 29, scope: !2550)
!2619 = !DILocation(line: 402, column: 35, scope: !2550)
!2620 = !DILocation(line: 402, column: 3, scope: !2550)
!2621 = !DILocation(line: 0, scope: !2593)
!2622 = !DILocation(line: 0, scope: !2592)
!2623 = !DILocation(line: 0, scope: !2603)
!2624 = !DILocation(line: 406, column: 8, scope: !2594)
!2625 = !DILocation(line: 0, scope: !2594)
!2626 = !DILocation(line: 406, column: 22, scope: !2593)
!2627 = !DILocation(line: 406, column: 17, scope: !2593)
!2628 = !DILocation(line: 406, column: 3, scope: !2594)
!2629 = !DILocation(line: 408, column: 36, scope: !2592)
!2630 = !DILocation(line: 408, column: 33, scope: !2592)
!2631 = !DILocation(line: 409, column: 7, scope: !2592)
!2632 = !DILocation(line: 410, column: 7, scope: !2592)
!2633 = !DILocation(line: 412, column: 13, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2592, file: !3, line: 412, column: 11)
!2635 = !DILocation(line: 412, column: 11, scope: !2592)
!2636 = !DILocation(line: 415, column: 7, scope: !2603)
!2637 = !DILocation(line: 415, column: 7, scope: !2602)
!2638 = !DILocation(line: 417, column: 49, scope: !2601)
!2639 = !DILocation(line: 417, column: 28, scope: !2601)
!2640 = !DILocation(line: 0, scope: !2601)
!2641 = !DILocation(line: 419, column: 9, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2601, file: !3, line: 419, column: 8)
!2643 = !DILocation(line: 419, column: 8, scope: !2601)
!2644 = !DILocation(line: 422, column: 65, scope: !2601)
!2645 = !DILocation(line: 422, column: 4, scope: !2601)
!2646 = !DILocation(line: 423, column: 2, scope: !2602)
!2647 = distinct !{!2647, !2636, !2648}
!2648 = !DILocation(line: 423, column: 2, scope: !2603)
!2649 = !DILocation(line: 427, column: 41, scope: !2606)
!2650 = !DILocation(line: 427, column: 11, scope: !2606)
!2651 = !DILocation(line: 427, column: 11, scope: !2592)
!2652 = !DILocation(line: 0, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 439, column: 15)
!2654 = distinct !DILexicalBlock(scope: !2608, file: !3, line: 436, column: 12)
!2655 = !DILocation(line: 431, column: 4, scope: !2610)
!2656 = !DILocation(line: 0, scope: !2610)
!2657 = !DILocation(line: 0, scope: !2605)
!2658 = !DILocation(line: 431, column: 18, scope: !2609)
!2659 = !DILocation(line: 433, column: 34, scope: !2608)
!2660 = !DILocation(line: 433, column: 31, scope: !2608)
!2661 = !DILocation(line: 0, scope: !2608)
!2662 = !DILocation(line: 434, column: 12, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2608, file: !3, line: 434, column: 12)
!2664 = !DILocation(line: 434, column: 12, scope: !2608)
!2665 = !DILocation(line: 436, column: 12, scope: !2654)
!2666 = !DILocation(line: 436, column: 12, scope: !2608)
!2667 = !DILocation(line: 439, column: 17, scope: !2653)
!2668 = !DILocation(line: 439, column: 15, scope: !2654)
!2669 = !DILocation(line: 440, column: 7, scope: !2653)
!2670 = !DILocation(line: 431, column: 25, scope: !2609)
!2671 = !DILocation(line: 431, column: 4, scope: !2609)
!2672 = distinct !{!2672, !2655, !2673}
!2673 = !DILocation(line: 441, column: 13, scope: !2610)
!2674 = !DILocation(line: 443, column: 5, scope: !2593)
!2675 = !DILocation(line: 406, column: 34, scope: !2593)
!2676 = !DILocation(line: 406, column: 3, scope: !2593)
!2677 = distinct !{!2677, !2628, !2678}
!2678 = !DILocation(line: 443, column: 5, scope: !2594)
!2679 = !DILocation(line: 446, column: 3, scope: !2550)
!2680 = !DILocation(line: 447, column: 3, scope: !2550)
!2681 = !DILocation(line: 450, column: 20, scope: !2550)
!2682 = !DILocation(line: 450, column: 26, scope: !2550)
!2683 = !DILocation(line: 450, column: 3, scope: !2550)
!2684 = !DILocation(line: 451, column: 1, scope: !2550)
!2685 = distinct !DISubprogram(name: "build_inter_loop_deps", scope: !3, file: !3, line: 332, type: !2551, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2686)
!2686 = !{!2687, !2688, !2689, !2690, !2698}
!2687 = !DILocalVariable(name: "g", arg: 1, scope: !2685, file: !3, line: 332, type: !607)
!2688 = !DILocalVariable(name: "rd_num", scope: !2685, file: !3, line: 334, type: !7)
!2689 = !DILocalVariable(name: "rd_bb_info", scope: !2685, file: !3, line: 335, type: !1877)
!2690 = !DILocalVariable(name: "bi", scope: !2685, file: !3, line: 336, type: !2691)
!2691 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_iterator", file: !699, line: 218, baseType: !2692)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !699, line: 203, size: 256, elements: !2693)
!2693 = !{!2694, !2695, !2696, !2697}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "elt1", scope: !2692, file: !699, line: 206, baseType: !702, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "elt2", scope: !2692, file: !699, line: 209, baseType: !702, size: 64, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "word_no", scope: !2692, file: !699, line: 212, baseType: !7, size: 32, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2692, file: !699, line: 217, baseType: !712, size: 64, offset: 192)
!2698 = !DILocalVariable(name: "rd", scope: !2699, file: !3, line: 343, type: !2702)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 342, column: 3)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !3, line: 341, column: 3)
!2701 = distinct !DILexicalBlock(scope: !2685, file: !3, line: 341, column: 3)
!2702 = !DIDerivedType(tag: DW_TAG_typedef, name: "df_ref", file: !1879, line: 429, baseType: !2703)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "df_ref_d", file: !1879, line: 422, size: 704, elements: !2705)
!2705 = !{!2706, !2745, !2751, !2756}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2704, file: !1879, line: 424, baseType: !2707, size: 512)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_base_ref", file: !1879, line: 356, size: 512, elements: !2708)
!2708 = !{!2709, !2710, !2711, !2712, !2713, !2719, !2740, !2741, !2742, !2743, !2744}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !2707, file: !1879, line: 360, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2707, file: !1879, line: 362, baseType: !7, size: 8, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2707, file: !1879, line: 364, baseType: !600, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2707, file: !1879, line: 365, baseType: !644, size: 64, offset: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !2707, file: !1879, line: 366, baseType: !2714, size: 64, offset: 128)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_link", file: !1879, line: 449, size: 128, elements: !2716)
!2716 = !{!2717, !2718}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2715, file: !1879, line: 451, baseType: !2702, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2715, file: !1879, line: 452, baseType: !2714, size: 64, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "insn_info", scope: !2707, file: !1879, line: 370, baseType: !2720, size: 64, offset: 192)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_insn_info", file: !1879, line: 433, size: 384, elements: !2722)
!2722 = !{!2723, !2724, !2726, !2727, !2728, !2739}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2721, file: !1879, line: 435, baseType: !644, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !2721, file: !1879, line: 436, baseType: !2725, size: 64, offset: 64)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !2721, file: !1879, line: 437, baseType: !2725, size: 64, offset: 128)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "eq_uses", scope: !2721, file: !1879, line: 439, baseType: !2725, size: 64, offset: 192)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "mw_hardregs", scope: !2721, file: !1879, line: 440, baseType: !2729, size: 64, offset: 256)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_mw_hardreg", file: !1879, line: 339, size: 192, elements: !2732)
!2732 = !{!2733, !2734, !2735, !2736, !2737, !2738}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "mw_reg", scope: !2731, file: !1879, line: 341, baseType: !644, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2731, file: !1879, line: 344, baseType: !7, size: 16, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2731, file: !1879, line: 346, baseType: !600, size: 16, offset: 80, flags: DIFlagBitField, extraData: i64 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "start_regno", scope: !2731, file: !1879, line: 347, baseType: !7, size: 32, offset: 96)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "end_regno", scope: !2731, file: !1879, line: 348, baseType: !7, size: 32, offset: 128)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "mw_order", scope: !2731, file: !1879, line: 349, baseType: !7, size: 32, offset: 160)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "luid", scope: !2721, file: !1879, line: 444, baseType: !600, size: 32, offset: 320)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "next_reg", scope: !2707, file: !1879, line: 374, baseType: !2703, size: 64, offset: 256)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "prev_reg", scope: !2707, file: !1879, line: 375, baseType: !2703, size: 64, offset: 320)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "regno", scope: !2707, file: !1879, line: 376, baseType: !7, size: 32, offset: 384)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2707, file: !1879, line: 379, baseType: !600, size: 32, offset: 416)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "ref_order", scope: !2707, file: !1879, line: 382, baseType: !7, size: 32, offset: 448)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "regular_ref", scope: !2704, file: !1879, line: 425, baseType: !2746, size: 576)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_regular_ref", file: !1879, line: 398, size: 576, elements: !2747)
!2747 = !{!2748, !2749}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2746, file: !1879, line: 400, baseType: !2707, size: 512)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !2746, file: !1879, line: 405, baseType: !2750, size: 64, offset: 512)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_ref", scope: !2704, file: !1879, line: 426, baseType: !2752, size: 576)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_artificial_ref", file: !1879, line: 388, size: 576, elements: !2753)
!2753 = !{!2754, !2755}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2752, file: !1879, line: 390, baseType: !2707, size: 512)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2752, file: !1879, line: 394, baseType: !612, size: 64, offset: 512)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "extract_ref", scope: !2704, file: !1879, line: 427, baseType: !2757, size: 704)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "df_extract_ref", file: !1879, line: 413, size: 704, elements: !2758)
!2758 = !{!2759, !2760, !2761, !2762}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2757, file: !1879, line: 415, baseType: !2746, size: 576)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !2757, file: !1879, line: 416, baseType: !600, size: 32, offset: 576)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2757, file: !1879, line: 417, baseType: !600, size: 32, offset: 608)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2757, file: !1879, line: 418, baseType: !5, size: 32, offset: 640)
!2763 = !DILocation(line: 0, scope: !2685)
!2764 = !DILocation(line: 334, column: 3, scope: !2685)
!2765 = !DILocation(line: 336, column: 3, scope: !2685)
!2766 = !DILocation(line: 338, column: 16, scope: !2685)
!2767 = !DILocation(line: 341, column: 3, scope: !2701)
!2768 = !DILocation(line: 341, column: 3, scope: !2700)
!2769 = !DILocation(line: 343, column: 17, scope: !2699)
!2770 = !DILocation(line: 0, scope: !2699)
!2771 = !DILocation(line: 345, column: 5, scope: !2699)
!2772 = distinct !{!2772, !2767, !2773}
!2773 = !DILocation(line: 346, column: 3, scope: !2701)
!2774 = !DILocation(line: 347, column: 1, scope: !2685)
!2775 = distinct !DISubprogram(name: "free_ddg", scope: !3, file: !3, line: 546, type: !2551, scopeLine: 547, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2776)
!2776 = !{!2777, !2778, !2779, !2783}
!2777 = !DILocalVariable(name: "g", arg: 1, scope: !2775, file: !3, line: 546, type: !607)
!2778 = !DILocalVariable(name: "i", scope: !2775, file: !3, line: 548, type: !600)
!2779 = !DILocalVariable(name: "e", scope: !2780, file: !3, line: 555, type: !1819)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !3, line: 554, column: 5)
!2781 = distinct !DILexicalBlock(scope: !2782, file: !3, line: 553, column: 3)
!2782 = distinct !DILexicalBlock(scope: !2775, file: !3, line: 553, column: 3)
!2783 = !DILocalVariable(name: "next", scope: !2784, file: !3, line: 559, type: !1819)
!2784 = distinct !DILexicalBlock(scope: !2780, file: !3, line: 558, column: 2)
!2785 = !DILocation(line: 0, scope: !2775)
!2786 = !DILocation(line: 550, column: 8, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2775, file: !3, line: 550, column: 7)
!2788 = !DILocation(line: 550, column: 7, scope: !2775)
!2789 = !DILocation(line: 0, scope: !2781)
!2790 = !DILocation(line: 0, scope: !2780)
!2791 = !DILocation(line: 553, column: 3, scope: !2782)
!2792 = !DILocation(line: 0, scope: !2782)
!2793 = !DILocation(line: 553, column: 22, scope: !2781)
!2794 = !DILocation(line: 553, column: 17, scope: !2781)
!2795 = !DILocation(line: 555, column: 27, scope: !2780)
!2796 = !DILocation(line: 555, column: 36, scope: !2780)
!2797 = !DILocation(line: 557, column: 7, scope: !2780)
!2798 = !DILocation(line: 559, column: 27, scope: !2784)
!2799 = !DILocation(line: 0, scope: !2784)
!2800 = !DILocation(line: 561, column: 4, scope: !2784)
!2801 = distinct !{!2801, !2797, !2802}
!2802 = !DILocation(line: 563, column: 2, scope: !2780)
!2803 = !DILocation(line: 564, column: 7, scope: !2780)
!2804 = !DILocation(line: 565, column: 7, scope: !2780)
!2805 = !DILocation(line: 553, column: 34, scope: !2781)
!2806 = !DILocation(line: 553, column: 3, scope: !2781)
!2807 = distinct !{!2807, !2791, !2808}
!2808 = !DILocation(line: 566, column: 5, scope: !2782)
!2809 = !DILocation(line: 567, column: 10, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2775, file: !3, line: 567, column: 7)
!2811 = !DILocation(line: 567, column: 23, scope: !2810)
!2812 = !DILocation(line: 567, column: 7, scope: !2775)
!2813 = !DILocation(line: 568, column: 14, scope: !2810)
!2814 = !DILocation(line: 568, column: 5, scope: !2810)
!2815 = !DILocation(line: 569, column: 12, scope: !2775)
!2816 = !DILocation(line: 569, column: 3, scope: !2775)
!2817 = !DILocation(line: 570, column: 9, scope: !2775)
!2818 = !DILocation(line: 570, column: 3, scope: !2775)
!2819 = !DILocation(line: 571, column: 1, scope: !2775)
!2820 = distinct !DISubprogram(name: "print_ddg_edge", scope: !3, file: !3, line: 574, type: !2821, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2823)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{null, !1964, !1819}
!2823 = !{!2824, !2825, !2826}
!2824 = !DILocalVariable(name: "file", arg: 1, scope: !2820, file: !3, line: 574, type: !1964)
!2825 = !DILocalVariable(name: "e", arg: 2, scope: !2820, file: !3, line: 574, type: !1819)
!2826 = !DILocalVariable(name: "dep_c", scope: !2820, file: !3, line: 576, type: !603)
!2827 = !DILocation(line: 0, scope: !2820)
!2828 = !DILocation(line: 578, column: 14, scope: !2820)
!2829 = !DILocation(line: 578, column: 3, scope: !2820)
!2830 = !DILocation(line: 590, column: 45, scope: !2820)
!2831 = !DILocation(line: 591, column: 5, scope: !2820)
!2832 = !DILocation(line: 591, column: 15, scope: !2820)
!2833 = !DILocation(line: 591, column: 27, scope: !2820)
!2834 = !DILocation(line: 591, column: 37, scope: !2820)
!2835 = !DILocation(line: 590, column: 3, scope: !2820)
!2836 = !DILocation(line: 592, column: 1, scope: !2820)
!2837 = distinct !DISubprogram(name: "print_ddg", scope: !3, file: !3, line: 596, type: !2838, scopeLine: 597, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2840)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{null, !1964, !607}
!2840 = !{!2841, !2842, !2843, !2844}
!2841 = !DILocalVariable(name: "file", arg: 1, scope: !2837, file: !3, line: 596, type: !1964)
!2842 = !DILocalVariable(name: "g", arg: 2, scope: !2837, file: !3, line: 596, type: !607)
!2843 = !DILocalVariable(name: "i", scope: !2837, file: !3, line: 598, type: !600)
!2844 = !DILocalVariable(name: "e", scope: !2845, file: !3, line: 602, type: !1819)
!2845 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 601, column: 5)
!2846 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 600, column: 3)
!2847 = distinct !DILexicalBlock(scope: !2837, file: !3, line: 600, column: 3)
!2848 = !DILocation(line: 0, scope: !2837)
!2849 = !DILocation(line: 0, scope: !2846)
!2850 = !DILocation(line: 0, scope: !2845)
!2851 = !DILocation(line: 600, column: 8, scope: !2847)
!2852 = !DILocation(line: 0, scope: !2847)
!2853 = !DILocation(line: 600, column: 22, scope: !2846)
!2854 = !DILocation(line: 600, column: 17, scope: !2846)
!2855 = !DILocation(line: 600, column: 3, scope: !2847)
!2856 = !DILocation(line: 604, column: 43, scope: !2845)
!2857 = !DILocation(line: 604, column: 52, scope: !2845)
!2858 = !DILocation(line: 604, column: 7, scope: !2845)
!2859 = !DILocation(line: 605, column: 34, scope: !2845)
!2860 = !DILocation(line: 605, column: 43, scope: !2845)
!2861 = !DILocation(line: 605, column: 7, scope: !2845)
!2862 = !DILocation(line: 606, column: 7, scope: !2845)
!2863 = !DILocation(line: 607, column: 19, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2845, file: !3, line: 607, column: 7)
!2865 = !DILocation(line: 607, column: 28, scope: !2864)
!2866 = !DILocation(line: 607, column: 12, scope: !2864)
!2867 = !DILocation(line: 0, scope: !2864)
!2868 = !DILocation(line: 607, column: 7, scope: !2864)
!2869 = !DILocation(line: 608, column: 2, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2864, file: !3, line: 607, column: 7)
!2871 = !DILocation(line: 607, column: 43, scope: !2870)
!2872 = !DILocation(line: 607, column: 7, scope: !2870)
!2873 = distinct !{!2873, !2868, !2874}
!2874 = !DILocation(line: 608, column: 25, scope: !2864)
!2875 = !DILocation(line: 610, column: 7, scope: !2845)
!2876 = !DILocation(line: 611, column: 19, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2845, file: !3, line: 611, column: 7)
!2878 = !DILocation(line: 611, column: 28, scope: !2877)
!2879 = !DILocation(line: 611, column: 12, scope: !2877)
!2880 = !DILocation(line: 0, scope: !2877)
!2881 = !DILocation(line: 611, column: 7, scope: !2877)
!2882 = !DILocation(line: 612, column: 2, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2877, file: !3, line: 611, column: 7)
!2884 = !DILocation(line: 611, column: 42, scope: !2883)
!2885 = !DILocation(line: 611, column: 7, scope: !2883)
!2886 = distinct !{!2886, !2881, !2887}
!2887 = !DILocation(line: 612, column: 25, scope: !2877)
!2888 = !DILocation(line: 614, column: 7, scope: !2845)
!2889 = !DILocation(line: 600, column: 34, scope: !2846)
!2890 = !DILocation(line: 600, column: 3, scope: !2846)
!2891 = distinct !{!2891, !2855, !2892}
!2892 = !DILocation(line: 615, column: 5, scope: !2847)
!2893 = !DILocation(line: 616, column: 1, scope: !2837)
!2894 = distinct !DISubprogram(name: "vcg_print_ddg", scope: !3, file: !3, line: 620, type: !2838, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2895)
!2895 = !{!2896, !2897, !2898, !2899, !2903, !2904, !2908}
!2896 = !DILocalVariable(name: "file", arg: 1, scope: !2894, file: !3, line: 620, type: !1964)
!2897 = !DILocalVariable(name: "g", arg: 2, scope: !2894, file: !3, line: 620, type: !607)
!2898 = !DILocalVariable(name: "src_cuid", scope: !2894, file: !3, line: 622, type: !600)
!2899 = !DILocalVariable(name: "e", scope: !2900, file: !3, line: 627, type: !1819)
!2900 = distinct !DILexicalBlock(scope: !2901, file: !3, line: 626, column: 5)
!2901 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 625, column: 3)
!2902 = distinct !DILexicalBlock(scope: !2894, file: !3, line: 625, column: 3)
!2903 = !DILocalVariable(name: "src_uid", scope: !2900, file: !3, line: 628, type: !600)
!2904 = !DILocalVariable(name: "dst_uid", scope: !2905, file: !3, line: 635, type: !600)
!2905 = distinct !DILexicalBlock(scope: !2906, file: !3, line: 634, column: 2)
!2906 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 633, column: 7)
!2907 = distinct !DILexicalBlock(scope: !2900, file: !3, line: 633, column: 7)
!2908 = !DILocalVariable(name: "dst_cuid", scope: !2905, file: !3, line: 636, type: !600)
!2909 = !DILocation(line: 0, scope: !2894)
!2910 = !DILocation(line: 624, column: 3, scope: !2894)
!2911 = !DILocation(line: 0, scope: !2901)
!2912 = !DILocation(line: 0, scope: !2900)
!2913 = !DILocation(line: 625, column: 8, scope: !2902)
!2914 = !DILocation(line: 0, scope: !2902)
!2915 = !DILocation(line: 625, column: 36, scope: !2901)
!2916 = !DILocation(line: 625, column: 31, scope: !2901)
!2917 = !DILocation(line: 625, column: 3, scope: !2902)
!2918 = !DILocation(line: 628, column: 21, scope: !2900)
!2919 = !DILocation(line: 630, column: 7, scope: !2900)
!2920 = !DILocation(line: 631, column: 34, scope: !2900)
!2921 = !DILocation(line: 631, column: 50, scope: !2900)
!2922 = !DILocation(line: 631, column: 7, scope: !2900)
!2923 = !DILocation(line: 632, column: 7, scope: !2900)
!2924 = !DILocation(line: 633, column: 19, scope: !2907)
!2925 = !DILocation(line: 633, column: 35, scope: !2907)
!2926 = !DILocation(line: 633, column: 12, scope: !2907)
!2927 = !DILocation(line: 0, scope: !2907)
!2928 = !DILocation(line: 633, column: 7, scope: !2907)
!2929 = !DILocation(line: 635, column: 18, scope: !2905)
!2930 = !DILocation(line: 0, scope: !2905)
!2931 = !DILocation(line: 636, column: 28, scope: !2905)
!2932 = !DILocation(line: 639, column: 11, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2905, file: !3, line: 639, column: 8)
!2934 = !DILocation(line: 639, column: 20, scope: !2933)
!2935 = !DILocation(line: 639, column: 8, scope: !2905)
!2936 = !DILocation(line: 640, column: 6, scope: !2933)
!2937 = !DILocation(line: 642, column: 6, scope: !2933)
!2938 = !DILocation(line: 644, column: 4, scope: !2905)
!2939 = !DILocation(line: 645, column: 4, scope: !2905)
!2940 = !DILocation(line: 646, column: 45, scope: !2905)
!2941 = !DILocation(line: 646, column: 57, scope: !2905)
!2942 = !DILocation(line: 646, column: 4, scope: !2905)
!2943 = !DILocation(line: 633, column: 50, scope: !2906)
!2944 = !DILocation(line: 633, column: 7, scope: !2906)
!2945 = distinct !{!2945, !2928, !2946}
!2946 = !DILocation(line: 647, column: 2, scope: !2907)
!2947 = !DILocation(line: 625, column: 55, scope: !2901)
!2948 = !DILocation(line: 625, column: 3, scope: !2901)
!2949 = distinct !{!2949, !2917, !2950}
!2950 = !DILocation(line: 648, column: 5, scope: !2902)
!2951 = !DILocation(line: 649, column: 3, scope: !2894)
!2952 = !DILocation(line: 650, column: 1, scope: !2894)
!2953 = distinct !DISubprogram(name: "print_sccs", scope: !3, file: !3, line: 654, type: !2954, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2956)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{null, !1964, !1861, !607}
!2956 = !{!2957, !2958, !2959, !2960, !2961, !2972}
!2957 = !DILocalVariable(name: "file", arg: 1, scope: !2953, file: !3, line: 654, type: !1964)
!2958 = !DILocalVariable(name: "sccs", arg: 2, scope: !2953, file: !3, line: 654, type: !1861)
!2959 = !DILocalVariable(name: "g", arg: 3, scope: !2953, file: !3, line: 654, type: !607)
!2960 = !DILocalVariable(name: "u", scope: !2953, file: !3, line: 656, type: !7)
!2961 = !DILocalVariable(name: "sbi", scope: !2953, file: !3, line: 657, type: !2962)
!2962 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap_iterator", file: !1841, line: 111, baseType: !2963)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1841, line: 96, size: 256, elements: !2964)
!2964 = !{!2965, !2968, !2969, !2970, !2971}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2963, file: !1841, line: 98, baseType: !2966, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !713)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2963, file: !1841, line: 101, baseType: !7, size: 32, offset: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "word_num", scope: !2963, file: !1841, line: 104, baseType: !7, size: 32, offset: 96)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "bit_num", scope: !2963, file: !1841, line: 107, baseType: !7, size: 32, offset: 128)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !2963, file: !1841, line: 110, baseType: !713, size: 64, offset: 192)
!2972 = !DILocalVariable(name: "i", scope: !2953, file: !3, line: 658, type: !600)
!2973 = !DILocation(line: 0, scope: !2953)
!2974 = !DILocation(line: 656, column: 3, scope: !2953)
!2975 = !DILocation(line: 656, column: 16, scope: !2953)
!2976 = !DILocation(line: 657, column: 3, scope: !2953)
!2977 = !DILocation(line: 660, column: 8, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2953, file: !3, line: 660, column: 7)
!2979 = !DILocation(line: 660, column: 7, scope: !2953)
!2980 = !DILocation(line: 663, column: 59, scope: !2953)
!2981 = !DILocation(line: 663, column: 3, scope: !2953)
!2982 = !DILocation(line: 0, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !3, line: 667, column: 7)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !3, line: 665, column: 5)
!2985 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 664, column: 3)
!2986 = distinct !DILexicalBlock(scope: !2953, file: !3, line: 664, column: 3)
!2987 = !DILocation(line: 0, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 668, column: 7)
!2989 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 667, column: 7)
!2990 = !DILocation(line: 664, column: 8, scope: !2986)
!2991 = !DILocation(line: 0, scope: !2986)
!2992 = !DILocation(line: 664, column: 25, scope: !2985)
!2993 = !DILocation(line: 664, column: 17, scope: !2985)
!2994 = !DILocation(line: 664, column: 3, scope: !2986)
!2995 = !DILocation(line: 666, column: 7, scope: !2984)
!2996 = !DILocation(line: 667, column: 7, scope: !2983)
!2997 = !DILocation(line: 667, column: 7, scope: !2989)
!2998 = !DILocation(line: 669, column: 41, scope: !2988)
!2999 = !DILocation(line: 669, column: 9, scope: !2988)
!3000 = !DILocation(line: 670, column: 36, scope: !2988)
!3001 = !DILocation(line: 670, column: 42, scope: !2988)
!3002 = !DILocation(line: 670, column: 33, scope: !2988)
!3003 = !DILocation(line: 670, column: 45, scope: !2988)
!3004 = !DILocation(line: 670, column: 9, scope: !2988)
!3005 = distinct !{!3005, !2996, !3006}
!3006 = !DILocation(line: 671, column: 7, scope: !2983)
!3007 = !DILocation(line: 664, column: 36, scope: !2985)
!3008 = !DILocation(line: 664, column: 3, scope: !2985)
!3009 = distinct !{!3009, !2994, !3010}
!3010 = !DILocation(line: 672, column: 5, scope: !2986)
!3011 = !DILocation(line: 673, column: 3, scope: !2953)
!3012 = !DILocation(line: 674, column: 1, scope: !2953)
!3013 = distinct !DISubprogram(name: "sbitmap_iter_init", scope: !1841, file: !1841, line: 117, type: !3014, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3020)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{null, !3016, !3017, !7}
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_sbitmap", file: !1841, line: 46, baseType: !3018)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1843)
!3020 = !{!3021, !3022, !3023}
!3021 = !DILocalVariable(name: "i", arg: 1, scope: !3013, file: !1841, line: 117, type: !3016)
!3022 = !DILocalVariable(name: "bmp", arg: 2, scope: !3013, file: !1841, line: 117, type: !3017)
!3023 = !DILocalVariable(name: "min", arg: 3, scope: !3013, file: !1841, line: 117, type: !7)
!3024 = !DILocation(line: 0, scope: !3013)
!3025 = !DILocation(line: 119, column: 6, scope: !3013)
!3026 = !DILocation(line: 119, column: 15, scope: !3013)
!3027 = !DILocation(line: 120, column: 6, scope: !3013)
!3028 = !DILocation(line: 120, column: 14, scope: !3013)
!3029 = !DILocation(line: 121, column: 18, scope: !3013)
!3030 = !DILocation(line: 121, column: 6, scope: !3013)
!3031 = !DILocation(line: 121, column: 11, scope: !3013)
!3032 = !DILocation(line: 122, column: 12, scope: !3013)
!3033 = !DILocation(line: 122, column: 6, scope: !3013)
!3034 = !DILocation(line: 122, column: 10, scope: !3013)
!3035 = !DILocation(line: 124, column: 19, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3013, file: !1841, line: 124, column: 7)
!3037 = !DILocation(line: 124, column: 7, scope: !3013)
!3038 = !DILocation(line: 125, column: 8, scope: !3036)
!3039 = !DILocation(line: 125, column: 13, scope: !3036)
!3040 = !DILocation(line: 125, column: 5, scope: !3036)
!3041 = !DILocation(line: 127, column: 16, scope: !3036)
!3042 = !DILocation(line: 127, column: 8, scope: !3036)
!3043 = !DILocation(line: 127, column: 13, scope: !3036)
!3044 = !DILocation(line: 129, column: 1, scope: !3013)
!3045 = distinct !DISubprogram(name: "sbitmap_iter_cond", scope: !1841, file: !1841, line: 136, type: !3046, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3049)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!599, !3016, !3048}
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3049 = !{!3050, !3051}
!3050 = !DILocalVariable(name: "i", arg: 1, scope: !3045, file: !1841, line: 136, type: !3016)
!3051 = !DILocalVariable(name: "n", arg: 2, scope: !3045, file: !1841, line: 136, type: !3048)
!3052 = !DILocation(line: 0, scope: !3045)
!3053 = !DILocation(line: 0, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3055, file: !1841, line: 139, column: 3)
!3055 = distinct !DILexicalBlock(scope: !3045, file: !1841, line: 139, column: 3)
!3056 = !DILocation(line: 0, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3054, file: !1841, line: 140, column: 5)
!3058 = !DILocation(line: 0, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3057, file: !1841, line: 144, column: 11)
!3060 = !DILocation(line: 139, column: 13, scope: !3054)
!3061 = !DILocation(line: 139, column: 3, scope: !3045)
!3062 = !DILocation(line: 139, column: 18, scope: !3054)
!3063 = !DILocation(line: 139, column: 3, scope: !3055)
!3064 = !DILocation(line: 151, column: 3, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3045, file: !1841, line: 151, column: 3)
!3066 = !DILocation(line: 141, column: 18, scope: !3057)
!3067 = !DILocation(line: 144, column: 29, scope: !3059)
!3068 = !DILocation(line: 144, column: 23, scope: !3059)
!3069 = !DILocation(line: 144, column: 11, scope: !3057)
!3070 = !DILocation(line: 147, column: 32, scope: !3057)
!3071 = !DILocation(line: 147, column: 18, scope: !3057)
!3072 = !DILocation(line: 139, column: 37, scope: !3054)
!3073 = !DILocation(line: 139, column: 34, scope: !3054)
!3074 = !DILocation(line: 139, column: 32, scope: !3054)
!3075 = !DILocation(line: 139, column: 3, scope: !3054)
!3076 = distinct !{!3076, !3063, !3077}
!3077 = !DILocation(line: 148, column: 5, scope: !3055)
!3078 = !DILocation(line: 151, column: 14, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3065, file: !1841, line: 151, column: 3)
!3080 = !DILocation(line: 151, column: 19, scope: !3079)
!3081 = !DILocation(line: 151, column: 24, scope: !3079)
!3082 = !DILocation(line: 152, column: 15, scope: !3079)
!3083 = !DILocation(line: 151, column: 38, scope: !3079)
!3084 = !DILocation(line: 151, column: 3, scope: !3079)
!3085 = distinct !{!3085, !3064, !3086}
!3086 = !DILocation(line: 152, column: 15, scope: !3065)
!3087 = !DILocation(line: 154, column: 6, scope: !3045)
!3088 = !DILocation(line: 156, column: 3, scope: !3045)
!3089 = !DILocation(line: 157, column: 1, scope: !3045)
!3090 = distinct !DISubprogram(name: "sbitmap_iter_next", scope: !1841, file: !1841, line: 162, type: !3091, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3093)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{null, !3016}
!3093 = !{!3094}
!3094 = !DILocalVariable(name: "i", arg: 1, scope: !3090, file: !1841, line: 162, type: !3016)
!3095 = !DILocation(line: 0, scope: !3090)
!3096 = !DILocation(line: 164, column: 6, scope: !3090)
!3097 = !DILocation(line: 164, column: 11, scope: !3090)
!3098 = !DILocation(line: 165, column: 6, scope: !3090)
!3099 = !DILocation(line: 165, column: 13, scope: !3090)
!3100 = !DILocation(line: 166, column: 1, scope: !3090)
!3101 = distinct !DISubprogram(name: "get_node_of_insn", scope: !3, file: !3, line: 824, type: !3102, scopeLine: 825, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3104)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!1811, !607, !644}
!3104 = !{!3105, !3106, !3107}
!3105 = !DILocalVariable(name: "g", arg: 1, scope: !3101, file: !3, line: 824, type: !607)
!3106 = !DILocalVariable(name: "insn", arg: 2, scope: !3101, file: !3, line: 824, type: !644)
!3107 = !DILocalVariable(name: "i", scope: !3101, file: !3, line: 826, type: !600)
!3108 = !DILocation(line: 0, scope: !3101)
!3109 = !DILocation(line: 0, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3111, file: !3, line: 828, column: 3)
!3111 = distinct !DILexicalBlock(scope: !3101, file: !3, line: 828, column: 3)
!3112 = !DILocation(line: 0, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3110, file: !3, line: 829, column: 9)
!3114 = !DILocation(line: 828, column: 8, scope: !3111)
!3115 = !DILocation(line: 0, scope: !3111)
!3116 = !DILocation(line: 828, column: 17, scope: !3110)
!3117 = !DILocation(line: 828, column: 3, scope: !3111)
!3118 = !DILocation(line: 829, column: 20, scope: !3113)
!3119 = !DILocation(line: 829, column: 29, scope: !3113)
!3120 = !DILocation(line: 829, column: 14, scope: !3113)
!3121 = !DILocation(line: 829, column: 9, scope: !3110)
!3122 = !DILocation(line: 830, column: 15, scope: !3113)
!3123 = !DILocation(line: 830, column: 7, scope: !3113)
!3124 = !DILocation(line: 828, column: 34, scope: !3110)
!3125 = !DILocation(line: 828, column: 3, scope: !3110)
!3126 = distinct !{!3126, !3117, !3127}
!3127 = !DILocation(line: 830, column: 25, scope: !3111)
!3128 = !DILocation(line: 832, column: 1, scope: !3101)
!3129 = distinct !DISubprogram(name: "find_successors", scope: !3, file: !3, line: 838, type: !3130, scopeLine: 839, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3132)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{null, !1840, !607, !1840}
!3132 = !{!3133, !3134, !3135, !3136, !3137, !3138}
!3133 = !DILocalVariable(name: "succ", arg: 1, scope: !3129, file: !3, line: 838, type: !1840)
!3134 = !DILocalVariable(name: "g", arg: 2, scope: !3129, file: !3, line: 838, type: !607)
!3135 = !DILocalVariable(name: "ops", arg: 3, scope: !3129, file: !3, line: 838, type: !1840)
!3136 = !DILocalVariable(name: "i", scope: !3129, file: !3, line: 840, type: !7)
!3137 = !DILocalVariable(name: "sbi", scope: !3129, file: !3, line: 841, type: !2962)
!3138 = !DILocalVariable(name: "node_succ", scope: !3139, file: !3, line: 845, type: !3142)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !3, line: 844, column: 5)
!3140 = distinct !DILexicalBlock(scope: !3141, file: !3, line: 843, column: 3)
!3141 = distinct !DILexicalBlock(scope: !3129, file: !3, line: 843, column: 3)
!3142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1840)
!3143 = !DILocation(line: 0, scope: !3129)
!3144 = !DILocation(line: 840, column: 3, scope: !3129)
!3145 = !DILocation(line: 840, column: 16, scope: !3129)
!3146 = !DILocation(line: 841, column: 3, scope: !3129)
!3147 = !DILocation(line: 843, column: 3, scope: !3141)
!3148 = !DILocation(line: 0, scope: !3139)
!3149 = !DILocation(line: 843, column: 3, scope: !3140)
!3150 = !DILocation(line: 845, column: 33, scope: !3139)
!3151 = !DILocation(line: 846, column: 7, scope: !3139)
!3152 = distinct !{!3152, !3147, !3153}
!3153 = !DILocation(line: 847, column: 5, scope: !3141)
!3154 = !DILocation(line: 850, column: 3, scope: !3129)
!3155 = !DILocation(line: 851, column: 1, scope: !3129)
!3156 = distinct !DISubprogram(name: "find_predecessors", scope: !3, file: !3, line: 857, type: !3130, scopeLine: 858, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3157)
!3157 = !{!3158, !3159, !3160, !3161, !3162, !3163}
!3158 = !DILocalVariable(name: "preds", arg: 1, scope: !3156, file: !3, line: 857, type: !1840)
!3159 = !DILocalVariable(name: "g", arg: 2, scope: !3156, file: !3, line: 857, type: !607)
!3160 = !DILocalVariable(name: "ops", arg: 3, scope: !3156, file: !3, line: 857, type: !1840)
!3161 = !DILocalVariable(name: "i", scope: !3156, file: !3, line: 859, type: !7)
!3162 = !DILocalVariable(name: "sbi", scope: !3156, file: !3, line: 860, type: !2962)
!3163 = !DILocalVariable(name: "node_preds", scope: !3164, file: !3, line: 864, type: !3142)
!3164 = distinct !DILexicalBlock(scope: !3165, file: !3, line: 863, column: 5)
!3165 = distinct !DILexicalBlock(scope: !3166, file: !3, line: 862, column: 3)
!3166 = distinct !DILexicalBlock(scope: !3156, file: !3, line: 862, column: 3)
!3167 = !DILocation(line: 0, scope: !3156)
!3168 = !DILocation(line: 859, column: 3, scope: !3156)
!3169 = !DILocation(line: 859, column: 16, scope: !3156)
!3170 = !DILocation(line: 860, column: 3, scope: !3156)
!3171 = !DILocation(line: 862, column: 3, scope: !3166)
!3172 = !DILocation(line: 0, scope: !3164)
!3173 = !DILocation(line: 862, column: 3, scope: !3165)
!3174 = !DILocation(line: 864, column: 34, scope: !3164)
!3175 = !DILocation(line: 865, column: 7, scope: !3164)
!3176 = distinct !{!3176, !3171, !3177}
!3177 = !DILocation(line: 866, column: 5, scope: !3166)
!3178 = !DILocation(line: 869, column: 3, scope: !3156)
!3179 = !DILocation(line: 870, column: 1, scope: !3156)
!3180 = distinct !DISubprogram(name: "create_ddg_all_sccs", scope: !3, file: !3, line: 922, type: !3181, scopeLine: 923, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3183)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!1861, !607}
!3183 = !{!3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3195, !3196, !3197}
!3184 = !DILocalVariable(name: "g", arg: 1, scope: !3180, file: !3, line: 922, type: !607)
!3185 = !DILocalVariable(name: "i", scope: !3180, file: !3, line: 924, type: !600)
!3186 = !DILocalVariable(name: "num_nodes", scope: !3180, file: !3, line: 925, type: !600)
!3187 = !DILocalVariable(name: "from", scope: !3180, file: !3, line: 926, type: !1840)
!3188 = !DILocalVariable(name: "to", scope: !3180, file: !3, line: 927, type: !1840)
!3189 = !DILocalVariable(name: "scc_nodes", scope: !3180, file: !3, line: 928, type: !1840)
!3190 = !DILocalVariable(name: "sccs", scope: !3180, file: !3, line: 929, type: !1861)
!3191 = !DILocalVariable(name: "scc", scope: !3192, file: !3, line: 938, type: !1867)
!3192 = distinct !DILexicalBlock(scope: !3193, file: !3, line: 937, column: 5)
!3193 = distinct !DILexicalBlock(scope: !3194, file: !3, line: 936, column: 3)
!3194 = distinct !DILexicalBlock(scope: !3180, file: !3, line: 936, column: 3)
!3195 = !DILocalVariable(name: "backarc", scope: !3192, file: !3, line: 939, type: !1819)
!3196 = !DILocalVariable(name: "src", scope: !3192, file: !3, line: 940, type: !1811)
!3197 = !DILocalVariable(name: "dest", scope: !3192, file: !3, line: 941, type: !1811)
!3198 = !DILocation(line: 0, scope: !3180)
!3199 = !DILocation(line: 925, column: 22, scope: !3180)
!3200 = !DILocation(line: 926, column: 18, scope: !3180)
!3201 = !DILocation(line: 927, column: 16, scope: !3180)
!3202 = !DILocation(line: 928, column: 23, scope: !3180)
!3203 = !DILocation(line: 930, column: 6, scope: !3180)
!3204 = !DILocation(line: 929, column: 27, scope: !3180)
!3205 = !DILocation(line: 932, column: 9, scope: !3180)
!3206 = !DILocation(line: 932, column: 13, scope: !3180)
!3207 = !DILocation(line: 933, column: 9, scope: !3180)
!3208 = !DILocation(line: 933, column: 14, scope: !3180)
!3209 = !DILocation(line: 934, column: 9, scope: !3180)
!3210 = !DILocation(line: 934, column: 18, scope: !3180)
!3211 = !DILocation(line: 0, scope: !3193)
!3212 = !DILocation(line: 0, scope: !3192)
!3213 = !DILocation(line: 936, column: 8, scope: !3194)
!3214 = !DILocation(line: 0, scope: !3194)
!3215 = !DILocation(line: 936, column: 22, scope: !3193)
!3216 = !DILocation(line: 936, column: 17, scope: !3193)
!3217 = !DILocation(line: 936, column: 3, scope: !3194)
!3218 = !DILocation(line: 939, column: 33, scope: !3192)
!3219 = !DILocation(line: 939, column: 30, scope: !3192)
!3220 = !DILocation(line: 944, column: 20, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3192, file: !3, line: 944, column: 11)
!3222 = !DILocation(line: 944, column: 24, scope: !3221)
!3223 = !DILocation(line: 944, column: 30, scope: !3221)
!3224 = !DILocation(line: 944, column: 11, scope: !3192)
!3225 = !DILocation(line: 941, column: 36, scope: !3192)
!3226 = !DILocation(line: 940, column: 35, scope: !3192)
!3227 = !DILocation(line: 947, column: 7, scope: !3192)
!3228 = !DILocation(line: 948, column: 7, scope: !3192)
!3229 = !DILocation(line: 949, column: 7, scope: !3192)
!3230 = !DILocation(line: 950, column: 28, scope: !3192)
!3231 = !DILocation(line: 950, column: 7, scope: !3192)
!3232 = !DILocation(line: 951, column: 25, scope: !3192)
!3233 = !DILocation(line: 951, column: 7, scope: !3192)
!3234 = !DILocation(line: 953, column: 11, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3192, file: !3, line: 953, column: 11)
!3236 = !DILocation(line: 953, column: 11, scope: !3192)
!3237 = !DILocation(line: 955, column: 10, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3235, file: !3, line: 954, column: 2)
!3239 = !DILocation(line: 956, column: 4, scope: !3238)
!3240 = !DILocation(line: 957, column: 2, scope: !3238)
!3241 = !DILocation(line: 936, column: 37, scope: !3193)
!3242 = !DILocation(line: 936, column: 3, scope: !3193)
!3243 = distinct !{!3243, !3217, !3244}
!3244 = !DILocation(line: 958, column: 5, scope: !3194)
!3245 = !DILocation(line: 959, column: 3, scope: !3180)
!3246 = !DILocation(line: 960, column: 3, scope: !3180)
!3247 = !DILocation(line: 961, column: 3, scope: !3180)
!3248 = !DILocation(line: 962, column: 3, scope: !3180)
!3249 = !DILocation(line: 966, column: 3, scope: !3180)
!3250 = distinct !DISubprogram(name: "SET_BIT", scope: !1841, file: !1841, line: 63, type: !3251, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3253)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{null, !1840, !7}
!3253 = !{!3254, !3255, !3256}
!3254 = !DILocalVariable(name: "map", arg: 1, scope: !3250, file: !1841, line: 63, type: !1840)
!3255 = !DILocalVariable(name: "bitno", arg: 2, scope: !3250, file: !1841, line: 63, type: !7)
!3256 = !DILocalVariable(name: "oldbit", scope: !3257, file: !1841, line: 67, type: !599)
!3257 = distinct !DILexicalBlock(scope: !3258, file: !1841, line: 66, column: 5)
!3258 = distinct !DILexicalBlock(scope: !3250, file: !1841, line: 65, column: 7)
!3259 = !DILocation(line: 0, scope: !3250)
!3260 = !DILocation(line: 65, column: 12, scope: !3258)
!3261 = !DILocation(line: 65, column: 7, scope: !3258)
!3262 = !DILocation(line: 65, column: 7, scope: !3250)
!3263 = !DILocation(line: 73, column: 40, scope: !3250)
!3264 = !DILocation(line: 73, column: 29, scope: !3250)
!3265 = !DILocation(line: 72, column: 19, scope: !3250)
!3266 = !DILocation(line: 72, column: 3, scope: !3250)
!3267 = !DILocation(line: 68, column: 16, scope: !3257)
!3268 = !DILocation(line: 69, column: 12, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3257, file: !1841, line: 69, column: 11)
!3270 = !DILocation(line: 69, column: 11, scope: !3257)
!3271 = !DILocation(line: 70, column: 2, scope: !3269)
!3272 = !DILocation(line: 70, column: 41, scope: !3269)
!3273 = !DILocation(line: 73, column: 5, scope: !3250)
!3274 = !DILocation(line: 74, column: 1, scope: !3250)
!3275 = distinct !DISubprogram(name: "find_nodes_on_paths", scope: !3, file: !3, line: 989, type: !3276, scopeLine: 990, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3278)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!600, !1840, !607, !1840, !1840}
!3278 = !{!3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3297, !3298, !3302, !3303, !3308, !3309, !3313}
!3279 = !DILocalVariable(name: "result", arg: 1, scope: !3275, file: !3, line: 989, type: !1840)
!3280 = !DILocalVariable(name: "g", arg: 2, scope: !3275, file: !3, line: 989, type: !607)
!3281 = !DILocalVariable(name: "from", arg: 3, scope: !3275, file: !3, line: 989, type: !1840)
!3282 = !DILocalVariable(name: "to", arg: 4, scope: !3275, file: !3, line: 989, type: !1840)
!3283 = !DILocalVariable(name: "answer", scope: !3275, file: !3, line: 991, type: !600)
!3284 = !DILocalVariable(name: "change", scope: !3275, file: !3, line: 992, type: !600)
!3285 = !DILocalVariable(name: "u", scope: !3275, file: !3, line: 993, type: !7)
!3286 = !DILocalVariable(name: "num_nodes", scope: !3275, file: !3, line: 994, type: !600)
!3287 = !DILocalVariable(name: "sbi", scope: !3275, file: !3, line: 995, type: !2962)
!3288 = !DILocalVariable(name: "workset", scope: !3275, file: !3, line: 997, type: !1840)
!3289 = !DILocalVariable(name: "reachable_from", scope: !3275, file: !3, line: 998, type: !1840)
!3290 = !DILocalVariable(name: "reach_to", scope: !3275, file: !3, line: 999, type: !1840)
!3291 = !DILocalVariable(name: "tmp", scope: !3275, file: !3, line: 1000, type: !1840)
!3292 = !DILocalVariable(name: "e", scope: !3293, file: !3, line: 1013, type: !1819)
!3293 = distinct !DILexicalBlock(scope: !3294, file: !3, line: 1012, column: 2)
!3294 = distinct !DILexicalBlock(scope: !3295, file: !3, line: 1011, column: 7)
!3295 = distinct !DILexicalBlock(scope: !3296, file: !3, line: 1011, column: 7)
!3296 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 1007, column: 5)
!3297 = !DILocalVariable(name: "u_node", scope: !3293, file: !3, line: 1014, type: !1811)
!3298 = !DILocalVariable(name: "v_node", scope: !3299, file: !3, line: 1018, type: !1811)
!3299 = distinct !DILexicalBlock(scope: !3300, file: !3, line: 1017, column: 6)
!3300 = distinct !DILexicalBlock(scope: !3301, file: !3, line: 1016, column: 4)
!3301 = distinct !DILexicalBlock(scope: !3293, file: !3, line: 1016, column: 4)
!3302 = !DILocalVariable(name: "v", scope: !3299, file: !3, line: 1019, type: !600)
!3303 = !DILocalVariable(name: "e", scope: !3304, file: !3, line: 1042, type: !1819)
!3304 = distinct !DILexicalBlock(scope: !3305, file: !3, line: 1041, column: 2)
!3305 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 1040, column: 7)
!3306 = distinct !DILexicalBlock(scope: !3307, file: !3, line: 1040, column: 7)
!3307 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 1036, column: 5)
!3308 = !DILocalVariable(name: "u_node", scope: !3304, file: !3, line: 1043, type: !1811)
!3309 = !DILocalVariable(name: "v_node", scope: !3310, file: !3, line: 1047, type: !1811)
!3310 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 1046, column: 6)
!3311 = distinct !DILexicalBlock(scope: !3312, file: !3, line: 1045, column: 4)
!3312 = distinct !DILexicalBlock(scope: !3304, file: !3, line: 1045, column: 4)
!3313 = !DILocalVariable(name: "v", scope: !3310, file: !3, line: 1048, type: !600)
!3314 = !DILocation(line: 0, scope: !3275)
!3315 = !DILocation(line: 993, column: 3, scope: !3275)
!3316 = !DILocation(line: 993, column: 16, scope: !3275)
!3317 = !DILocation(line: 994, column: 22, scope: !3275)
!3318 = !DILocation(line: 995, column: 3, scope: !3275)
!3319 = !DILocation(line: 997, column: 21, scope: !3275)
!3320 = !DILocation(line: 998, column: 28, scope: !3275)
!3321 = !DILocation(line: 999, column: 22, scope: !3275)
!3322 = !DILocation(line: 1000, column: 17, scope: !3275)
!3323 = !DILocation(line: 1002, column: 3, scope: !3275)
!3324 = !DILocation(line: 1003, column: 3, scope: !3275)
!3325 = !DILocation(line: 0, scope: !3293)
!3326 = !DILocation(line: 1006, column: 3, scope: !3275)
!3327 = !DILocation(line: 1008, column: 14, scope: !3296)
!3328 = !DILocation(line: 1009, column: 7, scope: !3296)
!3329 = !DILocation(line: 1010, column: 7, scope: !3296)
!3330 = !DILocation(line: 1011, column: 7, scope: !3295)
!3331 = !DILocation(line: 1011, column: 7, scope: !3294)
!3332 = distinct !{!3332, !3326, !3333}
!3333 = !DILocation(line: 1029, column: 5, scope: !3275)
!3334 = !DILocation(line: 1014, column: 30, scope: !3293)
!3335 = !DILocation(line: 1014, column: 36, scope: !3293)
!3336 = !DILocation(line: 1014, column: 27, scope: !3293)
!3337 = !DILocation(line: 1016, column: 21, scope: !3301)
!3338 = !DILocation(line: 1016, column: 9, scope: !3301)
!3339 = !DILocation(line: 0, scope: !3301)
!3340 = !DILocation(line: 1016, column: 28, scope: !3300)
!3341 = !DILocation(line: 1016, column: 4, scope: !3301)
!3342 = !DILocation(line: 1018, column: 33, scope: !3299)
!3343 = !DILocation(line: 0, scope: !3299)
!3344 = !DILocation(line: 1019, column: 24, scope: !3299)
!3345 = !DILocation(line: 1021, column: 13, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3299, file: !3, line: 1021, column: 12)
!3347 = !DILocation(line: 1021, column: 12, scope: !3299)
!3348 = !DILocation(line: 1023, column: 5, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3346, file: !3, line: 1022, column: 3)
!3350 = !DILocation(line: 1024, column: 5, scope: !3349)
!3351 = !DILocation(line: 1026, column: 3, scope: !3349)
!3352 = !DILocation(line: 0, scope: !3296)
!3353 = !DILocation(line: 1016, column: 56, scope: !3300)
!3354 = !DILocation(line: 1016, column: 4, scope: !3300)
!3355 = distinct !{!3355, !3341, !3356}
!3356 = !DILocation(line: 1027, column: 6, scope: !3301)
!3357 = distinct !{!3357, !3330, !3358}
!3358 = !DILocation(line: 1028, column: 2, scope: !3295)
!3359 = !DILocation(line: 1031, column: 3, scope: !3275)
!3360 = !DILocation(line: 1032, column: 3, scope: !3275)
!3361 = !DILocation(line: 1035, column: 3, scope: !3275)
!3362 = !DILocation(line: 1037, column: 14, scope: !3307)
!3363 = !DILocation(line: 1038, column: 7, scope: !3307)
!3364 = !DILocation(line: 1039, column: 7, scope: !3307)
!3365 = !DILocation(line: 1040, column: 7, scope: !3306)
!3366 = !DILocation(line: 1040, column: 7, scope: !3305)
!3367 = distinct !{!3367, !3361, !3368}
!3368 = !DILocation(line: 1058, column: 5, scope: !3275)
!3369 = !DILocation(line: 1043, column: 30, scope: !3304)
!3370 = !DILocation(line: 1043, column: 36, scope: !3304)
!3371 = !DILocation(line: 1043, column: 27, scope: !3304)
!3372 = !DILocation(line: 0, scope: !3304)
!3373 = !DILocation(line: 1045, column: 21, scope: !3312)
!3374 = !DILocation(line: 1045, column: 9, scope: !3312)
!3375 = !DILocation(line: 0, scope: !3312)
!3376 = !DILocation(line: 1045, column: 27, scope: !3311)
!3377 = !DILocation(line: 1045, column: 4, scope: !3312)
!3378 = !DILocation(line: 1047, column: 33, scope: !3310)
!3379 = !DILocation(line: 0, scope: !3310)
!3380 = !DILocation(line: 1048, column: 24, scope: !3310)
!3381 = !DILocation(line: 1050, column: 13, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3310, file: !3, line: 1050, column: 12)
!3383 = !DILocation(line: 1050, column: 12, scope: !3310)
!3384 = !DILocation(line: 1052, column: 5, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3382, file: !3, line: 1051, column: 3)
!3386 = !DILocation(line: 1053, column: 5, scope: !3385)
!3387 = !DILocation(line: 1055, column: 3, scope: !3385)
!3388 = !DILocation(line: 0, scope: !3307)
!3389 = !DILocation(line: 1045, column: 55, scope: !3311)
!3390 = !DILocation(line: 1045, column: 4, scope: !3311)
!3391 = distinct !{!3391, !3377, !3392}
!3392 = !DILocation(line: 1056, column: 6, scope: !3312)
!3393 = distinct !{!3393, !3365, !3394}
!3394 = !DILocation(line: 1057, column: 2, scope: !3306)
!3395 = !DILocation(line: 1060, column: 12, scope: !3275)
!3396 = !DILocation(line: 1061, column: 3, scope: !3275)
!3397 = !DILocation(line: 1062, column: 3, scope: !3275)
!3398 = !DILocation(line: 1063, column: 3, scope: !3275)
!3399 = !DILocation(line: 1064, column: 3, scope: !3275)
!3400 = !DILocation(line: 1066, column: 1, scope: !3275)
!3401 = !DILocation(line: 1065, column: 3, scope: !3275)
!3402 = distinct !DISubprogram(name: "create_scc", scope: !3, file: !3, line: 746, type: !3403, scopeLine: 747, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3405)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!1867, !607, !1840}
!3405 = !{!3406, !3407, !3408, !3409, !3410, !3411, !3415}
!3406 = !DILocalVariable(name: "g", arg: 1, scope: !3402, file: !3, line: 746, type: !607)
!3407 = !DILocalVariable(name: "nodes", arg: 2, scope: !3402, file: !3, line: 746, type: !1840)
!3408 = !DILocalVariable(name: "scc", scope: !3402, file: !3, line: 748, type: !1867)
!3409 = !DILocalVariable(name: "u", scope: !3402, file: !3, line: 749, type: !7)
!3410 = !DILocalVariable(name: "sbi", scope: !3402, file: !3, line: 750, type: !2962)
!3411 = !DILocalVariable(name: "e", scope: !3412, file: !3, line: 761, type: !1819)
!3412 = distinct !DILexicalBlock(scope: !3413, file: !3, line: 760, column: 5)
!3413 = distinct !DILexicalBlock(scope: !3414, file: !3, line: 759, column: 3)
!3414 = distinct !DILexicalBlock(scope: !3402, file: !3, line: 759, column: 3)
!3415 = !DILocalVariable(name: "n", scope: !3412, file: !3, line: 762, type: !1811)
!3416 = !DILocation(line: 0, scope: !3402)
!3417 = !DILocation(line: 749, column: 3, scope: !3402)
!3418 = !DILocation(line: 749, column: 16, scope: !3402)
!3419 = !DILocation(line: 750, column: 3, scope: !3402)
!3420 = !DILocation(line: 752, column: 23, scope: !3402)
!3421 = !DILocation(line: 752, column: 9, scope: !3402)
!3422 = !DILocation(line: 753, column: 8, scope: !3402)
!3423 = !DILocation(line: 753, column: 17, scope: !3402)
!3424 = !DILocation(line: 754, column: 8, scope: !3402)
!3425 = !DILocation(line: 754, column: 21, scope: !3402)
!3426 = !DILocation(line: 755, column: 34, scope: !3402)
!3427 = !DILocation(line: 755, column: 16, scope: !3402)
!3428 = !DILocation(line: 755, column: 8, scope: !3402)
!3429 = !DILocation(line: 755, column: 14, scope: !3402)
!3430 = !DILocation(line: 756, column: 3, scope: !3402)
!3431 = !DILocation(line: 759, column: 3, scope: !3414)
!3432 = !DILocation(line: 0, scope: !3412)
!3433 = !DILocation(line: 759, column: 3, scope: !3413)
!3434 = !DILocation(line: 762, column: 28, scope: !3412)
!3435 = !DILocation(line: 762, column: 34, scope: !3412)
!3436 = !DILocation(line: 762, column: 25, scope: !3412)
!3437 = !DILocation(line: 764, column: 19, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3412, file: !3, line: 764, column: 7)
!3439 = !DILocation(line: 764, column: 12, scope: !3438)
!3440 = !DILocation(line: 0, scope: !3438)
!3441 = !DILocation(line: 764, column: 7, scope: !3438)
!3442 = !DILocation(line: 765, column: 6, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !3, line: 765, column: 6)
!3444 = distinct !DILexicalBlock(scope: !3438, file: !3, line: 764, column: 7)
!3445 = !DILocation(line: 765, column: 6, scope: !3444)
!3446 = !DILocation(line: 767, column: 9, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3443, file: !3, line: 766, column: 4)
!3448 = !DILocation(line: 767, column: 13, scope: !3447)
!3449 = !DILocation(line: 767, column: 19, scope: !3447)
!3450 = !DILocation(line: 768, column: 13, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3447, file: !3, line: 768, column: 10)
!3452 = !DILocation(line: 768, column: 22, scope: !3451)
!3453 = !DILocation(line: 768, column: 10, scope: !3447)
!3454 = !DILocation(line: 769, column: 8, scope: !3451)
!3455 = !DILocation(line: 764, column: 34, scope: !3444)
!3456 = !DILocation(line: 764, column: 7, scope: !3444)
!3457 = distinct !{!3457, !3441, !3458}
!3458 = !DILocation(line: 770, column: 4, scope: !3438)
!3459 = distinct !{!3459, !3431, !3460}
!3460 = !DILocation(line: 771, column: 5, scope: !3414)
!3461 = !DILocation(line: 773, column: 3, scope: !3402)
!3462 = !DILocation(line: 775, column: 1, scope: !3402)
!3463 = !DILocation(line: 774, column: 3, scope: !3402)
!3464 = distinct !DISubprogram(name: "add_scc_to_ddg", scope: !3, file: !3, line: 814, type: !3465, scopeLine: 815, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3467)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{null, !1861, !1867}
!3467 = !{!3468, !3469, !3470}
!3468 = !DILocalVariable(name: "g", arg: 1, scope: !3464, file: !3, line: 814, type: !1861)
!3469 = !DILocalVariable(name: "scc", arg: 2, scope: !3464, file: !3, line: 814, type: !1867)
!3470 = !DILocalVariable(name: "size", scope: !3464, file: !3, line: 816, type: !600)
!3471 = !DILocation(line: 0, scope: !3464)
!3472 = !DILocation(line: 816, column: 18, scope: !3464)
!3473 = !DILocation(line: 816, column: 32, scope: !3464)
!3474 = !DILocation(line: 818, column: 42, scope: !3464)
!3475 = !DILocation(line: 818, column: 48, scope: !3464)
!3476 = !DILocation(line: 818, column: 29, scope: !3464)
!3477 = !DILocation(line: 818, column: 11, scope: !3464)
!3478 = !DILocation(line: 819, column: 6, scope: !3464)
!3479 = !DILocation(line: 819, column: 22, scope: !3464)
!3480 = !DILocation(line: 819, column: 3, scope: !3464)
!3481 = !DILocation(line: 819, column: 26, scope: !3464)
!3482 = !DILocation(line: 820, column: 1, scope: !3464)
!3483 = distinct !DISubprogram(name: "order_sccs", scope: !3, file: !3, line: 886, type: !3484, scopeLine: 887, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3486)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{null, !1861}
!3486 = !{!3487}
!3487 = !DILocalVariable(name: "g", arg: 1, scope: !3483, file: !3, line: 886, type: !1861)
!3488 = !DILocation(line: 0, scope: !3483)
!3489 = !DILocation(line: 889, column: 18, scope: !3483)
!3490 = !DILocation(line: 889, column: 27, scope: !3483)
!3491 = !DILocation(line: 889, column: 24, scope: !3483)
!3492 = !DILocation(line: 889, column: 3, scope: !3483)
!3493 = !DILocation(line: 895, column: 1, scope: !3483)
!3494 = distinct !DISubprogram(name: "free_ddg_all_sccs", scope: !3, file: !3, line: 971, type: !3484, scopeLine: 972, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3495)
!3495 = !{!3496, !3497}
!3496 = !DILocalVariable(name: "all_sccs", arg: 1, scope: !3494, file: !3, line: 971, type: !1861)
!3497 = !DILocalVariable(name: "i", scope: !3494, file: !3, line: 973, type: !600)
!3498 = !DILocation(line: 0, scope: !3494)
!3499 = !DILocation(line: 975, column: 8, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 975, column: 7)
!3501 = !DILocation(line: 975, column: 7, scope: !3494)
!3502 = !DILocation(line: 0, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3504, file: !3, line: 978, column: 3)
!3504 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 978, column: 3)
!3505 = !DILocation(line: 978, column: 3, scope: !3504)
!3506 = !DILocation(line: 0, scope: !3504)
!3507 = !DILocation(line: 978, column: 29, scope: !3503)
!3508 = !DILocation(line: 978, column: 17, scope: !3503)
!3509 = !DILocation(line: 979, column: 25, scope: !3503)
!3510 = !DILocation(line: 979, column: 15, scope: !3503)
!3511 = !DILocation(line: 979, column: 5, scope: !3503)
!3512 = !DILocation(line: 978, column: 40, scope: !3503)
!3513 = !DILocation(line: 978, column: 3, scope: !3503)
!3514 = distinct !{!3514, !3505, !3515}
!3515 = !DILocation(line: 979, column: 32, scope: !3504)
!3516 = !DILocation(line: 981, column: 9, scope: !3494)
!3517 = !DILocation(line: 981, column: 3, scope: !3494)
!3518 = !DILocation(line: 982, column: 1, scope: !3494)
!3519 = distinct !DISubprogram(name: "free_scc", scope: !3, file: !3, line: 779, type: !3520, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3522)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{null, !1867}
!3522 = !{!3523}
!3523 = !DILocalVariable(name: "scc", arg: 1, scope: !3519, file: !3, line: 779, type: !1867)
!3524 = !DILocation(line: 0, scope: !3519)
!3525 = !DILocation(line: 781, column: 8, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3519, file: !3, line: 781, column: 7)
!3527 = !DILocation(line: 781, column: 7, scope: !3519)
!3528 = !DILocation(line: 784, column: 3, scope: !3519)
!3529 = !DILocation(line: 785, column: 12, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3519, file: !3, line: 785, column: 7)
!3531 = !DILocation(line: 785, column: 25, scope: !3530)
!3532 = !DILocation(line: 785, column: 7, scope: !3519)
!3533 = !DILocation(line: 786, column: 16, scope: !3530)
!3534 = !DILocation(line: 786, column: 5, scope: !3530)
!3535 = !DILocation(line: 787, column: 9, scope: !3519)
!3536 = !DILocation(line: 787, column: 3, scope: !3519)
!3537 = !DILocation(line: 788, column: 1, scope: !3519)
!3538 = distinct !DISubprogram(name: "longest_simple_path", scope: !3, file: !3, line: 1100, type: !3539, scopeLine: 1101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3541)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!600, !608, !600, !600, !1840}
!3541 = !{!3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3555}
!3542 = !DILocalVariable(name: "g", arg: 1, scope: !3538, file: !3, line: 1100, type: !608)
!3543 = !DILocalVariable(name: "src", arg: 2, scope: !3538, file: !3, line: 1100, type: !600)
!3544 = !DILocalVariable(name: "dest", arg: 3, scope: !3538, file: !3, line: 1100, type: !600)
!3545 = !DILocalVariable(name: "nodes", arg: 4, scope: !3538, file: !3, line: 1100, type: !1840)
!3546 = !DILocalVariable(name: "i", scope: !3538, file: !3, line: 1102, type: !600)
!3547 = !DILocalVariable(name: "u", scope: !3538, file: !3, line: 1103, type: !7)
!3548 = !DILocalVariable(name: "change", scope: !3538, file: !3, line: 1104, type: !600)
!3549 = !DILocalVariable(name: "result", scope: !3538, file: !3, line: 1105, type: !600)
!3550 = !DILocalVariable(name: "num_nodes", scope: !3538, file: !3, line: 1106, type: !600)
!3551 = !DILocalVariable(name: "workset", scope: !3538, file: !3, line: 1107, type: !1840)
!3552 = !DILocalVariable(name: "tmp", scope: !3538, file: !3, line: 1108, type: !1840)
!3553 = !DILocalVariable(name: "sbi", scope: !3554, file: !3, line: 1122, type: !2962)
!3554 = distinct !DILexicalBlock(scope: !3538, file: !3, line: 1121, column: 5)
!3555 = !DILocalVariable(name: "u_node", scope: !3556, file: !3, line: 1129, type: !1811)
!3556 = distinct !DILexicalBlock(scope: !3557, file: !3, line: 1128, column: 2)
!3557 = distinct !DILexicalBlock(scope: !3558, file: !3, line: 1127, column: 7)
!3558 = distinct !DILexicalBlock(scope: !3554, file: !3, line: 1127, column: 7)
!3559 = !DILocation(line: 0, scope: !3538)
!3560 = !DILocation(line: 1103, column: 3, scope: !3538)
!3561 = !DILocation(line: 1103, column: 16, scope: !3538)
!3562 = !DILocation(line: 1106, column: 22, scope: !3538)
!3563 = !DILocation(line: 1107, column: 21, scope: !3538)
!3564 = !DILocation(line: 1108, column: 17, scope: !3538)
!3565 = !DILocation(line: 1113, column: 8, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3538, file: !3, line: 1113, column: 3)
!3567 = !DILocation(line: 0, scope: !3566)
!3568 = !DILocation(line: 1113, column: 22, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3566, file: !3, line: 1113, column: 3)
!3570 = !DILocation(line: 1113, column: 17, scope: !3569)
!3571 = !DILocation(line: 1113, column: 3, scope: !3566)
!3572 = !DILocation(line: 1114, column: 17, scope: !3569)
!3573 = !DILocation(line: 1114, column: 21, scope: !3569)
!3574 = !DILocation(line: 1114, column: 27, scope: !3569)
!3575 = !DILocation(line: 1113, column: 34, scope: !3569)
!3576 = !DILocation(line: 1113, column: 3, scope: !3569)
!3577 = distinct !{!3577, !3571, !3578}
!3578 = !DILocation(line: 1114, column: 30, scope: !3566)
!3579 = !DILocation(line: 1115, column: 3, scope: !3538)
!3580 = !DILocation(line: 1115, column: 17, scope: !3538)
!3581 = !DILocation(line: 1115, column: 21, scope: !3538)
!3582 = !DILocation(line: 1115, column: 27, scope: !3538)
!3583 = !DILocation(line: 1117, column: 3, scope: !3538)
!3584 = !DILocation(line: 1118, column: 3, scope: !3538)
!3585 = !DILocation(line: 0, scope: !3554)
!3586 = !DILocation(line: 1120, column: 3, scope: !3538)
!3587 = !DILocation(line: 1122, column: 7, scope: !3554)
!3588 = !DILocation(line: 1125, column: 7, scope: !3554)
!3589 = !DILocation(line: 1126, column: 7, scope: !3554)
!3590 = !DILocation(line: 1127, column: 7, scope: !3558)
!3591 = !DILocation(line: 1127, column: 7, scope: !3557)
!3592 = !DILocation(line: 1129, column: 30, scope: !3556)
!3593 = !DILocation(line: 1129, column: 36, scope: !3556)
!3594 = !DILocation(line: 1129, column: 27, scope: !3556)
!3595 = !DILocation(line: 0, scope: !3556)
!3596 = !DILocation(line: 1131, column: 14, scope: !3556)
!3597 = !DILocation(line: 1131, column: 11, scope: !3556)
!3598 = distinct !{!3598, !3590, !3599}
!3599 = !DILocation(line: 1132, column: 2, scope: !3558)
!3600 = !DILocation(line: 1133, column: 5, scope: !3538)
!3601 = distinct !{!3601, !3586, !3600}
!3602 = !DILocation(line: 1134, column: 15, scope: !3538)
!3603 = !DILocation(line: 1134, column: 12, scope: !3538)
!3604 = !DILocation(line: 1134, column: 27, scope: !3538)
!3605 = !DILocation(line: 1134, column: 31, scope: !3538)
!3606 = !DILocation(line: 1135, column: 3, scope: !3538)
!3607 = !DILocation(line: 1136, column: 3, scope: !3538)
!3608 = !DILocation(line: 1138, column: 1, scope: !3538)
!3609 = !DILocation(line: 1137, column: 3, scope: !3538)
!3610 = distinct !DISubprogram(name: "update_dist_to_successors", scope: !3, file: !3, line: 1074, type: !3611, scopeLine: 1075, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3613)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{!600, !1811, !1840, !1840}
!3613 = !{!3614, !3615, !3616, !3617, !3618, !3619, !3623}
!3614 = !DILocalVariable(name: "u_node", arg: 1, scope: !3610, file: !3, line: 1074, type: !1811)
!3615 = !DILocalVariable(name: "nodes", arg: 2, scope: !3610, file: !3, line: 1074, type: !1840)
!3616 = !DILocalVariable(name: "tmp", arg: 3, scope: !3610, file: !3, line: 1074, type: !1840)
!3617 = !DILocalVariable(name: "e", scope: !3610, file: !3, line: 1076, type: !1819)
!3618 = !DILocalVariable(name: "result", scope: !3610, file: !3, line: 1077, type: !600)
!3619 = !DILocalVariable(name: "v_node", scope: !3620, file: !3, line: 1081, type: !1811)
!3620 = distinct !DILexicalBlock(scope: !3621, file: !3, line: 1080, column: 5)
!3621 = distinct !DILexicalBlock(scope: !3622, file: !3, line: 1079, column: 3)
!3622 = distinct !DILexicalBlock(scope: !3610, file: !3, line: 1079, column: 3)
!3623 = !DILocalVariable(name: "v", scope: !3620, file: !3, line: 1082, type: !600)
!3624 = !DILocation(line: 0, scope: !3610)
!3625 = !DILocation(line: 1079, column: 20, scope: !3622)
!3626 = !DILocation(line: 0, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3620, file: !3, line: 1084, column: 11)
!3628 = !DILocation(line: 1079, column: 8, scope: !3622)
!3629 = !DILocation(line: 0, scope: !3622)
!3630 = !DILocation(line: 1079, column: 3, scope: !3622)
!3631 = !DILocation(line: 1081, column: 32, scope: !3620)
!3632 = !DILocation(line: 0, scope: !3620)
!3633 = !DILocation(line: 1082, column: 23, scope: !3620)
!3634 = !DILocation(line: 1084, column: 11, scope: !3627)
!3635 = !DILocation(line: 1085, column: 4, scope: !3627)
!3636 = !DILocation(line: 1085, column: 11, scope: !3627)
!3637 = !DILocation(line: 1085, column: 20, scope: !3627)
!3638 = !DILocation(line: 1086, column: 4, scope: !3627)
!3639 = !DILocation(line: 1086, column: 16, scope: !3627)
!3640 = !DILocation(line: 1086, column: 20, scope: !3627)
!3641 = !DILocation(line: 1086, column: 40, scope: !3627)
!3642 = !DILocation(line: 1086, column: 51, scope: !3627)
!3643 = !DILocation(line: 1086, column: 46, scope: !3627)
!3644 = !DILocation(line: 1086, column: 26, scope: !3627)
!3645 = !DILocation(line: 1084, column: 11, scope: !3620)
!3646 = !DILocation(line: 1088, column: 22, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 1087, column: 2)
!3648 = !DILocation(line: 1089, column: 4, scope: !3647)
!3649 = !DILocation(line: 1091, column: 2, scope: !3647)
!3650 = !DILocation(line: 1079, column: 35, scope: !3621)
!3651 = !DILocation(line: 1079, column: 3, scope: !3621)
!3652 = distinct !{!3652, !3630, !3653}
!3653 = !DILocation(line: 1092, column: 5, scope: !3622)
!3654 = !DILocation(line: 1093, column: 3, scope: !3610)
!3655 = distinct !DISubprogram(name: "mark_mem_use_1", scope: !3, file: !3, line: 78, type: !3656, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3658)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{null, !2750, !604}
!3658 = !{!3659, !3660}
!3659 = !DILocalVariable(name: "x", arg: 1, scope: !3655, file: !3, line: 78, type: !2750)
!3660 = !DILocalVariable(name: "data", arg: 2, scope: !3655, file: !3, line: 78, type: !604)
!3661 = !DILocation(line: 0, scope: !3655)
!3662 = !DILocation(line: 80, column: 3, scope: !3655)
!3663 = !DILocation(line: 81, column: 1, scope: !3655)
!3664 = distinct !DISubprogram(name: "mark_mem_use", scope: !3, file: !3, line: 69, type: !3665, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3667)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!600, !2750, !604}
!3667 = !{!3668, !3669}
!3668 = !DILocalVariable(name: "x", arg: 1, scope: !3664, file: !3, line: 69, type: !2750)
!3669 = !DILocalVariable(name: "data", arg: 2, scope: !3664, file: !3, line: 69, type: !604)
!3670 = !DILocation(line: 0, scope: !3664)
!3671 = !DILocation(line: 71, column: 7, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 71, column: 7)
!3673 = !DILocation(line: 71, column: 7, scope: !3664)
!3674 = !DILocation(line: 72, column: 15, scope: !3672)
!3675 = !DILocation(line: 72, column: 5, scope: !3672)
!3676 = !DILocation(line: 73, column: 3, scope: !3664)
!3677 = distinct !DISubprogram(name: "mark_mem_store", scope: !3, file: !3, line: 93, type: !3678, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3683)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{null, !644, !3680, !604}
!3680 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !613, line: 51, baseType: !3681)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !646)
!3683 = !{!3684, !3685, !3686}
!3684 = !DILocalVariable(name: "loc", arg: 1, scope: !3677, file: !3, line: 93, type: !644)
!3685 = !DILocalVariable(name: "setter", arg: 2, scope: !3677, file: !3, line: 93, type: !3680)
!3686 = !DILocalVariable(name: "data", arg: 3, scope: !3677, file: !3, line: 93, type: !604)
!3687 = !DILocation(line: 0, scope: !3677)
!3688 = !DILocation(line: 95, column: 7, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3677, file: !3, line: 95, column: 7)
!3690 = !DILocation(line: 95, column: 7, scope: !3677)
!3691 = !DILocation(line: 96, column: 15, scope: !3689)
!3692 = !DILocation(line: 96, column: 5, scope: !3689)
!3693 = !DILocation(line: 97, column: 1, scope: !3677)
!3694 = !DILocation(line: 0, scope: !1893)
!3695 = !DILocation(line: 1432, column: 19, scope: !1893)
!3696 = !DILocation(line: 1434, column: 5, scope: !1893)
!3697 = !DILocation(line: 1434, column: 11, scope: !1893)
!3698 = !DILocation(line: 1435, column: 5, scope: !1893)
!3699 = !DILocation(line: 1435, column: 10, scope: !1893)
!3700 = !DILocation(line: 1436, column: 5, scope: !1893)
!3701 = !DILocation(line: 1436, column: 11, scope: !1893)
!3702 = !DILocation(line: 1439, column: 5, scope: !1893)
!3703 = !DILocation(line: 1439, column: 16, scope: !1893)
!3704 = !DILocation(line: 1441, column: 3, scope: !1893)
!3705 = distinct !DISubprogram(name: "sd_iterator_cond", scope: !553, file: !553, line: 1446, type: !3706, scopeLine: 1447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3710)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!599, !3708, !3709}
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!3710 = !{!3711, !3712, !3713, !3714, !3717}
!3711 = !DILocalVariable(name: "it_ptr", arg: 1, scope: !3705, file: !553, line: 1446, type: !3708)
!3712 = !DILocalVariable(name: "dep_ptr", arg: 2, scope: !3705, file: !553, line: 1446, type: !3709)
!3713 = !DILocalVariable(name: "link", scope: !3705, file: !553, line: 1448, type: !1904)
!3714 = !DILocalVariable(name: "types", scope: !3715, file: !553, line: 1457, type: !1900)
!3715 = distinct !DILexicalBlock(scope: !3716, file: !553, line: 1456, column: 5)
!3716 = distinct !DILexicalBlock(scope: !3705, file: !553, line: 1450, column: 7)
!3717 = !DILocalVariable(name: "list", scope: !3718, file: !553, line: 1462, type: !3720)
!3718 = distinct !DILexicalBlock(scope: !3719, file: !553, line: 1461, column: 2)
!3719 = distinct !DILexicalBlock(scope: !3715, file: !553, line: 1459, column: 11)
!3720 = !DIDerivedType(tag: DW_TAG_typedef, name: "deps_list_t", file: !553, line: 305, baseType: !3721)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_deps_list", file: !553, line: 297, size: 128, elements: !3723)
!3723 = !{!3724, !3725}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3722, file: !553, line: 300, baseType: !1904, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "n_links", scope: !3722, file: !553, line: 303, baseType: !600, size: 32, offset: 64)
!3726 = !DILocation(line: 0, scope: !3705)
!3727 = !DILocation(line: 1448, column: 30, scope: !3705)
!3728 = !DILocation(line: 1448, column: 21, scope: !3705)
!3729 = !DILocation(line: 1450, column: 12, scope: !3716)
!3730 = !DILocation(line: 1450, column: 7, scope: !3705)
!3731 = !DILocation(line: 1452, column: 18, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3716, file: !553, line: 1451, column: 5)
!3733 = !DILocation(line: 1452, column: 16, scope: !3732)
!3734 = !DILocation(line: 1453, column: 7, scope: !3732)
!3735 = !DILocation(line: 1457, column: 41, scope: !3715)
!3736 = !DILocation(line: 0, scope: !3715)
!3737 = !DILocation(line: 1459, column: 17, scope: !3719)
!3738 = !DILocation(line: 1459, column: 11, scope: !3715)
!3739 = !DILocation(line: 1462, column: 4, scope: !3718)
!3740 = !DILocation(line: 1464, column: 26, scope: !3718)
!3741 = !DILocation(line: 1465, column: 36, scope: !3718)
!3742 = !DILocation(line: 0, scope: !3718)
!3743 = !DILocation(line: 1464, column: 4, scope: !3718)
!3744 = !DILocation(line: 1467, column: 21, scope: !3718)
!3745 = !DILocation(line: 1467, column: 18, scope: !3718)
!3746 = !DILocation(line: 1469, column: 8, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3718, file: !553, line: 1469, column: 8)
!3748 = !DILocation(line: 1469, column: 8, scope: !3718)
!3749 = !DILocation(line: 1470, column: 13, scope: !3747)
!3750 = !DILocation(line: 1470, column: 6, scope: !3747)
!3751 = !DILocation(line: 1471, column: 2, scope: !3719)
!3752 = !DILocation(line: 1473, column: 16, scope: !3715)
!3753 = !DILocation(line: 1474, column: 7, scope: !3715)
!3754 = !DILocation(line: 0, scope: !3716)
!3755 = !DILocation(line: 1476, column: 1, scope: !3705)
!3756 = distinct !DISubprogram(name: "create_ddg_dep_from_intra_loop_link", scope: !3, file: !3, line: 151, type: !3757, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3759)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{null, !607, !1811, !1811, !2597}
!3759 = !{!3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3772, !3775, !3776}
!3760 = !DILocalVariable(name: "g", arg: 1, scope: !3756, file: !3, line: 151, type: !607)
!3761 = !DILocalVariable(name: "src_node", arg: 2, scope: !3756, file: !3, line: 151, type: !1811)
!3762 = !DILocalVariable(name: "dest_node", arg: 3, scope: !3756, file: !3, line: 152, type: !1811)
!3763 = !DILocalVariable(name: "link", arg: 4, scope: !3756, file: !3, line: 152, type: !2597)
!3764 = !DILocalVariable(name: "e", scope: !3756, file: !3, line: 154, type: !1819)
!3765 = !DILocalVariable(name: "latency", scope: !3756, file: !3, line: 155, type: !600)
!3766 = !DILocalVariable(name: "distance", scope: !3756, file: !3, line: 155, type: !600)
!3767 = !DILocalVariable(name: "t", scope: !3756, file: !3, line: 156, type: !1826)
!3768 = !DILocalVariable(name: "dt", scope: !3756, file: !3, line: 157, type: !1828)
!3769 = !DILocalVariable(name: "set", scope: !3770, file: !3, line: 181, type: !644)
!3770 = distinct !DILexicalBlock(scope: !3771, file: !3, line: 180, column: 5)
!3771 = distinct !DILexicalBlock(scope: !3756, file: !3, line: 179, column: 7)
!3772 = !DILocalVariable(name: "regno", scope: !3773, file: !3, line: 188, type: !600)
!3773 = distinct !DILexicalBlock(scope: !3774, file: !3, line: 187, column: 9)
!3774 = distinct !DILexicalBlock(scope: !3770, file: !3, line: 186, column: 11)
!3775 = !DILocalVariable(name: "first_def", scope: !3773, file: !3, line: 189, type: !2702)
!3776 = !DILocalVariable(name: "bb_info", scope: !3773, file: !3, line: 190, type: !1877)
!3777 = !DILocation(line: 0, scope: !3756)
!3778 = !DILocation(line: 157, column: 52, scope: !3756)
!3779 = !DILocation(line: 157, column: 23, scope: !3756)
!3780 = !DILocation(line: 158, column: 9, scope: !3756)
!3781 = !DILocation(line: 158, column: 42, scope: !3756)
!3782 = !DILocation(line: 158, column: 12, scope: !3756)
!3783 = !DILocation(line: 160, column: 3, scope: !3756)
!3784 = !DILocation(line: 161, column: 3, scope: !3756)
!3785 = !DILocation(line: 164, column: 7, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3756, file: !3, line: 164, column: 7)
!3787 = !DILocation(line: 164, column: 23, scope: !3786)
!3788 = !DILocation(line: 164, column: 7, scope: !3756)
!3789 = !DILocation(line: 166, column: 28, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3786, file: !3, line: 166, column: 12)
!3791 = !DILocation(line: 166, column: 12, scope: !3786)
!3792 = !DILocation(line: 0, scope: !3786)
!3793 = !DILocation(line: 169, column: 3, scope: !3756)
!3794 = !DILocation(line: 170, column: 3, scope: !3756)
!3795 = !DILocation(line: 179, column: 7, scope: !3771)
!3796 = !DILocation(line: 179, column: 40, scope: !3771)
!3797 = !DILocation(line: 179, column: 64, scope: !3771)
!3798 = !DILocation(line: 183, column: 13, scope: !3770)
!3799 = !DILocation(line: 0, scope: !3770)
!3800 = !DILocation(line: 186, column: 11, scope: !3774)
!3801 = !DILocation(line: 186, column: 15, scope: !3774)
!3802 = !DILocation(line: 186, column: 18, scope: !3774)
!3803 = !DILocation(line: 186, column: 11, scope: !3770)
!3804 = !DILocation(line: 188, column: 23, scope: !3773)
!3805 = !DILocation(line: 0, scope: !3773)
!3806 = !DILocation(line: 190, column: 43, scope: !3773)
!3807 = !DILocation(line: 192, column: 54, scope: !3773)
!3808 = !DILocation(line: 192, column: 23, scope: !3773)
!3809 = !DILocation(line: 193, column: 11, scope: !3773)
!3810 = !DILocation(line: 195, column: 38, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3773, file: !3, line: 195, column: 15)
!3812 = !DILocation(line: 195, column: 43, scope: !3811)
!3813 = !DILocation(line: 195, column: 15, scope: !3811)
!3814 = !DILocation(line: 0, scope: !3774)
!3815 = !DILocation(line: 198, column: 5, scope: !3771)
!3816 = !DILocation(line: 200, column: 14, scope: !3756)
!3817 = !DILocation(line: 201, column: 8, scope: !3756)
!3818 = !DILocation(line: 202, column: 4, scope: !3756)
!3819 = !DILocation(line: 203, column: 1, scope: !3756)
!3820 = distinct !DISubprogram(name: "sd_iterator_next", scope: !553, file: !553, line: 1480, type: !3821, scopeLine: 1481, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3823)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{null, !3708}
!3823 = !{!3824}
!3824 = !DILocalVariable(name: "it_ptr", arg: 1, scope: !3820, file: !553, line: 1480, type: !3708)
!3825 = !DILocation(line: 0, scope: !3820)
!3826 = !DILocation(line: 1482, column: 20, scope: !3820)
!3827 = !DILocation(line: 1482, column: 17, scope: !3820)
!3828 = !DILocation(line: 1483, column: 1, scope: !3820)
!3829 = distinct !DISubprogram(name: "mem_access_insn_p", scope: !3, file: !3, line: 143, type: !2531, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3830)
!3830 = !{!3831}
!3831 = !DILocalVariable(name: "insn", arg: 1, scope: !3829, file: !3, line: 143, type: !644)
!3832 = !DILocation(line: 0, scope: !3829)
!3833 = !DILocation(line: 145, column: 28, scope: !3829)
!3834 = !DILocation(line: 145, column: 10, scope: !3829)
!3835 = !DILocation(line: 145, column: 3, scope: !3829)
!3836 = distinct !DISubprogram(name: "add_inter_loop_mem_dep", scope: !3, file: !3, line: 353, type: !3837, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3839)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{null, !607, !1811, !1811}
!3839 = !{!3840, !3841, !3842}
!3840 = !DILocalVariable(name: "g", arg: 1, scope: !3836, file: !3, line: 353, type: !607)
!3841 = !DILocalVariable(name: "from", arg: 2, scope: !3836, file: !3, line: 353, type: !1811)
!3842 = !DILocalVariable(name: "to", arg: 3, scope: !3836, file: !3, line: 353, type: !1811)
!3843 = !DILocation(line: 0, scope: !3836)
!3844 = !DILocation(line: 355, column: 42, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3836, file: !3, line: 355, column: 7)
!3846 = !DILocation(line: 355, column: 52, scope: !3845)
!3847 = !DILocation(line: 355, column: 8, scope: !3845)
!3848 = !DILocation(line: 355, column: 7, scope: !3836)
!3849 = !DILocation(line: 359, column: 31, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3836, file: !3, line: 359, column: 7)
!3851 = !DILocation(line: 359, column: 7, scope: !3850)
!3852 = !DILocation(line: 0, scope: !3850)
!3853 = !DILocation(line: 359, column: 7, scope: !3836)
!3854 = !DILocation(line: 361, column: 11, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3850, file: !3, line: 360, column: 5)
!3856 = !DILocation(line: 363, column: 5, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3855, file: !3, line: 361, column: 11)
!3858 = !DILocation(line: 362, column: 4, scope: !3857)
!3859 = !DILocation(line: 365, column: 22, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3857, file: !3, line: 365, column: 16)
!3861 = !DILocation(line: 365, column: 34, scope: !3860)
!3862 = !DILocation(line: 365, column: 27, scope: !3860)
!3863 = !DILocation(line: 365, column: 16, scope: !3857)
!3864 = !DILocation(line: 367, column: 5, scope: !3860)
!3865 = !DILocation(line: 366, column: 4, scope: !3860)
!3866 = !DILocation(line: 372, column: 11, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3850, file: !3, line: 371, column: 5)
!3868 = !DILocation(line: 374, column: 22, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3870, file: !3, line: 374, column: 16)
!3870 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 372, column: 11)
!3871 = !DILocation(line: 374, column: 34, scope: !3869)
!3872 = !DILocation(line: 374, column: 27, scope: !3869)
!3873 = !DILocation(line: 374, column: 16, scope: !3870)
!3874 = !DILocation(line: 376, column: 4, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3869, file: !3, line: 375, column: 2)
!3876 = !DILocation(line: 377, column: 8, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3875, file: !3, line: 377, column: 8)
!3878 = !DILocation(line: 377, column: 34, scope: !3877)
!3879 = !DILocation(line: 377, column: 37, scope: !3877)
!3880 = !DILocation(line: 377, column: 8, scope: !3875)
!3881 = !DILocation(line: 378, column: 6, scope: !3877)
!3882 = !DILocation(line: 380, column: 6, scope: !3877)
!3883 = !DILocation(line: 384, column: 1, scope: !3836)
!3884 = distinct !DISubprogram(name: "rhs_regno", scope: !410, file: !410, line: 1051, type: !3885, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3887)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!7, !3680}
!3887 = !{!3888}
!3888 = !DILocalVariable(name: "x", arg: 1, scope: !3884, file: !410, line: 1051, type: !3680)
!3889 = !DILocation(line: 0, scope: !3884)
!3890 = !DILocation(line: 1053, column: 10, scope: !3884)
!3891 = !DILocation(line: 1053, column: 3, scope: !3884)
!3892 = distinct !DISubprogram(name: "df_rd_get_bb_info", scope: !1879, file: !1879, line: 1043, type: !3893, scopeLine: 1044, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3895)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!1877, !7}
!3895 = !{!3896}
!3896 = !DILocalVariable(name: "index", arg: 1, scope: !3892, file: !1879, line: 1043, type: !7)
!3897 = !DILocation(line: 0, scope: !3892)
!3898 = !DILocation(line: 1045, column: 15, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3892, file: !1879, line: 1045, column: 7)
!3900 = !DILocation(line: 1045, column: 22, scope: !3899)
!3901 = !DILocation(line: 1045, column: 13, scope: !3899)
!3902 = !DILocation(line: 1045, column: 7, scope: !3892)
!3903 = !DILocation(line: 1046, column: 44, scope: !3899)
!3904 = !DILocation(line: 1046, column: 37, scope: !3899)
!3905 = !DILocation(line: 1046, column: 5, scope: !3899)
!3906 = !DILocation(line: 0, scope: !3899)
!3907 = !DILocation(line: 1049, column: 1, scope: !3892)
!3908 = distinct !DISubprogram(name: "create_ddg_edge", scope: !3, file: !3, line: 678, type: !3909, scopeLine: 680, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3911)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!1819, !1811, !1811, !1826, !1828, !600, !600}
!3911 = !{!3912, !3913, !3914, !3915, !3916, !3917, !3918}
!3912 = !DILocalVariable(name: "src", arg: 1, scope: !3908, file: !3, line: 678, type: !1811)
!3913 = !DILocalVariable(name: "dest", arg: 2, scope: !3908, file: !3, line: 678, type: !1811)
!3914 = !DILocalVariable(name: "t", arg: 3, scope: !3908, file: !3, line: 679, type: !1826)
!3915 = !DILocalVariable(name: "dt", arg: 4, scope: !3908, file: !3, line: 679, type: !1828)
!3916 = !DILocalVariable(name: "l", arg: 5, scope: !3908, file: !3, line: 679, type: !600)
!3917 = !DILocalVariable(name: "d", arg: 6, scope: !3908, file: !3, line: 679, type: !600)
!3918 = !DILocalVariable(name: "e", scope: !3908, file: !3, line: 681, type: !1819)
!3919 = !DILocation(line: 0, scope: !3908)
!3920 = !DILocation(line: 681, column: 35, scope: !3908)
!3921 = !DILocation(line: 681, column: 20, scope: !3908)
!3922 = !DILocation(line: 683, column: 6, scope: !3908)
!3923 = !DILocation(line: 683, column: 10, scope: !3908)
!3924 = !DILocation(line: 684, column: 6, scope: !3908)
!3925 = !DILocation(line: 684, column: 11, scope: !3908)
!3926 = !DILocation(line: 685, column: 6, scope: !3908)
!3927 = !DILocation(line: 685, column: 11, scope: !3908)
!3928 = !DILocation(line: 686, column: 6, scope: !3908)
!3929 = !DILocation(line: 686, column: 16, scope: !3908)
!3930 = !DILocation(line: 687, column: 6, scope: !3908)
!3931 = !DILocation(line: 687, column: 14, scope: !3908)
!3932 = !DILocation(line: 688, column: 6, scope: !3908)
!3933 = !DILocation(line: 688, column: 15, scope: !3908)
!3934 = !DILocation(line: 689, column: 19, scope: !3908)
!3935 = !DILocation(line: 689, column: 28, scope: !3908)
!3936 = !DILocation(line: 689, column: 6, scope: !3908)
!3937 = !DILocation(line: 689, column: 14, scope: !3908)
!3938 = !DILocation(line: 690, column: 6, scope: !3908)
!3939 = !DILocation(line: 690, column: 10, scope: !3908)
!3940 = !DILocation(line: 690, column: 15, scope: !3908)
!3941 = !DILocation(line: 691, column: 3, scope: !3908)
!3942 = distinct !DISubprogram(name: "add_edge_to_ddg", scope: !3, file: !3, line: 696, type: !3943, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3945)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{null, !607, !1819}
!3945 = !{!3946, !3947, !3948, !3949}
!3946 = !DILocalVariable(name: "g", arg: 1, scope: !3942, file: !3, line: 696, type: !607)
!3947 = !DILocalVariable(name: "e", arg: 2, scope: !3942, file: !3, line: 696, type: !1819)
!3948 = !DILocalVariable(name: "src", scope: !3942, file: !3, line: 698, type: !1811)
!3949 = !DILocalVariable(name: "dest", scope: !3942, file: !3, line: 699, type: !1811)
!3950 = !DILocation(line: 0, scope: !3942)
!3951 = !DILocation(line: 698, column: 25, scope: !3942)
!3952 = !DILocation(line: 699, column: 26, scope: !3942)
!3953 = !DILocation(line: 702, column: 3, scope: !3942)
!3954 = !DILocation(line: 704, column: 17, scope: !3942)
!3955 = !DILocation(line: 704, column: 35, scope: !3942)
!3956 = !DILocation(line: 704, column: 3, scope: !3942)
!3957 = !DILocation(line: 705, column: 18, scope: !3942)
!3958 = !DILocation(line: 705, column: 37, scope: !3942)
!3959 = !DILocation(line: 705, column: 3, scope: !3942)
!3960 = !DILocation(line: 706, column: 22, scope: !3942)
!3961 = !DILocation(line: 706, column: 6, scope: !3942)
!3962 = !DILocation(line: 706, column: 14, scope: !3942)
!3963 = !DILocation(line: 707, column: 12, scope: !3942)
!3964 = !DILocation(line: 708, column: 22, scope: !3942)
!3965 = !DILocation(line: 708, column: 6, scope: !3942)
!3966 = !DILocation(line: 708, column: 15, scope: !3942)
!3967 = !DILocation(line: 709, column: 12, scope: !3942)
!3968 = !DILocation(line: 710, column: 1, scope: !3942)
!3969 = distinct !DISubprogram(name: "rtx_mem_access_p", scope: !3, file: !3, line: 110, type: !2531, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3970)
!3970 = !{!3971, !3972, !3973, !3974, !3975}
!3971 = !DILocalVariable(name: "x", arg: 1, scope: !3969, file: !3, line: 110, type: !644)
!3972 = !DILocalVariable(name: "i", scope: !3969, file: !3, line: 112, type: !600)
!3973 = !DILocalVariable(name: "j", scope: !3969, file: !3, line: 112, type: !600)
!3974 = !DILocalVariable(name: "fmt", scope: !3969, file: !3, line: 113, type: !605)
!3975 = !DILocalVariable(name: "code", scope: !3969, file: !3, line: 114, type: !409)
!3976 = !DILocation(line: 0, scope: !3969)
!3977 = !DILocation(line: 116, column: 9, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3969, file: !3, line: 116, column: 7)
!3979 = !DILocation(line: 116, column: 7, scope: !3969)
!3980 = !DILocation(line: 119, column: 7, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3969, file: !3, line: 119, column: 7)
!3982 = !DILocation(line: 119, column: 7, scope: !3969)
!3983 = !DILocation(line: 123, column: 9, scope: !3969)
!3984 = !DILocation(line: 124, column: 12, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3969, file: !3, line: 124, column: 3)
!3986 = !DILocation(line: 0, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 132, column: 2)
!3988 = distinct !DILexicalBlock(scope: !3989, file: !3, line: 132, column: 2)
!3989 = distinct !DILexicalBlock(scope: !3990, file: !3, line: 131, column: 16)
!3990 = distinct !DILexicalBlock(scope: !3991, file: !3, line: 126, column: 11)
!3991 = distinct !DILexicalBlock(scope: !3992, file: !3, line: 125, column: 5)
!3992 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 124, column: 3)
!3993 = !DILocation(line: 124, column: 8, scope: !3985)
!3994 = !DILocation(line: 0, scope: !3985)
!3995 = !DILocation(line: 124, column: 41, scope: !3992)
!3996 = !DILocation(line: 124, column: 3, scope: !3985)
!3997 = !DILocation(line: 126, column: 11, scope: !3990)
!3998 = !DILocation(line: 126, column: 18, scope: !3990)
!3999 = !DILocation(line: 126, column: 11, scope: !3991)
!4000 = !DILocation(line: 128, column: 26, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 128, column: 8)
!4002 = distinct !DILexicalBlock(scope: !3990, file: !3, line: 127, column: 2)
!4003 = !DILocation(line: 128, column: 8, scope: !4001)
!4004 = !DILocation(line: 128, column: 8, scope: !4002)
!4005 = !DILocation(line: 131, column: 23, scope: !3989)
!4006 = !DILocation(line: 131, column: 16, scope: !3990)
!4007 = !DILocation(line: 132, column: 2, scope: !3988)
!4008 = !DILocation(line: 0, scope: !3988)
!4009 = !DILocation(line: 132, column: 18, scope: !3987)
!4010 = !DILocation(line: 132, column: 16, scope: !3987)
!4011 = !DILocation(line: 134, column: 28, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !4013, file: !3, line: 134, column: 10)
!4013 = distinct !DILexicalBlock(scope: !3987, file: !3, line: 133, column: 4)
!4014 = !DILocation(line: 134, column: 10, scope: !4012)
!4015 = !DILocation(line: 134, column: 10, scope: !4013)
!4016 = !DILocation(line: 132, column: 35, scope: !3987)
!4017 = !DILocation(line: 132, column: 2, scope: !3987)
!4018 = distinct !{!4018, !4007, !4019}
!4019 = !DILocation(line: 136, column: 11, scope: !3988)
!4020 = !DILocation(line: 124, column: 3, scope: !3992)
!4021 = distinct !{!4021, !3996, !4022}
!4022 = !DILocation(line: 137, column: 5, scope: !3985)
!4023 = !DILocation(line: 139, column: 1, scope: !3969)
!4024 = distinct !DISubprogram(name: "create_ddg_dep_no_link", scope: !3, file: !3, line: 207, type: !4025, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4027)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{null, !607, !1811, !1811, !1826, !1828, !600}
!4027 = !{!4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038}
!4028 = !DILocalVariable(name: "g", arg: 1, scope: !4024, file: !3, line: 207, type: !607)
!4029 = !DILocalVariable(name: "from", arg: 2, scope: !4024, file: !3, line: 207, type: !1811)
!4030 = !DILocalVariable(name: "to", arg: 3, scope: !4024, file: !3, line: 207, type: !1811)
!4031 = !DILocalVariable(name: "d_t", arg: 4, scope: !4024, file: !3, line: 208, type: !1826)
!4032 = !DILocalVariable(name: "d_dt", arg: 5, scope: !4024, file: !3, line: 208, type: !1828)
!4033 = !DILocalVariable(name: "distance", arg: 6, scope: !4024, file: !3, line: 208, type: !600)
!4034 = !DILocalVariable(name: "e", scope: !4024, file: !3, line: 210, type: !1819)
!4035 = !DILocalVariable(name: "l", scope: !4024, file: !3, line: 211, type: !600)
!4036 = !DILocalVariable(name: "dep_kind", scope: !4024, file: !3, line: 212, type: !563)
!4037 = !DILocalVariable(name: "_dep", scope: !4024, file: !3, line: 213, type: !1915)
!4038 = !DILocalVariable(name: "dep", scope: !4024, file: !3, line: 213, type: !4039)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!4040 = !DILocation(line: 0, scope: !4024)
!4041 = !DILocation(line: 213, column: 3, scope: !4024)
!4042 = !DILocation(line: 215, column: 3, scope: !4024)
!4043 = !DILocation(line: 216, column: 3, scope: !4024)
!4044 = !DILocation(line: 218, column: 7, scope: !4024)
!4045 = !DILocation(line: 224, column: 7, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4047, file: !3, line: 223, column: 5)
!4047 = distinct !DILexicalBlock(scope: !4048, file: !3, line: 220, column: 12)
!4048 = distinct !DILexicalBlock(scope: !4024, file: !3, line: 218, column: 7)
!4049 = !DILocation(line: 0, scope: !4047)
!4050 = !DILocation(line: 0, scope: !4048)
!4051 = !DILocation(line: 229, column: 24, scope: !4024)
!4052 = !DILocation(line: 229, column: 34, scope: !4024)
!4053 = !DILocation(line: 229, column: 3, scope: !4024)
!4054 = !DILocation(line: 231, column: 7, scope: !4024)
!4055 = !DILocation(line: 233, column: 7, scope: !4024)
!4056 = !DILocation(line: 235, column: 5, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !4024, file: !3, line: 234, column: 7)
!4058 = !DILocation(line: 238, column: 1, scope: !4024)
!4059 = distinct !DISubprogram(name: "add_backarc_to_ddg", scope: !3, file: !3, line: 793, type: !3943, scopeLine: 794, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4060)
!4060 = !{!4061, !4062, !4063}
!4061 = !DILocalVariable(name: "g", arg: 1, scope: !4059, file: !3, line: 793, type: !607)
!4062 = !DILocalVariable(name: "e", arg: 2, scope: !4059, file: !3, line: 793, type: !1819)
!4063 = !DILocalVariable(name: "size", scope: !4059, file: !3, line: 795, type: !600)
!4064 = !DILocation(line: 0, scope: !4059)
!4065 = !DILocation(line: 795, column: 18, scope: !4059)
!4066 = !DILocation(line: 795, column: 36, scope: !4059)
!4067 = !DILocation(line: 797, column: 3, scope: !4059)
!4068 = !DILocation(line: 798, column: 47, scope: !4059)
!4069 = !DILocation(line: 798, column: 57, scope: !4059)
!4070 = !DILocation(line: 798, column: 34, scope: !4059)
!4071 = !DILocation(line: 798, column: 15, scope: !4059)
!4072 = !DILocation(line: 799, column: 6, scope: !4059)
!4073 = !DILocation(line: 799, column: 30, scope: !4059)
!4074 = !DILocation(line: 799, column: 3, scope: !4059)
!4075 = !DILocation(line: 799, column: 34, scope: !4059)
!4076 = !DILocation(line: 800, column: 1, scope: !4059)
!4077 = distinct !DISubprogram(name: "bmp_iter_set_init", scope: !699, file: !699, line: 224, type: !4078, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4084)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{null, !4080, !4081, !7, !3048}
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_bitmap", file: !613, line: 48, baseType: !4082)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !698)
!4084 = !{!4085, !4086, !4087, !4088}
!4085 = !DILocalVariable(name: "bi", arg: 1, scope: !4077, file: !699, line: 224, type: !4080)
!4086 = !DILocalVariable(name: "map", arg: 2, scope: !4077, file: !699, line: 224, type: !4081)
!4087 = !DILocalVariable(name: "start_bit", arg: 3, scope: !4077, file: !699, line: 225, type: !7)
!4088 = !DILocalVariable(name: "bit_no", arg: 4, scope: !4077, file: !699, line: 225, type: !3048)
!4089 = !DILocation(line: 0, scope: !4077)
!4090 = !DILocation(line: 227, column: 19, scope: !4077)
!4091 = !DILocation(line: 227, column: 12, scope: !4077)
!4092 = !DILocation(line: 228, column: 7, scope: !4077)
!4093 = !DILocation(line: 228, column: 12, scope: !4077)
!4094 = !DILocation(line: 0, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4096, file: !699, line: 233, column: 11)
!4096 = distinct !DILexicalBlock(scope: !4077, file: !699, line: 232, column: 5)
!4097 = !DILocation(line: 231, column: 3, scope: !4077)
!4098 = !DILocation(line: 233, column: 12, scope: !4095)
!4099 = !DILocation(line: 233, column: 11, scope: !4096)
!4100 = !DILocation(line: 235, column: 13, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4095, file: !699, line: 234, column: 2)
!4102 = !DILocation(line: 236, column: 4, scope: !4101)
!4103 = !DILocation(line: 239, column: 11, scope: !4096)
!4104 = distinct !{!4104, !4097, !4105}
!4105 = !DILocation(line: 242, column: 5, scope: !4077)
!4106 = !DILocation(line: 245, column: 11, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4077, file: !699, line: 245, column: 7)
!4108 = !DILocation(line: 245, column: 17, scope: !4107)
!4109 = !DILocation(line: 245, column: 22, scope: !4107)
!4110 = !DILocation(line: 245, column: 7, scope: !4077)
!4111 = !DILocation(line: 246, column: 27, scope: !4107)
!4112 = !DILocation(line: 246, column: 32, scope: !4107)
!4113 = !DILocation(line: 246, column: 5, scope: !4107)
!4114 = !DILocation(line: 249, column: 7, scope: !4077)
!4115 = !DILocation(line: 249, column: 15, scope: !4077)
!4116 = !DILocation(line: 250, column: 14, scope: !4077)
!4117 = !DILocation(line: 251, column: 7, scope: !4077)
!4118 = !DILocation(line: 251, column: 12, scope: !4077)
!4119 = !DILocation(line: 257, column: 16, scope: !4077)
!4120 = !DILocation(line: 257, column: 13, scope: !4077)
!4121 = !DILocation(line: 259, column: 11, scope: !4077)
!4122 = !DILocation(line: 260, column: 1, scope: !4077)
!4123 = distinct !DISubprogram(name: "bmp_iter_set", scope: !699, file: !699, line: 393, type: !4124, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4126)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!599, !4080, !3048}
!4126 = !{!4127, !4128, !4129}
!4127 = !DILocalVariable(name: "bi", arg: 1, scope: !4123, file: !699, line: 393, type: !4080)
!4128 = !DILocalVariable(name: "bit_no", arg: 2, scope: !4123, file: !699, line: 393, type: !3048)
!4129 = !DILabel(scope: !4130, name: "next_bit", file: !699, line: 398)
!4130 = distinct !DILexicalBlock(scope: !4131, file: !699, line: 397, column: 5)
!4131 = distinct !DILexicalBlock(scope: !4123, file: !699, line: 396, column: 7)
!4132 = !DILocation(line: 0, scope: !4123)
!4133 = !DILocation(line: 396, column: 11, scope: !4131)
!4134 = !DILocation(line: 396, column: 7, scope: !4131)
!4135 = !DILocation(line: 396, column: 7, scope: !4123)
!4136 = !DILocation(line: 419, column: 15, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4138, file: !699, line: 418, column: 2)
!4138 = distinct !DILexicalBlock(scope: !4123, file: !699, line: 415, column: 5)
!4139 = !DILocation(line: 399, column: 7, scope: !4130)
!4140 = !DILocation(line: 398, column: 5, scope: !4130)
!4141 = !DILocation(line: 399, column: 20, scope: !4130)
!4142 = !DILocation(line: 399, column: 25, scope: !4130)
!4143 = !DILocation(line: 399, column: 14, scope: !4130)
!4144 = !DILocation(line: 401, column: 13, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4130, file: !699, line: 400, column: 2)
!4146 = !DILocation(line: 402, column: 12, scope: !4145)
!4147 = distinct !{!4147, !4139, !4148}
!4148 = !DILocation(line: 403, column: 2, scope: !4130)
!4149 = !DILocation(line: 410, column: 15, scope: !4123)
!4150 = !DILocation(line: 410, column: 42, scope: !4123)
!4151 = !DILocation(line: 411, column: 26, scope: !4123)
!4152 = !DILocation(line: 410, column: 11, scope: !4123)
!4153 = !DILocation(line: 412, column: 7, scope: !4123)
!4154 = !DILocation(line: 412, column: 14, scope: !4123)
!4155 = !DILocation(line: 0, scope: !4138)
!4156 = !DILocation(line: 414, column: 3, scope: !4123)
!4157 = !DILocation(line: 417, column: 7, scope: !4138)
!4158 = !DILocation(line: 417, column: 18, scope: !4138)
!4159 = !DILocation(line: 417, column: 26, scope: !4138)
!4160 = !DILocation(line: 419, column: 13, scope: !4137)
!4161 = !DILocation(line: 420, column: 8, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !4137, file: !699, line: 420, column: 8)
!4163 = !DILocation(line: 420, column: 8, scope: !4137)
!4164 = !DILocation(line: 422, column: 12, scope: !4137)
!4165 = !DILocation(line: 423, column: 15, scope: !4137)
!4166 = distinct !{!4166, !4157, !4167}
!4167 = !DILocation(line: 424, column: 2, scope: !4138)
!4168 = !DILocation(line: 427, column: 28, scope: !4138)
!4169 = !DILocation(line: 427, column: 16, scope: !4138)
!4170 = !DILocation(line: 428, column: 12, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4138, file: !699, line: 428, column: 11)
!4172 = !DILocation(line: 428, column: 11, scope: !4138)
!4173 = !DILocation(line: 430, column: 27, scope: !4138)
!4174 = !DILocation(line: 430, column: 32, scope: !4138)
!4175 = !DILocation(line: 430, column: 15, scope: !4138)
!4176 = !DILocation(line: 431, column: 19, scope: !4138)
!4177 = distinct !{!4177, !4156, !4178}
!4178 = !DILocation(line: 432, column: 5, scope: !4123)
!4179 = !DILocation(line: 433, column: 1, scope: !4123)
!4180 = distinct !DISubprogram(name: "add_cross_iteration_register_deps", scope: !3, file: !3, line: 248, type: !4181, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4183)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{null, !607, !2702}
!4183 = !{!4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4197, !4201}
!4184 = !DILocalVariable(name: "g", arg: 1, scope: !4180, file: !3, line: 248, type: !607)
!4185 = !DILocalVariable(name: "last_def", arg: 2, scope: !4180, file: !3, line: 248, type: !2702)
!4186 = !DILocalVariable(name: "regno", scope: !4180, file: !3, line: 250, type: !600)
!4187 = !DILocalVariable(name: "r_use", scope: !4180, file: !3, line: 251, type: !2714)
!4188 = !DILocalVariable(name: "has_use_in_bb_p", scope: !4180, file: !3, line: 252, type: !600)
!4189 = !DILocalVariable(name: "def_insn", scope: !4180, file: !3, line: 253, type: !644)
!4190 = !DILocalVariable(name: "last_def_node", scope: !4180, file: !3, line: 254, type: !1811)
!4191 = !DILocalVariable(name: "use_node", scope: !4180, file: !3, line: 255, type: !1811)
!4192 = !DILocalVariable(name: "first_def", scope: !4180, file: !3, line: 259, type: !2702)
!4193 = !DILocalVariable(name: "use_insn", scope: !4194, file: !3, line: 272, type: !644)
!4194 = distinct !DILexicalBlock(scope: !4195, file: !3, line: 271, column: 5)
!4195 = distinct !DILexicalBlock(scope: !4196, file: !3, line: 270, column: 3)
!4196 = distinct !DILexicalBlock(scope: !4180, file: !3, line: 270, column: 3)
!4197 = !DILocalVariable(name: "first_def_node", scope: !4198, file: !3, line: 298, type: !1811)
!4198 = distinct !DILexicalBlock(scope: !4199, file: !3, line: 291, column: 2)
!4199 = distinct !DILexicalBlock(scope: !4200, file: !3, line: 290, column: 16)
!4200 = distinct !DILexicalBlock(scope: !4194, file: !3, line: 281, column: 11)
!4201 = !DILocalVariable(name: "dest_node", scope: !4202, file: !3, line: 319, type: !1811)
!4202 = distinct !DILexicalBlock(scope: !4203, file: !3, line: 318, column: 5)
!4203 = distinct !DILexicalBlock(scope: !4180, file: !3, line: 317, column: 7)
!4204 = !DILocation(line: 0, scope: !4180)
!4205 = !DILocation(line: 250, column: 15, scope: !4180)
!4206 = !DILocation(line: 253, column: 18, scope: !4180)
!4207 = !DILocation(line: 254, column: 32, scope: !4180)
!4208 = !DILocation(line: 259, column: 53, scope: !4180)
!4209 = !DILocation(line: 259, column: 22, scope: !4180)
!4210 = !DILocation(line: 261, column: 3, scope: !4180)
!4211 = !DILocation(line: 262, column: 3, scope: !4180)
!4212 = !DILocation(line: 270, column: 16, scope: !4196)
!4213 = !DILocation(line: 0, scope: !4200)
!4214 = !DILocation(line: 0, scope: !4198)
!4215 = !DILocation(line: 0, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4198, file: !3, line: 303, column: 15)
!4217 = !DILocation(line: 270, column: 8, scope: !4196)
!4218 = !DILocation(line: 252, column: 7, scope: !4180)
!4219 = !DILocation(line: 0, scope: !4196)
!4220 = !DILocation(line: 270, column: 47, scope: !4195)
!4221 = !DILocation(line: 270, column: 3, scope: !4196)
!4222 = !DILocation(line: 272, column: 22, scope: !4194)
!4223 = !DILocation(line: 0, scope: !4194)
!4224 = !DILocation(line: 274, column: 11, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4194, file: !3, line: 274, column: 11)
!4226 = !DILocation(line: 274, column: 43, scope: !4225)
!4227 = !DILocation(line: 274, column: 37, scope: !4225)
!4228 = !DILocation(line: 274, column: 11, scope: !4194)
!4229 = !DILocation(line: 278, column: 18, scope: !4194)
!4230 = !DILocation(line: 279, column: 7, scope: !4194)
!4231 = !DILocation(line: 281, column: 21, scope: !4200)
!4232 = !DILocation(line: 281, column: 44, scope: !4200)
!4233 = !DILocation(line: 281, column: 26, scope: !4200)
!4234 = !DILocation(line: 281, column: 11, scope: !4194)
!4235 = !DILocation(line: 287, column: 7, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4200, file: !3, line: 282, column: 2)
!4237 = !DILocation(line: 286, column: 4, scope: !4236)
!4238 = !DILocation(line: 289, column: 2, scope: !4236)
!4239 = !DILocation(line: 290, column: 16, scope: !4200)
!4240 = !DILocation(line: 299, column: 10, scope: !4198)
!4241 = !DILocation(line: 298, column: 34, scope: !4198)
!4242 = !DILocation(line: 301, column: 4, scope: !4198)
!4243 = !DILocation(line: 303, column: 15, scope: !4216)
!4244 = !DILocation(line: 303, column: 39, scope: !4216)
!4245 = !DILocation(line: 303, column: 36, scope: !4216)
!4246 = !DILocation(line: 304, column: 19, scope: !4216)
!4247 = !DILocation(line: 304, column: 15, scope: !4216)
!4248 = !DILocation(line: 305, column: 13, scope: !4216)
!4249 = !DILocation(line: 270, column: 71, scope: !4195)
!4250 = !DILocation(line: 270, column: 3, scope: !4195)
!4251 = distinct !{!4251, !4221, !4252}
!4252 = !DILocation(line: 309, column: 5, scope: !4196)
!4253 = !DILocation(line: 317, column: 8, scope: !4203)
!4254 = !DILocation(line: 317, column: 7, scope: !4180)
!4255 = !DILocation(line: 321, column: 11, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4202, file: !3, line: 321, column: 11)
!4257 = !DILocation(line: 321, column: 35, scope: !4256)
!4258 = !DILocation(line: 321, column: 32, scope: !4256)
!4259 = !DILocation(line: 321, column: 11, scope: !4202)
!4260 = !DILocation(line: 324, column: 40, scope: !4202)
!4261 = !DILocation(line: 324, column: 19, scope: !4202)
!4262 = !DILocation(line: 0, scope: !4202)
!4263 = !DILocation(line: 325, column: 7, scope: !4202)
!4264 = !DILocation(line: 326, column: 7, scope: !4202)
!4265 = !DILocation(line: 328, column: 5, scope: !4203)
!4266 = !DILocation(line: 329, column: 1, scope: !4180)
!4267 = distinct !DISubprogram(name: "bmp_iter_next", scope: !699, file: !699, line: 382, type: !4268, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4270)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{null, !4080, !3048}
!4270 = !{!4271, !4272}
!4271 = !DILocalVariable(name: "bi", arg: 1, scope: !4267, file: !699, line: 382, type: !4080)
!4272 = !DILocalVariable(name: "bit_no", arg: 2, scope: !4267, file: !699, line: 382, type: !3048)
!4273 = !DILocation(line: 0, scope: !4267)
!4274 = !DILocation(line: 384, column: 7, scope: !4267)
!4275 = !DILocation(line: 384, column: 12, scope: !4267)
!4276 = !DILocation(line: 385, column: 11, scope: !4267)
!4277 = !DILocation(line: 386, column: 1, scope: !4267)
!4278 = distinct !DISubprogram(name: "add_backarc_to_scc", scope: !3, file: !3, line: 804, type: !4279, scopeLine: 805, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4281)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{null, !1867, !1819}
!4281 = !{!4282, !4283, !4284}
!4282 = !DILocalVariable(name: "scc", arg: 1, scope: !4278, file: !3, line: 804, type: !1867)
!4283 = !DILocalVariable(name: "e", arg: 2, scope: !4278, file: !3, line: 804, type: !1819)
!4284 = !DILocalVariable(name: "size", scope: !4278, file: !3, line: 806, type: !600)
!4285 = !DILocation(line: 0, scope: !4278)
!4286 = !DILocation(line: 806, column: 20, scope: !4278)
!4287 = !DILocation(line: 806, column: 38, scope: !4278)
!4288 = !DILocation(line: 808, column: 51, scope: !4278)
!4289 = !DILocation(line: 808, column: 61, scope: !4278)
!4290 = !DILocation(line: 808, column: 36, scope: !4278)
!4291 = !DILocation(line: 808, column: 17, scope: !4278)
!4292 = !DILocation(line: 809, column: 8, scope: !4278)
!4293 = !DILocation(line: 809, column: 34, scope: !4278)
!4294 = !DILocation(line: 809, column: 3, scope: !4278)
!4295 = !DILocation(line: 809, column: 38, scope: !4278)
!4296 = !DILocation(line: 810, column: 1, scope: !4278)
!4297 = distinct !DISubprogram(name: "set_recurrence_length", scope: !3, file: !3, line: 718, type: !4298, scopeLine: 719, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4300)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{null, !1867, !607}
!4300 = !{!4301, !4302, !4303, !4304, !4305, !4309, !4310, !4311, !4312}
!4301 = !DILocalVariable(name: "scc", arg: 1, scope: !4297, file: !3, line: 718, type: !1867)
!4302 = !DILocalVariable(name: "g", arg: 2, scope: !4297, file: !3, line: 718, type: !607)
!4303 = !DILocalVariable(name: "j", scope: !4297, file: !3, line: 720, type: !600)
!4304 = !DILocalVariable(name: "result", scope: !4297, file: !3, line: 721, type: !600)
!4305 = !DILocalVariable(name: "backarc", scope: !4306, file: !3, line: 725, type: !1819)
!4306 = distinct !DILexicalBlock(scope: !4307, file: !3, line: 724, column: 5)
!4307 = distinct !DILexicalBlock(scope: !4308, file: !3, line: 723, column: 3)
!4308 = distinct !DILexicalBlock(scope: !4297, file: !3, line: 723, column: 3)
!4309 = !DILocalVariable(name: "length", scope: !4306, file: !3, line: 726, type: !600)
!4310 = !DILocalVariable(name: "distance", scope: !4306, file: !3, line: 727, type: !600)
!4311 = !DILocalVariable(name: "src", scope: !4306, file: !3, line: 728, type: !1811)
!4312 = !DILocalVariable(name: "dest", scope: !4306, file: !3, line: 729, type: !1811)
!4313 = !DILocation(line: 0, scope: !4297)
!4314 = !DILocation(line: 0, scope: !4307)
!4315 = !DILocation(line: 0, scope: !4306)
!4316 = !DILocation(line: 723, column: 8, scope: !4308)
!4317 = !DILocation(line: 721, column: 7, scope: !4297)
!4318 = !DILocation(line: 723, column: 24, scope: !4307)
!4319 = !DILocation(line: 723, column: 17, scope: !4307)
!4320 = !DILocation(line: 723, column: 3, scope: !4308)
!4321 = !DILocation(line: 725, column: 35, scope: !4306)
!4322 = !DILocation(line: 725, column: 30, scope: !4306)
!4323 = !DILocation(line: 727, column: 31, scope: !4306)
!4324 = !DILocation(line: 728, column: 35, scope: !4306)
!4325 = !DILocation(line: 729, column: 36, scope: !4306)
!4326 = !DILocation(line: 731, column: 45, scope: !4306)
!4327 = !DILocation(line: 731, column: 57, scope: !4306)
!4328 = !DILocation(line: 731, column: 68, scope: !4306)
!4329 = !DILocation(line: 731, column: 16, scope: !4306)
!4330 = !DILocation(line: 732, column: 18, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4306, file: !3, line: 732, column: 11)
!4332 = !DILocation(line: 732, column: 11, scope: !4306)
!4333 = !DILocation(line: 737, column: 26, scope: !4306)
!4334 = !DILocation(line: 737, column: 14, scope: !4306)
!4335 = !DILocation(line: 738, column: 16, scope: !4306)
!4336 = !DILocation(line: 723, column: 39, scope: !4307)
!4337 = !DILocation(line: 723, column: 3, scope: !4307)
!4338 = distinct !{!4338, !4320, !4339}
!4339 = !DILocation(line: 739, column: 5, scope: !4308)
!4340 = !DILocation(line: 740, column: 8, scope: !4297)
!4341 = !DILocation(line: 740, column: 26, scope: !4297)
!4342 = !DILocation(line: 741, column: 1, scope: !4297)
!4343 = distinct !DISubprogram(name: "compare_sccs", scope: !3, file: !3, line: 876, type: !1105, scopeLine: 877, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4344)
!4344 = !{!4345, !4346, !4347, !4349}
!4345 = !DILocalVariable(name: "s1", arg: 1, scope: !4343, file: !3, line: 876, type: !1100)
!4346 = !DILocalVariable(name: "s2", arg: 2, scope: !4343, file: !3, line: 876, type: !1100)
!4347 = !DILocalVariable(name: "rec_l1", scope: !4343, file: !3, line: 878, type: !4348)
!4348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !600)
!4349 = !DILocalVariable(name: "rec_l2", scope: !4343, file: !3, line: 879, type: !4348)
!4350 = !DILocation(line: 0, scope: !4343)
!4351 = !DILocation(line: 878, column: 24, scope: !4343)
!4352 = !DILocation(line: 878, column: 23, scope: !4343)
!4353 = !DILocation(line: 878, column: 50, scope: !4343)
!4354 = !DILocation(line: 879, column: 24, scope: !4343)
!4355 = !DILocation(line: 879, column: 23, scope: !4343)
!4356 = !DILocation(line: 879, column: 50, scope: !4343)
!4357 = !DILocation(line: 880, column: 19, scope: !4343)
!4358 = !DILocation(line: 880, column: 39, scope: !4343)
!4359 = !DILocation(line: 880, column: 29, scope: !4343)
!4360 = !DILocation(line: 880, column: 3, scope: !4343)
